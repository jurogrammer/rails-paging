class Product < ApplicationRecord

  has_many :orderdetail, class_name: "Orderdetail", foreign_key: [:productCode, :orderNumber]

  def orderdetails
    Orderdetail.where(productCode: self.productCode)
  end
end