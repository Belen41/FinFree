class AddDebtToAccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :accounts, :debt, foreign_key: true
  end
end
