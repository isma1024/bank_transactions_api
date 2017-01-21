class WelcomeController < ApplicationController
  	def index
  		array = {'api' => {'name' => 'bank transactions', 'version' => '0.0.1'}}
		render json: array	
  	end
end
