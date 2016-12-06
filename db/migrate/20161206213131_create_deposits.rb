class CreateDeposits < ActiveRecord::Migration[5.0]
  def change
    create_table :deposits do |t|
      t.text :description
      t.float :amount
      t.integer :period
      t.integer :deposit_type_id
      t.integer :deposit_subtype_id
      t.integer :account_id
      t.datetime :deposited_at
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
