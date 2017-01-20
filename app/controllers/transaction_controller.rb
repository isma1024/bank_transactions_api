class TransactionController < ApplicationController
  	def list
  		@transactions = Transaction.all

  		render json: @transactions
  	end

  	def get
  		@transaction = Transaction.find(params[:id])

  		render json: @transaction
  	end

  	def create
  		@transaction = Transaction.new(import: params[:import], description: params[:description])
  		@transaction.save

  		render json: @transaction
  	end

  	def update
  		@transaction = Transaction.find(params[:id])
  		@transaction.update(import: params[:import], description: params[:description])

  		render json: @transaction
  	end

  	def delete
		@transaction = Transaction.find(params[:id])
		@transaction.destroy

		render json: {'message' => 'Transaction deleted succesfully'}  		
  	end
end
