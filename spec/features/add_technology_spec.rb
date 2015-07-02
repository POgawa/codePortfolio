require "rails_helper"


describe "adds a technology to the site" do
  it "adds a new technology" do
    visit themes_path
    click_on 'Add technology'
    fill_in 'Title', :with => 'Technology title'
    fill_in 'Description', :with => 'Technology description'
    click_on 'Create Technology'
    expect(page).to have_content 'Tochnological Might'
  end
end
