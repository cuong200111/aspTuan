<div class="oder">

    <div class="oder_left">
        <div style="position: absolute;width: 330px;top: 47%;right: 0;overflow: hidden;" id="popupaddToCart"></div>
        <div class="oder_left_top">
            Thông tin của bạn tuyệt đối bảo mật
        </div>
        <div class="oder_left_top_description">
            
        </div>
        <div class="oder_left_between">
            <div class="oder_left_between_fullname">
                <input id="Fullnameadd" type="text" placeholder="Họ và tên">
            </div>
            <div class="oder_left_between_emailandphone">
                <input id="Emailadd" type="text" placeholder="Email">
                <input id="Phoneadd" type="text" placeholder="Số điện thoại">
            </div>
            <div class="oder_left_between_address">
                <input id="Adressadd" type="text" placeholder="Địa chỉ">
            </div>
            <div class="oder_left_between_shipingmethod">
                <div class="oder_left_between_shipingmethod_title">
                    Phương thức thanh toán
                </div>
                <div class="oder_left_between_shipingmethod_check">
                    <div class="oder_left_between_shipingmethod_check_item">
                        <input type="checkbox">
                        <label>Thanh toán khi nhận hàng</label>
                    </div>
                </div>
            </div>
            <!-- <div contenteditable="true" class="depscriptionproduct" aria-placeholder="tr"></div> -->
        </div>
        <div class="oder_left_bottom">
            <div class="oder_left_bottom_left">
                <b>
                    < </b> Trở về
            </div>
            <div class="oder_left_bottom_right">
                <button onclick="odersuccess()">
                    Hoàn tất đơn hàng
                </button>
            </div>
        </div>
    </div>
    <div class="oder_items" style="display: flex;flex-direction: column;">

        <div class="oder_items_top"></div>
        <div class="oder_items_bottom">

        </div>
    </div>
