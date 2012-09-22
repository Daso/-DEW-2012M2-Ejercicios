class Message < ActiveRecord::Base
	Pusher.app_id = '28271'
	Pusher.key = '1821d05600c8f7bcfad1'
	Pusher.secret = '9d66a067aeb2a218e39d'
	
	after_create :send_to_pusher

	def send_to_pusher
	   logger.info "Hi?"
	   Pusher['DEW2012'].trigger("message:create", self.to_json)
	
	end

end
