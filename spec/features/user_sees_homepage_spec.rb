  require 'spec_helper'

  describe 'user visits the root'  do
    it 'they see the welcome image and enter button'  do
      visit '/'

    expect(current_path).to eq("/")
    expect(page).to have_link("Enter")
  end
end
