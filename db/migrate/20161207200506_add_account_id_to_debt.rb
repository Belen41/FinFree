class AddAccountIdToDebt < ActiveRecord::Migration[5.0]
  def change
    add_column :debts, :account_id, :integer
  end
end
