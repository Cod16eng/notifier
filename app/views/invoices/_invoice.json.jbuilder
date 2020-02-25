json.extract! invoice, :id, :name, :num, :date, :amount, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
