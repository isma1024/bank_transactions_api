class AccountController < ApplicationController
    def list
  		@accounts = Account.all

  		render json: json_response(@accounts)
  	end

  	def get
  		@account = Account.find(params[:id])

  		render json: json_response(@account)
  	end

  	def create
  		@account = Account.new(balance: params[:balance], name: params[:name], description: params[:description])

		if @account.valid?
			@account.save
			render json: json_response(@account)
		else
			render json: json_response(@account.errors.messages, 422)
		end
  	end

  	def update
  		@account = Account.find(params[:id])
  		@account.update(balance: params[:balance], name: params[:name], description: params[:description])

  		render json: json_response(@account)
  	end

  	def delete
	  	@account = Account.find(params[:id])
		@account.destroy

		render json: json_response({'message' => 'Account deleted succesfully'})
  	end

    def get_transactions
        @account = Account.find(params[:id])

        render json: json_response(@account.transactions)
    end
end
