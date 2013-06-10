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

  def language
    @language ||= github_user.language
  end

  def name
    @name ||= github_user.name
  end

def project_name
  @project_name ||= github_user.project_name
end

def project_date
  @project_date ||= github_user.project_date
end

def project_url
  @project_url ||= github_user.project_url
end

end