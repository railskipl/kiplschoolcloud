class CertificatesController < ApplicationController
  filter_access_to :all
	# def display
	# 	#begin
 #      certificate_name = ""
	# 		if params[:certificate_id].to_i == 1 or params[:certificate_id].to_i == 3
      	
 #      	if params[:certificate_id].to_i == 1
 #          certificate_name = "birth_certificate"
 #      	else
 #          certificate_name = "fee_certificate"
 #      	end	
 #      else
        
 #        if params[:certificate_id].to_i == 2
 #          certificate_name = "experience_certificate"
 #        elsif params[:certificate_id].to_i == 4
 #          certificate_name = "joining_certificate"
 #        elsif params[:certificate_id].to_i == 5
 #          certificate_name = "resignation_certificate"
 #        elsif params[:certificate_id].to_i == 6
 #          certificate_name = "office_order"
 #        end
 #      end 

 #      render :pdf => certificate_name ,:layout => "certificate"	
	# 	#rescue 
	# 	#	redirect_to select_certificate_path
	# 	#end			
	# end

  def birth_certificate
    @student = Student.find(params[:id]) rescue nil 
    @student ||= ArchivedStudent.find(params[:id])
    render :pdf => "birth_certificate",:layout => "certificate"
  end  

  def experience_certificate
    @employee = Employee.find(params[:id])
    render :pdf => "experience_certificate",:layout => "certificate"
  end

  def resignation_certificate
    @employee = Employee.find(params[:id])
    render :pdf => "resignation_certificate",:layout => "certificate"
  end

  def fee_certificate
    @student = Student.find(params[:id]) rescue nil 
    @student ||= ArchivedStudent.find(params[:id])
    render :pdf => "fee_certificate",:layout => "certificate"
  end

  def joining_certificate
    @employee = Employee.find(params[:id])
    render :pdf => "joining_certificate",:layout => "certificate"
  end

  def office_order
    @employee = Employee.find(params[:id])
    render :pdf => "office_order",:layout => "certificate"
  end


	def select
		respond_to do |format|
			format.html {render :layout => "application"}
		end
	end

	def take_call
		case params[:certificate_type].to_i
		when 1,3
			render :partial => 'search_student',:layout => false
		when 2,4,5,6
			render :partial => 'search_employee',:layout => false
		end	
	end

  def list_of_employee_ajax
    if params[:query].present?
        @students = Employee.find(:all,
          :conditions => ["first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ?
                             OR (first_name || ' ' ||  last_name) LIKE ?  ",
            "#{params[:query]}%","#{params[:query]}%","#{params[:query]}%",
            "#{params[:query]}"]) 
    else
        @students = [] 
    end
    render :partial => "list_of_employee_ajax" ,:layout => false
  end


	def list_of_student_ajax

		@object = true
    if params[:option] == "active"
      if params[:query].length>= 3
        @students = Student.find(:all,
          :conditions => ["first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ?
                            OR admission_no = ? OR (first_name || ' ' ||  last_name) LIKE ? ",
            "#{params[:query]}%","#{params[:query]}%","#{params[:query]}%",
            "#{params[:query]}", "#{params[:query]}" ],
          :order => "batch_id asc,first_name asc",:include =>  [{:batch=>:course}]) unless params[:query] == ''
      else
        @students = Student.find(:all,
          :conditions => ["admission_no = ? " , params[:query]],
          :order => "batch_id asc,first_name asc",:include =>  [{:batch=>:course}]) unless params[:query] == ''
      end
       
    else
      if params[:query].length>= 3
        @students = ArchivedStudent.find.find(:all,
          :conditions => ["first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ?
                            OR admission_no = ? OR (first_name || ' ' || last_name) LIKE ?  ",
            "#{params[:query]}%","#{params[:query]}%","#{params[:query]}%",
            "#{params[:query]}", "#{params[:query]}" ],
          :order => "batch_id asc,first_name asc",:include =>  [{:batch=>:course}]) unless params[:query] == ''
      else
        @students = ArchivedStudent.find.find(:all,
          :conditions => ["admission_no = ? " , params[:query]],
          :order => "batch_id asc,first_name asc",:include =>  [{:batch=>:course}]) unless params[:query] == ''
      end
      
    end
    render :partial => "list_of_student_ajax" ,:layout => false
  end  

end
