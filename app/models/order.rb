class Order < ApplicationRecord
  belongs_to :product

  SIZES = %w[S M L XL XXL].freeze
end
