class RemoveVideoIdFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :video_id, :integer 
  end
end
