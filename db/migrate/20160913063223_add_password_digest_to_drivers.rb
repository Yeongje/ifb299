class AddPasswordDigestToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :password_digest, :string
  end
end
