require 'rails_helper'

feature "Manage Albums" do
    scenario "List no Albums" do
    visit albums_path
    expect(page.find('h1')).to have_content (/Albums/)
    expect(page).to have_content(/No albums available/i)

end
    scenario "List all Albums" do
        Album.create!(
            title: 'Astrolounge',
            artist: 'Smash Mouth',
            year: '1999'
            )

    visit albums_path
    expect(page.find('.album')).to have_content(/Astrolounge/)
    expect(page.find('.artist')).to have_content(/Smash Mouth/)
    expect(page.find('.year')).to have_content(/1999/)
    expect(page).not_to have_content (/No albums available/i)
end

    scenario "Add new Album"

end