class ChangeDataBookmarkToSchedules < ActiveRecord::Migration[5.2]
  def change
    change_column :schedules, :bookmark, :text
  end
end
