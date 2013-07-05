class BusSettingsController < ApplicationController
	

	def index
		@bus_settings = BusSetting.all
	end

	def new
		@bus_setting = BusSetting.new
	end

	def create
		@bus_setting = BusSetting.new(params[:bus_setting])
		respond_to do |format|
			if @bus_setting.save
				format.html {redirect_to bus_settings_path}
			else
				format.html { render  :action => "new" }	
			end
		end
	end

	def edit
		@bus_setting = BusSetting.find(params[:id])
	end

	def destroy
		@bus_setting = BusSetting.find(params[:id])

		respond_to do |format|
			if @bus_setting.destroy
				format.html { redirect_to bus_settings_path }
			end
		end
	end

	def update
		@bus_setting = BusSetting.find(params[:id])
		respond_to do |format|
			if @bus_setting.update_attributes(params[:bus_setting])
				format.html { redirect_to bus_settings_path }
			else
				format.html { render :action => "edit" }	
			end
		end
	end

	def show
		@bus_setting = BusSetting.find(params[:id])
	end

end