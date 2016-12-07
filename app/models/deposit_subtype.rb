class DepositSubtype < ApplicationRecord
  belongs_to :deposit_type

  enum name:[ 
  				:trabajo_habitual, :trabajo_esporadico,  
            	:renta_inmueble, :venta_conocimiento, :derechos,
            	:comisiones, :afiliados, :negocio_propio,
            	:otros
          	]
  validates :name, presence:true
end
