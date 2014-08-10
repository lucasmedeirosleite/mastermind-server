class Mastermind::Game
	
	include Mongoid::Document
	include ActiveModel::Validations

	embeds_one :challenger, class_name: 'Mastermind::Player'
	embeds_one :guesser, class_name: 'Mastermind::Player'

	validates_presence_of :challenger, message: 'Desafiador é obrigatório'
	validates_presence_of :guesser, message: 'Adivinhador é obrigatório'


end