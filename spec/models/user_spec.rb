require 'spec_helper'

describe User do
  describe 'find' do
    it 'should return a new instance' do
      User.find('jurgenssmit').username.should == 'jurgenssmit'
    end
  end

end