class Debt < ApplicationRecord
  belongs_to :user
  has_one :account
  enum category: [:tarjeta_credito, :hipoteca, :prestamo_personal]
  validates :limit, :outstanding_amount, :maturity_date, 
  			:monthly_payment_amount, :category, presence:true
end
