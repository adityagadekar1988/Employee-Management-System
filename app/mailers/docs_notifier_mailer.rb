class DocsNotifierMailer < ApplicationMailer
  default from: 'adityagadekar1988@gmail.com'

  def notification_email
    @employee = params[:employee]
    mail(to: 'adityagadekar.ror@gmail.com', 
         subject: 'Documents Missing from employee.name')
  end 
end
