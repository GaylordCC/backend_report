class ReportsController < ApplicationController

    # GET / reports
    def index
        @reports = Report.all
        if !params[:search].nil? && params[:search].present?
            @reports = ReportsSearchServices.search(@reports, params[:search])
        end
        render json: @reports, status: :ok
    end

    # GET /visits/{id}
    def show
        @report = Report.find(params[:id])
        render json: @report, status: :ok
    end

    # REPORT / Reports
    def create
        @report = Report.create!(create_params)
        render json: @report, status: :created
    end

    def update
        report = Report.find(params[:id])
        response = report.update(udpate_params)

        if (response)
            render json: report, status: :ok
        else
            render json: report.errors, status: 406
        end
        
    end

    def destroy
        @report = Report.find(params[:id])
        @report.destroy
        render json: [], status: 204
    end

    private

    def create_params
        params.require(:report).permit(
            :visit_id,
            :report_title,
            :report_subtitle,
            :connection_point,
            :initial_day,
            :final_day,
            :total_days_service,
            :author,
            :reviewer,
            :client_responsible,
            :equipment,
            :equipment_model,
            :working_voltage,
            :connection_type,
            :phase_number,
            :total_power,
            :city,
            :department,
            :year,
            :company_photo_file,
            :connection_point_photo_file
        )
    end

    def udpate_params
        params.require(:report).permit(
            :visit_id,
            :report_title,
            :report_subtitle,
            :connection_point,
            :initial_day,
            :final_day,
            :total_days_service,
            :author,
            :reviewer,
            :client_responsible,
            :equipment,
            :equipment_model,
            :working_voltage,
            :connection_type,
            :phase_number,
            :total_power,
            :city,
            :department,
            :year
        )
    end
end