require 'rails_helper'

RSpec.describe Api::V1::PagesController, type: :controller do

    describe "#create" do
      describe "with valid attributes" do
        def valid_request
          post :create, url: "https://www.google.com", format: :json
        end

        it "saves a record to the database" do
          expect{valid_request}.to change{Page.count}.by(1)
        end
      end

      describe "with invalid attributes" do
        def invalid_request
          post :create, url: "google.com"
        end

        it "doesn't save a record to the database" do
          expect{invalid_request}.to change{Page.count}.by(0)
        end
      end

    end
end
