class AddUrlToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :url, :string
    add_column :jobs, :remote, :boolean, default: false
  end
end
