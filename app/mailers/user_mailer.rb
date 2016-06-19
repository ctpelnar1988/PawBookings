class UserMailer < ApplicationMailer

  def user_reset_password(current_user)
    @current_user = current_user
    mail(to: current_user.email, subject: 'Confirm Email')
  end

  def new_kennel_registration(current_user)
    @current_user = current_user
    mail(to: current_user.email, subject: 'Kennel Registration Confirmation')
  end
end
