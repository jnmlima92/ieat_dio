require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  let(:restaurant) { create(:restaurant, :complete) }

  it { should have_many(:products) }
  it { should validate_presence_of(:name) }

  context 'passing valid arguments' do
    it 'return a valid object' do
      expect(restaurant.valid?).to be_truthy
    end

    it 'missing address return a valid object' do
      restaurant.address = nil
      expect(restaurant.valid?).to be_truthy
    end
  end

  context 'passing invalid arguments' do
    it 'missing name return a invalid object' do
      restaurant.name = nil
      expect(restaurant.invalid?).to be_truthy
    end
  end

  context 'creating products to restaurant' do
    let(:count_products) { rand(5) }
   
    before do
      create_list(:product, count_products, restaurant_id: restaurant.id)
      restaurant.reload
    end

    it 'have increment the counter of products' do
      expect(restaurant.products_count).to eq(count_products)
    end
  end
end
