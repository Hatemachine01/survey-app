class Question < ApplicationRecord
	belongs_to :category
	has_many :answers
	validates :category, :yes_value, :no_value, :question_body, presence: :true
end
