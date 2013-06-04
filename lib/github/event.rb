require 'httparty'

module Github
  class Event
    include HTTParty
    base_uri 'https://github.com'

    attr_reader :user_data
    attr_reader :username

    def initialize(username)
      @username = username
      @user_data = get_data
    end

    def score
    end

    def avatar
    end

    def refresh
      
    end

    private

    def get_data
      self.class.get "/#{@username}.json"
    end

  end
end