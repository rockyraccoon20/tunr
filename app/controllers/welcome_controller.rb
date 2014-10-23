class WelcomeController < ApplicationController
	skip_before_action :require_signin, only: [:index]

	def index
		render text: "Yo, sup?"
	end
end
