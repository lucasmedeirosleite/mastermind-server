class Mastermind::ChatController 

	def send_message(params = {})
		message = Mastermind::Message.build_with_players(params)
		game = Mastermind::Game.find(params[:game_id])
		if game.chat.talk(message)
			Nexus::Response.new(body: game.chat)
		else
			Nexus::Response.new(body: game.chat, success: false)
		end 
	end 

end