class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :user_id
      t.integer :expense_id
      t.integer :deposit_id
      t.float :outstanding_balance
      t.references :user, foreign_key: true
      t.references :deposit, foreign_key: true
      t.references :expense, foreign_key: true

      t.timestamps
    end
  end
end
