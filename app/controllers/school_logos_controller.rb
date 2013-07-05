class SchoolLogosController < ApplicationController
   before_filter :login_required
  
  def new
     @schoollogo = SchoolLogo.find(:all)
     @school_logo = SchoolLogo.new(params[:school_logo])
     
     if @schoollogo.empty?
          if request.post? and @school_logo.save
            flash[:notice] = 'logo added!'
            redirect_to :controller => 'school_logos', :action => 'edit', :id => @school_logo.id
          end
     else
       school_logo = SchoolLogo.find(:all)
       school_logo.each do |s|
         redirect_to :controller => 'school_logos', :action => 'edit', :id => s.id
        end
     end
      
  end
  
  
  
  def edit
     @school_logo = SchoolLogo.find(params[:id])
     
     if request.post? and @school_logo.update_attributes(params[:school_logo])
       flash[:notice] = 'Laurels updated!'
       redirect_to :controller => 'school_logos', :action => 'edit', :id => @school_logo.id
     end
  end
  
  
end
