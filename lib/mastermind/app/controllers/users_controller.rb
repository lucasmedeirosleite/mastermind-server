class Mastermind::UsersController

	def all
		players = Mastermind::Player.all
		Nexus::Response.new body: players
	end

end