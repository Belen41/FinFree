class Deposit < ApplicationRecord
  belongs_to  :user
  has_one     :account

  enum period: [
  					    :puntual, :semanal, :anual, :bimensual,
          			:mensual, :semestral, :trimestral
          		]
  enum deposit_type:    [:activo, :pasivo, :ahorro]
  enum deposit_subtype: [:trabajo_habitual, :trabajo_puntual, :renta_inmuebles, :venta_formacion, :derechos,
                         :comisiones, :afiliados, :participacion_empresas, :preahorro, :otros
                        ]

  validates :description, presence:true, uniqueness:true, length: { maximum: 25 }
  validates :deposit_type, :deposit_subtype, :account_id, :amount, :period, presence:true
end
