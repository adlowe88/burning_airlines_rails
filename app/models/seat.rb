class Seat < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :flight
end
