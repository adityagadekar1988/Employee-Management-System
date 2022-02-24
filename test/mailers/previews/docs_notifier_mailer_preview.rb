# Preview all emails at http://localhost:3000/rails/mailers/docs_notifier_mailer
class DocsNotifierMailerPreview < ActionMailer::Preview
	def notification_email
		DocsNotifierMailer.notification_email
	end
end
