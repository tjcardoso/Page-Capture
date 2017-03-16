require 'rails_helper'

RSpec.describe Page, type: :model do

  describe "validations" do
    it "requires something in the url" do
      p = Page.new FactoryGirl.attributes_for(:page).merge({url: nil})
      expect(p).to be_invalid
    end
  end

end
