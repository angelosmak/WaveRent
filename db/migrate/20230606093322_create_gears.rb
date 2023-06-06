class CreateGears < ActiveRecord::Migration[7.0]
  def change
    create_table :gears do |t|
      t.string :brand
      t.string :model
      t.string :size
      t.integer :rate_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
