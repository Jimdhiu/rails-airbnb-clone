class Boat < ApplicationRecord
  belongs_to :user
  belongs_to :category



  def self.search(search)
    where("address LIKE ?", "%#{search}%")
    where("category_id LIKE ?", "%#{search}%")
  end
end
