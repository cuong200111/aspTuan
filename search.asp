
<!-- #include file="./controllers/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>KaTieu Shop</title>
 <link rel="stylesheet" href="views/components/header/header.css ">
 <link rel="stylesheet" href="views/components/footer/footer.css ">
  <link rel="stylesheet" href="views/components/store/index.css">
  <link rel="stylesheet" href="views/components/contact/contact.css ">
  <link rel="stylesheet" href="views/components/search/search.css ">
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

  <!-- #include file="./views/search.asp" -->

</body>

</html>