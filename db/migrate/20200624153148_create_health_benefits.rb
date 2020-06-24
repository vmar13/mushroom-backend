class CreateHealthBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :health_benefits do |t|
      t.string :name

      t.timestamps
    end
  end
end
