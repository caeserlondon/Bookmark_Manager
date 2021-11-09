# frozen_string_literal: true

feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit('/')
      expect(page).to have_content 'Bookmark Manager'
    end
  end
end

feature 'Viewing bookmarks list' do
  scenario 'the page shows a list of URLs' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
