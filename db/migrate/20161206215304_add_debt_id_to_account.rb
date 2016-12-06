class AddDebtIdToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :debt_id, :integer
    add_reference :accounts, :debt, foreign_key: true
  end
end
