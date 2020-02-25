class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :num
      t.date :date
      t.float :amount, :precision => 12, :scale => 2

      t.timestamps
    end
  end
end
