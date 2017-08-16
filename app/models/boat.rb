class Boat < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :boat_options

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search)
    where("address LIKE ?", "%#{search}%")
    where("category_id LIKE ?", "%#{search}%")
  end
end
