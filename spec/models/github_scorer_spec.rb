require_relative '../../app/models/github_scorer'
require 'json'

describe GithubScorer do
  describe 'score' do
    let(:data) do
      JSON.parse('[
        {"type":"WatchEvent"},
        {"type":"PushEvent"},
        {"type":"CreateEvent"}
      ]')
    end

    subject { GithubScorer.new(data) }

    it 'should parse events' do
      subject.score.events.count.should == 3
    end

    it 'should calculate the total score' do
      subject.score.total_score.should > 0
    end
  end
end