require "rails_helper"

  feature "Statuses" do
  scenario "User Creates a Status" do
    visit statuses_path
    expect(page).to have_no_content("great")
    expect(page).to have_no_content("name")
    expect(page).to have_no_content("1")
    click_on "Create Status"
    fill_in "Status", with: "great"
    fill_in "User", with: "name"
    fill_in "Number of likes", with: "1"
    click_on "Create Status"

    expect(page). to have_content("great")
    expect(page). to have_content("name")
    expect(page). to have_content("1")
  end
end
