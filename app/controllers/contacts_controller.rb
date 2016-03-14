class ContactsController < ApplicationController
	def index
		@contact = Contact.all
	end
	
	def new
	@contact = Contact.new
	end

	def create 
		@contact = Contact.new(contact_params)
		if @contact.save
		flash[:success] = "Message Succesfully Sent."	
		redirect_to root_path(@contact)
		else
		render 	'new'
	end
	end

	def show
		@contact = Contact.find(params[:id])
	end
	private
	def contact_params
		params.require(:contact).permit(:name,:email_id,:phone,:subject,:requirement)
	end

end
