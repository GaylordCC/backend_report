class StatisticalCalculationsController < ApplicationController

    # GET / statistical_calculations
    def index
        @statistical_calculations = StatisticalCalculation.all
        if !params[:search].nil? && params[:search].present?
            @statistical_calculations = StatisticalCalculationsSearchService.search(@statistical_calculations, params[:search])
        end
        render json: @statistical_calculations, status: :ok
    end

    # GET / statistical_calculations/{id}
    def show
        @statistical_calculation = StatisticalCalculation.find(params[:id])
        render json: @statistical_calculation, status: :ok
    end

    # POST STATISTICAL_CALCULATIONS / statistical_calculations
    def create
        # @statistical_calculation = StatisticalCalculation.create!(create_params)
        IndicatorsService.indicators(10)
        # render json: @statistical_calculation, status: :created
    end

    # PUT 
    def update
        @statistical_calculation = StatisticalCalculation.find(params[:id])
        @statistical_calculation.update!(create_params)
        render json: @statistical_calculation, status: :ok
    end

    private

    def create_params
        params.require(:statistical_calculation).permit(:report_id, :u_1_min, :u_1_max, :u_1_prom, :u_1_med, :u_2_min, :u_2_max, :u_2_prom, :u_2_med, :u_3_min, :u_3_max, :u_3_prom, :u_3_med, :I_1_min, :I_1_max, :I_1_prom, :I_1_med, :I_2_min, :I_2_max, :I_2_prom, :I_2_med, :I_3_min, :I_3_max, :I_3_prom, :I_3_med, :p_fetot_cap_min, :p_fetot_cap_max, :p_fetot_cap_prom, :p_fetot_cap_med, :p_fetot_ind_min, :p_fetot_ind_max, :p_fetot_ind_prom, :p_fetot_ind_med, :p_fund_tot_min, :p_fund_tot_max, :p_fund_tot_prom, :p_fund_tot_med, :q_tot_cap_min, :q_tot_cap_max, :q_tot_cap_prom, :q_tot_cap_med, :q_tot_ind_min, :q_tot_ind_max, :q_tot_ind_prom, :q_tot_ind_med, :thd_u_1_min, :thd_u_1_max, :thd_u_1_prom, :thd_u_1_med, :thd_u_2_min, :thd_u_2_max, :thd_u_2_prom, :thd_u_2_med, :thd_u_3_min, :thd_u_3_max, :thd_u_3_prom, :thd_u_3_med, :thd_i_1_min, :thd_i_1_max, :thd_i_1_prom, :thd_i_1_med, :thd_i_2_min, :thd_i_2_max, :thd_i_2_prom, :thd_i_2_med, :thd_i_3_min, :thd_i_3_max, :thd_i_3_prom, :thd_i_3_med, :u_percent_min, :u_percent_max, :u_percent_prom, :u_percent_med, :i_percent_min, :i_percent_max, :i_percent_prom, :i_percent_med )
    end


end