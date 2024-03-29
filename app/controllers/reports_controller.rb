class ReportsController < ApplicationController

    # GET / reports
    def index
        @reports = Report.all
        if !params[:search].nil? && params[:search].present?
            @reports = ReportsSearchServices.search(@reports, params[:search])
        end
        render json: @reports, status: :ok
    end

    # GET / Reports/{id}
    def show
        @report = Report.find(params[:id])
        detail_report_count = DetailReport.where(reports_id: params[:id]).count
        has_detail = detail_report_count > 0 ? true : false
        return render json: {report: @report, has_detail: has_detail}, status: :ok
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
        DetailReport.where(reports_id: params[:id]).destroy_all
        StatisticalCalculation.where(report_id: params[:id]).destroy_all
        @report.destroy
        render json: [], status: 204
    end

    def generate        
        json_indicators = StatisticalCalculation.find_by(report_id: params[:report_id])

        json_u1 = DetailReport.where(reports_id: params[:report_id]).pluck("u_1")
        json_perc99_u1 = StatisticalCalculation.where(report_id: params[:report_id]).pluck("u_1_percentil_99")
        json_perc95_u1 = StatisticalCalculation.where(report_id: params[:report_id]).pluck("u_1_percentil_95")
        json_perc5_u1 = StatisticalCalculation.where(report_id: params[:report_id]).pluck("u_1_percentil_5")
        counter = json_u1.count
        json_P5_u_1 = Array.new(counter, json_perc5_u1)
        json_P5_u1 = json_P5_u_1.flatten
        json_u2 = DetailReport.where(reports_id: params[:report_id]).pluck("u_2")
        json_u3 = DetailReport.where(reports_id: params[:report_id]).pluck("u_3")
        json_h1 = DetailReport.where(reports_id: params[:report_id]).pluck("hour")
        json_thd_u1 = DetailReport.where(reports_id: params[:report_id]).pluck("thd_u_1")
        json_thd_u2 = DetailReport.where(reports_id: params[:report_id]).pluck("thd_u_2")
        json_thd_u3 = DetailReport.where(reports_id: params[:report_id]).pluck("thd_u_3")

        json_thd_i1 = DetailReport.where(reports_id: params[:report_id]).pluck("thd_i_1")
        json_thd_i2 = DetailReport.where(reports_id: params[:report_id]).pluck("thd_i_2")
        json_thd_i3 = DetailReport.where(reports_id: params[:report_id]).pluck("thd_i_3")
        json_i1 = DetailReport.where(reports_id: params[:report_id]).pluck("i_1")
        json_i2 = DetailReport.where(reports_id: params[:report_id]).pluck("i_2")
        json_i3 = DetailReport.where(reports_id: params[:report_id]).pluck("i_3")
        json_in = DetailReport.where(reports_id: params[:report_id]).pluck("i_n")
        json_upercent = DetailReport.where(reports_id: params[:report_id]).pluck("u_percent")
        json_ipercent = DetailReport.where(reports_id: params[:report_id]).pluck("i_percent")
        json_f = DetailReport.where(reports_id: params[:report_id]).pluck("f")
        # json_pfetot_cap = DetailReport.where(reports_id: params[:report_id]).pluck("p_fetot_cap")
        json_pfetot_ind = DetailReport.where(reports_id: params[:report_id]).pluck("p_fetot_ind")
        json_pfund_tot = DetailReport.where(reports_id: params[:report_id]).pluck("p_fund_tot")
        # json_qtot_cap = DetailReport.where(reports_id: params[:report_id]).pluck("q_tot_cap")
        json_qtot_ind = DetailReport.where(reports_id: params[:report_id]).pluck("q_tot_ind")
        json_se_fund_tot = DetailReport.where(reports_id: params[:report_id]).pluck("se_fund_tot")

        json_em = Report.where(id: params[:report_id]).pluck("equipment_model")
        json_ct = Report.where(id: params[:report_id]).pluck("connection_type")
        json_ind = Report.where(id: params[:report_id]).pluck("initial_day")
        json_fd = Report.where(id: params[:report_id]).pluck("final_day")
        json_fa = Report.where(id: params[:report_id]).pluck("phase_number")
        json_unom = Report.where(id: params[:report_id]).pluck("working_voltage")
        json_pnom = Report.where(id: params[:report_id]).pluck("total_power")

 
        # Calculo de la Cargabilidad
        carg = []
        json_se_fund_tot.each do | ele |
            carg << (ele / json_pnom[0])*100
        end

        return render json: { u1: json_u1, u2: json_u2, u3: json_u3, h1: json_h1, indic: json_indicators, P5_u1: json_P5_u1, D_u1: json_thd_u1, D_u2: json_thd_u2, D_u3: json_thd_u3, D_i1: json_thd_i1, D_i2: json_thd_i2, D_i3: json_thd_i3, i1: json_i1, i2: json_i2, i3: json_i3, In: json_in, f: json_f, iper: json_ipercent, uper: json_upercent, pf_i: json_pfetot_ind, pa: json_pfund_tot, pr: json_qtot_ind, eqm: json_em, ct: json_ct, ind: json_ind, fd: json_fd, fa: json_fa, unom: json_unom, pnom: json_pnom, papa: json_se_fund_tot, cgb: carg }, status: 200
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
            :year,
            :company_photo_file,
            :connection_point_photo_file
        )
    end
end