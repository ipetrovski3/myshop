class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one_attached :image
  has_many :products

  validates_presence_of :name

end
