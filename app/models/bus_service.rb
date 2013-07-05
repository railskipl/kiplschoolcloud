class BusService < ActiveRecord::Base
	validates_presence_of :bus_name ,:bus_allocated_no,:bus_no,:bus_start_point,:bus_end_point,:no_of_seats, :gps_unit_no, :gprs_sim_no, :reader_id
	has_many :students
	has_many :memberships,:dependent => :destroy
	has_many :routes,:through => :memberships
	has_one :reader
end
