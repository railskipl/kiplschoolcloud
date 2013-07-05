require "json"
class DataImportsController < ApplicationController
  filter_access_to :all
  before_filter :login_required

  
  def index
    if request.post? and params[:data] and params[:data][:batch_id] 
      if (f = params[:data][:file])
        @upload_data = CsvImport.new(f.path,params[:data][:batch_id])
        if @upload_data.save
          flash[:notice] = "CSV Imported Successfully"
        else
          reason = Reason.create(:reason => @upload_data.errors.to_json)
          flash[:notice] = "CSV Import Failed <a class='reason fancybox.ajax' href='#{error_path(reason.id)}'> Reason </a> "
        end
      else
        flash[:notice] = "Select a file to import"
      end
    else
      flash[:notice] = "Invalid Request #{request.post?} and #{params[:batch_id]}" 
    end
    respond_to do |format|
      format.html { redirect_to bulk_upload_path }
    end
  end

  private
  def extension

  end
end
