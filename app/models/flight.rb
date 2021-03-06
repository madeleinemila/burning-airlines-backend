# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  number      :text
#  origin      :text
#  destination :text
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  plane_id    :integer
#

class Flight < ApplicationRecord
  belongs_to :plane
  has_many :reservations

  validates :number, :presence => true
  validates :origin, :presence => true
  validates :destination, :presence => true
  validates :date, :presence => true
end
