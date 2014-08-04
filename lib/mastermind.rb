require "nexus"
require "mongoid"
require "mastermind/version"

Mongoid.load!("#{File.dirname(__FILE__)}/mastermind/config/mongoid.yml", :mastermind_config)

module Mastermind
  
	class Application

		def start
	 		@server = Nexus::Server.new
	 		@server.start do |request|
	 		end 
		end

	end

end
