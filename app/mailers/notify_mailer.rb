class NotifyMailer < ApplicationMailer
  default from: "codrin@ascheri.co.uk"

  def notify_email(customer)
    @customer = customer
    mail(to: customer.email, subject: 'Notification Email')
  end
end
