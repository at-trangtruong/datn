class ChangeColumm < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :status, :integer
    add_column :restaurants, :highlight, :integer
  end
end
