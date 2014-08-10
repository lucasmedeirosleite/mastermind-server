class Mastermind::Message 

	include Mongoid::Document
	include ActiveModel::Validations

	field :text, type: String
	embeds_one :from, class_name: 'Mastermind::Player'
	embeds_one :to, class_name: 'Mastermind::Player'

	validates_presence_of :text, message: "Text é obrigatório"
	validates_presence_of :from, message: "Remetente é obrigatório"
	validates_presence_of :to, message: "Destinatário é obrigatório"

	embedded_in :chat, class_name: 'Mastermind::Chat' 

end