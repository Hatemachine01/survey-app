class ResultsController < ApplicationController


	def answers_total_value
		@answers = current_user.answers
		@categories = Category.all.to_a
		p @sum = {}
		p @cat_count = 1
		p @ans_count = 1

		@categories.each_with_index do |cat, ind|
			@total_category_value = 0.0
		  puts "Dentro de .each #{ind + 1}"
			p "Category = #{ind + 1}"
			p cat_answers = @answers.where(ques_category: ind + 1)
			cat_answers.each_with_index do |answer, ind|
				puts "Dentro de each para array de user.answers"
				p "Question ID = #{answer.question_id}"
				p "answer.value #{answer.value}"
				if answer.value == true
					ans_value = Question.find(answer.question_id).yes_value
					@total_category_value = @total_category_value + ans_value
					p "suma total categoria = #{@total_category_value}"
				end
				p "suma total categoria = #{@total_category_value}"
			end
			@sum["cat_#{ind + 1}"] = @total_category_value.to_s
			p "@sum = #{@sum}"
	  end
	  @sum
	end


	def results
		@answers = current_user.answers
		@values = answers_total_value
		sign_out(current_user)  	
	end
end




# def answers_total_value
# 			@answers = current_user.answers
# 			categories = Category.count
# 			@sum = {}
# 			@total_category_value = 0.0
# 			@a = 1
# 			@b = 1
			

# 			while @a <= categories
# 				puts "Dentro de Primer While"
				
# 				# while @a < @answers.where(ques_category: i).count + 1
# 				# 	puts "Dentro de Segundo While"
# 				# 	p "@a = #{@a}" 
# 				# 	p cat_answers = @answers.where(ques_category: @a)
# 				# 	# if Question.find(cat_answers[@a].question_id).yes_value != 0.0
# 				# 	# 	puts "Dentro de IF yes_value"
# 				# 	# 	# total_category_value += Question.find(cat_answers[x].question_id).yes_value
# 				# 	# elsif 1 == 1#Question.find(cat_answers[x].question_id).yes_value != 0.0
# 				# 	# 	puts "Dentro de ELSIF no_value"
# 				# 	# 	@total_category_value += Question.find(cat_answers[@a].question_id).no_value
# 				# 	# end
# 				# 	@a += 1
# 				# 	@total_category_value
# 				# end
					


# 				@sum["value_category_"+"#{i}"] = @total_category_value
# 			end
# 			p @sum 
# 		end

# 		answers_total_value
# 	end
