require_relative '../../app/models/github_user'
require 'json'

describe GithubUser do
  describe 'avatar_url' do
    let(:data) do
      JSON.parse('[{
        "actor" : "JurgensSmit",
        "actor_attributes": {
          "gravatar_id": "0dff0e78b6c10f88c2fa355ec60f71e0"
        }}]')
    end

    subject { GithubUser.new("jurgenssmit", data) }

    it 'should populate the avatar' do
      subject.avatar_url.should == "http://gravatar.com/avatar/0dff0e78b6c10f88c2fa355ec60f71e0"
    end

    context 'with a camel case username' do
      let(:data) do
        JSON.parse('[{
          "actor" : "JurgensSmit",
          "actor_attributes": {
            "gravatar_id": "0dff0e78b6c10f88c2fa355ec60f71e0"
          }}]')
      end

      subject { GithubUser.new("jurgenssmit", data) }

      it 'should handle different casing' do
        subject.avatar_url.should == "http://gravatar.com/avatar/0dff0e78b6c10f88c2fa355ec60f71e0"
      end
    end
  end
end