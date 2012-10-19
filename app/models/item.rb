class Item < ActiveRecord::Base

	belongs_to :donor
	belongs_to :bidder

	validates_presence_of :donor, :title, :description, :minimum_bid, :state, :create_date, :modified_date

end
