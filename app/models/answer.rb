class Answer < ApplicationRecord
	# associations
	belongs_to :user
	belongs_to :question
	# validations
	validates :user, :question, :ques_category, presence: :true
	validates :value, :inclusion => [true, false]
end
