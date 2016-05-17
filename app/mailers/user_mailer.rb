class UserMailer < ApplicationMailer
  default from: "alex.stipanenko@gmail.com"

  def welcome_email(user)
    @user = current_user
  end
end
