class DocsNotifierMailer < ApplicationMailer
  default from: 'adityagadekar1988@gmail.com'

  def notification_email
    @employee = params[:employee] 
    #@employee.each do |employee|      
      mail(to: 'adityagadekar.ror@gmail.com', 
           subject: 'Reminder for missing documents')   
  end 
end
