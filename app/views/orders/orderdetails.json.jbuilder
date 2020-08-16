json.data @orderdetails do |orderdetail|
  json.(orderdetail, :quantityOrdered, :priceEach, :orderLineNumber)
  json.(orderdetail.product, :productName, :productLine, :productScale, :productVendor)
end