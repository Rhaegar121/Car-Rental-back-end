class CarsController < ApplicationController
  before_action :authenticate_user!
end
