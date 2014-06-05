class WelcomeController < ApplicationController
  def index
  	@user = current_user
  	@cat_image = "cats.jpg"
  end
end
