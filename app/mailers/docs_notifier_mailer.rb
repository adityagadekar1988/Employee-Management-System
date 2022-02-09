class DocsNotifierMailer < ApplicationMailer
  default from: 'adityagadekar1988@gmail.com'

  def notification_email
    @employee = Employee.all 
    @employee.each do |employee|      
      mail(to: 'adityagadekar.ror@gmail.com', 
           subject: 'Documents missing by' + ' ' + employee.name)
    end    
  end 
end
