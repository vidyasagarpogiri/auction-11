class AddWinningBidToItems < ActiveRecord::Migration
  def change
    add_column :items, :winning_bid, :decimal
  end
end
