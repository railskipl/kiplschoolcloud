class Route < ActiveRecord::Base
	has_many :students
	has_many :memberships ,:dependent => :destroy
	has_many :bus_services,:through => :memberships
	validates_presence_of :name
	include GeoKit::Geocoders
	before_save :lat_and_lng ,:if => :street_address_present?

	def lat_and_lng
		coords = MultiGeocoder.geocode(street)
		self.lat = coords.lat
		self.lng = coords.lng
	end

	private
	def street_address_present?
		street and not(street.empty?)
	end
end
