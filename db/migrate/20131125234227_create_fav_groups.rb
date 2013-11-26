class CreateFavGroups < ActiveRecord::Migration
  def change
    create_table :fav_groups do |t|
      t.string :name
      t.references :user, index: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
