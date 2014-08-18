class Mastermind::MainRouter

	def self.proccess(request)
		"Mastermind::#{request.controller}".constantize.new.send(request.action, request.params)
	end

end