class Customer < ApplicationRecord
has_many :invoices

validates :name, :email, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Customer.create! row.to_hash
    end
  end
end
