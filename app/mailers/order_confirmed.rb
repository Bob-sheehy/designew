class OrderConfirmed < ActionMailer::Base
  default from: "tennerdeals@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_confirmed.recieved.subject
  #
  #def recieved
   # @greeting = "Hi"

    #mail to: "to@example.org"
  #end
   
   def received(order) 
   @order = order
   mail to: order.email, subject: 'Tenner Deals' 
  end
  
  def emailed(order)
  @order = order
  mail to: order.email, subject: 'TennerDeals' 
 end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_confirmed.emailed.subject
  #
  #def emailed
   # @greeting = "Hi"

  #  mail to: "to@example.org"
 # end
end
