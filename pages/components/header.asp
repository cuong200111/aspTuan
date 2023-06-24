<div class="main">

    <div class="main_header">
        <div class="main_header_logo">
            <img src="pages/components/img/logo.png" />

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
                <li><a class="main_header_content_href" href="">Liên hệ</a></li>
                <li><a class="main_header_content_href" href="">Tra cứu</a></li>
            </ul>

        </div>
        <div class="main_header_login">

        </div>
    </div>



</div>
<script>
    const main_header_login = document.querySelector('.main_header_login')
    const online = Boolean(localStorage.getItem("online"))

    if (online) {
        main_header_login.innerHTML = ` <button onclick="signout()">Đăng xuất</button>`
    } else {
        main_header_login.innerHTML = `<button><a style="text-decoration: none;color:black" href="../../signup.asp">Đăng ký</a></button>
            <button><a style="text-decoration: none;color:black" href="../../signin.asp">Đăng nhập</a></button>`

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
    const header = document.querySelector('.main_header')
    const main_header = document.querySelector('main')
    const main_header_content = document.querySelectorAll('.main_header_content_href')
    const button = document.querySelectorAll('button')
    document.addEventListener('scroll', () => {
        if (window.innerWidth > 600) {
            if (scrollY > 46) {
                header.classList.add('active')
                main_header_content.forEach(item => item.classList.add('active'))
                header.style = 'animation:scrollHeader 0.4s forwards;'
                button.forEach(item => item.classList.add('active'))
                main_header.classList.add('active')
            } else {
                header.classList.remove('active')
                header.style = 'animation:scrollHeader2 0.5s forwards;'
                main_header_content.forEach(item => item.classList.remove('active'))
                button.forEach(item => item.classList.remove('active'))
                main_header.classList.remove('active')
            }
        }

    })
</script>