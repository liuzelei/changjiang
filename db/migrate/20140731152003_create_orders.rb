class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :car_id
      t.string :customer_name
      t.integer :price
      t.string :no

      t.timestamps
    end
  end
end
