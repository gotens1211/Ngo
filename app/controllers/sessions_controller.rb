class SessionsController < ApplicationController
	def new
		if logged_in?
			redirect_to root_path
		else
			@disable_nav = true
		end
	end

	def create
		user = User.find_by(user_name: params[:session][:name].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "You have Successfully logged in."
			redirect_to root_path
		else
			flash[:danger] = "Wrong User name or password"
			@disable_nav = true	
			render 'new'	
		end

	end
	def destroy
		session[:user_id] = nil
		flash[:success] = "You have logged out"	
		redirect_to root_path
	end
end


