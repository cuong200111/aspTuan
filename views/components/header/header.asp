<div class="main">

    <div class="main_header">
        <div class="main_header_logo">
            <img src="views/components/header/img/logo.png" />

        </div>
        <div class="main_header_content">
            <ul>
                <li><a class="main_header_content_href" href="/index.asp">Trang chủ</a></li>
                <li><a class="main_header_content_href" href="/store.asp">Cửa hàng</a></li>
                <li class="mouse" style="position: relative;"><a class="main_header_content_href" href="">Danh mục</a>
                    <ul class="mouse_nav2"
                        style="left:18%;position: absolute;flex-direction: column;padding: 0 0 0 0;background-color: white;width:200%;box-shadow: 0 0 5px 1px rgba(0, 0, 0, 0.288);border-radius: 2px;">
                        <li style="display: block;"><a
                                style="display: block;padding: 10px;text-decoration: none;color: black; "
                                href="product.asp?name=jewellery">Áo
                                polo</a></li>
                        <li style="display: block;"><a
                                style="display: block;padding: 10px;text-decoration: none;color: black; "
                                href="product.asp?name=accessories">Áo sơ
                                mi</a></li>
                        <li style="display: block;"><a
                                style="display: block;padding: 10px;text-decoration: none;color: black; "
                                href="product.asp?name=dresses">Quần</a></li>
                        <li style="display: block;"><a
                                style="display: block;padding: 10px;text-decoration: none;color: black; "
                                href="product.asp?name=footwear">Phụ
                                kiện</a></li>

                    </ul>
                </li>
                <li><a class="main_header_content_href" href="/orderproduct.asp">Đơn hàng của bạn</a></li>
            </ul>

        </div>
        <div class="bgPopup" style="background-color: rgba(0, 0, 0, 0.11);position: fixed;
        top: 0;left:0;height: 100%;width:100%;z-index: 10;">
        </div>
        <div class="searchProduct">
            <input class="searchInput" type="text">
            <i id="iconsearch" onclick="navigateSearchParam()" class="fa-solid fa-magnifying-glass"></i>
            <div class="infoSearch"></div>
        </div>
        <div class="main_header_login">

        </div>
    </div>



</div>
<div class="cart_popup">
    <div class="cart_popup_close">
        X
    </div>
    <div class="cart_popup_header">
        <div class="cart_popup_header_left">


        </div>
        <div class="cart_popup_header_right">
            <div class="cart_popup_header_right_top">
                XEM GIỎ HÀNG
            </div>
            <div class="cart_popup_header_right_bottom">
                <button><a href="./orderproduct.asp">Thanh toán</a></button>
            </div>
        </div>
    </div>
    <div class="cart_popup_freeship">

    </div>
    <div class="cart_popup_container">

    </div>
