class Mastermind::Chat

	include Mongoid::Document
	include ActiveModel::Validations

	embedded_in :game, class_name: 'Mastermind::Game'
	embeds_many :messages, class_name: 'Mastermind::Message', cascade_callbacks: true	

	def talk(message)
		self.messages << message
		self.save
	end
	
end