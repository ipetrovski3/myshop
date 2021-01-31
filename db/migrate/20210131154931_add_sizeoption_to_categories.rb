class AddSizeoptionToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :size, :boolean
  end
end
