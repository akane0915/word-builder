require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('visits the homepage, clicks Add New Word button, and is taken to the word form') do
    visit('/')
    click_link('Add a word')
    expect(page).to have_content('Add a Word to Your Dictionary:')
  end

  it('visits the add word form and fills in form, clicks Add Your Word button, is redirected to success page, clicks back to homepage, and is taken back to homepage') do
    visit('/words/new')
    fill_in('name', :with => 'discover')
    fill_in('type', :with => 'verb')
    click_button('Add Your Word')
    expect(page).to have_content("You've successfully added a word!")
    click_link('Back to homepage')
    expect(page).to have_content('Create a personalized dictionary with words you would like to learn!')
  end

  it('visits the homepage, clicks on a word that has already been added to the dictionary, is taken to that words page, clicks add definition link, is taken to the definition form, clicks add definition button, is taken to the success page') do
    visit('/')
    click_link('discover (verb)')
    expect(page).to have_content('Definition(s):')
    click_link('Add a definition')
    expect(page).to have_content('Add a definition to "discover" :')
    fill_in('text', :with => 'find unexpectedly or in the course of a search')
    click_button('Add Definition')
    expect(page).to have_content("You've successfully added a definition!")
    click_link('Back to word')
    expect(page).to have_content('Definition(s): find unexpectedly or in the course of a search')
  end

  it('visits a word page and clicks the back to homepage button') do
    visit('/words/1')
    click_link('Back to Homepage')
    expect(page).to have_content('Create a personalized dictionary with words you would like to learn! Your Words: discover (verb)')
  end

  it('tests the flashcards route') do
    visit('/')
    click_link('Test Yourself with Flashcards!')
    expect(page).to have_content('Test Yourself with Flashcards!')
    click_link('Show Definition')
    expect(page).to have_content('Definition(s):')
    click_link('Test Yourself with Flashcards!')
    expect(page).to have_content('Test Yourself with Flashcards!')
  end

end
