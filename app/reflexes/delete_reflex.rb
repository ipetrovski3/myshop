class DeleteReflex < ApplicationReflex
  def delete
    order = Order.find(element.dataset[:id])
    
    binding.pry
    
    order.delete
  end
end