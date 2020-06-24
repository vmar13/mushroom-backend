class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :mushroom_id
      t.integer :total

      t.timestamps
    end
  end
end
