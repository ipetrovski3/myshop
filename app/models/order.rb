class Order < ApplicationRecord
  SIZES = %w[S M L XL XXL].freeze

  belongs_to :product

  before_save :set_price
  before_save :set_total_price

  scope :order_shipped, -> { where(completed: true) }
  scope :unproccesed_order, -> { where(completed: false) }

  private

  def set_total_price
    self.total_price = qty * set_price
  end

  def set_price
    self.price = product.price
  end
end
