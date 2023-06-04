<html>
<head>
  <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/logoss.jpg" type="image/png" />

    <title>KaTieu Shop</title>
</head>

<body>
    <form action="./components/controller/addproject.asp" method="post">
        <div>
         
            <input type="hidden"  name="id" id="id" type="text" required/>
        </div>
        <div>
            <label for="id">title:</label>
            <input name="title" id="title" type="text" required/>
        </div>

        <div> <label for="id">price:</label>
            <input name="price" id="price" type="text" required/>
        </div>

       <!-- #include file="./optionCategory.asp" -->
        <div> <label for="imgFile">Image file:</label>
            <input name="imgFile" onchange="changeImg(this)" id="imgFile" type="file" />
        </div>
        <div> <input type="hidden" name="imgBase64" id="imgBase64" >
            <button type="submit">Submit</button>
        </div>

    </form>
    <script>
const srtArrProduct = "<%=arr%>"
const tex=  document.createElement('tex')
tex.innerHTML = srtArrProduct
const text = tex.innerHTML === 'failure'?"[]":tex.innerHTML
const dataJson = JSON.parse(text.replaceAll('_','"').slice(0,text.lastIndexOf(','))+"]")
document.querySelector('#id').value = dataJson.length+1
        const changeImg = (e) => {
            const reader = new FileReader();
            reader.onload = (e) => {
                const base64 = window.btoa(e.target.result)
                console.log(base64);
                document.getElementById('imgBase64').value = base64
            }
            reader.readAsBinaryString(document.getElementById('imgFile').files[0])
        }
    </script>
</body>

</html>