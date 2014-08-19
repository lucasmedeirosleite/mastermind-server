class Mastermind::GameController

	def start(params = {})
		game = Mastermind::Game.to_guesses_and_challenger(params)
		if game.start
			Nexus::Response.new(body: game)
		else
			Nexus::Response.new(body: game, success: false)
		end
	end

	def end(params = {})
		game = Mastermind::Game.find(params[:id])
		if game.end
			Nexus::Response.new(body: game)
		else
			Nexus::Response.new(body: game, success: false)
		end
	end

end