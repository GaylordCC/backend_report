class RemoveConnectionPointPhotoFromReports < ActiveRecord::Migration[7.0]
  def change
    remove_column :reports, :connection_point_photo, :string
  end
end
