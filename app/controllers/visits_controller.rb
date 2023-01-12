class VisitsController < ApplicationController
    # GET / visits
    def index
        @visits = Visit.all
        if !params[:search].nil? && params[:search].present?
            @visits = VisitsSearchServices.search(@visits, params[:search])
        end
        render json: @visits, status: :ok
    end

end