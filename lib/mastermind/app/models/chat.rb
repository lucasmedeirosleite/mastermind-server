class Mastermind::Chat

	include Mongoid::Document
	include ActiveModel::Validations

	embedded_in :game, class_name: 'Mastermind::Game'

end