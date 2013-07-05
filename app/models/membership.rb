class Membership < ActiveRecord::Base
	belongs_to :bus_service
	belongs_to :route
end
