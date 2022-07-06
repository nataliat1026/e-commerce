class UserMailer < ApplicationMailer
    default from: ENV['GMAIL_USERNAME']

    def welcome_email
        @email = params[:email]

        mail(to: @email, subject: 'Congratulations! User account successfully created.')
    end

end
