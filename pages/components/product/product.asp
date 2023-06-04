<div class="productpage">
    <div class="productpage_title">
    </div>
    <div class="productpage_data">
        <div class="productpage_data_main">
            <div class="productpage_data_main_item">

            </div>
        </div>
    </div>
</div>
<script>
    const productpage_data_main_item = document.querySelector('.productpage_data_main_item')
    const productpage_title = document.querySelector('.productpage_title');
    const nameParam = new URLSearchParams(window.location.search).get('name')
    const filterData = dataJson.filter((item, index) => {
        return item.category === nameParam
    })
    const formatNameCategory = filterData.length > 0 ? filterData[0].category : 'Không có data'
    productpage_title.innerHTML = `<h5>Danh mục > ${formatNameCategory}</h5>`
    let html = ``
    filterData.forEach((item, index) => {
        html += `<div class='productpage_data_main_item_s'><img src='data:image/png;base64,${item.url}'/></div>`
    })
    productpage_data_main_item.innerHTML = html
</script>