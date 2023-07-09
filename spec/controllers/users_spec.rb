require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before do
    @user = User.create(fullname: 'User', email: 'user@gmail.com', password: 'password')
  end

  describe 'POST /users/login' do
    context 'when user is valid' do
      before do
        post '/users/login', params: { user: { email: 'user@gmail.com', password: 'password' } }
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when user is invalid' do
      before do
        post '/users/login', params: { user: { email: 'invalid user', password: 'invalid password' } }
      end

      it 'returns status code 404' do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'POST /users/signup' do
    context 'when user is valid' do
      before do
        post '/users/signup', params: { user: { fullname: 'New User', email: 'user@gmail.com', password: 'password', password_confirmation: 'password' } }
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
