class User
attr_reader :actor
attr_reader :total_score

def self.find(actor)
	User.new(actor)
end

def calculate 
	@total_score = 0
	self
end

private

def initialize(actor)
	@actor = actor
end
end
