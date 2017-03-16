require 'rails_helper'

RSpec.describe Entry, type: :model do

  describe "validations" do
    it "requires something in the tag_name" do
      e = Entry.new FactoryGirl.attributes_for(:entry).merge({tag_name: nil})
      expect(e).to be_invalid
    end
  end


end
