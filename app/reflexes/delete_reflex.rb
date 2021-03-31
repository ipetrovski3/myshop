class DeleteReflex < ApplicationReflex
  def delete
    order = Order.find(element.dataset[:id])
    order.delete
  end
end
