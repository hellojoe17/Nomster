class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	paginates_per 4
	geocoded_by :address
	after_validation :geocode
	has_many :photos
	
	validates :name, :presence => true, length: { minimum: 3 }
	validates :address, :presence => true
	validates :description, :presence => true

end
