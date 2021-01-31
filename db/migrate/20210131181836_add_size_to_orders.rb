class AddSizeToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :size, :string, default: 'N/A'
  end
end
