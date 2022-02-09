class SendDocNotifierEmailJob
  include Sidekiq::Job

  def perform(*args)
    @employee.each do |user|
      DocsNotifierMailer.notification_email.deliver_now
      #puts "Hello There"
    end
  end

  #Sidekiq::Cron::Job.create(name: 'send_doc_notifier_email_job', cron: '* * * * *', class: 'SendDocNotifierEmailJob')
end
