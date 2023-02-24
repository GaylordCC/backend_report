class VisitsController < ApplicationController
    # GET / visits
    def index
        @visits = Visit.all
        if !params[:search].nil? && params[:search].present?
            @visits = VisitsSearchServices.search(@visits, params[:search])
        end
        render json: @visits, status: :ok
    end

    # GET /visits/{id}
    def show
        @visit = Visit.find(params[:id])
        render json: @visit, status: :ok
    end

    #VISIT /Visits
    def create
        @visit = Visit.create!(create_params)
        render json: @visit, status: :created
    end

    def update
        @visit = Visit.find(params[:id])
        @visit.update!(create_params)
        render json: @visit, status: :ok
    end

    def destroy
        @visit = Visit.find(params[:id])
        @visit.destroy
        render json: [], status: 204
    end

    private

    def create_params
        params.require(:visit).permit(:company_id, :visit_date, :profesion, :coordinator, :number_day, :equimen_description, :contact_email, :phase, :initial_day, :final_day )
    end
end