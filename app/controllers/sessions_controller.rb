class SessionsController < ApplicationController

	def new

	end

	def create
		# Find user by their email
		user = User.find_by(email: params[:session][:email].downcase)

		# Test if the user was found and authenticated
		if user && user.authenticate(params[:session][:password])
			#TODO Sign In the User
		else
			flash[:error] = "Invalid email/password"
			redirect_to new_session_path
		end
	end

	def destroy

	end

end
