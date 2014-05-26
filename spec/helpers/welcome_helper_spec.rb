require 'spec_helper'
include Devise::TestHelpers


# Specs in this file have access to a helper object that includes
# the WelcomeHelper. For example:
#
# describe WelcomeHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe WelcomeHelper do
	let(:valid_name) 		{ { name: "Matt",
                               email:     "Matt@test.com",
                               password: '12345678',
                               password_confirmation: '12345678',
                              } }

    let(:valid_email)		{ { name: nil,
    							email: "test@user.com",
    							password: '12345678',
    							password_confirmation: '12345678',
    						 } }


  describe "display_name" do
	  it "should display the name of the user if its present" do
	  	@user = User.create! valid_name
    	sign_in @user
		expect(display_name).to eq("Matt")
	  end
		
	  it "should display the email of the user if no name is present" do
		@user = User.create! valid_email
    	sign_in @user
		expect(display_name).to eq("test@user.com")
	  end
	end
end
