class AddCompanyIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :company_id, :integer
  end
end
