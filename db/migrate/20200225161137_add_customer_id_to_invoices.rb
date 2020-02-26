class AddCustomerIdToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :customers_id, :integer
  end
end
