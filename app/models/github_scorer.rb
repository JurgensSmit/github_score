class GithubScorer
	attr_reader :events, :total_score

	def initialize(data)
		@data = data
		parse
	end

	def score 
		@total_score = 0
		@events.each do |event|
			@total_score += case event
				 when 'PushEvent' then 1
				 else 0
		 end
	end

self 
end

private

def parse
	@events = []
	@data.each do |event|
		@events << event ['type']
	end
end
end