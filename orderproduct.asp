<!-- #include file="./controller/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>KaTieu Shop</title>
  <link rel="stylesheet" href="pages/components/banner/banner.css ">
  <link rel="stylesheet" href="pages/components/album/album.css ">
 <link rel="stylesheet" href="pages/components/header/headers.css ">
 <link rel="stylesheet" href="pages/components/footer/footer.css ">
  <link rel="stylesheet" href="pages/components/orderproduct/orderproducts.css ">
    <script src="https://kit.fontawesome.com/c08976f15f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./index.css ">
  
</head>

<script>
  const srtArrProduct = `<%=arr%>`
  const tex = document.createElement('tex')
  tex.innerHTML = srtArrProduct
  const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
  const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")
 
</script>
<body>

  <!-- #include file="./pages/orderproduct.asp" -->

</body>

</html>