</div>
<script>
    function formatMoney(amount) {
        return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
    let methodShip = ''
    const checkShip = document.querySelectorAll('.oder_left_between_shipingmethod_check_item')
    checkShip.forEach((item) => {
        item.querySelector('input').addEventListener('change', (e) => {
            if (e.target.checked === true) {
                methodShip = item.querySelector('label').textContent
            } else {
                methodShip = ''
            }
        })
    })
    let htmlOderCart = ``
    arrCart.forEach((item) => {
        htmlOderCart += `   <div class="oder_right">
            <div class="oder_right_top">
                <img style="width:80px" src="${item.imgs}"
                    alt="">
                <div style="flex:1">
                    <h5>
                        ${item.title}
                    </h5>
                    <h6>
                        ${item.title} / ${item.size}
                    </h6>
                </div>
                <div>${formatMoney((item.price * item.num).toFixed())}đ</div>
            </div>
            <div class="oder_right_between">
                <div>
                    <h6>
                        Tạm tính
                    </h6>
                    <h6>
                       ${formatMoney((item.price * item.num).toFixed())}₫
                    </h6>
                </div>
                <div>
                    <h6>
                        Phí vận chuyển
                    </h6>
                    <h6>
                       free
                    </h6>
                </div>
                <div>
                    <h6>
                        Tiền chiết khấu
                    </h6>
                    <h6>
              0đ
                    </h6>
                </div>
            </div>

        </div>`
    })
    document.querySelector('.oder_items_top').innerHTML = htmlOderCart


    const animePopup = (child, msg) => {
        const div = document.createElement('div');
        div.className = 'popupAddcart'
        const style = document.createElement('style');
        style.innerHTML = `
        .popupAddcart{
            background-color:#01C343;
            width:100%;
            height:100%;
            padding:10px 20px;
            border-top-left-radius: 4px;
    border-bottom-left-radius:4px ;
            animation:animePopup 0.4s;
            animation-timing-function:cubic-bezier(0,0.1,0.2,0.9);
        }
        .popupAddcart span{
            color:white
        }
  @keyframes animePopup {
    0% {    transform: translateX(100%);}
    100% {    transform: translateX(0%);}
  }
`

        if (!isAppended) {
            document.head.appendChild(style)
            div.innerHTML = `<span>${msg}</span>`;
            child.appendChild(div);
            isAppended = true;
        }
    }

    const popupaddToCart = document.querySelector('#popupaddToCart')
    let isAppended = false;
    const Adressadd = document.querySelector('#Adressadd')
    const Phoneadd = document.querySelector('#Phoneadd')
    const Emailadd = document.querySelector('#Emailadd')
    const Fullnameadd = document.querySelector('#Fullnameadd')
    if (localStorage.getItem('emailUser')) {
        Emailadd.placeholder = localStorage.getItem('emailUser')
        Emailadd.disabled = true
    }
    if (localStorage.getItem('fullName')) {
        Fullnameadd.placeholder = localStorage.getItem('fullName')
        Fullnameadd.disabled = true
    }
    if (localStorage.getItem('address')) {
        Adressadd.placeholder = localStorage.getItem('address')
        Adressadd.disabled = true
    }
    if (localStorage.getItem('phoneUser')) {
        Phoneadd.placeholder = localStorage.getItem('phoneUser')
        Phoneadd.disabled = true
    }
    const odersuccess = () => {
        if (methodShip.length > 0) {
            if (arrCart.length > 0) {
                const mapFormatArr = arrCart.map((item) => {
                    item.methodShip = methodShip
                    return item
                })
                // const idproduct,account,fullname,addres,imgproduct,colorEn,colorVi,size,quatity,methodshipper

                mapFormatArr.forEach((item) => {
                    console.log(item)
                    const idproduct = item.id
                    const account = localStorage.getItem('emailUser') ? localStorage.getItem('emailUser') : Emailadd.value
                    const imgproduct = item.imgs
                    const fullname = localStorage.getItem('fullName') ? localStorage.getItem('fullName') : Fullnameadd.value
                    const addres = localStorage.getItem('address') ? localStorage.getItem('address') : Adressadd.value
                    const phones = localStorage.getItem('phoneUser') ? localStorage.getItem('phoneUser') : Phoneadd.value
                    const colorEn = item.colorEn
                    const colorVi = item.colorVi
                    const size = item.size
                    const quatity = item.num
                    const methodshipper = methodShip
                    const titleProduct = item.title
                    const priceProduct = item.price
                    fetch(`/controllers/addtoCart.asp`, {
                        method: 'POST',
                        body: `idproduct=${encodeURIComponent(idproduct)}&account=${encodeURIComponent(account)}&imgproduct=${encodeURIComponent(imgproduct)}&fullname=${encodeURIComponent(fullname)}&addres=${encodeURIComponent(addres)}&phones=${encodeURIComponent(phones)}&colorEn=${encodeURIComponent(colorEn)}&colorVi=${encodeURIComponent(colorVi)}&size=${encodeURIComponent(size)}&quatity=${encodeURIComponent(quatity)}&methodshipper=${encodeURIComponent(methodshipper)}&titleProduct=${encodeURIComponent(titleProduct)}&priceProduct=${encodeURIComponent(priceProduct)}`,
                        headers: {
                            'Content-type': 'application/x-www-form-urlencoded'
                        }
                    }).then(item => {
                        if (item.status == 200) {
                            localStorage.removeItem('dataCart')
                            return item.text()
                        }
                    }).then((res) => {
                        animePopup(popupaddToCart, res)
                        document.querySelector('.oder_items_top').innerHTML = ``
                        setTimeout(() => {
                            window.location.reload()
                        }, 3000);
                    })
                })

            }

        }
    }
    if (arrCart.length > 0) {
        document.querySelector('.oder_items_bottom').innerHTML = `<div>
                <h6>
                    Tổng cộng
                </h6>
                <h5>
                    0₫
                </h5>
            </div>`
        document.querySelector('.oder_items_bottom h5').innerHTML = `${formatMoney(totalPrice.toFixed())}đ`
    } else {
        document.querySelector('.oder_items_bottom').innerHTML = `<div>
              Bạn chưa có đơn hàng nào trong giỏ hàng !
            </div>`
    }


 const oder = document.querySelector(".oder_left_top_description")

if(Boolean(localStorage.getItem("online"))){
oder.innerHTML = `<div>Thông tin giao hàng</div>`
}else{
   
oder.innerHTML = `<div>Thông tin giao hàng</div> 
<div>Bạn đã có tài khoản? <a href="./signin.asp">Đăng nhập</a></div>`
}
</script>