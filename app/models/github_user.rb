class GithubUser
  attr_reader :avatar_url, :total_score, :data, :username

  def initialize(username)
    @username = username
    initialize_data
    initialize_total_score
    parse(username)
  end

  private

  def parse(username)
    @data.each do |event|
      if event['actor'] == username
        gravatar = event['actor_attributes']['gravatar_id']
        @avatar_url = "http://gravatar.com/avatar/#{gravatar}"
      end
      break
    end
  end

  def initialize_total_score
    if total_score.blank?
      @total_score = GithubScorer.new(data).score
    end
  end

  def initialize_data
    if data.blank?
      @data = Github::Event.new(username).get
    end
  end

end