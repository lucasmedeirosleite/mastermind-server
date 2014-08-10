class Mastermind::Message 

	include Mongoid::Document
	include ActiveModel::Validations

	field :text, type: String
	field :author, type: String

	embedded_in :chat, class_name: 'Mastermind::Chat' 

end