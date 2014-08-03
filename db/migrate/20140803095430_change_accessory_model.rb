class ChangeAccessoryModel < ActiveRecord::Migration
  def change
    add_column :accessories, :price, :integer
    add_column :orders, :status, :string
  end
end
