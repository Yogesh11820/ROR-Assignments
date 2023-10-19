class UsermailerMailer < ApplicationMailer

    def welcome_email(user)
        @user = user 
        mail(to: @user.email, subject: 'Welcome to Blog site')
    end
end
