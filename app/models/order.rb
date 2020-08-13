class Order < ApplicationRecord

  belongs_to :customer, class_name: "Customer", foreign_key: :customerNumber
  has_many :orderdetail, class_name: "Orderdetail", foreign_key: [:orderNumber, :productCode]

  def orderdetails
    Orderdetail.where(orderNumber: self.orderNumber)
  end
end