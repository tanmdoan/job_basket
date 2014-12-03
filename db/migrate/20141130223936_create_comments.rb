class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.string :author
      t.integer :company_id
      t.timestamps
    end
  end
end
