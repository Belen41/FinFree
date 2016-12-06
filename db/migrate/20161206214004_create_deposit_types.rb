class CreateDepositTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :deposit_types do |t|
      t.string :name
      t.integer :deposit_subtype_id
      t.integer :deposit_id
      t.references :deposit, foreign_key: true

      t.timestamps
    end
  end
end
