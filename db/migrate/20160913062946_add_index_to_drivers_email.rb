class AddIndexToDriversEmail < ActiveRecord::Migration
  def change
    add_index :drivers, :email, unique: true
  end
end
