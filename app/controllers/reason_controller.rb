class ReasonController < ApplicationController
	before_filter :login_required
	def display
		@reason = Reason.find(params[:id])
		respond_to do |format|
			format.html { render :layout => false}
		end
	end
end