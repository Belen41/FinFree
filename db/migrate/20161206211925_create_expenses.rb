class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.text :description
      t.float :amount
      t.integer :period
      t.datetime :paid_at
      t.integer :category
      t.integer :account_id
      t.integer :classification
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
