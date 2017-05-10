class Restaurant < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :district
  has_many :menus

  delegate :name, :id, to: :category, prefix: :cat
  delegate :name, :id, to: :district, prefix: :district

  scope :highlight_rests, -> { 
    where(status: 1, highlight: 1) 
  }
end
