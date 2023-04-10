class IndicatorsService
    class << self
        def indicators(report_id)

            u_1_min = DetailReport.where(reports_id: report_id).minimum(:u_1)
            u_1_max = DetailReport.where(reports_id: report_id).maximum(:u_1)
            u_1_prom = DetailReport.where(reports_id: report_id).average(:u_1)
            detail_report_count = DetailReport.where(reports_id: report_id).count
            array_u_1 = DetailReport.where(reports_id: report_id).pluck(:u_1)
            u_1_percentil_99 = calculate_percentile(array_u_1, 0.99, "u1_99")
            u_1_percentil_95 = calculate_percentile(array_u_1, 0.95, "u1_95")
            u_1_percentil_5 = calculate_percentile(array_u_1, 0.05, "u1_5")
    
            u_2_min = DetailReport.where(reports_id: report_id).minimum(:u_2)
            u_2_max = DetailReport.where(reports_id: report_id).maximum(:u_2)
            u_2_prom = DetailReport.where(reports_id: report_id).average(:u_2)
            array_u_2 = DetailReport.where(reports_id: report_id).pluck(:u_2)
            u_2_percentil_99 = calculate_percentile(array_u_2, 0.99, "u2_99")
            u_2_percentil_95 = calculate_percentile(array_u_2, 0.95, "u2_95")
            u_2_percentil_5 = calculate_percentile(array_u_2, 0.05, "u2_5")
    
            u_3_min = DetailReport.where(reports_id: report_id).minimum(:u_3)
            u_3_max = DetailReport.where(reports_id: report_id).maximum(:u_3)
            u_3_prom = DetailReport.where(reports_id: report_id).average(:u_3)
            array_u_3 = DetailReport.where(reports_id: report_id).pluck(:u_3)
            u_3_percentil_99 = calculate_percentile(array_u_3, 0.99, "u3_99")
            u_3_percentil_95 = calculate_percentile(array_u_3, 0.95, "u3_95")
            u_3_percentil_5 = calculate_percentile(array_u_3, 0.05, "u3_5")
            
                
            i_1_min = DetailReport.where(reports_id: report_id).minimum(:i_1)
            i_1_max = DetailReport.where(reports_id: report_id).maximum(:i_1)
            i_1_prom = DetailReport.where(reports_id: report_id).average(:i_1)
            array_i_1 = DetailReport.where(reports_id: report_id).pluck(:i_1)
            i_1_percentil_99 = calculate_percentile(array_i_1, 0.99, "i1_99")
            i_1_percentil_95 = calculate_percentile(array_i_1, 0.95, "i1_95")
            i_1_percentil_5 = calculate_percentile(array_i_1, 0.05, "i1_5")

            i_2_min = DetailReport.where(reports_id: report_id).minimum(:i_2)
            i_2_max = DetailReport.where(reports_id: report_id).maximum(:i_2)
            i_2_prom = DetailReport.where(reports_id: report_id).average(:i_2)
            array_i_2 = DetailReport.where(reports_id: report_id).pluck(:i_2)
            i_2_percentil_99 = calculate_percentile(array_i_2, 0.99, "i2_99")
            i_2_percentil_95 = calculate_percentile(array_i_2, 0.95, "i2_95")
            i_2_percentil_5 = calculate_percentile(array_i_2, 0.05, "i2_5")
            
            i_3_min = DetailReport.where(reports_id: report_id).minimum(:i_3)
            i_3_max = DetailReport.where(reports_id: report_id).maximum(:i_3)
            i_3_prom = DetailReport.where(reports_id: report_id).average(:i_3)
            array_i_3 = DetailReport.where(reports_id: report_id).pluck(:i_3)
            i_3_percentil_99 = calculate_percentile(array_i_3, 0.99, "i3_99")
            i_3_percentil_95 = calculate_percentile(array_i_3, 0.95, "i3_95")
            i_3_percentil_5 = calculate_percentile(array_i_3, 0.05, "i3_5")
            
            p_fetot_cap_min = DetailReport.where(reports_id: report_id).minimum(:p_fetot_cap)
            p_fetot_cap_max = DetailReport.where(reports_id: report_id).maximum(:p_fetot_cap)
            p_fetot_cap_prom = DetailReport.where(reports_id: report_id).average(:p_fetot_cap)
            array_p_fetot_cap = DetailReport.where(reports_id: report_id).pluck(:p_fetot_cap)
            p_fetot_cap_percentil_99 = calculate_percentile(array_p_fetot_cap, 0.99, "p_fetot_cap_99")
            p_fetot_cap_percentil_95 = calculate_percentile(array_p_fetot_cap, 0.95, "p_fetot_cap_95")
            p_fetot_cap_percentil_5 = calculate_percentile(array_p_fetot_cap, 0.05, "p_fetot_cap_5")
            
            p_fetot_ind_min = DetailReport.where(reports_id: report_id).minimum(:p_fetot_ind)
            p_fetot_ind_max = DetailReport.where(reports_id: report_id).maximum(:p_fetot_ind)
            p_fetot_ind_prom = DetailReport.where(reports_id: report_id).average(:p_fetot_ind)
            array_p_fetot_ind = DetailReport.where(reports_id: report_id).pluck(:p_fetot_ind)
            p_fetot_ind_percentil_99 = calculate_percentile(array_p_fetot_ind, 0.99, "p_fetot_ind_99")
            p_fetot_ind_percentil_95 = calculate_percentile(array_p_fetot_ind, 0.95, "p_fetot_ind_95")
            p_fetot_ind_percentil_5 = calculate_percentile(array_p_fetot_ind, 0.05, "p_fetot_ind_5")
            
            p_fund_tot_min = DetailReport.where(reports_id: report_id).minimum(:p_fund_tot)
            p_fund_tot_max = DetailReport.where(reports_id: report_id).maximum(:p_fund_tot)
            p_fund_tot_prom = DetailReport.where(reports_id: report_id).average(:p_fund_tot)
            array_p_fund_tot = DetailReport.where(reports_id: report_id).pluck(:p_fund_tot)
            p_fund_tot_percentil_99 = calculate_percentile(array_p_fund_tot, 0.99, "p_fund_tot_99")
            p_fund_tot_percentil_95 = calculate_percentile(array_p_fund_tot, 0.95, "p_fund_tot_95")
            p_fund_tot_percentil_5 = calculate_percentile(array_p_fund_tot, 0.05, "p_fund_tot_5")
            
            q_tot_cap_min = DetailReport.where(reports_id: report_id).minimum(:q_tot_cap)
            q_tot_cap_max = DetailReport.where(reports_id: report_id).maximum(:q_tot_cap)
            q_tot_cap_prom = DetailReport.where(reports_id: report_id).average(:q_tot_cap)
            array_q_tot_cap = DetailReport.where(reports_id: report_id).pluck(:q_tot_cap)
            q_tot_cap_percentil_99 = calculate_percentile(array_q_tot_cap, 0.99, "q_tot_cap_99")
            q_tot_cap_percentil_95 = calculate_percentile(array_q_tot_cap, 0.95, "q_tot_cap_95")
            q_tot_cap_percentil_5 = calculate_percentile(array_q_tot_cap, 0.05, "q_tot_cap_5")
            
            q_tot_ind_min = DetailReport.where(reports_id: report_id).minimum(:q_tot_ind)
            q_tot_ind_max = DetailReport.where(reports_id: report_id).maximum(:q_tot_ind)
            q_tot_ind_prom = DetailReport.where(reports_id: report_id).average(:q_tot_ind)
            array_q_tot_ind = DetailReport.where(reports_id: report_id).pluck(:q_tot_ind)
            q_tot_ind_percentil_99 = calculate_percentile(array_q_tot_ind, 0.99, "q_tot_ind_99")
            q_tot_ind_percentil_95 = calculate_percentile(array_q_tot_ind, 0.95, "q_tot_ind_95")
            q_tot_ind_percentil_5 = calculate_percentile(array_q_tot_ind, 0.05, "q_tot_ind_5")
            
            thd_u_1_min = DetailReport.where(reports_id: report_id).minimum(:thd_u_1)
            thd_u_1_max = DetailReport.where(reports_id: report_id).maximum(:thd_u_1)
            thd_u_1_prom = DetailReport.where(reports_id: report_id).average(:thd_u_1)
            array_thd_u_1 = DetailReport.where(reports_id: report_id).pluck(:thd_u_1)
            thd_u_1_percentil_99 = calculate_percentile(array_thd_u_1, 0.99, "thd_u_1_99")
            thd_u_1_percentil_95 = calculate_percentile(array_thd_u_1, 0.95, "thd_u_1_95")
            thd_u_1_percentil_5 = calculate_percentile(array_thd_u_1, 0.05, "thd_u_1_5")
            
            thd_u_2_min = DetailReport.where(reports_id: report_id).minimum(:thd_u_2)
            thd_u_2_max = DetailReport.where(reports_id: report_id).maximum(:thd_u_2)
            thd_u_2_prom = DetailReport.where(reports_id: report_id).average(:thd_u_2)
            array_thd_u_2 = DetailReport.where(reports_id: report_id).pluck(:thd_u_2)
            thd_u_2_percentil_99 = calculate_percentile(array_thd_u_2, 0.99, "thd_u_2_99")
            thd_u_2_percentil_95 = calculate_percentile(array_thd_u_2, 0.95, "thd_u_2_95")
            thd_u_2_percentil_5 = calculate_percentile(array_thd_u_2, 0.05, "thd_u_2_5")
            
            thd_u_2_med = DetailReport.where(reports_id: report_id).average(:thd_u_2)
            thd_u_3_min = DetailReport.where(reports_id: report_id).minimum(:thd_u_3)
            thd_u_3_max = DetailReport.where(reports_id: report_id).maximum(:thd_u_3)
            thd_u_3_prom = DetailReport.where(reports_id: report_id).average(:thd_u_3)
            array_thd_u_3 = DetailReport.where(reports_id: report_id).pluck(:thd_u_3)
            thd_u_3_percentil_99 = calculate_percentile(array_thd_u_3, 0.99, "thd_u_3_99")
            thd_u_3_percentil_95 = calculate_percentile(array_thd_u_3, 0.95, "thd_u_3_95")
            thd_u_3_percentil_5 = calculate_percentile(array_thd_u_3, 0.05, "thd_u_3_5")


            array_thd_u = DetailReport.where(reports_id: report_id).pluck(:thd_u_1, :thd_u_2, :thd_u_3)
            array_thdu = array_thd_u.flatten
            t_thd_u_99 = calculate_percentile(array_thdu, 0.99, "thd_u_tot")


            thd_i_1_min = DetailReport.where(reports_id: report_id).minimum(:thd_i_1)
            thd_i_1_max = DetailReport.where(reports_id: report_id).maximum(:thd_i_1)
            thd_i_1_prom = DetailReport.where(reports_id: report_id).average(:thd_i_1)
            array_thd_i_1 = DetailReport.where(reports_id: report_id).pluck(:thd_i_1)
            thd_i_1_percentil_99 = calculate_percentile(array_thd_i_1, 0.99, "thd_i_1_99")
            thd_i_1_percentil_95 = calculate_percentile(array_thd_i_1, 0.95, "thd_i_1_95")
            thd_i_1_percentil_5 = calculate_percentile(array_thd_i_1, 0.05, "thd_i_1_5")
            
            thd_i_2_min = DetailReport.where(reports_id: report_id).minimum(:thd_i_2)
            thd_i_2_max = DetailReport.where(reports_id: report_id).maximum(:thd_i_2)
            thd_i_2_prom = DetailReport.where(reports_id: report_id).average(:thd_i_2)
            array_thd_i_2 = DetailReport.where(reports_id: report_id).pluck(:thd_i_2)
            thd_i_2_percentil_99 = calculate_percentile(array_thd_i_2, 0.99, "thd_i_2_99")
            thd_i_2_percentil_95 = calculate_percentile(array_thd_i_2, 0.95, "thd_i_2_95")
            thd_i_2_percentil_5 = calculate_percentile(array_thd_i_2, 0.05, "thd_i_2_5")
    
            thd_i_3_min = DetailReport.where(reports_id: report_id).minimum(:thd_i_3)
            thd_i_3_max = DetailReport.where(reports_id: report_id).maximum(:thd_i_3)
            thd_i_3_prom = DetailReport.where(reports_id: report_id).average(:thd_i_3)
            array_thd_i_3 = DetailReport.where(reports_id: report_id).pluck(:thd_i_3)
            thd_i_3_percentil_99 = calculate_percentile(array_thd_i_3, 0.99, "thd_i_3_99")
            thd_i_3_percentil_95 = calculate_percentile(array_thd_i_3, 0.95, "thd_i_3_95")
            thd_i_3_percentil_5 = calculate_percentile(array_thd_i_3, 0.05, "thd_i_3_5")
            
            u_percent_min = DetailReport.where(reports_id: report_id).minimum(:u_percent)
            u_percent_max = DetailReport.where(reports_id: report_id).maximum(:u_percent)
            u_percent_prom = DetailReport.where(reports_id: report_id).average(:u_percent)
            array_u_percent = DetailReport.where(reports_id: report_id).pluck(:u_percent)
            u_percent_percentil_99 = calculate_percentile(array_u_percent, 0.99, "u_percent_99")
            u_percent_percentil_95 = calculate_percentile(array_u_percent, 0.95, "u_percent_95")
            u_percent_percentil_5 = calculate_percentile(array_u_percent, 0.05, "u_percent_5")
            
            i_percent_min = DetailReport.where(reports_id: report_id).minimum(:i_percent)
            i_percent_max = DetailReport.where(reports_id: report_id).maximum(:i_percent)
            i_percent_prom = DetailReport.where(reports_id: report_id).average(:i_percent)


            array_i_percent = DetailReport.where(reports_id: report_id).pluck(:i_percent)
            i_percent_percentil_99 = calculate_percentile(array_i_percent, 0.99, "i_percent_99")
            i_percent_percentil_95 = calculate_percentile(array_i_percent, 0.95, "i_percent_95")
            i_percent_percentil_5 = calculate_percentile(array_i_percent, 0.05, "i_percent_5")
            
            st = StatisticalCalculation.create(
                report_id: report_id,

                u_1_min: u_1_min,
                u_1_max: u_1_max,
                u_1_prom: u_1_prom,
                u_1_percentil_99: u_1_percentil_99,
                u_1_percentil_95: u_1_percentil_95,
                u_1_percentil_5: u_1_percentil_5,

                u_2_min: u_2_min,
                u_2_max: u_2_max,
                u_2_prom: u_2_prom,
                u_2_percentil_99: u_2_percentil_99,
                u_2_percentil_95: u_2_percentil_95,
                u_2_percentil_5: u_2_percentil_5,
    
                u_3_min: u_3_min,
                u_3_max: u_3_max,
                u_3_prom: u_3_prom,
                u_3_percentil_99: u_3_percentil_99,
                u_3_percentil_95: u_3_percentil_95,
                u_3_percentil_5: u_3_percentil_5,
    
                I_1_min: i_1_min,
                I_1_max: i_1_max,
                I_1_prom: i_1_prom,
                I_1_percentil_99: i_1_percentil_99,
                I_1_percentil_95: i_1_percentil_95,
                I_1_percentil_5: i_1_percentil_5,

                I_2_min: i_2_min,
                I_2_max: i_2_max,
                I_2_prom: i_2_prom,
                I_2_percentil_99: i_2_percentil_99,
                I_2_percentil_95: i_2_percentil_95,
                I_2_percentil_5: i_2_percentil_5,
    
                I_3_min: i_3_min,
                I_3_max: i_3_max,
                I_3_prom: i_3_prom,
                I_3_percentil_99: i_3_percentil_99,
                I_3_percentil_95: i_3_percentil_95,
                I_3_percentil_5: i_3_percentil_5,
    
                p_fetot_cap_min: p_fetot_cap_min,
                p_fetot_cap_max: p_fetot_cap_max,
                p_fetot_cap_prom: p_fetot_cap_prom,
                p_fetot_cap_percentil_99: p_fetot_cap_percentil_99,
                p_fetot_cap_percentil_95: p_fetot_cap_percentil_95,
                p_fetot_cap_percentil_5: p_fetot_cap_percentil_5,
    
                p_fetot_ind_min: p_fetot_ind_min,
                p_fetot_ind_max: p_fetot_ind_max,
                p_fetot_ind_prom: p_fetot_ind_prom,
                p_fetot_ind_percentil_99:  p_fetot_ind_percentil_99,
                p_fetot_ind_percentil_95: p_fetot_ind_percentil_95,
                p_fetot_ind_percentil_5: p_fetot_ind_percentil_5,
    
                p_fund_tot_min: p_fund_tot_min,
                p_fund_tot_max: p_fund_tot_max,
                p_fund_tot_prom: p_fund_tot_prom,
                p_fund_tot_percentil_99: p_fund_tot_percentil_99,
                p_fund_tot_percentil_95: p_fund_tot_percentil_95,
                p_fund_tot_percentil_5: p_fund_tot_percentil_5,
    
                q_tot_cap_min: q_tot_cap_min,
                q_tot_cap_max: q_tot_cap_max,
                q_tot_cap_prom: q_tot_cap_prom,
                q_tot_cap_percentil_99: q_tot_cap_percentil_99,
                q_tot_cap_percentil_95: q_tot_cap_percentil_95,
                q_tot_cap_percentil_5: q_tot_cap_percentil_5,
    
                q_tot_ind_min: q_tot_ind_min,
                q_tot_ind_max: q_tot_ind_max,
                q_tot_ind_prom: q_tot_ind_prom,
                q_tot_ind_percentil_99: q_tot_ind_percentil_99,
                q_tot_ind_percentil_95: q_tot_ind_percentil_95,
                q_tot_ind_percentil_5: q_tot_ind_percentil_5,
    
                thd_u_1_min: thd_u_1_min,
                thd_u_1_max: thd_u_1_max,
                thd_u_1_prom: thd_u_1_prom,
                thd_u_1_percentil_99: thd_u_1_percentil_99,
                thd_u_1_percentil_95: thd_u_1_percentil_95,
                thd_u_1_percentil_5: thd_u_1_percentil_5,
    
                thd_u_2_min: thd_u_2_min,
                thd_u_2_max: thd_u_2_max,
                thd_u_2_prom: thd_u_2_prom,
                thd_u_2_percentil_99: thd_u_2_percentil_99,
                thd_u_2_percentil_95: thd_u_2_percentil_95,
                thd_u_2_percentil_5: thd_u_2_percentil_5,
    
                thd_u_3_min: thd_u_3_min,
                thd_u_3_max: thd_u_3_max,
                thd_u_3_prom: thd_u_3_prom,
                thd_u_3_percentil_99: thd_u_3_percentil_99,
                thd_u_3_percentil_95: thd_u_3_percentil_95,
                thd_u_3_percentil_5: thd_u_3_percentil_5,

                t_thd_u_99: t_thd_u_99,

                thd_i_1_min: thd_i_1_min,
                thd_i_1_max: thd_i_1_max,
                thd_i_1_prom: thd_i_1_prom,
                thd_i_1_percentil_99: thd_i_1_percentil_99,
                thd_i_1_percentil_95: thd_i_1_percentil_95,
                thd_i_1_percentil_5: thd_i_1_percentil_5,
    
                thd_i_2_min: thd_i_2_min,
                thd_i_2_max: thd_i_2_max,
                thd_i_2_prom: thd_i_2_prom,
                thd_i_2_percentil_99: thd_i_2_percentil_99,
                thd_i_2_percentil_95: thd_i_2_percentil_95,
                thd_i_2_percentil_5: thd_i_2_percentil_5,
    
                thd_i_3_min: thd_i_3_min,
                thd_i_3_max: thd_i_3_max,
                thd_i_3_prom: thd_i_3_prom,
                thd_i_3_percentil_99: thd_i_3_percentil_99,
                thd_i_3_percentil_95: thd_i_3_percentil_95,
                thd_i_3_percentil_5: thd_i_3_percentil_5,
    
                u_percent_min: u_percent_min,
                u_percent_max: u_percent_max,
                u_percent_prom: u_percent_prom,
                u_percent_percentil_99: u_percent_percentil_99,
                u_percent_percentil_95: u_percent_percentil_95,
                u_percent_percentil_5: u_percent_percentil_5,
    
                i_percent_min: i_percent_min,
                i_percent_max: i_percent_max,
                i_percent_prom: i_percent_prom,
                i_percent_percentil_99: i_percent_percentil_99,
                i_percent_percentil_95: i_percent_percentil_95,
                i_percent_percentil_5: i_percent_percentil_5,
            )
        end
    
        private
    
        def calculate_percentile(array=[],percentile=0.0, texto)
            pp '*' * 100
            pp texto
            position = (array.length * percentile).ceil
            array ? array.sort[position-1] : nil
        end
    end

end