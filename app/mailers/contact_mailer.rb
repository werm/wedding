class ContactMailer < ActionMailer::Base
  default from: "craig@wermert.me"

  def contact_email(info)
    puts "\n\n\n\nINFO: #{info}\n\n\n\n"
    mail(to: ENV['CONTACT_EMAIL'], subject: 'From the website') do |format|
      format.html {
        render locals: { info: info }
      }
    end
  end
end
