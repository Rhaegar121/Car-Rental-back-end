require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  before do
    @user = User.create(fullname: 'User')
    @car = @user.cars.create(name: 'Car', price: 1000, description: 'Description', ratings: 1, image: 'Image')
  end

  describe 'GET /cars' do
    before do
      get "/users/#{@user[:id]}/cars"
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns all cars' do
      expect(response.body).to eq([@car].to_json)
    end
  end

  describe 'GET /cars/:id' do
    before do
      get "/users/#{@user[:id]}/cars/#{@car[:id]}"
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns the car' do
      expect(response.body).to eq(@car.to_json)
    end
  end

  describe 'POST /cars' do
    context 'when car is valid' do
      before do
        post "/users/#{@user[:id]}/cars", params: { car: { name: 'New Car', price: 1000, description: 'Description', ratings: 1, image: 'Image' } }
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when car is invalid' do
      before do
        post "/users/#{@user[:id]}/cars", params: { car: { name: ' ', price: 1000, description: 'Description', ratings: 1, image: 'Image' } }
      end

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'DELETE /cars/:id' do
    before do
      delete "/users/#{@user[:id]}/cars/#{@car[:id]}"
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
