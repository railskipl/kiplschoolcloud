require "fastercsv"
class CsvImport

  attr_accessor :errors
  attr_accessor :guardian_index
  def initialize(file,batch_id)
    @file=file
    @batch_id = batch_id
    @guardian_index = 0
    @index = 0
  end
 
  def valid?
    load_fastercsv(:valid?)
  end

  def save
    load_fastercsv(:save) if valid?
  end

  def load_fastercsv(cmd)
    err = []
    @index = i = 0
    FasterCSV.foreach(@file) do |row|
      i+=1
      @guardian_index = row.index("G1_first_name") if i == 1
      if i>1
        @index = i
        
        student = build_student(row)
        unless student.send(cmd)
          err << "Row #{i} :  #{student.errors.full_messages.join(', ')}"
        end
      end
    end
    self.errors = err unless err.blank?
    err.blank?
  end

  def build_student(row)
    s = Student.new(
      :admission_no => row[0],
      :class_roll_no => row[1],     # class roll no.
      :admission_date => row[2],
      :first_name => row[3],
      :middle_name => row[4],
      :last_name => row[5],
      :batch_id => @batch_id,
      :gender => row[7],
      :blood_group => row[8],
      :birth_place => row[9],
      :nationality_id => row[10],
      :language => row[11],
      :religion => row[12],
      :student_category_id => row[13],
      :address_line1 => row[14],
      :address_line2 => row[15],
      :city => row[16],
      :state => row[17],
      :pin_code => row[18],
      :country_id => row[19],
      :phone1 => row[20],
      :phone2 => row[21],
      :email => row[22],
      :status_description => row[23],
      :caste => row[25]


    )

    s.date_of_birth = row[6].to_date unless row[6].blank? 
    country_id = row[19].blank? ?  76 : Country.find_by_name(row[19]).try(:id)
    if country_id.nil?
      s.errors.add_to_base("Country #{row[19]} not found")
    end
    nationality_id = row[10].blank? ? 76 : Country.find_by_name(row[10]).try(:id)
    if nationality_id.nil?
      s.errors.add_to_base("Nationality #{row[10]} not found")
    end
    xcat = row[13]
    if row[13] and (row[13] == "GEN" or row[13] == "General" or row[13] == "GEN.") 
       xcat = "General"
    end
    student_category_id = xcat.blank? ? StudentCategory.find_by_name('General').try(:id) : StudentCategory.find_by_name(xcat).try(:id)
    if student_category_id.nil?
      s.errors.add_to_base("Student category #{row[13]} not found")
    end
    s.country_id = country_id
    if not(s.admission_no.present?)
      s.admission_no = "Admission-#{rand(DateTime.now.to_i)}" 
    end

    if s.gender.present? and row[7].present?
      if row[7].downcase == "male" or row[7].downcase == "m"
        s.gender = "m"
      else
        s.gender = "f"
      end  
    end  
    if not(s.admission_date.present?)
      s.admission_date = Date.today
    end 
    s.nationality_id= nationality_id
    s.student_category_id = student_category_id
    s.route_id = find_route_id(row[24])

    if (row[26..29]) and student_previous_data_present?(row)
      s.build_student_previous_data(:institution => row[26],:year => row[27],:course => row[28],:total_mark => row[29])
    end
  
    if (row[30..guardian_index-1]) and student_previous_subject_present?(row)
      row[30..guardian_index-1].in_groups_of(2,false) do |previous_subjects|
        s.student_previous_subject_mark.build(:subject => previous_subjects[0],:mark => previous_subjects[1])
      end 
    end  

    if (row[guardian_index..-1]) and guardians_present?(row)
      (row[guardian_index..-1]).in_groups_of(3,false) do |guardians|
        s.guardians.build(:first_name => guardians[0],:last_name => guardians[1],:relation => guardians[2])
      end  
    end
    s  
  end

  def guardians_present?(row)
    guardians_datas = row[guardian_index..-1].flatten.compact.uniq
    not(guardians_datas.length < 2)
  end  

  def student_previous_data_present?(row)
    previous_datas = row[26..29].flatten.compact.uniq
    not(previous_datas.length < 2)
  end  

  def student_previous_subject_present?(row)
    previous_subject_datas = (row[31..guardian_index-1]).flatten.compact.uniq
    not(previous_subject_datas.length < 2 )
  end  

  def find_route_id(route)
    @routes = Route.find(:all,:conditions => ["name like ?","#{route}%"]) 
    if @routes.empty?
      return Route.create(:name => route).id
    else
      return @routes.first.id
    end
  end

end
