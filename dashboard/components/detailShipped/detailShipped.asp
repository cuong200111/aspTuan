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
        font-family: Arial, Helvetica, sans-serif;
        font-size: 15px;
        padding: 3px;
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

    .statusShip {
        background-color: rgba(255, 119, 0, 0.804);
        border: none;
        border-radius: 4px;
    }
</style>



<form>
    <Table style="width:100%">
        <thead>
            <tr>
                <th>
                    Sản phẩm
                </th>
                <th>
                    Người giao hàng
                </th>
                <th>
                    Trạng thái
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
                   ${item.product}
                </td>
                <td>
                    ${item.shipper}  
                </td>
                 <td>
                    <button type="button" class="statusShip">    ${item.statusShip}  </button>
                
                </td>

                </td>
            </tr>`
    })

    document.querySelector('tbody').innerHTML = html




</script>