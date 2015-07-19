require 'rails_helper'

describe "the add a skill process" do
  it "adds a new skill" do
    visit skills_path
    click_on 'Add a Skill'
    fill_in 'Name', :with => 'Ruby'
    fill_in 'Description', :with => 'Ruby was the first language I began programming in. I have since built over 20 small apps using Sinatra, Rails, Postgres...'
    click_on 'Create Skill'
    expect(page).to have_content 'Skill successfully added!'
  end

  it "gives error when no name is entered" do
    visit new_skill_path
    click_on 'Create Skill'
    expect(page).to have_content 'SKILL NOT ADDED! Please correct errors below!'
  end


end
