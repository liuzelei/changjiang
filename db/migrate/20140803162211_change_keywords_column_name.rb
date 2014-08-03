class ChangeKeywordsColumnName < ActiveRecord::Migration
  def change
    rename_column :payments, :type, :payment_for
    add_column :payments, :payment_method, :string
  end
end
