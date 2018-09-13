class ResultsController < ApplicationController

	def results
		@answers = current_user.answers
	end

	#necesito la suma de los yes/no_value por category_id
	def answers_total_value
		
	end

end
