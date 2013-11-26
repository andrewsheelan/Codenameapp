class CreateUserExpertCategories < ActiveRecord::Migration
  def change
    create_table :user_expert_categories do |t|
      t.references :user, index: true
      t.references :expert_category, index: true
      t.references :rating, index: true

      t.timestamps
    end
  end
end
