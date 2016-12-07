class RemoveNameFromDepositType < ActiveRecord::Migration[5.0]
  def change
    remove_column :deposit_types, :name, :string
  end
end
