class ContactMailer < ApplicationMailer
	default from: "\"Ricky Abelard\" <ricky@rickyabelard.com>"
  layout 'mailer'

	def sign_up_email(user)
		@user = user
		mail(:to => user.email, :subject => "Thanks for contacting me!")
	end
end
