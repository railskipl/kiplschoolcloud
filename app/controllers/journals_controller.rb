class JournalsController < ApplicationController
   def add
    @journal = Journal.new(params[:journal])
     @journal.author = current_user
    if  @journal.save
      flash[:notice] = 'Journals added!'
      redirect_to :controller => 'journals', :action => 'view', :id => @journal.id
    end
  end

 
def all
    @journal = Journal.paginate :page => params[:page]
  end

  def delete
    @journal = Journal.find(params[:id]).destroy
    flash[:notice] = 'journal item deleted succefully!'
    redirect_to :controller => 'journals', :action => 'index'
  end

 
 def edit
 @journal=Journal.find(params[:id])  
 end


  def update
    @journal = Journal.find(params[:id])
    if @journal.update_attributes(params[:journal])
      flash[:notice] = 'Journals updated!'
      redirect_to :controller => 'journals', :action => 'view', :id => @journal
      end
  end

  def index
     @current_user = current_user
      @journal = []
      if request.get?
        @journal = Journal.title_like_all params[:query].split unless params[:query].nil?
      end
  end

  def search_journal_ajax
    @journal = nil
    conditions = ["title LIKE ?", "%#{params[:query]}%"]
    @journal = Journal.find(:all, :conditions => conditions) unless params[:query] == ''
    render :layout => false
  end

  def view
    @current_user = current_user
    @journal = Journal.find(params[:id])
  end
end
