class StaticController < ApplicationController
	before_action :clear_session

	def home
	end


	def registration
	
	end


	private

	def clear_session
		if current_user
			sign_out(current_user) 
		end
	end
	
end
