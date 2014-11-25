class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :github_id, :integer
    add_column :jobs, :github_created_at, :string
    add_column :jobs, :location, :string
    add_column :jobs, :type, :string
    add_column :jobs, :how_to_apply, :text
    add_column :jobs, :company, :string
    add_column :jobs, :company_url, :string
    add_column :jobs, :company_logo, :string
    add_column :jobs, :github_url, :string
    add_column :jobs, :full_time, :boolean
  end
end
