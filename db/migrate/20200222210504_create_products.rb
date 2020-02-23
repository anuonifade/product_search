class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :country
      t.text :tags
      t.float :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
