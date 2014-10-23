class SessionsController < ApplicationController
skip_before_action :require_signin, only: [:new, :create]
	def new

	end

	def create
		# Find user by their email
		user = User.find_by(email: params[:session][:email].downcase)

		# Test if the user was found and authenticated
		if user && user.authenticate(params[:session][:password])
			sign_in(user)
			redirect_back_or(root_path)
		else
			flash[:error] = "Invalid email/password"
			redirect_to new_session_path
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end

end
