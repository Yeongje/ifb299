class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.time :pickup_time
      t.string :package_type
      t.string :weight

      t.timestamps null: false
    end
  end
end
