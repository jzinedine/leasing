require 'spec_helper'

describe "Kases" do

  include Warden::Test::Helpers
  Warden.test_mode!

  before (:each) do
    @user ||= FactoryGirl.create :user
    @kase ||= FactoryGirl.create :kase
    login_as(@user, :scope => :user)
  end

  after :each do
    Warden.test_reset!
  end

  describe "GET /kases" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get kases_path
      response.status.should be(200)
    end
  end
end
