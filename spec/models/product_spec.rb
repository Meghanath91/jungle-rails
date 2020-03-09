require 'rails_helper'



RSpec.describe Product, type: :model do

test_category=Category.create(name:"clocks")

 test_product = test_category.products.create({
    name:  'Hipster Hat',
    quantity: 4,
    price: 34.49
  })

  describe 'Validations' do

    it "is valid with valid attributes" do
      expect(test_product).to be_valid
    end

    it 'is not valid without a name' do 
      test_product.name=nil
      expect(test_product).to_not be_valid
    end

    it 'is not valid without a price' do
      test_product.price=nil
      expect(test_product).to_not be_valid
    end

    it 'is not valid without a quantity' do
      test_product.quantity=nil
      expect(test_product).to_not be_valid
    end

    it 'is not valid without a category' do
      test_product.quantity=nil
      expect(test_product).to_not be_valid
    end


  end
  
end
