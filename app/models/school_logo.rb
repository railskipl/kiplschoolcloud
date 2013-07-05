class SchoolLogo < ActiveRecord::Base
  has_attached_file :logo, 
                     :styles => { :thumb => "125x125" },
                     :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                     :path => "logos/:id/:style/:basename.:extension",
                      
                     :convert_options => {
                           :thumb => "-background '#FFFFFF' -compose Copy -gravity center -extent 125x125"
                       }
end
