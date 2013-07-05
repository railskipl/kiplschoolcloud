require "rubygems"

puts "Checking server"
 while(true)
   server_instance = `pgrep ruby | xargs ps | grep 'script/server'`
   if server_instance.chomp.nil? or server_instance.chomp.empty?
   	 puts "Restart Server not running"
   	 `cd ~/rails_apps/transport ; RAILS_ENV=production script/server -p 3005 > /dev/null 2>1 &`
   end
  sleep 3	 
 end

