class ContactsController < ApplicationController
	before_action :require_user, except: [:new, :create]

	def index
		@contact = Contact.all
	end
	
	def new
	@contact = Contact.new
	end

	def create 
		@contact = Contact.new(contact_params)	
		@contact.user = User.first
		if @contact.save
		flash[:success] = "Message Succesfully Sent."	
		redirect_to root_path
		else
		render 'new'

	end
	end

	def show
		@contact = Contact.find(params[:id])
	end
	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		flash[:success] = "Message Successfully Deleted."
		redirect_to contacts_path
	end
	private
	def contact_params
		params.require(:contact).permit(:name,:email_id,:phone,:subject,:requirement)
	end

end
