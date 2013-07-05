class Journal < ActiveRecord::Base
  attr_accessible :title, :summary,:attach
  
  belongs_to :author, :class_name => 'User'
  
   validates_presence_of :title, :summary
  
   has_attached_file :attach
end
