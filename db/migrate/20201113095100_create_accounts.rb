class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :user
      t.bigint :amount 
      t.string :comments
      t.string :transaction_type
      t.timestamps
    end
  end
end
