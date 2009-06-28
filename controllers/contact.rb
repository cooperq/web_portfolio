get '/contact' do
  haml :'contact/index'
end

post '/contact' do
  @message='Email sent, I will get back to you shortly!'
  @title = 'Cooper Quintin - Contact Me!'
  #Connect to SMTP Server
  smtp = Net::SMTP.new('localhost', 25)
  smtp.start('cooperq.com')

  #Construct Mail Message 
  mail = MailFactory.new()
  mail.to = 'cooperq@cooperq.com'
  mail.from = @params['email']
  mail.subject = 'Message from cooperq.com contact form'
  mail.html = @params['message']

  #Construct SMTP Message
  smtp.send_message mail.construct, @params['email'], 'cooperq@cooperq.com'

  #Send this (and all other) message
  smtp.finish()

  redirect '/'
end
