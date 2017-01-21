class ApplicationController < ActionController::Base   
    protect_from_forgery with: :null_session
    rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  	protected
  		def json_response(data, status = 200)
  			if status == 200
  				jsonResponse = {'status' => status, 'data' => data}
  			else
  				jsonResponse = {'status' => status, 'errors' => data}
  			end

  			return jsonResponse
  		end

        def record_not_found(error)
            render :json => {:error => error.message, :status => 404}, :status => :not_found
        end 
end
