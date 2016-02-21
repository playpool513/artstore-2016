class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @order_items = order.items
    @order_info  = order.info

    mail(to:      order.user.email,
         subject: "[Artstore] 感謝您完成本次的下單，以下是您這次購物明細 #{order.token}")
  end
end
