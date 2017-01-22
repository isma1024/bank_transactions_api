class CategoryController < ApplicationController
	def list
  		@categories = Category.all

  		render json: json_response(@categories)
  	end

  	def get
  		@category = Category.find(params[:id])

  		render json: json_response(@category)
  	end

  	def create
  		@category = Category.new(name: params[:name])

  		if @category.valid?
  			@category.save
  			render json: json_response(@category)
  		else
  			render json: json_response(@category.errors.messages, 422)
  		end
  	end

  	def update
  		@category = Category.find(params[:id])
  		@category.update(name: params[:name])

  		render json: json_response(@category)
  	end

  	def delete
	  	@category = Category.find(params[:id])
        @category.destroy

        render json: json_response({'message' => 'Category deleted succesfully'})
  	end

    def get_transactions
        @category = Category.find(params[:id])

        render json: json_response(@category.transactions)
    end
end
