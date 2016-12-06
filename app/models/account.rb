class Account < ApplicationRecord
  belongs_to :user
  belongs_to :deposit
  belongs_to :expense
end
