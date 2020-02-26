class Invoice < ApplicationRecord
  belongs_to :customer
  after_create :send_notify_email
  validates :name, :num, :date, :amount, presence: true

  def self.import(file)

  CSV.foreach(file.path, headers:true, skip_lines: /^(?:,\s*)+$|\b(\w*Total\w*)\b/) do |row|
    row = row.to_hash
    invoice = Invoice.new(row)
    customer = Customer.find_by(name: row['name'])
    invoice.customer = customer if customer.present?
    invoice.save!
  end
end

  def send_notify_email
      NotifyMailer.notify_email(self.customer).deliver
  end

end
