# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  seat       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flight_id  :integer
#  user_id    :integer
#

class Reservation < ApplicationRecord
  belongs_to :flight
  belongs_to :user

  validates :seat, :presence => true, format: { with: /\A[A-Z]\d+\z/, message: "- Please enter seat number in the correct format, e.g. A1"}
  validates_uniqueness_of :seat, :scope => [:flight_id]
end
