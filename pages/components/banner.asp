<!-- #include file="./controller/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/logoss.jpg" type="image/png" />
<link rel="stylesheet" href="banner.css">
    <title>KaTieu Shop</title>
</head>

<body>

    <div class="mainB">
<div class="mainB_banner">
    <div class="mainB_banner_left">
    <h1 class="mainB_banner_left_title">
    Thời gian giới hạn chỉ dành cho mùa đông
    </h1>
      <h1 class="mainB_banner_left_content">
fash<span>i</span>on
    </h1>
<h1 class="mainB_banner_left_description">
  HÃY XEM BẠN ĐẸP NHẤT VÀO NGÀY ĐẸP NHẤT
    </h1>
<button class="mainB_banner_left_button">
Khám phá ngay
    </button>
    </div>
    <div class="mainB_banner_right">
    
  


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