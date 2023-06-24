<!-- #include file="./controller/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="pages/components/banner.css ">
  <link rel="stylesheet" href="pages/components/album.css ">
 <link rel="stylesheet" href="pages/components/header.css ">
  <link rel="stylesheet" href="pages/components/newproduct.css ">
  <link rel="stylesheet" href="pages/components/store/index.css">
  <link rel="stylesheet" href="pages/components/contact.css ">
  <link rel="stylesheet" href="pages/components/footer.css ">
  <link rel="stylesheet" href="./index.css ">
  <script src="https://kit.fontawesome.com/c08976f15f.js" crossorigin="anonymous"></script>
  <title>KaTieu Shop</title>
</head>
<script>
  const srtArrProduct = "<%=arr%>"

  const tex = document.createElement('tex')
  tex.innerHTML = srtArrProduct
  const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
  const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")
</script>

<body>

  <!-- #include file="./pages/home.asp" -->

</body>

</html>