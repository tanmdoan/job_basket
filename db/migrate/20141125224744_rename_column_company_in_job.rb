class RenameColumnCompanyInJob < ActiveRecord::Migration
  def change
    rename_column :jobs, :company, :company_name
  end
end
