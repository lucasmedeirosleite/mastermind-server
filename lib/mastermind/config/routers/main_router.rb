class Mastermind::MainRouter

	def self.proccess(request)
		if request.params.present?
			"Mastermind::#{request.controller}".constantize.new.send(request.action, request.params)
		else
			"Mastermind::#{request.controller}".constantize.new.send(request.action)
		end
	end

end