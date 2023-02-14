class RemoveCompanyPhotoFromReports < ActiveRecord::Migration[7.0]
  def change
    remove_column :reports, :company_photo, :string
  end
end
