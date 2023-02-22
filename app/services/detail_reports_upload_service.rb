require "csv"

class DetailReportsUploadService
    def self.uploadfile(params)
        url_file = params[:csv_file].tempfile
        header = 0
        hour_index = -1
        u_1_index = -1
        u_2_index = -1
        u_3_index = -1
        u_n_index = -1
        u_12_index = -1
        u_23_index = -1
        u_31_index = -1
        i_1_index = -1
        i_2_index = -1
        i_3_index = -1
        i_n_index = -1
        f_index = -1
        u_over_1_index = -1
        u_over_2_index = -1
        u_over_3_index = -1
        p_fetot_cap_index = -1
        p_fetot_ind_index = -1
        p_fund_tot_index = -1
        q_tot_cap_3_index = -1
        q_tot_ind_index = -1
        thd_u_1_index = -1
        thd_u_2_index = -1
        thd_u_3_index = -1
        thd_i_1_index = -1
        thd_i_2_index = -1
        thd_i_3_index = -1
        u_percent_index = -1
        i_percent_index = -1

        CSV.foreach(url_file) do |row|
            r = row[0].split("@")

            if header == 0
                hour_index = r.find_index {|i| i == "Hora [UTC]" }
                u_1_index = r.find_index {|i| i == "U1(Max) [V]" }
                u_2_index = r.find_index {|i| i == "U2(Max) [V]" }
                u_3_index = r.find_index {|i| i == "U3(Max) [V]" }
                u_n_index = r.find_index {|i| i == "UN(Max) [V]" }
                u_12_index = r.find_index {|i| i == "U12(Max) [V]" }
                u_23_index = r.find_index {|i| i == "U23(Max) [V]" }
                u_31_index = r.find_index {|i| i == "U31(Max) [V]" }
                i_1_index = r.find_index {|i| i == "I1(Max) [A]" }
                i_2_index = r.find_index {|i| i == "I2(Max) [A]" }
                i_3_index = r.find_index {|i| i == "I3(Max) [A]" }
                i_n_index = r.find_index {|i| i == "IN(Max) [A]" }
                f_index = r.find_index {|i| i == "f(Max) [Hz]" }
                u_over_1_index = r.find_index {|i| i == "Uover1(Med) [%]" }
                u_over_2_index = r.find_index {|i| i == "Uover2(Med) [%]" }
                u_over_3_index = r.find_index {|i| i == "Uover3(Med) [%]" }
                p_fetot_cap_index = r.find_index {|i| i == "PFetotcap+(Max) []" }
                p_fetot_ind_index = r.find_index {|i| i == "PFetotind+(Max) []" }
                p_fund_tot_index = r.find_index {|i| i == "Pfundtot+(Max) [kW]" }
                q_tot_cap_3_index = r.find_index {|i| i == "Q+totcap-(Max) [kvar]" }
                q_tot_ind_index = r.find_index {|i| i == "Q+totind+(Max) [kvar]" }
                thd_u_1_index = r.find_index {|i| i == "THD U1(Max) [%]" }
                thd_u_2_index = r.find_index {|i| i == "THD U2(Max) [%]" }
                thd_u_3_index = r.find_index {|i| i == "THD U3(Max) [%]" }
                thd_i_1_index = r.find_index {|i| i == "THD I1(Max) [%]" }
                thd_i_2_index = r.find_index {|i| i == "THD I2(Max) [%]" }
                thd_i_3_index = r.find_index {|i| i == "THD I3(Max) [%]" }
                u_percent_index = r.find_index {|i| i == "u-(Max) [%]" }
                i_percent_index = r.find_index {|i| i == "i-(Max) [%]" }

                header = 100
            else
                hour = nil
                u_1 = nil
                u_2 = nil
                u_3 = nil
                u_n = nil
                u_12 = nil
                u_23 = nil
                u_31 = nil
                i_1 = nil
                i_2 = nil
                i_3 = nil
                i_n = nil
                f_value = nil
                u_over1 = nil
                u_over2 = nil
                u_over3 = nil
                p_fetot_cap = nil
                p_fetot_ind = nil
                p_fund_tot = nil
                q_tot_cap = nil
                q_tot_ind = nil
                thd_u1 = nil
                thd_u2 = nil
                thd_u3 = nil
                thd_i1 = nil
                thd_i2 = nil
                thd_i3 = nil
                u_percent = nil
                i_percent = nil

                hour = r[hour_index] unless hour_index == -1
                u_1 = r[u_1_index] unless u_1_index == -1
                u_2 = r[u_2_index] unless u_2_index == -1
                u_3 = r[u_3_index] unless u_3_index == -1
                u_n = r[u_n_index] unless u_n_index == -1
                u_12 = r[u_12_index] unless u_12_index == -1
                u_23 = r[u_23_index] unless u_23_index == -1
                u_31 = r[u_31_index] unless u_31_index == -1
                i_1 = r[i_1_index] unless i_1_index == -1
                i_2 = r[i_2_index] unless i_2_index == -1
                i_3 = r[i_3_index] unless i_3_index == -1
                i_n = r[i_n_index] unless i_n_index == -1
                f_value = r[f_index] unless f_index == -1
                u_over1 = r[u_over_1_index] unless u_over_1_index == -1
                u_over2 = r[u_over_2_index] unless u_over_2_index == -1
                u_over3 = r[u_over_3_index] unless u_over_3_index == -1
                p_fetot_cap = r[p_fetot_cap_index] unless p_fetot_cap_index == -1
                p_fetot_ind = r[p_fetot_ind_index] unless p_fetot_ind_index == -1
                p_fund_tot = r[p_fund_tot_index] unless p_fund_tot_index == -1
                q_tot_cap = r[q_tot_cap_3_index] unless q_tot_cap_3_index == -1
                q_tot_ind = r[q_tot_ind_index] unless q_tot_ind_index == -1
                thd_u1 = r[thd_u_1_index] unless thd_u_1_index == -1
                thd_u2 = r[thd_u_2_index] unless thd_u_2_index == -1
                thd_u3 = r[thd_u_3_index] unless thd_u_3_index == -1
                thd_i1 = r[thd_i_1_index] unless thd_i_1_index == -1
                thd_i2 = r[thd_i_2_index] unless thd_i_2_index == -1
                thd_i3 = r[thd_i_3_index] unless thd_i_3_index == -1
                u_percent = r[u_percent_index] unless u_percent_index == -1
                i_percent = r[i_percent_index] unless i_percent_index == -1
                i_percent = r[i_percent_index] unless i_percent_index == -1                
                
                DetailReport.create!(
                    # hour: hour.sub(".0", "").to_datetime,
                    u_1: u_1.include?("-") ? 0 : u_1.to_d,
                    u_2: u_2.include?("-") ? 0 : u_2.to_d,
                    u_3: u_3.include?("-") ? 0 : u_3.to_d,
                    u_n: u_n.include?("-") ? 0 : u_n.to_d,
                    u_12: u_12.include?("-") ? 0 : u_12.to_d,
                    u_23: u_23.include?("-") ? 0 : u_23.to_d,
                    u_31: u_31.include?("-") ? 0 : u_31.to_d,
                    i_1: i_1.include?("-") ? 0 : i_1.to_d,
                    i_2: i_2.include?("-") ? 0 : i_2.to_d,
                    i_3: i_3.include?("-") ? 0 : i_3.to_d,
                    i_n: i_n.include?("-") ? 0 : i_n.to_d,
                    f: f_value.include?("-") ? 0 : f_value.to_d,
                    u_over_1: u_over1.include?("-") ? 0 : u_over1.to_d,
                    u_over_2: u_over2.include?("-") ? 0 : u_over2.to_d,
                    u_over_3: u_over3.include?("-") ? 0 : u_over3.to_d,
                    p_fetot_cap: p_fetot_cap.include?("-") ? 0 : p_fetot_cap.to_d,
                    p_fetot_ind: p_fetot_ind.include?("-") ? 0 : p_fetot_ind.to_d,
                    p_fund_tot: p_fund_tot.include?("-") ? 0 : p_fund_tot.to_d,
                    q_tot_cap: q_tot_cap.include?("-") ? 0 : q_tot_cap.to_d,
                    q_tot_ind: q_tot_ind.include?("-") ? 0 : q_tot_ind.to_d,
                    thd_u_1: thd_u1.include?("-") ? 0 : thd_u1.to_d,
                    thd_u_2: thd_u2.include?("-") ? 0 : thd_u2.to_d,
                    thd_u_3: thd_u3.include?("-") ? 0 : thd_u3.to_d,
                    thd_i_1: thd_i1.include?("-") ? 0 : thd_i1.to_d,
                    thd_i_2: thd_i2.include?("-") ? 0 : thd_i2.to_d,
                    thd_i_3: thd_i3.include?("-") ? 0 : thd_i3.to_d,
                    u_percent: u_percent.include?("-") ? 0 : u_percent.to_d,
                    i_percent: i_percent.include?("-") ? 0 : i_percent.to_d,
                    reports_id: params[:report_id]
                )
            end
        end
    end
end