<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/logoss.jpg" type="image/png" />

    <title>KaTieu Shop</title>
</head>

<body>
    <form>
        <div>
            <input type="hidden" name="id" id="id" type="text" required />
        </div>
        <div>
            <label for="id">title:</label>
            <input name="title" id="title" type="text" required />
        </div>

        <div> <label for="id">price:</label>
            <input name="price" id="price" type="text" required />
        </div>

        <!-- #include file="./optionCategory.asp" -->
        <div> <label for="imgFile">Image file:</label>
            <input name="imgFile" onchange="changeImg(this)" id="imgFile" type="file" />
        </div>
        <input name="size[]" value="S" disabled> <br>
        <div style="display: flex; user-select: none;">
            <input type="checkbox" name="color[]" class="S" value="Yellow">Vàng<br>
            <input type="checkbox" name="color[]" class="S" value="Black">Đen <br>
            <input type="checkbox" name="color[]" class="S" value="White">Trắng <br>
            <input type="checkbox" name="color[]" class="S" value="Red">Đỏ <br>
            <input type="checkbox" name="color[]" class="S" value="Pink">Hồng <br>
        </div>
        <input type="text" name="text[]" class="S"> <br>
        <div style="display: flex; user-select: none;">
            <input type="checkbox" name="color[]" class="M" value="Yellow">Vàng<br>
            <input type="checkbox" name="color[]" class="M" value="Black">Đen <br>
            <input type="checkbox" name="color[]" class="M" value="White">Trắng <br>
            <input type="checkbox" name="color[]" class="M" value="Red">Đỏ <br>
            <input type="checkbox" name="color[]" class="M" value="Pink">Hồng <br>
        </div>
        <input name="size[]" value="M" disabled> <br>
        <input type="text" name="text[]" class="M"> <br>
        <div style="display: flex; user-select: none;">
            <input type="checkbox" name="color[]" class="L" value="Yellow">Vàng<br>
            <input type="checkbox" name="color[]" class="L" value="Black">Đen <br>
            <input type="checkbox" name="color[]" class="L" value="White">Trắng <br>
            <input type="checkbox" name="color[]" class="L" value="Red">Đỏ <br>
            <input type="checkbox" name="color[]" class="L" value="Pink">Hồng <br>
        </div>
        <input name="size[]" value="L" disabled> <br>
        <input type="text" name="text[]" class="L"> <br>
        <div style="display: flex; user-select: none;">
            <input type="checkbox" name="color[]" class="XL" value="Yellow">Vàng<br>
            <input type="checkbox" name="color[]" class="XL" value="Black">Đen <br>
            <input type="checkbox" name="color[]" class="XL" value="White">Trắng <br>
            <input type="checkbox" name="color[]" class="XL" value="Red">Đỏ <br>
            <input type="checkbox" name="color[]" class="XL" value="Pink">Hồng <br>
        </div>
        <input name="size[]" value="XL" disabled> <br>
        <input type="text" name="text[]" class="XL"> <br>
        <div> <input type="hidden" name="imgBase64" id="imgBase64">
            <button type="submit" onclick="handleSubmit(event)">Submit</button>
        </div>

    </form>
    <script>
        let dataArr = []
        let checkArr = []
        let checkArr1 = []
        let checkArr2 = []
        let checkArr3 = []
        const srtArrProduct = `<%=arr%>`
        const tex = document.createElement('tex')
        tex.innerHTML = srtArrProduct
        const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
        const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")

        console.log(dataJson);
        document.querySelector('#id').value = dataJson.length + 1
        const changeImg = (e) => {
            const reader = new FileReader();
            reader.onload = (e) => {
                const base64 = window.btoa(e.target.result)
                document.getElementById('imgBase64').value = base64
            }
            reader.readAsBinaryString(document.getElementById('imgFile').files[0])
        }

        const colorInput = document.getElementsByName('color[]')
        colorInput.forEach((item, index) => {
            item.addEventListener('change', (e) => {
                const className = e.target.classList[0]
                const value = e.target.value
                const indexz = className === 'S' ? checkArr.indexOf(value) : className === 'M' ? checkArr1.indexOf(value) : className === 'L' ? checkArr2.indexOf(value) : className === 'XL' ? checkArr3.indexOf(value) : null


                if (className === 'S') {
                    if (indexz < 0) {
                        checkArr.push(value)
                    } else {
                        checkArr.splice(indexz, 1)
                    }
                }
                if (className === 'M') {
                    if (indexz < 0) {
                        checkArr1.push(value)
                    } else {
                        checkArr1.splice(indexz, 1)
                    }
                }
                if (className === 'L') {
                    if (indexz < 0) {
                        checkArr2.push(value)
                    } else {
                        checkArr2.splice(indexz, 1)
                    }
                }
                if (className === 'XL') {
                    if (indexz < 0) {
                        checkArr3.push(value)
                    } else {
                        checkArr3.splice(indexz, 1)
                    }
                }

            })
        })

        const inputSize = document.getElementsByName('text[]')
        inputSize.forEach((item, index) => {
            item.addEventListener('input', (itemz) => {
                const className = itemz.target.classList[0]
                const itemIndex = dataArr.findIndex(item => item.size === className)
                if (itemIndex === -1) {

                    const newItem = {
                        size: className,
                        quantity: itemz.target.value,
                        color: className === 'S' ? checkArr : className === 'M' ? checkArr1 : className === 'L' ? checkArr2 : className === 'XL' ? checkArr3 : null
                    }
                    dataArr.push(newItem)
                } else {
                    dataArr[itemIndex].quantity = itemz.target.value
                }

                dataArr.sort((a, b) => {
                    const result = b.size.localeCompare(a.size);

                    if (result !== 0) {
                        if (a.size.length === 2 && b.size.length === 2) {
                            return -result;
                        } else if (a.size.length === 2) {
                            return 1;
                        } else if (b.size.length === 2) {
                            return -1;
                        }
                    }

                    return result;
                });
            })
        })



        const ids = 1
        const title = document.querySelector('#title')
        const price = document.querySelector('#price')
        const imgs = document.querySelector('#imgBase64')
        const category = document.querySelector('#category')

        function handleSubmit(e) {
            e.preventDefault();
            const formData = new URLSearchParams();
            formData.append("id", document.querySelector('#id').value);
            formData.append("title", title.value);
            formData.append("price", price.value);
            formData.append("imgBase64", imgs.value);
            formData.append("selectCategory", category.value);
            formData.append("datas", JSON.stringify(dataArr));
            fetch('./components/controller/addproject.asp', {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: formData
            }).then(item => item.text()).then(item => {
                console.log(item)
            })
        }

    </script>
</body>

</html>