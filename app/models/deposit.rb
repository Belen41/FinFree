class Deposit < ApplicationRecord
  belongs_to  :user
  has_one     :account
  has_one     :deposit_type
  has_one     :deposit_subtype
  
  enum period:[ 
  					    :anual, :bimensual, :puntual,
          			:mensual, :semestral, :trimestral
          		]
  
  validates :amount, :deposited_at , :period ,
  			    :deposit_type, :deposit_subtype, presence:true
  validates :description, presence:true, length: { maximum: 25 }
end
