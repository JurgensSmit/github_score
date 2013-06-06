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
        when 'CreateEvent' then 10
        when 'PushEvent' then 15
        when 'WatchEvent' then 1
        else 0
      end
    end

  self
  end

  private
  def parse
    @events = []
    @data.each do |event|
      @events << event['type']
    end
  end
end