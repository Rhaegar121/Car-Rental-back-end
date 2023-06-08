require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'associations' do
    it { should belongs_to(:users) }
    it { should has_many(:favourites) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:ratings) }
  end
end