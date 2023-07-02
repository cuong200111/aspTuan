<div class="newproduct">
    <div class="newproduct_main">
        <div class="newproduct_main_title">
            <h1>Hàng Mới Về</h1>
        </div>
        <div class="newproduct_main_description">
            <h1>Bộ sưu tập mới nhất</h1>
        </div>
        <div class="newproduct_main_imgs">
        
        </div>
    </div>
</div>
<script>
    const dataNewProduct = dataJson.filter((item) => {
        const dateNow = Date.now()
        const fileTimestamp = new Date(item.createdAt).getTime()
        const diffMiliseconds = dateNow - fileTimestamp
        const diffDay = Math.floor(diffMiliseconds / (1000 * 60 * 60 * 24))

        if (diffDay < 3) {
            return item
        }
    }).slice(0, 3)
    let htmlnewProduct = ``
    dataNewProduct.forEach((item, index) => {
        htmlnewProduct += `<div class="newproduct_main_imgs_img">
    <img onclick="navigateNewProduct(${item.id})" src="data:image/png;base64,${item.url}"/>
</div>`
    })
    document.querySelector('.newproduct_main_imgs').innerHTML = htmlnewProduct
       const navigateNewProduct = (id) => {
      window.location.href = `./detailproduct.asp?id=${id}`
   }
</script>