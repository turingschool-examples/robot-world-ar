  require 'spec_helper'

   describe 'user navigates to robots index'  do
     it 'then they are able to edit a robot'  do
       robot = Robot.create(name: "Botty McBotson",
                           city: "Cyborg City",
                           state: "Internetopia",
                           department: "Finance",
                           url: "https://i.imgur.com/FThfmVB.gif")

       visit '/robots'

       click_button('Delete')

       expect(current_path).to  eq("/robots")
       expect(page).to_not have_content("Cyborg City")
       expect(page).to_not have_content("Internetopia")
       expect(page).to_not have_content("Finance")
     end
   end
