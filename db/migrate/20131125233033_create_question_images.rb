class CreateQuestionImages < ActiveRecord::Migration
  def change
    create_table :question_images do |t|
      t.references :question, index: true
      t.string :full_size
      t.string :thumbnail

      t.timestamps
    end
  end
end
