# frozen_string_literal: true

class StatusReflex < ApplicationReflex
  def status_change
    order = Order.find(element.dataset[:id])
    order.update!(status: (element.value).to_s)
  end
end
