class AnswersController < ApplicationController
	before_action :set_category

	def index
	end

	def show
	end

	def new
		p "dentro de new"
		p @@current_question_counter 
		p "****current_question_counter es igual a #{@@current_question_counter}"
		p @@current_category_counter 
		p "****current_category_counter es igual a #{@@current_category_counter}"
		p @current_category =  Category.find_by(category_name: @categories[@@current_category_counter])
		p @current_question = @current_category.questions[@@current_question_counter]   
			@answer = Answer.new
	end

	def edit
	end

	def create
		@current_category =  Category.find_by(category_name: @categories[@@current_category_counter])
		@current_question = @current_category.questions[@@current_question_counter]
		
		if set_params[:value] == "1"
			 final_value = true
		elsif set_params[:value] == "2" 
			final_value = false		
		end

		p params[:value]
		p final_value
		answer = Answer.create(value: final_value, user_id: current_user.id , question_id: @current_question.id, ques_category: @current_category.id)   
		p @@current_question_counter += 1
		p "****current_question_counter AUMENTÓ a #{@@current_question_counter}"
		number_of_questions = @current_category.questions.count
			if @@current_category_counter < @categories.count - 2
				p "Dentro de IF CATEGORY"*30
				if @@current_question_counter >= number_of_questions - 2 
				  @@current_category_counter += 1
					p "****current_category_counter AUMENTÓ a #{@@current_category_counter}"
					@@current_question_counter  = 0
					p "****current_question_counter SE RESETEÓ a #{@@current_question_counter}"
				end
			else
				p "Dentro de IF CATEGORY FALSE"*30
				redirect_to results_path	and return
			end
		redirect_to new_answer_path 
	end

	def update
	end
	
	def destroy
	end

	##PRIVATE METHODS
	private 

	def set_params
		params.require(:answer).permit(:id , :value)
	end

	def set_category
		puts "Dentro de set_category"
		@categories = ["Pertinencia", "Optimización de Recursos", "Causalidad de Efectos", "Evaluabilidad" , "Valor por Dinero" , "Sostenibilidad"]
		if params[:id] == "first_category" 
			p "Dentro de if" * 3
 			@@current_question_counter = 0
 			@@current_category_counter = 0
		end
	end

end
