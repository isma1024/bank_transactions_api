class TransactionController < ApplicationController
    def list
        if params.has_key?(:account_id)
            @account        = get_account(params[:account_id])
            @transactions   = Transaction.where(account_id: params[:account_id]).all
        else
            @transactions = Transaction.all
        end

    	render json: json_response(@transactions)
    end

    def get
    	@transaction = Transaction.find(params[:id])

    	render json: json_response(@transaction)
    end

    def create
        @account = get_account(params[:account_id])
        @transaction = @account.transactions.new(import: params[:import], description: params[:description], category_id: params[:category_id])

        if @transaction.valid?
            @transaction.save
            render json: json_response(@transaction)
        else
            render json: json_response(@transaction.errors.messages, 422)
        end
    end

    def update
    	@transaction = Transaction.find(params[:id])
    	@transaction.update(import: params[:import], description: params[:description], category_id: params[:category_id])

    	render json: json_response(@transaction)
    end

    def delete
        @transaction = Transaction.find(params[:id])
        @transaction.destroy

        render json: json_response({'message' => 'Transaction deleted succesfully'})
    end

    protected
        def get_account(account_id)
            return Account.find(account_id)
        end
end
