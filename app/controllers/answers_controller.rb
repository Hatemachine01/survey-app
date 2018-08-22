class AnswersController < ApplicationController
	before_action :set_category	

	def index
	end

	def show
	end

	def new
		@answer = Answer.new
		p params
	end

	def edit
	end

	def create
	end

	def update
	end
	
	def destroy
	end

	##PRIVATE METHOD 
	def set_category
		@category = Category.first
	end

end
