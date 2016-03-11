class DonatesController < ApplicationController
	def index
		@donate = Donate.all
	end

	def new
		@donate = Donate.new
	end

	def create
		@donate = Donate.new(donate_params)
		if @donate.save
		flash[:notice] = "Donation Successful"	
		redirect_to donate_path(@donate)
		else
		render 	'new'
	end
	end
	private
	def donate_params
		params.require(:donate).permit(:name,:email_id,:phone,:amount)
	end
end