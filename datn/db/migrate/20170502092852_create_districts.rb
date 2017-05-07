class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :name
    end
    add_reference :restaurants, :district, foreign_key: true
  end
end
