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

accounts=Account.create([
  {name:'sabadell',account_type:0,initial_outstanding_balance:2000,user_id:4},
  {name:'ing',account_type:1,initial_outstanding_balance:6000,user_id:4},
  {name:'bbva',account_type:3,initial_outstanding_balance:4000,user_id:4},
  {name:'bankinter',account_type:2,initial_outstanding_balance:1000,user_id:4}
  ])

belen_debt1=User.find(4).debts.create({description:'tarjeta1',limit:1000,outstanding_amount:800,maturity_date:'2017-12-31',monthly_payment_amount:140,category:0,account_id:1})
belen_debt1=User.find(4).debts.create({description:'tarjeta2',limit:2000,outstanding_amount:500,maturity_date:'2017-12-31',monthly_payment_amount:100,category:0,account_id:1})
belen_deposit1=User.find(4).deposits.create({description:'salario',amount:1500,period:4,deposit_type:0,deposit_subtype:0,account_id:4,deposited_at:'2016-11-25'})
belen_deposit2=User.find(4).deposits.create({description:'preahorro',amount:100,period:4,deposit_type:2,deposit_subtype:8,account_id:2,deposited_at:'2016-11-25'})


expenses= Expense.create([
  {description:'AhorraMas',amount:40,period:1,paid_at:'2016-11-10',category:0,account_id:1,classification:2,user_id:4},
  {description:'Mercadona',amount:30,period:1,paid_at:'2016-11-20',category:0,account_id:1,classification:2,user_id:4},
  {description:'Gimnasio',amount:50,period:4,paid_at:'2016-11-1',category:14,account_id:1,classification:2,user_id:4},
  {description:'Yoga',amount:40,period:4,paid_at:'2016-11-5',category:14,account_id:1,classification:2,user_id:4}
  ])
