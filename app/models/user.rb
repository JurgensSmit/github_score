require_relative '../../lib/github' 
class User
attr_reader :actor
attr_reader :total_score

def self.find(actor)
	User.new(actor)
end

def calculate 
	@total_score = scorer.total_score 
	self
end

private

def initialize(actor)
	@actor = actor
end
def scorer 
	unless @scorer 
		data = Github::Event.new(@username).get 
		@scorer = GithubScorer.new(data).score 
	end 
		@scorer 
	end 
end
