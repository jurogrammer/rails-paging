class Orderdetail < ApplicationRecord
  self.primary_key = [:orderNumber, :productCode]

  belongs_to :order, class_name: "Order", foreign_key: :orderNumber
  belongs_to :product, class_name: "Product", foreign_key: :productCode
end