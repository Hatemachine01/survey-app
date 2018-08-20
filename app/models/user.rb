class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Associations
  has_many :answers

  # Validations
  validates :email, presence: true
  # validates :email, uniqueness: true

end
