class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :driver_id
      t.text :task

      t.timestamps null: false
    end
  end
end
