# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {name: 'Paul',  email: 'paul@arrakis.com', password: 'ironhack24', password_confirmation: 'ironhack24'},
  {name: 'Alia',  email: 'alia@arrakis.com',  password: 'ironhack21', password_confirmation: 'ironhack21'},
  {name: 'Leto', email: 'leto@arrakis.com',  password: 'ironhack15', password_confirmation: 'ironhack15'},
  {name: 'Belen', email: 'belen@belenlinacero.com',password: 'linacero41',password_confirmation: 'linacero41'}
])

# deposits = Deposit.create([
	#{description: "sueldo", amount: 500, period: "mensual", type: "activo", subtype: "trabajo habitual", deposited_at: "15/08/2016", user_id: 4},
	#{description: "comisiones distribucion", amount: 100, period: "mensual", type: "pasivo", subtype:"comisiones", deposited_at: "14/10/2016", user_id:4},
	#{description: "sueldo", amount: 2000, period:"mensual", type: "activo", subtype: "trabajo habitual",deposited_at: "15/11/2016",user_id: 2 },
	#{description: "renta alquiler", amount:500, period: "mensual", type:"pasivo", subtype:"rentas inmuebles", deposited_at: "10/11/2016", user_id:2},
	#{description: "ingresos afiliados", amount:100, period: "puntual",type:"pasivo", subtype:"programas de afiliados", deposited_at: "20/10/2016",user_id:1},
	#{description: "salario", amount:1500, period: "mensual", type:"activo",subtype:"trabajo habitual",deposited_at:"15/10/2016", user_id: 1}
#])

# accounts 	= Account.create([
# 	{name: 'Sabadell', 

# 		}])
# belen.debts.create({})
# belen.expenses.create({})
# belen.deposits.create({})
# belen.deposit_types.

# debts				= Debt.create([])
# expenses			= Expense.create([])
# deposits			= Deposit.create([])
# deposit1=Deposit.create({})
# typeActive=deposit1.types.create({name:'activo'})

# deposit_types 		= DepositType.create([
# 	{name:'activo',deposit_id:1 }
# 	{name:'activo'
# 		}])
# deposit_subtypes 	= DepositSubtype.create([
# 	{name:'trabajo habitual',},
# 	{name:'trabajo puntual',},
# 	]) 
