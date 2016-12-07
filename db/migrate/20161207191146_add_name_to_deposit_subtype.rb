class AddNameToDepositSubtype < ActiveRecord::Migration[5.0]
  def change
    add_column :deposit_subtypes, :name, :integer
  end
end
