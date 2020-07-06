class DropVideos < ActiveRecord::Migration[6.0]
  def change
    drop_table :videos
  end
end
