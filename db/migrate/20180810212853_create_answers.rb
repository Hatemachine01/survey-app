class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
    	t.references :user, foreign_key: true
    	t.references :question, foreign_key: true
    	t.integer :ques_category #Question.find_by(question.id) = question.category_id (@category)
    	t.boolean :value
      t.timestamps
    end
  end
end

