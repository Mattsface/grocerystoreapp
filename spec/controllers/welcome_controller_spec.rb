require 'spec_helper'

describe WelcomeController do
  
  include Devise::TestHelpers
  before do
    @user = User.create! valid_session
    sign_in @user
  end

  let(:valid_session) { {  name: "Matt",
                           email: "matt#{(1...1000).to_a.sample}@spah.com",
                           password: '12345678',
                           password_confirmation: '12345678',
                            } }

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
