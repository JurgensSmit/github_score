require_relative '../../lib/github'

class User
  attr_reader :username, :total_score, :avatar_url

  def initialize(username)
    @username = username
  end

  def self.find(username)
    User.new(username)
  end

  def github_user
    @github_user ||= GithubUser.new(@username, data)
  end

  def calculate
    @total_score = github_user.total_score
    @avatar_url = github_user.avatar_url
    self
  end

  # private

  # def scorer
  #   unless @scorer
  #     @scorer = GithubScorer.new(data).score
  #   end
  #   @scorer
  # end

  # def data
  #   unless @data
  #     @data = Github::Event.new(@username).get
  #   end
  #   @data
  # end
end