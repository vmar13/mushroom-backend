class AddTitleToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :title, :string
  end
end
