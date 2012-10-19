class Person < ActiveRecord::Base
  
  attr_accessible :created_datetime, :email, :first_name, :last_name, :modified_datetime, :phone_number, :state
  
  validates :created_datetime, :first_name, :last_name, :modified_datetime, :phone_number, :state, :presence => true
  
  def lastname_and_firstname
		"#{last_name}, #{first_name}"
	end
  
end
