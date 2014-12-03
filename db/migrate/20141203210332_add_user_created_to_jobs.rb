class AddUserCreatedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :user_created, :boolean, default: true
  end
end
