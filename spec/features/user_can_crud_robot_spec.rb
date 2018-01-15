require 'spec_helper'

describe "when a user visits robot index" do
  it "they see all robots" do
    robot = Robot.create(name: "Botty McBotson",
                        city: "Cyborg City",
                        state: "Internetopia", 
                        department: "Finance")

    visit "/robots"

    expect(page).to have_content("Botty McBotson")
    expect(page).to have_content("Cyborg City")
    expect(page).to have_content("Internetopia")
    expect(page).to have_content("Finance")
  end
end
