require "nexus"
require "mongoid"
require "redis"

Dir["#{File.dirname(__FILE__)}/mastermind/config/initializers/*.rb"].each { |f| require f }
Dir["#{File.dirname(__FILE__)}/mastermind/config/routers/*.rb"].each { |f| require f }

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
