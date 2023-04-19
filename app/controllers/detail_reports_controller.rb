require "csv"

class DetailReportsController < ApplicationController

    def create
        @detail_report = DetailReportsUploadService.uploadfile(create_params)
        render json: @detail_report, status: :ok
    end
    
    
    def destroy
        StatisticalCalculation.where(report_id: params[:id]).destroy_all
        DetailReport.where(reports_id: params[:id]).destroy_all
        render json: [], status: 204
    end


    private
    
    def create_params
        params.require(:detail_report).permit(:report_id, :csv_file)
    end

end