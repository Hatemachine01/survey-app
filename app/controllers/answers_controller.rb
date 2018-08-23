class AnswersController < ApplicationController
	before_action :set_category	
	 $current_question_counter = 0
	 $current_category_counter = 0

	def index
	end

	def show
	end

	def new
		# p "Counters" * 10 
		 $current_question_counter 
		 $current_category_counter 
		p @current_category =  Category.find_by(category_name: @categories[$current_category_counter])
		p @current_question = @current_category.questions[$current_question_counter]   
		@answer = Answer.new
	end

	def edit
	end

	def create
		answer = Answer.create(value: true, user_id: 1 , question_id: 1)
		p	@current_category =  Category.find_by(category_name: @categories[$current_category_counter])
		p	@current_question = @current_category.questions[$current_question_counter]   
		 $current_question_counter += 1
		 number_of_questions = @current_category.questions.count
				if $current_question_counter >= number_of_questions - 1 
				 $current_category_counter += 1
				 $current_question_counter  = 0
				end	
		redirect_to new_answer_path
	end

	def update
	end
	
	def destroy
	end

	##PRIVATE METHODS

	def set_params
		params.require(:answer).permit(:id , :value)
	end

	def set_category
		@categories = ["Pertinencia", "Optimización de Recursos", "Causalidad de Efectos", "Evaluabilidad" , "Valor por Dinero" , "Sostenibilidad"]
	end

end
