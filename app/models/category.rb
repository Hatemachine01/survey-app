class Category < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :category_name, :escala_bajo, :escala_medio, :escala_alto, presence: :true
end
