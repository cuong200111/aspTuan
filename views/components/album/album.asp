<div class="mainAlbum">
   <div class="mainAlbum_container">
      <div class="mainAlbum_container_title">
         <h1>Bộ Sưu Tập</h1>
      </div>
      <div class="mainAlbum_container_description">
         <h1>Bộ sưu tập hàng đầu của chúng tôi</h1>
      </div>
      <div class="mainAlbum_container_category">
         <button onclick="handleButton(this)" class="mainAlbum_container_category_button" value="jewellery">Áo
            polo</button>
         <button onclick="handleButton(this)" class="mainAlbum_container_category_button" value="accessories">Áo sơ
            mi</button>
         <button onclick="handleButton(this)" class="mainAlbum_container_category_button" value="dresses">Quần</button>
         <button onclick="handleButton(this)" class="mainAlbum_container_category_button" value="footwear">Phụ
            kiện</button>
      </div>
      <div class="mainAlbum_container_lists">

      </div>
   </div>



</div>
<script>
   const mainAlbum_container_category_button = document.querySelectorAll('.mainAlbum_container_category_button')
   mainAlbum_container_category_button.forEach(item => {
      item.classList.remove("active")
      const value = item.value === "jewellery" ? item.value === "jewellery" : false

      if (value) {
         item.classList.add("active")
      }
   })

   let htmlAlbum = ``


   function filterData(value) {
      const filterArr = dataJson.filter((item, index) => {
         if (item.category === value) {
            return item
         }
      })
      return filterArr
   }

   const handleButton = (e) => {
      htmlAlbum = ''
      mainAlbum_container_category_button.forEach(item => {
         item.classList.remove("active")
         const value = item.value
         if (value === e.value) {
            item.classList.add("active")
         }
      })
      filterData(e.value).slice(0, 6).forEach((item, index) => {
         htmlAlbum += `<div class="mainAlbum_container_lists_list">
       <div class="mainAlbum_container_lists_list_imgs"><div class="mainAlbum_container_lists_list_imgs_img"> <img onclick="navigateProduct(${item.id})"  src="data:image/png;base64,${item.url}"/></div></div>
      <div class="mainAlbum_container_lists_list_titles"><div class="mainAlbum_container_lists_list_titles_title"><h1 style="text-wrap:nowrap">${item.title}</h1><h1>Giá: ${formatMoney(item.price)}đ</h1></div></div>
    </div>`
      })
      document.querySelector('.mainAlbum_container_lists').innerHTML = htmlAlbum


   }
   function formatMoney(amount) {
      return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
   }
   const arrFilterData = filterData("jewellery").length > 0 ? filterData("jewellery") : filterData("footwear").length > 0 ? filterData("footwear") : []
   arrFilterData.slice(0, 6).forEach((item, index) => {
      htmlAlbum += `<div class="mainAlbum_container_lists_list">
       <div class="mainAlbum_container_lists_list_imgs"><div class="mainAlbum_container_lists_list_imgs_img"> <img onclick="navigateProduct(${item.id})" src="data:image/png;base64,${item.url}"/></div></div>
      <div class="mainAlbum_container_lists_list_titles"><div class="mainAlbum_container_lists_list_titles_title"><h1 style="text-wrap:nowrap">${item.title}</h1><h1>Giá: ${formatMoney(item.price)}đ</h1></div></div>
    </div>`
   })
   document.querySelector('.mainAlbum_container_lists').innerHTML = htmlAlbum
   const navigateProduct = (id) => {
      window.location.href = `./detailproduct.asp?id=${id}`
   }
</script>