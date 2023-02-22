require "csv"

class DetailReportsController < ApplicationController

    def create
        @detail_report = DetailReportsUploadService.uploadfile(create_params)
        render json: @detail_report, status: :ok
    end

    private
    
    def create_params
        params.require(:detail_report).permit(:report_id, :csv_file)
    end

end