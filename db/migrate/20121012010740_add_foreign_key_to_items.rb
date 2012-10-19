class AddForeignKeyToItems < ActiveRecord::Migration
  def change
    add_column :items, :winning_bidder_id, :integer
  end
end
