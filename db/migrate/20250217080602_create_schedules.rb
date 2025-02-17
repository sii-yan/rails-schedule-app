class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title, null: false, limit: 20
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :all_day, default: false
      t.text :memo, limit: 500

      t.timestamps
    end
  end
end

