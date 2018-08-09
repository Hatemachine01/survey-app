class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
    	t.text :question_body
    	t.integer :yes_value
    	t.integer :no_value

      t.timestamps
    end
  end
end
