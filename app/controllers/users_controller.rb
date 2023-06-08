class UsersController < ApplicationController
  before_action :authenticate_user!
  validates :name, presence: true
  validate :non_negative_price

  private
end
