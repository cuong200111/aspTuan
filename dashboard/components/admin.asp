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
        <div>
            <input type="number" id="sale" name="sale" min="0" max="100">
        </div>

        <!-- #include file="./optionCategory.asp" -->
        <div> <label for="imgFile">Image file:</label>
            <input name="imgFile" onchange="changeImg(this)" id="imgFile" type="file" />
        </div>
        <input name="size[]" value="S" disabled> <br>
        <div style="display: flex; user-select: none;">
            <input type="text" name="color[]" class="S" aria-level="Yellow" value="" placeholder="Yellow">
            <input type="text" name="color[]" class="S" aria-level="Black" value="" placeholder="Black">
            <input type="text" name="color[]" class="S" aria-level="White" value="" placeholder="White">
            <input type="text" name="color[]" class="S" aria-level="Red" value="" placeholder="Red">
            <input type="text" name="color[]" class="S" aria-level="Pink" value="" placeholder="Pink">
        </div>

        <input name="size[]" value="M" disabled> <br>

        <div style="display: flex; user-select: none;">
            <input type="text" name="color[]" class="M" aria-level="Yellow" value="" placeholder="Yellow">
            <input type="text" name="color[]" class="M" aria-level="Black" value="" placeholder="Black">
            <input type="text" name="color[]" class="M" aria-level="White" value="" placeholder="White">
            <input type="text" name="color[]" class="M" aria-level="Red" value="" placeholder="Red">
            <input type="text" name="color[]" class="M" aria-level="Pink" value="" placeholder="Pink">
        </div>

        <input name="size[]" value="L" disabled> <br>
        <div style="display: flex; user-select: none;">
            <input type="text" name="color[]" class="L" aria-level="Yellow" value="" placeholder="Yellow">
            <input type="text" name="color[]" class="L" aria-level="Black" value="" placeholder="Black">
            <input type="text" name="color[]" class="L" aria-level="White" value="" placeholder="White">
            <input type="text" name="color[]" class="L" aria-level="Red" value="" placeholder="Red">
            <input type="text" name="color[]" class="L" aria-level="Pink" value="" placeholder="Pink">
        </div>

        <input name="size[]" value="XL" disabled> <br>
        <div style="display: flex; user-select: none;">
            <input type="text" name="color[]" class="XL" aria-level="Yellow" value="" placeholder="Yellow">
            <input type="text" name="color[]" class="XL" aria-level="Black" value="" placeholder="Black">
            <input type="text" name="color[]" class="XL" aria-level="White" value="" placeholder="White">
            <input type="text" name="color[]" class="XL" aria-level="Red" value="" placeholder="Red">
            <input type="text" name="color[]" class="XL" aria-level="Pink" value="" placeholder="Pink">
        </div>
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
        document.querySelector('#id').value = dataJson.length + 1
        const changeImg = (e) => {
            const reader = new FileReader();
            reader.onload = (e) => {
                const base64 = window.btoa(e.target.result)
                document.getElementById('imgBase64').value = base64
            }
            reader.readAsBinaryString(document.getElementById('imgFile').files[0])
        }



        const inputSize = document.getElementsByName('color[]')
        inputSize.forEach((item, index) => {
            item.addEventListener('input', (itemz) => {
                const aria = itemz.target.ariaLevel;
                const className = itemz.target.classList[0]
                const foundItem = dataArr.find((item) => {
                    return item.size === className && item.color.cl === aria;
                });

                if (foundItem) {
                    foundItem.color.qt = itemz.target.value;
                } else {
                    const newItem = {
                        size: className,
                        color: {
                            cl: aria,
                            qt: itemz.target.value
                        }
                    }
                    dataArr.push(newItem);
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
        const sale = document.querySelector('#sale')
        function handleSubmit(e) {
            e.preventDefault();
            fetch('./components/controller/addproject.asp', {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
                body: `id=${encodeURIComponent(document.querySelector('#id').value)}&title=${encodeURIComponent(title.value)}&price=${encodeURIComponent(price.value)}&sale=${encodeURIComponent(sale.value === `` ? 0 : sale.value)}&imgBase64=${encodeURIComponent(imgs.value)}&selectCategory=${encodeURIComponent(category.value)}&datas=${encodeURIComponent(JSON.stringify(dataArr))}`,
            }).then(item => {
                if (item.status === 200) {
                    // window.location.reload()
                }
            }).catch(err => {
                console.log(err)
            })
        }

    </script>
</body>

</html>