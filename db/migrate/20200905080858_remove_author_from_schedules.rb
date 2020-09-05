class RemoveAuthorFromSchedules < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :user_id_id, :bigint
  end
end
