require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('visits the homepage and clicks Add New Word button') do
    visit('/')
    click_link('Add a word')
    expect(page).to have_content('Add a Word to Your Dictionary:')
  end

  it('visits the add word form and fills in form, then clicks Add Your Word button') do
    visit('/words/new')
    fill_in('name', :with => 'discover')
    fill_in('type', :with => 'verb')
    click_button('Add Your Word')
    expect(page).to have_content("You've successfully added a word!")
  end
end
