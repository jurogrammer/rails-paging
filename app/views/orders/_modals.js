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