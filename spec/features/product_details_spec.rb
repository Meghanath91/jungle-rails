

require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'
# creating products
    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see product details when click on product" do
    # ACT
    visit root_path

    page.first( 'article.product header a').click

    visit 'products/1'

    


    

    # DEBUG
    save_screenshot

    # VERIFY
    expect(page).to have_css 'section.products-show'
  end
end