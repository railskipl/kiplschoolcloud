class Room < ActiveRecord::Base
	belongs_to :hostel
	has_many :students
	validates_presence_of :sr_no,:room_no,:student_per_room,:rent
	validates_numericality_of :student_per_room,:rent,:availability


	def allocate_student(student)
		available_room = self.availability
		room_occupied  = self.room_occupied 
		student.update_attribute('room_id',self.id)
		self.update_attributes(:availability => available_room-1,:room_occupied => room_occupied+1)
	end

	def deallocate_student(student)
		available_room = self.availability
		room_occupied  = self.room_occupied 
		student.update_attribute('room_id',nil)
		self.update_attributes(:availability => available_room+1,:room_occupied => room_occupied-1)
	end



end
