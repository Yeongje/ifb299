class RenameTypeColumnToPackages < ActiveRecord::Migration
  def change
    rename_column :packages, :type, :package_type
  end
end
