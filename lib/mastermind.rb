require "nexus"
require "mastermind/version"

module Mastermind
  
	class Application

		def start
	 		@server = Nexus::Server.new
	 		@server.start do |request|
	 		end 
		end

	end

end
