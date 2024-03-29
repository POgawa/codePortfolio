require "rails_helper"


describe "adds a technology to the site" do
  it "adds a new technology" do
    visit technologies_path
    click_on 'Sign-in'
    click_on 'Sign up'
    fill_in 'Email', :with => 'test1@email.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign up'
    click_on 'Add technology'
    fill_in 'Title', :with => 'Technology title'
    fill_in 'Description', :with => 'Technology description'
    click_on 'Create Technology'
    expect(page).to have_content 'Technology title'
  end
end
