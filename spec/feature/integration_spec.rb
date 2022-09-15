# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Author' with: 'J.K. Rowling' 
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Price' with: 30 
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('30')
  end
  
  scenario 'valid published date' do
    visit new_book_path
    fill_in 'Published Date' with: '12/10/2001' 
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('12/10/2001')
  end
end