class ChangeDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :avatar, :string, :default => "default.png"
    change_column :restaurants, :picture, :string, :default => "default.png"
  end
end
