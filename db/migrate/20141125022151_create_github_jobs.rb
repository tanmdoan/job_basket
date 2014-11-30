class CreateGithubJobs < ActiveRecord::Migration
  def change
    create_table :github_jobs do |t|
      t.integer :github_id
      t.string :github_created_at
      t.string :title
      t.string :location
      t.string :type
      t.text :description
      t.text :how_to_apply
      t.string :company
      t.string :company_url
      t.string :company_logo
      t.string :github_url

      t.timestamps
    end
  end
end
