require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { create(:product) }

  it { should belong_to(:restaurant)}
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:value)}
  it { should validate_presence_of(:restaurant)}

  context 'passing valid arguments' do
    it 'return a valid object' do
      expect(product.valid?).to be_truthy
    end
  end

  context 'passing invalid arguments' do
    it 'missing restaurant return a invalid object' do
      product.restaurant = nil
      expect(product.invalid?).to be_truthy
    end

    it 'missing name return a invalid object' do
      product.name = nil
      expect(product.invalid?).to be_truthy
    end
    
    it 'missing value return a invalid object' do
      product.value = nil
      expect(product.invalid?).to be_truthy
    end
  end
end
