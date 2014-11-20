class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :name
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
