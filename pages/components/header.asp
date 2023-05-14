<!-- #include file="./controller/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/logoss.jpg" type="image/png" />
<link rel="stylesheet" href="header.css">
    <title>KaTieu Shop</title>
</head>

<body>

    <div class="main">

        <div class="main_header">
            <div class="main_header_logo">
                <img src="img/logo.png" />

            </div>
            <div class="main_header_content">
                <ul>
                    <li><a href="/test/index.asp">Trang chủ</a></li>
                    <li><a href="">Cửa hàng</a></li>
                    <li><a href="">Danh mục</a></li>
                    <li><a href="">Liên hệ</a></li>
                    <li><a href="">Tra cứu</a></li>
                </ul>

            </div>
            <div class="main_header_login">
        <button>login</button>

            </div>
        </div>



    </div>
    <script>
        const srtArrProduct = "<%=arr%>"
        const tex = document.createElement('tex')
        tex.innerHTML = srtArrProduct
        const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
        const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")
        console.log(dataJson)
    </script>

</body>

</html>