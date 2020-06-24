class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.integer :mush_health_benefit_id
      t.string :citation

      t.timestamps
    end
  end
end
