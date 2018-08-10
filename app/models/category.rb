class Category < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :category_name, :threshold1, :threshold2, :escala_bajo, :escala_medio, :escala_alto, presence: :true
end
