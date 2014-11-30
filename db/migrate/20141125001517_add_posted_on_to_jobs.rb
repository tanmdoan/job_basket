class AddPostedOnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :posted_on, :string
  end
end
