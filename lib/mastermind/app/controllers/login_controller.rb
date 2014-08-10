class Mastermind::LoginController

	def sign_in(params)
		player = Mastermind::Player.find_or_create_by(nickname: params[:nickname])
		if player.save
			Response.new(body: player)
		else
			Response.new(body: player.errors)
		end		
	end	

end