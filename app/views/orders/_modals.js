//modal

function showCustomerInfo(customerNumber) {
  $.getJSON("/customers/" + customerNumber, data => {
    document.querySelector("#customerName").innerText = data.customerName
    document.querySelector("#contactLastName").innerText = data.contactLastName
    document.querySelector("#contactFirstName").innerText = data.contactFirstName
    document.querySelector("#phone").innerText = data.phone
    document.querySelector("#addressLine1").innerText = data.addressLine1
    document.querySelector("#addressLine2").innerText = data.addressLine2
    document.querySelector("#city").innerText = data.city
    document.querySelector("#state").innerText = data.state
    document.querySelector("#postalCode").innerText = data.postalCode
    document.querySelector("#country").innerText = data.country
  })
}

document.querySelector("#orderdetailModal").style.maxWidth = 2000 + "px";

var orderdetailDT = $("#orderdetailTable").DataTable({
  serverSide: true,
  paging: false,
  searching: false,
  order: false,
  ajax: "/orders/10100/orderdetails",

  columns: [
    {data: "productName"},
    {data: "productLine"},
    {data: "productScale"},
    {data: "productVendor"},
    {data: "quantityOrdered"},
    {data: "priceEach"},
    {data: "orderLineNumber"}
  ]
  })

function showOrderdetail(orderNumber) {
  var orderdetailUrl =  "/orders/" + orderNumber + "/orderdetails"
  orderdetailDT.ajax.url(orderdetailUrl).load();

}