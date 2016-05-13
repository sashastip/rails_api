class UserMailer < ApplicationMailer
  default from: "alex.stipanenko@gmail.com"
  binding.pry
  def welcome_email(user)
    @user = current_user
  end
end
