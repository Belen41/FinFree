class RemoveNameFromDepositSubtype < ActiveRecord::Migration[5.0]
  def change
    remove_column :deposit_subtypes, :name, :string
  end
end
