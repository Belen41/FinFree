class DepositType < ApplicationRecord
  belongs_to :deposit
  has_many :deposits_subtype
end
