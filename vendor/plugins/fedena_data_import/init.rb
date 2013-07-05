require 'translator'
require File.join(File.dirname(__FILE__), "lib", "fedena_data_import")

FedenaPlugin.register = {
  :name=>"fedena_data_import",
  :description=>"Fedena Data Imports Module",
  :auth_file=>"config/fedena_data_import_auth.rb",
  :more_menu=>{:title=>"fedena_data_import_label",:controller=>"data_imports",:action=>"index"},
  :school_specific=>true
  }

Dir[File.join("#{File.dirname(__FILE__)}/config/locales/*.yml")].each do |locale|
  I18n.load_path.unshift(locale)
end
