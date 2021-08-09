class Restaurant < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :user

  validates_presence_of :name
end
