//modal

function showCustomerInfo(customerNumber) {
  customerInfo = $.getJSON("/customers/" + customerNumber)
  
}