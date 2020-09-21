class RenameImagesColumnToSchedules < ActiveRecord::Migration[5.2]
  def change
    rename_column :schedules, :images, :image
  end
end
