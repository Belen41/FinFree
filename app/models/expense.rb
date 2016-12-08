class Expense < ApplicationRecord
  belongs_to  :user
  has_one     :account

  enum category:[
  					    :alimentacion, :alquiler, :comunidad,
            		:agua, :gas, :electricidad, :gasolina,
            		:movil_adsl, :ibi, :seguro_hogar,
            		:seguro_coche_moto, :ocio,
            		:higiene_personal, :limpieza_hogar,
            		:deporte, :otros, :ropa,
            		:transporte, :restauracion
          		]

  enum period:[
  					    :puntual, :semanal, :anual, :bimensual,
          			:mensual, :semestral, :trimestral
          		]


  enum classification: [:evitable, :inevitable, :mejorable]

  validates :description, presence:true, uniqueness:true, length: { maximum: 25 }
  validates :amount, :period, :paid_at, :category ,
            :classification , :account_id, presence:true
end
