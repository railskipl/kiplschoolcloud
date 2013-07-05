class BusSetting < ActiveRecord::Base

	validates_presence_of :name,:amount

	def self.bus_charge(start_date=Date.today,end_date=Date.today)
		find(:all,:conditions => ['starting_year < ? and ending_year >= ?',start_date,end_date]).first.amount rescue default_amount  
	end

	def self.default_amount
		find_by_default_charge(true).amount
	end
end

