class Account < ApplicationRecord
  belongs_to :user

  enum type: [:corriente, :ahorro]

  validates :description, presence:true, length: { maximum: 25 }
  validates :initial_outstanding_balance, :type, presence:true
end
