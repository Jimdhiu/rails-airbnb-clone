class Boat < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :boat_options, dependent: :destroy
  has_many :bookings, dependent: :nullify



  def self.search(search)
    where("address LIKE ?", "%#{search}%")
    where("category_id LIKE ?", "%#{search}%")
  end
end
