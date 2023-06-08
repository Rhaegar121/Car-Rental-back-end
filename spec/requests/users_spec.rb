require 'rails_helper'

RSpec.describe 'Users', type: :request do
    before do
        @user = User.create(fullname: 'User')
    end

    describe 'POST /users/login' do
        context 'when user is valid' do
            before do
                post '/users/login', params: { fullname: @user.fullname }
            end

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end
        end

        context 'when user is invalid' do
            before do
                post '/users/login', params: { fullname: 'Invalid User' }
            end

            it 'returns status code 404' do
                expect(response).to have_http_status(422)
            end
        end
    end

    describe 'POST /users/signup' do
        context 'when user is valid' do
            before do
                post '/users/signup', params: { user: { fullname: 'New User' } }
            end

            it 'returns status code 200' do
                expect(response).to have_http_status(200)
            end
        end

        context 'when user is invalid' do
            before do
                post '/users/signup', params: { user: { fullname: ' ' } }
            end

            it 'returns status code 422' do
                expect(response).to have_http_status(422)
            end
        end
    end
end