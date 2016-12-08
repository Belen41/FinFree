class Account < ApplicationRecord
  belongs_to :user

  enum account_type: [:corriente, :ahorro]

  validates :name, presence:true, length: { maximum: 25 }
  validates :initial_outstanding_balance, :account_type, presence:true
end
