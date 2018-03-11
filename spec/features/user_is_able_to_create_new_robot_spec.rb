require 'spec_helper'

describe 'user is on robot index and sees dropdown to create a robot'  do
  it 'they click on create new robot and the robot is created'  do

    visit '/robots/new'


   fill_in("name", with: "new name")
   fill_in("city", with: "jacksonville")
   fill_in("state", with: "Fl")
   fill_in("department", with: "smog")

   click_button("submit-button")

   expect(page).to have_content("new name")
   expect(page).to have_content("jacksonville")
   expect(page).to have_content("Fl")
   expect(page).to have_content( "smog")
   expect(page).to have_link("Edit")
   expect(page).to have_button("Delete")
  end
end
