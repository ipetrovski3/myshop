class Order < ApplicationRecord
  SIZES = %w[S M L XL XXL].freeze

  belongs_to :product

  scope :order_shipped, -> { where(completed: true) }
  scope :unproccesed_order, -> { where(completed: false) }
end
