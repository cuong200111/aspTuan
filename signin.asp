
<!-- #include file="./controllers/queryuser.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KaTieu Shop</title>
    <link rel="stylesheet" href="views/components/signin/signins.css ">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<script>
    const srtArrProduct = "<%=user%>"

    const tex = document.createElement('tex')
    tex.innerHTML = srtArrProduct
    const text = tex.innerHTML === 'failure' ? "[]" : tex.innerHTML
    const dataJson = JSON.parse(text.replaceAll('_', '"').slice(0, text.lastIndexOf(',')) + "]")

</script>
<style>
    * {
        margin: 0;
        padding: 0
    }

    body {
        box-sizing: border-box;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        display: flex;
        height: 100vh
    }
</style>

<body>
    <!-- #include file="./views/signin.asp" -->

</body>

</html>