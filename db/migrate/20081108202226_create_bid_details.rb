class CreateBidDetails < ActiveRecord::Migration
  def self.up
    create_table :bid_details do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :bid_details
  end
end
