# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default(FALSE)
#

class User < ApplicationRecord
  has_many :reservations
  has_many :flights, through: :reservations
  has_many :seats
end
