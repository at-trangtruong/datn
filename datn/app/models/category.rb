class Category < ApplicationRecord
  has_many :restaurants

  def check_rest rests
    return (self.restaurants & rests).blank? ? true : false
  end

  def remove
    self.restaurants.update_all(category_id: 1)
    self.destroy
  end
end
