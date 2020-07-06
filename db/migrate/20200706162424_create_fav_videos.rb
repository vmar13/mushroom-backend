class CreateFavVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :fav_videos do |t|
      t.integer :user_id
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
