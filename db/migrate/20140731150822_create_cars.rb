class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :price
      t.string :vin
      t.string :color
      t.string :model
      t.string :cc

      t.timestamps
    end
  end
end
