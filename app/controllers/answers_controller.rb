class AnswersController < ApplicationController
	before_action :set_category
	@@number_of_categories = Category.count

	def index
	end

	def show
	end

	def new
		p "dentro de new"
		@@current_question_id 
		p "****current_question_id es igual a #{@@current_question_id}"
		@@current_category_id 
		p "****current_category_id es igual a #{@@current_category_id}"
		@current_category =  Category.find(@@current_category_id)
		p "CURRENT CATEGORY = #{@current_category.id}"
		@current_question = @current_category.questions.find(@@current_question_id)
		p "CURRENT_QUESTION = #{@current_question.id}"
		@answer = Answer.new
	end

	def edit
	end

	def create
		# @current_category =  Category.find_by(category_name: @categories[@@current_category_id]) #este es una búsqueda a la base y empieza desde 1
		# @@current_question = @current_category.questions.find(@@current_question_id)  #este es una búsqueda a la base y empieza desde 1
		@current_category =  Category.find(@@current_category_id)
		p "CURRENT CATEGORY = #{@current_category.id}"
		@current_question = @current_category.questions.find(@@current_question_id)
		p "CURRENT_QUESTION = #{@current_question.id}"

		p "set_params[:value] = #{set_params[:value]}"
		if set_params[:value] == "1"
			 final_value = true
		elsif set_params[:value] == "2" 
			final_value = false		
		end
		p "final_value = #{final_value}"
		
		answer = Answer.create(value: final_value, user_id: current_user.id , question_id: @current_question.id, ques_category: @current_category.id)   
		#p @@current_question_id += 1
		# p "****current_question_counter AUMENTÓ a #{@@current_question_id}"
		number_of_questions = @current_category.questions.count
			if @@current_category_id <= @@number_of_categories #checar condición menor, o menor igual?
				p "Dentro de IF CATEGORY" * 3
				if @@current_question_id == Question.count - 30
					redirect_to results_path	and return
				elsif @current_category.questions.last.id <= @@current_question_id 
				  @@current_category_id += 1 #checar condición menor, o menor igual?
					p "****current_category_counter AUMENTÓ a #{@@current_category_id}"
					# @@current_question_id  = 0
					# p "****current_question_counter SE RESETEÓ a #{@@current_question_id}"
				end
			# else
			# 	p "Dentro de IF CATEGORY FALSE" * 3
			# 	redirect_to results_path	and return
		  end
		@@current_question_id += 1
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
	  # @categories = ["Pertinencia", "Optimización de Recursos", "Causalidad de Efectos", "Evaluabilidad" , "Valor por Dinero" , "Sostenibilidad"]
		if params[:id] == "first_category" #Sólo si vienes de registro (debes venir de registro) manda el ID
			p "DENTRO DE IF"
 			@@current_category_id = 1
 			@@current_question_id = 1
		end
	end

end


















