class DepositType < ApplicationRecord
  belongs_to :deposit
  has_many :deposits_subtype

  enum name:[:activo, :pasivo]
  
  validates :name, presence:true				   
end
