class CreateDepositSubtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :deposit_subtypes do |t|
      t.string :name
      t.integer :deposit_type_id
      t.references :deposit_type, foreign_key: true

      t.timestamps
    end
  end
end
