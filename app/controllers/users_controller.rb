class UsersController < ApplicationController
  before_action :authenticate_user!
  validates :name, presence: true
end
