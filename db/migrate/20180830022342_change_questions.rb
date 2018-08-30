class ChangeQuestions < ActiveRecord::Migration[5.1]
  def change
  	change_column :questions, :yes_value, :float
		change_column :questions, :no_value, :float
  end
end
