class SendDocNotifierEmailJob
  include Sidekiq::Job

  def perform(*args)
    @employee.each do |user|
      DocsNotifierMailer.notification_email.deliver_now
    end
  end
end
