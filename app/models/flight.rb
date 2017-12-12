# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  origin      :text
#  destination :text
#  date        :date
#  airplane_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  seats_left  :integer
#

class Flight < ApplicationRecord
  belongs_to :airplane
  has_many :reservations
  has_many :users, through: :reservations
  has_many :seats
end
