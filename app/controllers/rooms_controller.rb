class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.xml
  before_filter :login_required
  before_filter :load_objects,:only => [:index,:new,:create,:edit,:update,:destroy]


  
  def index
    @rooms = @object.rooms

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = @object.rooms.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
    @room = @object.rooms.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = @object.rooms.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.xml
  def create
    @room = @object.rooms.new(params[:room])

    respond_to do |format|
      flash[:notice] = 'Room was created successfully.' 
      if @room.save
        format.html { redirect_to hostel_path(@object)  }
        format.xml  { render :xml => @room, :status => :created, :location => @room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def update
    @room = @object.rooms.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        flash[:notice] = 'Room was successfully updated.' 
        format.html { redirect_to hostel_path(@object)  }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
    @room = @object.rooms.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to hostels_path }
      format.xml  { head :ok }
    end
  end

  def allocate_rooms

  end

  def search_user
    @students = Student.find(:all,
          :conditions => ["first_name LIKE ? OR middle_name LIKE ? OR last_name LIKE ?
                            OR admission_no = ? OR (first_name || ' ' || last_name LIKE ? ) ",
            "#{params[:query]}%","#{params[:query]}%","#{params[:query]}%",
            "#{params[:query]}", "#{params[:query]}" ],
          :order => "batch_id asc,first_name asc",:include =>  [{:batch=>:course}]) unless params[:query] == ''
    render :partial => 'search_user',:layout => false
  end

  def availabilty
    @student = Student.find(params[:student_id])
    render :layout => 'iframe'
  end

  def find_rooms
    unless params[:hostel_type].empty?
      @rooms = Room.find(:all,:joins => :hostel,:conditions => ["hostels.hostel_type = ? and availability > 0 ",params[:hostel_type]])
    else
      @rooms = []
    end   
    render :layout => false
  end

  def allocate
    @room = Room.find(params[:room_id])
    @student = Student.find(params[:student_id])
    @room.allocate_student(@student)
    message = t('allocate_msg')
    respond_to do |format|
      format.html { render :text =>  "<p class='flash-msg'>#{message}</p>"}
    end
  end

  def deallocate
    @student = Student.find(params[:student])
    @room =  @student.room
    @room.deallocate_student(@student)
    message = "Deallocate Student from specified Room"
    respond_to do |format|
      flash[:notice] = t('deallocate_msg')
      if params[:redirect].present?
        format.html { redirect_to "/student/profile/#{@student.id}" }
      else  
      format.html { redirect_to allocate_room_path }
      end
    end
  end
  
  private 

  def load_objects
    @object = Hostel.find(params[:hostel_id])
  end
end
