class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.boolean :is_all_day
      t.string :sche_memo

      t.timestamps
    end
  end
end
