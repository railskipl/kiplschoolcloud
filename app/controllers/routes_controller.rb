class RoutesController < ApplicationController
  # GET /routes
  # GET /routes.xml
  before_filter :login_required
  def index
    @routes = Route.all

    respond_to do |format|

      format.html 
      format.xml  { render :xml => @routes }
    end
  end

  # GET /routes/1
  # GET /routes/1.xml
  def show
    @route = Route.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @route }
    end
  end

  # GET /routes/new
  # GET /routes/new.xml
  def new
    @route = Route.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @route }
    end
  end

  # GET /routes/1/edit
  def edit
    @route = Route.find(params[:id])
  end

  # POST /routes
  # POST /routes.xml
  def create
    @route = Route.new(params[:route])

    respond_to do |format|
      if @route.save
        flash[:notice] = 'Route was created successfully.'
        format.html { redirect_to routes_path }
        format.xml  { render :xml => @route, :status => :created, :location => @route }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @route.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /routes/1
  # PUT /routes/1.xml
  def update
    @route = Route.find(params[:id])

    respond_to do |format|
      if @route.update_attributes(params[:route])
        flash[:notice] = 'Route was successfully updated.'
        format.html { redirect_to routes_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @route.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.xml
  def destroy
    @route = Route.find(params[:id])
    @route.destroy

    respond_to do |format|
      format.html { redirect_to(routes_url) }
      format.xml  { head :ok }
    end
  end

 def reports
  @routes = Route.find(:all,:conditions => ['name like ?',"%#{params[:query]}%"])

   respond_to do |format|
     format.html
   end
 end

 def pdf_report
   @routes = Route.find(:all,:conditions => ['name like ?',"%#{params[:query]}%"])
   respond_to do |format|
     format.pdf do
       render :pdf =>"route_pdf",
       :template => 'routes/pdf_report', 
       :layout  => 'pdf',
       :show_as_html  =>false
     end
   end   
  end 

  def search
    @routes = Route.find(:all,:conditions => ['name like ?',"%#{params[:term]}%"],:select => :name).collect(&:name)
    respond_to do |format|
      format.html { render :text => @routes.to_json  }
    end
  end

  def locate_users
    load_objects
    respond_to do |format|
      format.html {render :partial => 'locate_user',:layout => false }
    end
  end



  def locate_routes
    respond_to do |format|
      format.html
    end
  end

  private
  
  def load_objects
    @route = Route.find_by_name(params[:name])
    @students = @route.students
  end
end
