class Mastermind::Message 

	include Mongoid::Document
	include ActiveModel::Validations

	field :text, type: String
	embeds_one :from, class_name: 'Mastermind::Player'
	embeds_one :to, class_name: 'Mastermind::Player'

	embedded_in :chat, class_name: 'Mastermind::Chat' 

end