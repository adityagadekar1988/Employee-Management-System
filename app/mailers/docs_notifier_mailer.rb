class DocsNotifierMailer < ApplicationMailer
  default from: 'adityagadekar1988@gmail.com'

  def notification_email
    @employee = params[:employee]
    @subject = 'Documents missing by '
    mail(to: 'adityagadekar.ror@gmail.com', 
         subject: @subject + @employee.name)
  end 
end
