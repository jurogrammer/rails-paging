class Order < ApplicationRecord

  belongs_to :customer, class_name: "Customer", foreign_key: :customerNumber
  has_many :orderdetail, class_name: "Orderdetail", foreign_key: [:orderNumber, :productCode]

  def orderdetails
    Orderdetail.where(orderNumber: self.orderNumber)
  end

  scope :search_by_condition, -> (condition, q) {
    return all if q == ""
    
    case condition
    when "orderNumber"
      where(orderNumber: q)
    when "status"
      where("status LIKE ?", "%" + q + "%")
    end
  }
end