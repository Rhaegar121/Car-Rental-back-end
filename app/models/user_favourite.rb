class UserFavourite < ApplicationRecord
  belongs_to :user
  belongs_to :favourite
end
