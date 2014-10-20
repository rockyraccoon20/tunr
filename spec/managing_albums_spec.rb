require 'rails_helper'

feature "Manage Albums" do
    scenario "List no Albums" do
    visit albums_path
    expect(page.find('h1')).to have_content (/Albums/)
    expect(page).to have_content(/No albums available/i)
end
    scenario "List all Albums"
    scenario "Add new Album"
end
