class ApplicationController < ActionController::API
    rescue_from Exception do |e|
        #log.error "#{e.message}"
        render json: {error: e.message}, status: :unprocessable_entity
    end
end
