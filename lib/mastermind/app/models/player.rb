class Mastermind::Player
	
	include Mongoid::Document
	include ActiveModel::Validations
	
	field :nickname, type: String

	validates_presence_of :nickname, message: 'Seu apelido é obrigatório'
	validates_uniqueness_of :nickname, message: 'Já existe um jogador com este apelido'

end