class Product < ApplicationRecord
  belongs_to :restaurant, counter_cache: true

  validates_presence_of :name, :value, :restaurant
end
