<!-- #include file="./controller/queryproject.asp" -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>KaTieu Shop</title>
  <link rel="stylesheet" href="pages/components/detailproduct/detailproduct.css ">
</head>
<script>
  const srtArrProduct = `<%=arr%>`

  const tex = document.createElement('tex')
  tex.innerHTML = srtArrProduct
  const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
  const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")


    const srtArrProductLibrary = `<%=arrLibrary%>`

  const tex2 = document.createElement('tex')
  tex2.innerHTML = srtArrProductLibrary
  const text2 = tex2.innerHTML === 'failure' ? "[]" : tex2.innerHTML
  const dataLibrary = JSON.parse(text2.replaceAll('_', '"').slice(0, text2.lastIndexOf(',')) + "]")
</script>

<body>
  <!-- #include file="./pages/detailproduct.asp" -->


</body>

</html>