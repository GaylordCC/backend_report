class CompaniesController < ApplicationController

    # GET / companies
    def index
        @companies = Company.all
        if !params[:search].nil? && params[:search].present?
            @companies = CompaniesSearchService.search(@companies, params[:search])
        end
        render json: @companies, status: :ok
    end

    # GET /companies/{id}
    def show
        @company = Company.find(params[:id])
        render json: @company, status: :ok
    end

    # COMPANY /companies
    def create
        @company = Company.create!(create_params)
        render json: @company, status: :create
    end

    # COMPANY /companies/{id}
    def update
        @company = Company.find(params[:id])
        @company.update!(update_params)
        render json: @company, status: :ok
    end

    private

    def create_params
        params.require(:company).permit(:name, :identification, :adress, :email, :phone)
    end

    def update_params
        params.require(:company).permit(:name, :identification, :adress, :email, :phone)
    end

end