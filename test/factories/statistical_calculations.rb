require "faker"

FactoryBot.define do
  factory :statistical_calculation do
    u_1_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_1_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_1_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_1_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_1_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_1_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    u_2_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_2_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_2_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_2_percentil_99{ Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_2_percentil_95{ Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_2_percentil_5{ Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    u_3_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_3_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_3_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_3_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_3_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    u_3_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    i_1_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_1_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_1_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_1_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_1_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_1_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    i_2_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_2_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_2_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_2_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_2_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_2_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    i_3_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_3_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_3_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_3_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_3_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    i_3_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    p_fetot_cap_min { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_cap_max { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_cap_prom { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_cap_percentil_99 { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_cap_percentil_95 { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_cap_percentil_5 { Faker::Number.decimal(l_digits: 0, r_digits: 3) }

    p_fetot_ind_min { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_ind_max { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_ind_prom { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_ind_percentil_99 { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_ind_percentil_95 { Faker::Number.decimal(l_digits: 0, r_digits: 3) }
    p_fetot_ind_percentil_5 { Faker::Number.decimal(l_digits: 0, r_digits: 3) }

    p_fund_tot_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    p_fund_tot_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    p_fund_tot_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    p_fund_tot_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    p_fund_tot_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    p_fund_tot_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    q_tot_cap_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_cap_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_cap_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_cap_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_cap_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_cap_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    q_tot_ind_min { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_ind_max { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_ind_prom { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_ind_percentil_99 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_ind_percentil_95 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }
    q_tot_ind_percentil_5 { Faker::Number.decimal(l_digits: 3, r_digits: 3) }

    thd_u_1_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_1_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_1_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_1_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_1_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_1_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    thd_u_2_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_2_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_2_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_2_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_2_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_2_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    thd_u_3_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_3_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_3_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_3_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_3_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_u_3_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    thd_i_1_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_1_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_1_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_1_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_1_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_1_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    thd_i_2_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_2_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_2_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_2_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_2_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_2_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    thd_i_3_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_3_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_3_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_3_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_3_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    thd_i_3_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    u_percent_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    u_percent_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    u_percent_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    u_percent_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    u_percent_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    u_percent_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }


    i_percent_min { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    i_percent_max { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    i_percent_prom { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    i_percent_percentil_99 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    i_percent_percentil_95 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
    i_percent_percentil_5 { Faker::Number.decimal(l_digits: 1, r_digits: 2) }

    report
  end
end
