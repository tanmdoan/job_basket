class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :description
      t.string :name
      t.integer :team_size

      t.timestamps
    end
  end
end
