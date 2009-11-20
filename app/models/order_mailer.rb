class OrderMailer < ActionMailer::Base
  

  def confirmation(order, sent_at = Time.now)
    subject    'Order confirmation for order #{order.id}'
    recipients [order.customer.email, "demoshop@avarteq.de"]
    from       'demoshop@avarteq.de'
    sent_on    sent_at
    
    body       :order => order, :customer => order.customer
  end

end
