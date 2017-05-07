class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :fullname
      t.string :avatar
      t.integer :role
      t.timestamps
    end
  end
end
