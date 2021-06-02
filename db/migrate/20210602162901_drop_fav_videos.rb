class DropFavVideos < ActiveRecord::Migration[6.0]
  def change
    drop_table :fav_videos
  end
end
