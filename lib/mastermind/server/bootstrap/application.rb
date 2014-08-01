 class Mastermind::Server::Bootstrap::Application

 	def start

 		@server = Nexus::Server.new
 		@server.start do |request|
 		end 

 	end

 end