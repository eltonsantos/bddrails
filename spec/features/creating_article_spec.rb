require "rails_helper"

Rspec.feature 'Creating article' do
  scenario 'A user create a new article' do
    visit '/'

    click_link 'New Article'

    fill_in 'Title', with: ''
    fill_in 'Body', with: 'hh'

    click_button 'Create Article'

    expect(page).to have_content('Article has been created')
    expect(page.current_path).to eq(articles_path)
  end
end