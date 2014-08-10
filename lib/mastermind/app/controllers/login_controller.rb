class Mastermind::LoginController

	def sign_in(params = {})
		player = Mastermind::Player.find_or_create_by(nickname: params[:nickname])
		if player.save
			Nexus::Response.new(body: player)
		else
			Nexus::Response.new(body: player, success: false)
		end		
	end	

end