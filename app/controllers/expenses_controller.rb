class ExpensesController < ApplicationController
	def index
	end
	def show
		month		= Date.today.strftime("%m")
		year		= Date.today.strftime("%y")
		@user		= User.find(params[:id])
		@expenses 	= @user.expense.where(paid_at: 
					  (Date.today.begining_of_month)..Date.today.end_of_month)
	end
	def create
	end
	def update
	end
	def destroy
	end
end
