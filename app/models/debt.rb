class Debt < ApplicationRecord
  belongs_to :user
  has_one :account
  enum category: [:tarjeta_credito, :hipoteca, :prestamo_personal]
end
