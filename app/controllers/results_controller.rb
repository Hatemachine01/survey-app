class ResultsController < ApplicationController

	def results
		@answers = current_user.answers
	end
end
