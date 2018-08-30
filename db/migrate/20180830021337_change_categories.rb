class ChangeCategories < ActiveRecord::Migration[5.1]
  def change
		change_column :categories, :escala_bajo, :float
		change_column :categories, :escala_medio, :float
		change_column :categories, :escala_alto, :float
  end
end



