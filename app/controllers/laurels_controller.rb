class LaurelsController < ApplicationController
  
  def add
    @laurel = Laurel.new(params[:laurel])

    if request.post? and @laurel.save
      flash[:notice] = 'Laurels added!'
      redirect_to :controller => 'laurels', :action => 'view', :id => @laurel.id
    end
  end

  def add_comment
    @cmnt = LaurelsComment.new(params[:comment])
    @cmnt.author = current_user
    @cmnt.save
  end


  def all
    @laurel= Laurel.paginate :page => params[:page]
  end

  def delete
    @laurel = Laurel.find(params[:id]).destroy
    flash[:notice] = 'Laurels item deleted succefully!'
    redirect_to :controller => 'laurels', :action => 'index'
  end

  def delete_comment
    @comment = LaurelComment.find(params[:id])
    LaurelComment.destroy(params[:id])
  end
  
  
def edit
@laurel=Laurel.find(params[:id])  
end


def update
    @laurel = Laurel.find(params[:id])
    if  @laurel.update_attributes(params[:laurel])
      flash[:notice] = 'Laurels updated!'
      redirect_to :controller => 'laurels', :action => 'view', :id => @laurel
      else
      render :action=>'edit'
    end
  end

  def index
    @current_user = current_user
    @laurel = []
    if request.get?
      @laurel = Laurel.title_like_all params[:query].split unless params[:query].nil?
    end
  end

  def search_investiture_ajax
    @laurel = nil
    conditions = ["title LIKE ?", "%#{params[:query]}%"]
    @laurel = Laurel.find(:all, :conditions => conditions) unless params[:query] == ''
    render :layout => false
  end
  def view
    @current_user = current_user
    @laurel = Laurel.find(params[:id])
   
  end
end
