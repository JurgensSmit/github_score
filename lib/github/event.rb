require 'httparty'

module Github
class Event
	include HTTParty
	base_uri 'https://github.com'

	def initialize(actor)
		@actor = actor
	end

	def get
		self.class.get "/#{@actor}.json"
	end
end
end