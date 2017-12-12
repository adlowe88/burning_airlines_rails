# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :text
#

class Seat < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :flight
end
