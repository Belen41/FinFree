class Account < ApplicationRecord
  belongs_to :user
  belongs_to :deposit
  belongs_to :expense

  validates :initial_outstanding_amount, presence:true
  validates :name , presence:true, uniqueness:true

end
