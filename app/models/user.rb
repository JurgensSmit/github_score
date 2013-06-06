require_relative '../../lib/github'

class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def self.find(username)
    User.new(username)
  end

  def github_user
    @github_user ||= GithubUser.new(@username)
  end

  def total_score
    @total_score ||= github_user.total_score
  end

  def avatar_url
    @avatar_url ||= github_user.avatar_url
  end

end