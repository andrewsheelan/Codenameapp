class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.references :question_friend, index: true
      t.string :message
      t.boolean :is_from

      t.timestamps
    end
  end
end
