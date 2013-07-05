class ReadersController < ApplicationController
  before_filter :login_required
  
  def index
    @reader = Reader.all
  end
  
  def add
    @reader = Reader.new(params[:reader])

    if request.post? and @reader.save
      flash[:notice] = 'New RFID Reader added!'
      redirect_to :controller => 'readers', :action => 'view', :id => @reader.id
    end
  end  
  
  def all
      @reader = Reader.paginate :page => params[:page]
  end
  
  

	def edit
		@reader = Reader.find(params[:id])
	end

	def delete
    @reader = Reader.find(params[:id]).destroy
    flash[:notice] = 'Reader deleted succefully!'
    redirect_to :controller => 'readers', :action => 'index'
  end

	def update
      @reader = Reader.find(params[:id])
      if  @reader.update_attributes(params[:reader])
        flash[:notice] = 'Readers updated!'
        redirect_to :controller => 'readers', :action => 'view', :id => @reader
        else
        render :action=>'edit'
      end
    end
    
	  def search_investiture_ajax
      @reader = nil
      conditions = ["title LIKE ?", "%#{params[:query]}%"]
      @reader = Reader.find(:all, :conditions => conditions) unless params[:query] == ''
      render :layout => false
    end
    
  def view
    @current_user = current_user
    @reader = Reader.find(params[:id])
   
  end
	
end
