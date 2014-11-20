class CreateCompanyConnectionsJoinTable < ActiveRecord::Migration
  def change
    create_table :company_connections do |t|
      t.integer :company_id
      t.integer :connection_id

      t.timestamps
    end
  end
end
