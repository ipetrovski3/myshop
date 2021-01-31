class AddSizeToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :size, :boolean
  end
end
