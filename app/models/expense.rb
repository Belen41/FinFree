class Expense < ApplicationRecord
  belongs_to :user
  has_one :account
  enum category:[ 
  					:alimentacion, :alquiler, :comunidad, 
            		:agua, :gas, :electricidad, :gasolina,
            		:movil_adsl, :ibi, :seguro_hogar,
            		:seguro_coche_moto, :ocio,
            		:higiene_personal, :limpieza_hogar, 
            		:gimnasio, :otros, :ropa, :deporte,
            		:transporte, :restauracion
          		]
  enum period: [ 
  					:anual, :bimensual, 
          			:mensual, :semestral, :trimestral
          		]

  enum classification: [:evitable, :inevitable, :mejorable]
end
