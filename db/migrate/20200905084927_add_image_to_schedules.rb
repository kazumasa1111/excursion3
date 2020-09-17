class AddImageToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :images, :string
  end
end
