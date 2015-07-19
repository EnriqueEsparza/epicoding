require 'rails_helper'

describe "the edit a project process" do
  it "edits a project" do
    skill = Skill.create(:name => 'Railer', :description => 'Another Language')
    project = Project.create(:name => 'will do', :description => 'stuff to do', :link => 'www.link.com', :skill_id => skill.id)
    visit skill_path(skill)
    click_on 'Edit'
    fill_in 'Name', :with => 'To Doing'
    fill_in 'Description', :with => 'Wash the dog'
    fill_in 'Link', :with => 'www.linkylink.com'
    click_on 'Update Project'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no description is entered" do
    skill = Skill.create(:name => 'Railer', :description => 'Another Language')
    project = Project.create(:name => 'will do', :description => 'stuff to do', :link => 'www.link.com', :skill_id => skill.id)
    visit skill_path(skill)
    click_on 'Edit'
    fill_in 'Name', :with => 'To Doing'
    fill_in 'Description', :with => ''
    fill_in 'Link', :with => 'www.linkylink.com'
    click_on 'Update Project'
    expect(page).to have_content 'errors'
  end



end
