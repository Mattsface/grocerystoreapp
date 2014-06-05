require 'spec_helper'

describe "Lists" do

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

=begin
  describe "GET /lists" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lists_path
      response.status.should be(200)
    end
  end
=end
end
