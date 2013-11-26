class CreateQuestionFriends < ActiveRecord::Migration
  def change
    create_table :question_friends do |t|
      t.references :question, index: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
