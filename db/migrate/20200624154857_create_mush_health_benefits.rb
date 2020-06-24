class CreateMushHealthBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :mush_health_benefits do |t|
      t.integer :mushroom_id
      t.integer :health_benefit_id

      t.timestamps
    end
  end
end
