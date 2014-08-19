class Mastermind::Game
	
	include Mongoid::Document
	include ActiveModel::Validations

	field :finished, type: Boolean
	embeds_one :challenger, class_name: 'Mastermind::Player'
	embeds_one :guesser, class_name: 'Mastermind::Player'
	embeds_one :chat, class_name: 'Mastermind::Chat', cascade_callbacks: true	

	validates_presence_of :challenger, message: 'Desafiador é obrigatório'
	validates_presence_of :guesser, message: 'Adivinhador é obrigatório'

	before_create :create_chat

	def started?
		not finished?
	end

	def self.to_guesses_and_challenger(options = {})
		challenger = Mastermind::Player.find(options[:challenger_id])
		guesser = Mastermind::Player.find(options[:guesser_id])
		Mastermind::Game.new(challenger: challenger, guesser: guesser)
	end

	def start
		self.save
	end

	def end
		self.finished = true
		self.save!
	end

	def create_chat
		self.chat = Mastermind::Chat.new
	end

end