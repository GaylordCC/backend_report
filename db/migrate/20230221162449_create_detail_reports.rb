class CreateDetailReports < ActiveRecord::Migration[7.0]
  def change
    create_table :detail_reports do |t|
      t.datetime :hour
      t.decimal :u_1
      t.decimal :u_2
      t.decimal :u_3
      t.decimal :u_n
      t.decimal :u_12
      t.decimal :u_23
      t.decimal :u_31
      t.decimal :i_1
      t.decimal :i_2
      t.decimal :i_3
      t.decimal :i_n
      t.decimal :f
      t.decimal :u_over_1
      t.decimal :u_over_2
      t.decimal :u_over_3
      t.decimal :p_fetot_cap
      t.decimal :p_fetot_ind
      t.decimal :p_fund_tot
      t.decimal :q_tot_cap
      t.decimal :q_tot_ind
      t.decimal :thd_u_1
      t.decimal :thd_u_2
      t.decimal :thd_u_3
      t.decimal :thd_i_1
      t.decimal :thd_i_2
      t.decimal :thd_i_3
      t.decimal :u_percent
      t.decimal :i_percent

      t.timestamps
    end
  end
end
