    require 'spec_helper'

    describe 'user visits the root'  do
      it 'they click enter and are taken to the robots index page'  do

        visit '/'

        click_link("Enter")

        expect(current_path).to eq('/robots')
      end
    end

    describe 'user is on robot index and sees dropdown to create a robot'  do
      it 'they click on create new robot and the robot is created'  do

        visit '/robots'


       within("#drop-down") do
       click_on("Create a New Robot")

       expect(current_path).to eq('/robots/new')
     end
   end
 end

   describe 'user navigates to robots index'  do
     it 'then they are able to edit a robot'  do
       robot = Robot.create(name: "Botty McBotson",
                           city: "Cyborg City",
                           state: "Internetopia",
                           department: "Finance",
                           url: "https://i.imgur.com/FThfmVB.gif")

       visit '/robots'

       click_link('Edit')

       fill_in("name", with: "new name")
       click_button('submit')

      expect(current_path).to eq('/robots/1/show')
      expect(page).to have_content('new name')
      expect(page).to have_content('Cyborg City')
      expect(page).to have_content('Internetopia')
    end
  end
