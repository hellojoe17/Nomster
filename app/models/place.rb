class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	paginates_per 2
	geocoded_by :address
	after_validation :geocode
	
	validates :name, :presence => true, length: { minimum: 3 }
	validates :address, :presence => true
	validates :description, :presence => true

end
