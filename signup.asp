
<!-- #include file="./controllers/queryuser.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>KaTieu Shop</title>
  <link rel="stylesheet" href="views/components/signup/signups.css ">
</head>
<script>
  const srtArrProduct = "<%=user%>"

  const tex = document.createElement('tex')
  tex.innerHTML = srtArrProduct
  const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
  const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")

</script>

<body>
  <!-- #include file="./views/signup.asp" -->


</body>

</html>