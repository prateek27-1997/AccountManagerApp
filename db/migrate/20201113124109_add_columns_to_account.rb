class AddColumnsToAccount < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :discount, :bigint
    add_column :accounts, :balance, :bigint
    add_column :accounts, :previous_balance, :bigint
  end
end
