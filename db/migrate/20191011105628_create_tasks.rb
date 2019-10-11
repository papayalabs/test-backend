class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :email

      t.timestamps
    end
  end
end
