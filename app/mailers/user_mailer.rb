class UserMailer < ApplicationMailer
  default from: "alex.stipanenko@gmail.com"

  def new_user_registration(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to My Awecome #{@user.email}")
  end

  def welcome_email
    @users = User.all

    @users.each do |user| 
      @user = user
      mail(to: @user.email, subject: 'Welcome to My Awecome #{user.email}')
    end
  end
end
