<!-- #include file="./controller/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- ====== Favicon ====== -->
  <link rel="shortcut icon" href="images/logoss.jpg" type="image/png" />
  <!-- ====== Boxicons ====== -->
    <link rel="stylesheet" href="index.css">
  <title>KaTieu Shop</title>
</head>
<body>

<div class="main"></div>
  <script>
  const srtArrProduct = "<%=arr%>"
const tex=  document.createElement('tex')
tex.innerHTML = srtArrProduct
const text = tex.innerHTML === 'failure'?"[]":tex.innerHTML
const dataJson = JSON.parse(text.replaceAll('_','"').slice(0,text.lastIndexOf(','))+"]")
console.log(dataJson)
  </script>

</body>

</html>