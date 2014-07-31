class CreateOrderAccessories < ActiveRecord::Migration
  def change
    create_table :order_accessories do |t|
      t.integer :accessory_id
      t.integer :count

      t.timestamps
    end
  end
end
