class Hostel < ActiveRecord::Base
	has_many :rooms ,:dependent => :destroy
	TYPE = %w(Boys Girls Common)
	validates_presence_of :name,:hostel_type
end
