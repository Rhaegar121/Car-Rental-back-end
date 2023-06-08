class UsersController < ApplicationController
  before_action :authenticate_user!
  validates :name, presence: true, length: { maximum: 50 }
end
