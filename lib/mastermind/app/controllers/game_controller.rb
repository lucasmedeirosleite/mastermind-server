class Mastermind::GameController

	def start(params = {})
		challenger = Mastermind::Player.find(params[:challenger_id])
		guesser = Mastermind::Player.find(params[:guesser_id])
		game = Mastermind::Game.new(challenger: challenger, guesser: guesser)
		if game.save
			Nexus::Response.new(body: game)
		else
			Nexus::Response.new(body: game, success: false)
		end
	end

end