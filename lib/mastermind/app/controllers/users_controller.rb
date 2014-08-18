class Mastermind::UsersController

	def all
		players = Mastermind::Player.all
		Nexus::Response.new body: players.to_a
	end

end