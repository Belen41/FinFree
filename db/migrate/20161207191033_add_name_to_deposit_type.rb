class AddNameToDepositType < ActiveRecord::Migration[5.0]
  def change
    add_column :deposit_types, :name, :integer
  end
end
