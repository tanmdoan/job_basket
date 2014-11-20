class DeleteCompanyIdFromUpdates < ActiveRecord::Migration
  def change
    remove_column :updates, :company_id
  end
end
