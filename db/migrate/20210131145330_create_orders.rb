class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :town
      t.string :phone
      t.text :note
      t.integer :qty
      t.boolean :completed, default: false
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
