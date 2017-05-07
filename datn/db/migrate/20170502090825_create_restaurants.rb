class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :picture
      t.string :detail
      t.string :hotline
      t.string :status
      t.string :highlight
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
