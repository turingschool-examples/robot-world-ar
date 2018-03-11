  require 'spec_helper'


  describe Robot do
  describe "validations" do
    it "it is invalid without a name, state, city, and department" do
      category = Robot.create()

      expect(category).to_not be_valid
    end
  end
end
