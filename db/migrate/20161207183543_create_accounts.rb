class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :type
      t.integer :user_id
      t.float :initial_outstanding_balance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
