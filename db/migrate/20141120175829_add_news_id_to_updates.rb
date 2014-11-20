class AddNewsIdToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :news_id, :integer
  end
end
