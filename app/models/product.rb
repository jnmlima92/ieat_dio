class Product < ApplicationRecord
  belongs_to :restaurant, counter_cache: true
  has_many :orders

  validates_presence_of :name, :value, :restaurant
end
