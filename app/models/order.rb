class Order < ApplicationRecord
  SIZES = %w[S M L XL XXL].freeze

  belongs_to :product

  before_save :set_price
  before_save :set_total_price

  scope :order_shipped, -> { where(completed: true) }
  scope :unproccesed_order, -> { where(completed: false) }

  validates_presence_of :name, message: "Внесете Име и Презиме"
  validates_presence_of :address, message: "Внесете Адреса"
  validates_presence_of :town, message: "Внесете Град"
  validates_presence_of :phone, message: "Внесете Телефон"
  validates_presence_of :qty, message: "Внесете Количина"
  validates_presence_of :size, message: "Внесете големина на производот" if size?

  private

  def set_total_price
    self.total_price = qty * set_price
  end

  def set_price
    self.price = product.price
  end

  def size?
    return false unless product.category.size?
  end
end
