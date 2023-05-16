
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang web của tôi</title>
</head>
<style>
*{
    margin:0;
    padding:0
    }
table,th, td{
          border: 1px solid black;
  border-collapse: collapse;
    }
td{
    text-align: center;
}
thead{
    background:#ffa50036
}
thead tr th {
    padding:5px
    }
tr{
    
}
button{
    margin:5px 0;
    padding:5px 30px;
    cursor: pointer
}
</style>
<body>

  <form action="./components/controller/apidelete.asp" method="post">
    <Table style="width:100%">
        <thead>
            <tr>
                <th>
                    id
                </th>
                <th>
                    title
                </th>
                 <th>
                    action
                </th>
            </tr>
        </thead>
        <tbody>
          
        </tbody>
        <Table>
  </form>


</body>
<script>
const srtArrProduct = "<%=arr%>"
const tex=  document.createElement('tex')
tex.innerHTML = srtArrProduct
const text = tex.innerHTML === 'failure'?"[]":tex.innerHTML

const dataJson = JSON.parse(text.replaceAll('_','"').slice(0,text.lastIndexOf(','))+"]")
console.log(dataJson);
let html = ``
dataJson.forEach(item=>{
    html += `  <tr>
                <td>
                   ${item.id}
                </td>
                <td>
                    ${item.category}  
                </td>
                <td>
      <button name="id" id="id" value="${item.id}"> Xóa</button>
                </td>
            </tr>`
})

document.querySelector('tbody').innerHTML = html

</script>
    </html>