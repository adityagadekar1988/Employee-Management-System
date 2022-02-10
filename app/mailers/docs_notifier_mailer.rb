class DocsNotifierMailer < ApplicationMailer
  default from: 'adityagadekar1988@gmail.com'

  def notification_email 
    @employees = Employee.all      
    mail(to: 'adityagadekar.ror@gmail.com', 
          subject: 'Reminder for missing documents')   
  end 
end
