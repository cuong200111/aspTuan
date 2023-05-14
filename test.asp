<!-- #include file="./controller/queryproject.asp" -->



<body>

<div></div>
</body>
    <script>
const srtArrProduct = "<%=arr%>"
const tex=  document.createElement('tex')
tex.innerHTML = srtArrProduct
const text = tex.innerHTML === 'failure'?"[]":tex.innerHTML
const dataJson = JSON.parse(text.replaceAll('_','"').slice(0,text.lastIndexOf(','))+"]")
console.log(dataJson);
let html = ``
dataJson.forEach(item=>{
     html +=`<img src='data:image/jpg;base64,${item.img}'/>`
})
document.querySelector('div').innerHTML = html

    </script>