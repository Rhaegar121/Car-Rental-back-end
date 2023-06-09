require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'Car Model' do
    before do
      @user = User.create(fullname: 'User')
      @car = @user.cars.create(name: 'Car', description: 'This is a car', price: 100, ratings: 4, image: 'imgurl')
    end

    it 'is not valid without a name' do
      @car.name = nil
      expect(@car).to_not be_valid
    end

    it 'is not valid without a description' do
      @car.description = nil
      expect(@car).to_not be_valid
    end

    it 'is not valid without a price' do
      @car.price = nil
      expect(@car).to_not be_valid
    end

    it 'is not valid without a ratings' do
      @car.ratings = nil
      expect(@car).to_not be_valid
    end

    it 'is not valid without a image' do
      @car.image = nil
      expect(@car).to_not be_valid
    end

    it 'is not valid with a name longer than 50 characters' do
      @car.name = 'a' * 51
      expect(@car).to_not be_valid
    end

    it 'is not valid with a ratings greater than 5' do
      @car.ratings = 6
      expect(@car).to_not be_valid
    end

    it 'is not valid with a ratings less than 0' do
      @car.ratings = -1
      expect(@car).to_not be_valid
    end

    it 'is not valid with a price less than 0' do
      @car.price = -1
      expect(@car).to_not be_valid
    end
  end
end
