<html>

<head>
    <meta charset="UTF-8">
    <title>Trang web của tôi</title>
</head>
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

<body>

    <form>
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
    <div class="dialog">
        <div class="header-dialog">
            <div onclick="closedialog(event)" class="header-dialog-close">
                <div></div>
                <div></div>
            </div>
        </div>
        <div class="container-dialog">
            <form>
                <input onchange="changeFile(event)" type="file" multiple>
                <select onclick="changeOption(event)">
                    <option value="Yellow">
                        Yellow
                    </option>
                    <option value="Red">
                        Red
                    </option>
                    <option value="Red">
                        Red
                    </option>
                    <option value="Black">
                        Black
                    </option>
                </select>

                <button onclick="actionAddData(event)">Thêm sản phẩm</button>
            </form>
        </div>
    </div>

</body>
<script>
    const srtArrProduct = `<%=arr%>`
    const tex = document.createElement('tex')
    tex.innerHTML = srtArrProduct
    const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
    const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")

    let html = ``
    dataJson.forEach(item => {
        html += `  <tr>
                <td>
                   ${item.id}
                </td>
                <td>
                    ${item.title}  
                </td>
                <td>
      <button name="id" id="id" value="${item.id}" onclick="Add(event,${item.id})">Thêm bổ sưu tập cho sản phẩm</button>
                </td>
            </tr>`
    })
    let fileArr = []
    const changeFile = (e) => {
        let files = e.target.files

        for (let i = 0; i < files.length; i++) {
            const reader = new FileReader()
            reader.onload = () => {
                fileArr.push(reader.result)
                if (fileArr.length === files.length) {
                }
            }
            reader.readAsDataURL(files[i])
        }

    }
    document.querySelector('tbody').innerHTML = html
    let ids
    let color = 'Yellow'
    const Add = (e, id) => {
        e.preventDefault()
        ids = id
        document.querySelector('.dialog').classList.add('active')
    }
    const closedialog = () => {
        document.querySelector('.dialog').classList.remove('active')
    }
    const changeOption = (e) => {
        color = e.target.value
    }
    const actionAddData = (e) => {
        e.preventDefault()


        fileArr.forEach((item, index) => {
            fetch(`./components/controller/addlibraryProduct.asp`, {
                method: 'POST',
                body: `ids=${encodeURIComponent(ids)}&imgs=${encodeURIComponent(item)}&colors=${encodeURIComponent(color)}`,
                headers: {
                    'Content-type': 'application/x-www-form-urlencoded'
                }
            }).then((response) => {
                if (index === fileArr.length - 1) {
                    if (response.status === 200) {
                        window.location.reload()
                    }
                }
            })
        })

    }
</script>

</html>