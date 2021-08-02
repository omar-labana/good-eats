require 'rails_helper'

RSpec.describe 'article crud operations', type: :system do

  it 'check for article form' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Add Article'
    expect(page).to have_content('NEW ARTICLE')
  end

  it 'add one article' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Add Article'
    fill_in 'Title', with: 'Chicken Pasta'
    fill_in 'Body', with: 'Very good food'
    fill_in 'article_image', with: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnkOELZ9iFrYJyXnbXUOOz0JWsAwRqmP9iCQ&usqp=CAU'
    click_button 'Create Article'
    expect(page).to have_content('Chicken Pasta')
  end

  it 'reject adding article - no body' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Add Article'
    fill_in 'Title', with: 'Chicken Pasta'
    fill_in 'Body', with: ''
    fill_in 'article_image', with: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnkOELZ9iFrYJyXnbXUOOz0JWsAwRqmP9iCQ&usqp=CAU'
    click_button 'Create Article'
    expect(page).to have_content('Article could not be saved because: Body can\'t be blank')
  end

  it 'reject adding article - no image url' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Add Article'
    fill_in 'Title', with: 'Chicken Pasta'
    fill_in 'Body', with: 'Very good food'
    fill_in 'article_image', with: ''
    click_button 'Create Article'
    expect(page).to have_content('Article could not be saved because: Image can\'t be blank')
  end

  it 'reject adding article - no title' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Add Article'
    fill_in 'Title', with: ''
    fill_in 'Body', with: 'Very good food'
    fill_in 'article_image', with: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnkOELZ9iFrYJyXnbXUOOz0JWsAwRqmP9iCQ&usqp=CAU'
    click_button 'Create Article'
    expect(page).to have_content('Article could not be saved because: Title can\'t be blank')
  end


end