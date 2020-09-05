class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :date, null: false
      t.string :address, null: false
      t.string :lodging, null: false
      t.string :bookmark
      t.integer :budget
      t.timestamps
    end
  end
end