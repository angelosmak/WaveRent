class AddFieldsToGear < ActiveRecord::Migration[7.0]
  def change
    add_column :gears , :title , :string
    add_column :gears, :description, :text
    add_column :gears, :category, :string
  end
end
