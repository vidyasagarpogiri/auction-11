class Item < ActiveRecord::Base
  
  belongs_to :donor_id, :class_name => "Person"
  belongs_to :winning_bidder_id, :class_name => "Person"
  
  attr_accessible :created_datetime, :description, :minimum_bid, :winning_bid, :modified_datetime, :state, :title, :donor_id, :winning_bidder_id
  
  validates :created_datetime, :description, :minimum_bid, :modified_datetime, :state, :title, :donor_id, :presence => true
  validates_associated :donor_id
end
