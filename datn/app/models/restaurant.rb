class Restaurant < ApplicationRecord
  belongs_to :category
  belongs_to :user

  delegate :name, :id, to: :category, prefix: :cat

  scope :highlight_rests, -> { 
    where(status: 1, highlight: 1) 
  }
end
