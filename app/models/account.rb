class Account < ApplicationRecord
  belongs_to :user

  enum account_type: [:gastos, :ahorro, :inversion, :nomina]

  validates :name, presence:true, uniqueness:true, length: { maximum: 25 }
  validates :initial_outstanding_balance, :account_type, presence:true

end
