class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.text :description
      t.integer :user_id
      t.float :limit
      t.float :outstanding_amount
      t.datetime :maturity_date
      t.float :monthly_payment_amount
      t.integer :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
