# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk'
    fill_in 'Date', with: '01/01/2021'
    fill_in 'Price', with: '3.50'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk')
    expect(page).to have_content('2021-01-01')
    expect(page).to have_content('3.50')
  end
end
