class BusServicesController < ApplicationController
  # GET /bus_services
  #before_filter :login_required
  before_filter :load_objects,:only => [:new,:create,:edit,:update]
  # GET /bus_services.xml

  def transport_dashboard
  end

  def index
    @bus_services = BusService.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bus_services }
    end
  end


  # GET /bus_services/1
  # GET /bus_services/1.xml
  def show
    @bus_service = BusService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bus_service }
    end
  end

  # GET /bus_services/new
  # GET /bus_services/new.xml
  def new
    @bus_service = BusService.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bus_service }
    end
  end

  # GET /bus_services/1/edit
  def edit
    @bus_service = BusService.find(params[:id],:include => :students)
  end

  # POST /bus_services
  # POST /bus_services.xml
  def create

    @bus_service = BusService.new(params[:bus_service])
    respond_to do |format|
      if @bus_service.save
        format.html { redirect_to(@bus_service, :notice => 'BusService was successfully created.') }
        format.xml  { render :xml => @bus_service, :status => :created, :location => @bus_service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bus_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bus_services/1
  # PUT /bus_services/1.xml
  def update
    @bus_service = BusService.find(params[:id],:include => :students)

    respond_to do |format|
      if @bus_service.update_attributes(params[:bus_service])
        format.html { redirect_to(@bus_service, :notice => 'BusService was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bus_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_services/1
  # DELETE /bus_services/1.xml
  def destroy
    @bus_service = BusService.find(params[:id])
    @bus_service.destroy

    respond_to do |format|
      format.html { redirect_to(bus_services_url) }
      format.xml  { head :ok }
    end
  end

  private
  def load_objects
    @students = Student.all
    @routes = Route.all
  end
end
