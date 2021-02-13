class OrderMailer < ApplicationMailer
  default from: 'orders@moderno.com.mk'
  
  EMAIL = 'ipetrovski3@gmail.com'

  def order_received
    @order = params[:order]
    mail(to: EMAIL, subject: 'Нова нарачка')
  end
end
