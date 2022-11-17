class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_item do |t|
      t.string :name
      t.string :description
      t.references :review
    end
  end
end
