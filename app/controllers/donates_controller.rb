class DonatesController < ApplicationController
	def index
		@donate = Donate.all
	end

	def new
		@donate = Donate.new
	end
end