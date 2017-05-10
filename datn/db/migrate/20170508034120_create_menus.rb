class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.references :restaurant, foreign_key: true
      t.string :picture
      t.decimal :cost      
    end
  end
end
