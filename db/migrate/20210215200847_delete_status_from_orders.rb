class DeleteStatusFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :completed
  end
end
