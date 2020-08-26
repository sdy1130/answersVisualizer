class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :answer_1
      t.text :answer_2
      t.integer :age
      t.string :country_code

      t.timestamps
    end
  end
end
