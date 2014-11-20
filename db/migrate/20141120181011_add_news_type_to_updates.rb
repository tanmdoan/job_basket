class AddNewsTypeToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :news_type, :string
  end
end
