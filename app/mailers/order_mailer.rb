class OrderMailer < ApplicationMailer

  def for_employee(order)
    @order = order

    mail to: "zagorsky28@gmail.com",
            subject: "Заявка с сайта rtwood.by"
  end

end
