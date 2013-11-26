class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :shopper_id
      t.references :question_image, index: true
      t.references :question_friend, index: true

      t.timestamps
    end
  end
end
