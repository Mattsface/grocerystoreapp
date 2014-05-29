class ListMailer < ActionMailer::Base
  default from: "matt@example.com"

  def new_list(list, email)
  	@list = list
  	@email = email
  	mail(to: @email , subject: "New list created")

  end

end
