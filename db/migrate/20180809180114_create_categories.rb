class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
    	t.string :category_name
    	t.integer :threshold1
    	t.integer :threshold2
    	t.integer :escala_bajo
    	t.integer :escala_medio
    	t.integer :escala_alto 

      t.timestamps
    end
  end
end
