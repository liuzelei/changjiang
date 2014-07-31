class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.integer :amount
      t.datetime :paid_at
      t.string :type
      t.string :card_no
      t.string :bank
      t.string :no

      t.timestamps
    end
  end
end
