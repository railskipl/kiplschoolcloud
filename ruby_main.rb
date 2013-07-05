require "rubygems"


puts "checking Ruby procees"

ruby_instance =  `pgrep ruby`
 if true
	process_instance = `pgrep ruby | xargs ps | grep 'ruby_process'`
        puts process_instance
	if process_instance.chomp.nil? or process_instance.chomp.empty?
		puts "Ruby Process not running Starting"
		`cd ~/rails_apps/transport ; ruby ruby_process.rb > /dev/null 2>1 &`
	end
end

puts "Started Ruby Process"
