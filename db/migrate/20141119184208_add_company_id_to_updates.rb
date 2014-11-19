class AddCompanyIdToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :company_id, :integer
  end
end
