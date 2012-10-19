class Donor < ActiveRecord::Base

  has_many :item

	validates_presence_of :first_name, :last_name, :email, :phone_number, :state, :create_date, :modified_date	

	validates_uniqueness_of :id, :scope => [:first_name, :last_name, :email]	

	def lastname_and_firstname
		"#{last_name}, #{first_name}"
	end
end
