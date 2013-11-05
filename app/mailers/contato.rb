class Contato < ActionMailer::Base
  default from: "parseint.sistemas@gmail.com"

  def send_mail(message)
  	body = "Nome: #{message.name}\r\nE-mail: #{message.email}\r\nMensagem: #{message.content}"
    mail(to: "torquatro@gmail.com", subject: "Mensagem Site Parseint - #{message.name}", :body => body)
  end

end
