# And I click on "Locate Members from the House"
# Then my path should be "/search" with "state=CO" in the parameters
# And I should see a message "7 Results"
# And I should see a list of 7 the members of the house for Colorado
# And they should be ordered by seniority from most to least
# And I should see a name, role, party, and district for each member

require 'rails_helper'

RSpec.feature 'User can search by state' do
  it 'should return the members of that state\'s congressional delegation' do
    visit root_path
    select "Colorado"
    click_on "Locate Members of the House"

    expect(current_path).to eq search_path
    expect(page).to have_content "7 Results"
    expect(page).to have_css('.member', count: 7)
    # And they should be ordered by seniority from most to least
    # And I should see a name, role, party, and district for each member
    expect(page).to have_css('.member:first_child .name')
    expect(page).to have_css('.member:first_child .role')
    expect(page).to have_css('.member:first_child .party')
    expect(page).to have_css('.member:first_child .district')
  end
end
