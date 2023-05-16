

    <div class="main">

        <div class="main_header">
            <div class="main_header_logo">
                <img src="pages/components/img/logo.png" />

            </div>
            <div class="main_header_content">
                <ul>
                    <li><a class="main_header_content_href" href="/test/index.asp">Trang chủ</a></li>
                    <li><a class="main_header_content_href" href="/test/store.asp">Cửa hàng</a></li>
                    <li><a class="main_header_content_href" href="">Danh mục</a></li>
                    <li><a class="main_header_content_href" href="">Liên hệ</a></li>
                    <li><a class="main_header_content_href" href="">Tra cứu</a></li>
                </ul>

            </div>
            <div class="main_header_login">
        <button>login</button>

            </div>
        </div>



    </div>
    <script>
   const header =document.querySelector('.main_header')
   const main_header =document.querySelector('main')
const main_header_content = document.querySelectorAll('.main_header_content_href')
const button =document.querySelector('button')
   document.addEventListener('scroll',()=>{
    if(window.innerWidth>600){
        if(scrollY>46){
            header.classList.add('active')
            main_header_content.forEach(item=>item.classList.add('active'))
            header.style ='animation:scrollHeader 0.4s forwards;'
            button.classList.add('active')
            main_header.classList.add('active')
        }else{
            header.classList.remove('active')
            header.style ='animation:scrollHeader2 0.5s forwards;'
            main_header_content.forEach(item=>item.classList.remove('active'))
            button.classList.remove('active')
            main_header.classList.remove('active')
        }
    }

   })
    </script>
