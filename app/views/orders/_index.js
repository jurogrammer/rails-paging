// orders Table
/**
 * serverSide: true => 서버쪽에서 테이블 데이터 처리하도록 설정. 따라서 데이블을 보여주기 위한 길이 시작 조건등을 서버로 넘겨주고,
 *                     response에 대하여 data를 찾아 테이블을 보여준다.
 * data: request에 보낼 파라미터 등록
 * dataSrc: 콜백함수를 등록하여 Response가 왔을 때 데이터 전처리 후 return으로 데이터를 넣어준다. 즉, 테이블에 보낼 데이터! {data: [{},{}]}가 아닌 실제 데이터 리스트를 보내줘야 함. [{},{}]
 */

var ordersTable = $('#orders').DataTable( {
  serverSide: true,
  ajax: {
    url: "/orders",
    type: "GET",
    data: {
      q: $("#q").val(),
      condition: $("#condition").val()
    },

    dataSrc: res => {
      recordsTotal = res.recordsTotal
      recordsFilterd = res.recordsFiltered
      console.log(res)
      return res.data
    }
  },

  pageLength: 25,

  columns: [
    {
      data: "orderNumber",
      render: function (data, type, row) {
        return "<a href=\"#orderdetail\" rel=\"modal:open\">" + data + "</a>"
    }},
    {data: "orderDate"},
    {data: "requiredDate"},
    {data: "shippedDate"},
    {data: "status"},
    {data: "comments"},
    {
      data: "customerNumber",
      render: function (data, type, row) {
        return "<a href=\"#customer\" rel=\"modal:open\">" + data + "</a>"
      }
    }
  ]
});

document.querySelector("#orders_filter").style.display = "none";

var searchBtn = document.querySelector(".search-btn");

searchBtn.addEventListener("click", () => {
  ordersTable.ajax.reload();
});