</div>
<script>
    const mapSttCart = (arr) => {
        if (Array.isArray(arr)) {
            return arr.map((item, index) => {
                item.stt = index + 1
                return item
            })
        }
    }
    const arrCart = JSON.parse(localStorage.getItem('dataCart')) ? mapSttCart(JSON.parse(localStorage.getItem('dataCart'))) : []
    const cart_popup = document.querySelector('.cart_popup')
    const main_header_login = document.querySelector('.main_header_login')
    const iconsearch = document.querySelector('#iconsearch')
    const online = Boolean(localStorage.getItem("online"))

    if (online) {
        main_header_login.innerHTML = `<div class="main_header_login_cart">
        <div class="main_header_login_cart_noti"></div>
        </div> <button onclick="signout()">Đăng xuất</button>`
        if (arrCart.length > 0) {

            document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: #5b6167;"></i><div><span>${arrCart.length}</span></div>`
        } else {
            document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: #5b6167;"></i>`
        }
    } else {
        main_header_login.innerHTML = ` <div class="main_header_login_cart">
        <div class="main_header_login_cart_noti"></div>
        </div><button><a style="text-decoration: none;color:black" href="../../signup.asp">Đăng ký</a></button>
            <button><a style="text-decoration: none;color:black" href="../../signin.asp">Đăng nhập</a></button>`
        if (arrCart.length > 0) {

            document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: #5b6167;"></i><div><span>${arrCart.length}</span></div>`
        } else {
            document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: #5b6167;"></i>`
        }


    }
    const signout = () => {
        if (online) {
            localStorage.setItem('online', '');
            window.location.reload();
            localStorage.setItem('user', '')
        }
    }
    // const nav2 = document.querySelector('.nav2')
    // const main_header_content_href_li = document.querySelector(".main_header_content_href.mouse")
    // main_header_content_href_li.addEventListener('mouseenter',()=>{
    //     nav2.classList.add('active')
    // })
    // main_header_content_href_li.addEventListener('mouseleave',()=>{
    //     nav2.classList.remove('active')
    // })
    const main_header_login_cart = document.querySelector('.main_header_login_cart')
    main_header_login_cart.addEventListener('click', () => {
        document.querySelector('.bgPopup').classList.add('active')
        cart_popup.classList.add('active')
    })
    document.querySelector('.cart_popup_close').addEventListener('click', () => {
        document.querySelector('.bgPopup').classList.remove('active')
        cart_popup.classList.remove('active')
    })
    const header = document.querySelector('.main_header')
    const main_header = document.querySelector('.main')
    const main_header_content = document.querySelectorAll('.main_header_content_href')
    const button = document.querySelectorAll('button')
    document.addEventListener('scroll', () => {
        if (window.innerWidth > 600) {
            if (scrollY > 46) {
                iconsearch.style= `color: white`
           
                if (arrCart.length > 0) {

                    document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: white;"></i><div><span>${arrCart.length}</span></div>`
                } else {
                    document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: white;"></i>`
                }
                header.classList.add('active')
                main_header_content.forEach(item => item.classList.add('active'))
                header.style = 'animation:scrollHeader 0.4s forwards;'
                button.forEach(item => item.classList.add('active'))
                main_header.classList.add('active')
            } else {
                iconsearch.style= `color: rgba(0, 0, 0, 0.801)`
                if (arrCart.length > 0) {

                    document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: #5b6167;"></i><div><span>${arrCart.length}</span></div>`
                } else {
                    document.querySelector('.main_header_login_cart_noti').innerHTML = `<i class="fa-solid fa-cart-shopping" style="color: #5b6167;"></i>`
                }
                header.classList.remove('active')
                header.style = 'animation:scrollHeader2 0.5s forwards;'
                main_header_content.forEach(item => item.classList.remove('active'))
                button.forEach(item => item.classList.remove('active'))
                main_header.classList.remove('active')
            }
        }

    })


    const totalPrice = arrCart.length > 0 ? arrCart.reduce((accumulator, currentValue) => {
        return accumulator + (currentValue.price * currentValue.num)
    }, 0) : 0
    // const formatData = arrCart.reduce((accumulator, currentValue) => {
    //     const findDuplicate = accumulator.findIndex(item => item.id === currentValue.id
    //     )
    //     if (findDuplicate !== -1) {
    //         accumulator[findDuplicate].num += currentValue.num
    //     } else {
    //         accumulator.push(currentValue)
    //     }
    //     return accumulator
    // }, [])
    const cart_popup_header_left = document.querySelector('.cart_popup_header_left')
    cart_popup_header_left.innerHTML = `  <h1>GIỎ HÀNG CỦA TÔI</h1>
                <h6>${arrCart.length > 0 ? arrCart.length : 0} SẢN PHẨM</h6>
                <h5>TỔNG TIỀN:</h5>
                <span>${totalPrice}₫</span>`

    let htmlCart = ``
    arrCart.forEach((item, index) => {
        htmlCart += `<div class="cart_popup_container_item">
            <div class="cart_popup_container_item_left">
                <img style="width:200px;height320px" src="${item.imgs}"
                    alt="">
            </div>
            <div class="cart_popup_container_item_right">
                <icon class="cart_popup_container_item_right_close" onclick="handleDelItemCart(${item.stt})"><span>x</span></icon>
                <div class="cart_popup_container_item_right_top">
                  ${item.title} (Size: ${item.size}, Màu: ${item.colorVi})
                </div>
                <div class="cart_popup_container_item_right_bottom">
                    <div class="cart_popup_container_item_right_bottom_quantity">
                        <div onclick="prevQuatitys(${item.stt})"><span>-</span></div>
                        <div><span class="quantitys">${item.num}</span></div>
                        <div onclick="nextQuatitys(${item.stt})"><span>+</span></div>
                    </div>
                    <div class="cart_popup_container_item_right_bottom_price">
                        Tổng tiền ${item.num * item.price}
                    </div>
                </div>
            </div>
        </div>`
    })
    const cart_popup_container = document.querySelector('.cart_popup_container')
    cart_popup_container.innerHTML = htmlCart


    //handle Quantity and delete products

    const handleDelItemCart = (stt) => {
        const arrCart = JSON.parse(localStorage.getItem('dataCart')) ? mapSttCart(JSON.parse(localStorage.getItem('dataCart'))) : []
        const totalPrice = arrCart.reduce((accumulator, currentValue) => {
            return accumulator + (currentValue.price * currentValue.num)
        }, 0);
        let findIndexArr = arrCart.findIndex((item, index) => {
            if (item) {
                if (String(item.stt) === String(stt)) {
                    return item
                }
            }
        })
        const filterAddCart = arrCart.filter(item => {
            return item.stt !== arrCart[findIndexArr].stt
        })
        localStorage.setItem('dataCart', JSON.stringify(mapSttCart(filterAddCart)))
        const cart_popup_header_left = document.querySelector('.cart_popup_header_left')
        cart_popup_header_left.innerHTML = `  <h1>GIỎ HÀNG CỦA TÔI</h1>
                <h6>${filterAddCart.length > 0 ? filterAddCart.length : 0} SẢN PHẨM</h6>
                <h5>TỔNG TIỀN:</h5>
                <span>${totalPrice}₫</span>`

        let htmlCart = ``
        filterAddCart.forEach((item, index) => {
            htmlCart += `<div class="cart_popup_container_item">
            <div class="cart_popup_container_item_left">
                <img style="width:200px;height320px" src="${item.imgs}"
                    alt="">
            </div>
          
            <div class="cart_popup_container_item_right">
                <icon class="cart_popup_container_item_right_close" onclick="handleDelItemCart(${item.id})"><span>x</span></icon>
                <div class="cart_popup_container_item_right_top">
                  ${item.title} (Size: ${item.size}, Màu: ${item.colorVi})
                </div>
                <div class="cart_popup_container_item_right_bottom">
                    <div class="cart_popup_container_item_right_bottom_quantity">
                        <div onclick="prevQuatitys(${item.stt})"><span>-</span></div>
                        <div><span class="quantitys">${item.num}</span></div>
                        <div onclick="nextQuatitys(${item.stt})"><span>+</span></div>
                    </div>
                    <div class="cart_popup_container_item_right_bottom_price">
                        Tổng tiền ${item.num * item.price}
                    </div>
                </div>
            </div>
        </div>`
        })
        const cart_popup_container = document.querySelector('.cart_popup_container')
        cart_popup_container.innerHTML = htmlCart

    }

    let i = Number(document.querySelector('.quantitys') ? document.querySelector('.quantitys').textContent : null)
    const prevQuatitys = (stt) => {
        const arrCart = JSON.parse(localStorage.getItem('dataCart')) ? mapSttCart(JSON.parse(localStorage.getItem('dataCart'))) : []
        const totalPrice = arrCart.reduce((accumulator, currentValue) => {
            return accumulator + (currentValue.price * currentValue.num)
        }, 0);

        let findIndexArr = arrCart.findIndex((item, index) => {
            if (item) {
                if (String(item.stt) === String(stt)) {
                    return item
                }
            }
        })
        i = arrCart[findIndexArr].num
        i = i - 1
        if (i <= 0) {
            const filterAddCart = arrCart.filter(item => {
                return item.stt !== arrCart[findIndexArr].stt
            })
            localStorage.setItem('dataCart', JSON.stringify(mapSttCart(filterAddCart)))
            const cart_popup_header_left = document.querySelector('.cart_popup_header_left')
            cart_popup_header_left.innerHTML = `  <h1>GIỎ HÀNG CỦA TÔI</h1>
                <h6>${filterAddCart.length > 0 ? filterAddCart.length : 0} SẢN PHẨM</h6>
                <h5>TỔNG TIỀN:</h5>
                <span>${totalPrice}₫</span>`

            let htmlCart = ``
            filterAddCart.forEach((item, index) => {
                htmlCart += `<div class="cart_popup_container_item">
            <div class="cart_popup_container_item_left">
                <img style="width:200px;height320px" src="${item.imgs}"
                    alt="">
            </div>
            <div class="cart_popup_container_item_right">
                <icon class="cart_popup_container_item_right_close" onclick="handleDelItemCart(${item.id})"><span>x</span></icon>
                <div class="cart_popup_container_item_right_top">
                  ${item.title} (Size: ${item.size}, Màu: ${item.colorVi})
                </div>
                <div class="cart_popup_container_item_right_bottom">
                    <div class="cart_popup_container_item_right_bottom_quantity">
                        <div onclick="prevQuatitys(${item.stt})"><span>-</span></div>
                        <div><span class="quantitys">${item.num}</span></div>
                        <div onclick="nextQuatitys(${item.stt})"><span>+</span></div>
                    </div>
                    <div class="cart_popup_container_item_right_bottom_price">
                        Tổng tiền ${item.num * item.price}
                    </div>
                </div>
            </div>
        </div>`
            })
            const cart_popup_container = document.querySelector('.cart_popup_container')
            cart_popup_container.innerHTML = htmlCart
        } else {
            if (findIndexArr !== -1) {
                arrCart[findIndexArr].num = i
                localStorage.setItem('dataCart', JSON.stringify(mapSttCart(arrCart)))
                document.querySelectorAll('.quantitys')[findIndexArr].innerHTML = i
            }
        }

    }
    const nextQuatitys = (stt) => {
        const arrCart = JSON.parse(localStorage.getItem('dataCart')) ? mapSttCart(JSON.parse(localStorage.getItem('dataCart'))) : []
        const totalPrice = arrCart.reduce((accumulator, currentValue) => {
            return accumulator + (currentValue.price * currentValue.num)
        }, 0);
        let findIndexArr = arrCart.findIndex((item, index) => {
            if (item) {
                if (String(item.stt) === String(stt)) {
                    return item
                }
            }
        })
        i = arrCart[findIndexArr].num
        i = i + 1
        if (i <= 0) {

        } else {
            if (findIndexArr !== -1) {
                arrCart[findIndexArr].num = i
                localStorage.setItem('dataCart', JSON.stringify(mapSttCart(arrCart)))
                document.querySelectorAll('.quantitys')[findIndexArr].innerHTML = i
            }
        }
    }
    const searchInput = document.querySelector('.searchInput')
    const infoSearch = document.querySelector('.infoSearch')
    searchInput.addEventListener('input', (e) => {
        const value = e.target.value
        if (value.length > 0) {
            const filterSearch = dataJson.filter((item, index) => {
                return item.title.toLowerCase().includes(value.toLowerCase())
            })
            let htmlSearch = ``
            filterSearch.forEach((item, index) => {
                htmlSearch += `<div class="infoSearch_item" onclick="navigaSearch(${item.id})">
                    <img src="data:image/png;base64,${item.url}" alt=""/>
                    <div class="infoSearch_item_title">${item.title}</div>
                    </div>`
            })
            infoSearch.innerHTML = htmlSearch
        } else {
            infoSearch.innerHTML = ''
        }
    })
    const navigaSearch = (id) => {
        window.location.href = `./detailproduct.asp?id=${id}`
    }
    const navigateSearchParam = ()=>{
        window.location.href = `./search.asp?search=${searchInput.value}`
    }
</script>