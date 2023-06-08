class AddCoordinatesToGear < ActiveRecord::Migration[7.0]
  def change
    add_column :gears, :latitude, :float
    add_column :gears, :longitude, :float
  end
end
