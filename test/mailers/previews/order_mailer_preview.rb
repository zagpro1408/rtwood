# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/for_employee
  def for_employee
    OrderMailer.for_employee
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/for_customer
  def for_customer
    OrderMailer.for_customer
  end

end
