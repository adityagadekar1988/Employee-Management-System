class DocsNotifierMailer < ApplicationMailer
  default from: 'adityagadekar1988@gmail.com'

  def notification_email
    @employees = Employee.left_outer_joins(:documents).group('employees.id').having("COUNT(documents.id) < #{Document.count}")      
    mail(to: 'adityagadekar.ror@gmail.com', 
          subject: 'Reminder for missing documents')   
  end 
end