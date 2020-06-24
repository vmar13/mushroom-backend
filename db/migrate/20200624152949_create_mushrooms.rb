class CreateMushrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :mushrooms do |t|
      t.string :name
      t.string :scientific_name
      t.string :location
      t.string :flavor

      t.timestamps
    end
  end
end
