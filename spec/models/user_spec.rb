require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Model' do
    before do
      @user = User.new(fullname: 'User')
    end

    it 'is not valid without a name' do
      @user.fullname = nil
      expect(@user).to_not be_valid
    end

    it 'is valid with valid attributes' do
      expect(@user).to be_valid
    end

    it 'is not valid with a name longer than 50 characters' do
      @user.fullname = 'a' * 51
      expect(@user).to_not be_valid
    end
  end
end
