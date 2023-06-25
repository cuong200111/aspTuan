<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <div class="containers">
        <div class="containers_container">
            <div class="containers_container_products">

            </div>
            <div class="containers_container_information">
                <div class="containers_container_information_title">


                </div>
                <div class="containers_container_information_color">
                    <div class="containers_container_information_color_content">
                        <h1>Màu Sắc:</h1> <span></span>
                    </div>
                    <div class="containers_container_information_color_container">

                    </div>
                </div>
                <div class="containers_container_information_size">
                    <div class="containers_container_information_size_title">
                        <span>Kích thước: </span>
                    </div>
                    <div class="containers_container_information_size_content">

                    </div>

                </div>
                <div class="containers_container_information_addCart">
                    <div class="containers_container_information_addCart_quatity">
                        <div class="containers_container_information_addCart_quatity_prev">
                            <div></div>
                        </div>
                        <span>
                            <h5>
                                0
                            </h5>
                        </span>
                        <div class="containers_container_information_addCart_quatity_next">
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <div class="containers_container_information_addCart_button">
                        <button>Thêm vào giỏ hàng</button>
                    </div>

                </div>
                <div></div>
            </div>
        </div>
    </div>







    <script>
        const paramLocation = new URLSearchParams(window.location.search)
        const formatColor = (color) => {
            switch (color) {
                case 'Yellow':
                    return 'Vàng'
                case 'Red':
                    return 'Đỏ'
                case 'Black':
                    return 'Đen'
                case 'White':
                    return 'Trẳng'
                case 'Pink':
                    return 'Hồng'
            }
        }
        const formatDataProduct = dataJson.find((item) => {
            return item.id === paramLocation.get('id')

        })
        const sale = Number(formatDataProduct.sale) / 100
        const idProduct = formatDataProduct.id
        const filterlibrary = dataLibrary.filter(item => {
            if (item.ids === idProduct) {
                return item
            }
        })
        const arrSizes = formatDataProduct.datas ? formatDataProduct.datas : []
        const fillterDuplicateArrSizes = arrSizes.filter((item, index) => {
            return arrSizes.findIndex(itemz => item.size === itemz.size) === index
        })

        const funcFind = (data) => {
            return fillterDuplicateArrSizes && fillterDuplicateArrSizes.find(item => item.size === data)
        }
        if (!funcFind('S')) {
            fillterDuplicateArrSizes.push({ size: 'S', color: "noData" })
        } else if (!funcFind('M')) {
            fillterDuplicateArrSizes.push({ size: 'M', color: "noData" })
        } else if (!funcFind('L')) {
            fillterDuplicateArrSizes.push({ size: 'L', color: "noData" })
        } else if (!funcFind('XL')) {
            fillterDuplicateArrSizes.push({ size: 'XL', color: "noData" })
        }

        fillterDuplicateArrSizes.sort((a, b) => {
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
        let htmlSizez = ``
        fillterDuplicateArrSizes.forEach((item) => {
            htmlSizez += ` <div onclick="handleActiveSize(event)"  aria-label="${typeof item.color === 'string' ? "hiddenSize" : ""}"
                            class="containers_container_information_size_content_item ${typeof item.color === 'string' ? "hiddenSize" : ""}">
                            <span>${item.size}</span>
                        </div>`
        })

        document.querySelector('.containers_container_information_size_content').innerHTML = htmlSizez
        document.querySelector('.containers_container_information_title').innerHTML = `<h1>${formatDataProduct.title}</h1><h5>${formatDataProduct.title} <op>|</op> Đã bán 100K</h5>
                    <span>${formatDataProduct.price}đ <sale class="containers_container_information_title_sale"> ${Number(formatDataProduct.price) * sale}đ </sale> <text
                            class="containers_container_information_title_text">&nbsp;&nbsp;&nbsp;${formatDataProduct.sale}%</text></span>`
        const sliceArr = filterlibrary.slice(0, 10)
        let htmlFirtProduct = ``
        sliceArr.forEach(item => {
            htmlFirtProduct += ` <div class="containers_container_products_item"><img
                        src="${item.imgs}"
                        alt="">
                </div>`
        })
        document.querySelector('.containers_container_products').innerHTML = htmlFirtProduct
        const filterColorImg = filterlibrary.filter((item, index) => {
            const findIndex = filterlibrary.findIndex((itemz, indexz) => {
                return itemz.colors === item.colors
            })
            return findIndex === index
        })
        const informationColor = document.querySelector('.containers_container_information_color_container')
        let htmlColorImg = ``
        filterColorImg.forEach((item, index) => {
            htmlColorImg += `<div aria-label="${item.colors}" onclick="handleActive(event)"
                            class="containers_container_information_color_container_item">
                            <img src="${item.imgs}"
                                alt="">
                        </div>`
        })
        informationColor.innerHTML = htmlColorImg
        const contentColor = document.querySelector('.containers_container_information_color_content span')
        const activeColor = document.querySelectorAll('.containers_container_information_color_container_item')
        const itemProduct = document.querySelector('.containers_container_products')
        let htmlProducts = ``
        const handleActive = (e) => {
            const labelDiv = e.currentTarget.ariaLabel
            const arrImgproduct = filterlibrary.filter((item) => item.colors === labelDiv)
            htmlProducts = ''
            arrImgproduct.forEach(item => {
                htmlProducts += `<div class="containers_container_products_item"><img
                        src="${item.imgs}"
                        alt=""></div>`
            })
            activeColor.forEach((item) => {
                item.classList.remove('active')
            })

            contentColor.innerHTML = formatColor(labelDiv)
            itemProduct.innerHTML = htmlProducts
            e.currentTarget.classList.add('active')
        }
        const activeSize = document.querySelectorAll('.containers_container_information_size_content_item')
        const handleActiveSize = (e) => {
            const ariaLabel = e.currentTarget.ariaLabel
            if (ariaLabel === 'hiddenSize') {

            } else {
                activeSize.forEach((item) => {
                    item.classList.remove('active')
                })
                e.currentTarget.classList.add('active')
            }

        }
        const numberQuatity = document.querySelector('.containers_container_information_addCart_quatity span h5')
        const prv = document.querySelectorAll('.containers_container_information_addCart_quatity_prev div')
        const prvClick = document.querySelector('.containers_container_information_addCart_quatity_prev')
        const nextClick = document.querySelector('.containers_container_information_addCart_quatity_next')
        prv.forEach((item) => {

            if (Number(numberQuatity.textContent) === 0) {
                item.style = 'background-color: gray'
            }
        })
        prvClick.addEventListener('click', () => {

            if (Number(numberQuatity.textContent) === 0) {

            } else {
                const num = Number(numberQuatity.textContent) - 1
                numberQuatity.innerHTML = num
            }
        })
        nextClick.addEventListener('click', () => {

            const num = Number(numberQuatity.textContent) + 1
            numberQuatity.innerHTML = num

        })
    </script>
</body>

</html>