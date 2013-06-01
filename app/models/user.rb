class User
attr_reader :actor
attr_reader :total_score

def self.find(actor)
	User.new(actor)
end

def calculate 
	@scorer = GithubScorer.new(data)
	@total_score = @scorer.score.total_score
	self
end

private

def initialize(actor)
	@actor = actor
end
end
