class Mastermind::Game
	
	include Mongoid::Document
	include ActiveModel::Validations

	embeds_one :challenger, class_name: 'Mastermind::Player'
	embeds_one :guesser, class_name: 'Mastermind::Player'
	embeds_one :chat, class_name: 'Mastermind::Chat', cascade_callbacks: true	

	validates_presence_of :challenger, message: 'Desafiador é obrigatório'
	validates_presence_of :guesser, message: 'Adivinhador é obrigatório'

	before_create :create_chat

	def create_chat
		self.chat = Mastermind::Chat.new
	end

end