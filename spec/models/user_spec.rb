require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should has_many(:cars) }
    it { should has_many(:favourites) }
  end

  describe 'validations' do
    it { should validate_presence_of(:fullname) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
end