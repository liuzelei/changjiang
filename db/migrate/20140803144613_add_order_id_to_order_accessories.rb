class AddOrderIdToOrderAccessories < ActiveRecord::Migration
  def change
    add_column :order_accessories, :order_id, :integer
  end
end
