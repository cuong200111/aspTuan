<style>
    * {
        margin: 0;
        padding: 0
    }

    table,
    th,
    td {
        border: 1px solid black;
        border-collapse: collapse;
    }

    td {
        text-align: center;
    }

    thead {
        background: #ffa50036
    }

    thead tr th {
        padding: 5px
    }

    tr {}

    button {
        margin: 5px 0;
        padding: 5px 30px;
        cursor: pointer
    }
</style>



<form>
    <Table style="width:100%">
        <thead>
            <tr>
                <th>
                    id
                </th>
                <th> người đặt hàng</th>
                <th>
                    tài khoản khách hàng
                </th>
                <th>
                    tên sản phẩm
                </th>
                <th>
                    màu sắc
                </th>
                <th>
                    số lượng
                </th>
                <th>
                    giá
                </th>


                <th>
                    hành động
                </th>
            </tr>
        </thead>
        <tbody>

        </tbody>
        <Table>
</form>
<script>
    const srtArrProduct = `<%=arr%>`
    const tex = document.createElement('tex')
    tex.innerHTML = srtArrProduct
    const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
    const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")

    let html = ``
    dataJson.forEach(item => {
        console.log(item)
        html += `  <tr>
                <td>
                   ${item.idproduct}
                </td>
                <td>
                    ${item.fullname}  
                </td>
                 <td>
                    ${item.account}  
                </td>
                <td>
                    ${item.titleProduct}  
                </td>
                <td>
                    ${item.colorVi}  
                </td>
                <td>
                    ${item.quatity}  
                </td>
                <td>
                    ${item.priceProduct} đ  
                </td>
            
                <td style="display:flex;padding:2px">
      <button type="button" style="margin:2px;color:red" name="id"  value="${item.idproduct}" onclick="handleRefuse(event,'${item.idproduct}','${item.colorEn}','${item.size}')">Từ chối đơn hàng</button>
      <button type="button" style="margin:2px;color:green" name="id" value="${item.idproduct}" onclick="handleConfirm(event,'${item.idproduct}','${item.colorEn}','${item.size}','${item.titleProduct}','${item.colorVi}')">xác nhận đơn hàng</button>
      
                </td>
            </tr>`
    })

    document.querySelector('tbody').innerHTML = html



    const handleRefuse = (e, id, color, size) => {
        e.preventDefault()

        fetch(`./components/controller/deleteCartUser.asp`, {
            method: 'POST',
            body: `ids=${encodeURIComponent(id)}&color=${encodeURIComponent(color)}&size=${encodeURIComponent(size)}`,
            headers: {
                'Content-type': 'application/x-www-form-urlencoded'
            }
        }).then((response) => {
            if (response.status === 200) {
                window.location.reload()
            }
        })


    }
    const handleConfirm = (e, id, colorEn, size, nameProduct, colorVi) => {
        e.preventDefault()
        const StrProduct = `Đơn hàng ${nameProduct}, Kích cỡ ${size}, Màu ${colorVi}`
        fetch(`./components/controller/addShipped.asp`, {
            method: 'POST',
            body: `product=${encodeURIComponent(StrProduct)}&shipper=${encodeURIComponent('FlatDay')}&statusShip=${encodeURIComponent('Đang giao hàng')}`,
            headers: {
                'Content-type': 'application/x-www-form-urlencoded'
            }
        }).then((response) => {
            if (response.status === 200) {
                fetch(`./components/controller/deleteCartUser.asp`, {
                    method: 'POST',
                    body: `ids=${encodeURIComponent(id)}&color=${encodeURIComponent(colorEn)}&size=${encodeURIComponent(size)}`,
                    headers: {
                        'Content-type': 'application/x-www-form-urlencoded'
                    }
                }).then((response) => {
                    if (response.status === 200) {
                        window.location.reload()
                    }
                })
            }
        })

    }
</script>