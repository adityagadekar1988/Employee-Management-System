class SendDocNotifierEmailJob
  include Sidekiq::Job

  def perform(*args)
    Employee.find_each do |user|
      DocsNotifierMailer.with(employee: user).notification_email.deliver_now 
    end
  end
end
