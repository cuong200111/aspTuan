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
    const nameParam = new URLSearchParams(window.location.search).get('search')
    const filterData = dataJson.filter((item, index) => {
        return item.title.toLowerCase().includes(nameParam.toLowerCase())
    })
    function formatMoney(amount) {
        return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
    const formatNameCategory = filterData.length > 0 ? filterData[0].category : 'Không có data'
    productpage_title.innerHTML = `<h5>Tìm kiếm > ${nameParam}</h5>`
    let html = ``
    filterData.forEach((item, index) => {
        html += `<div class='productpage_data_main_item_s style=''>
    <img src='data:image/png;base64,${item.url}' />
    <div class='productpage_data_main_item_s_description'style="text-wrap:nowrap">
       ${item.title}
    </div>
    <div class='productpage_data_main_item_s_price'>
        ${formatMoney(item.price)}đ
    </div>
    <button onclick="addCart(${item.id})" class='productpage_data_main_item_s_button'>
       Mua ngay
    </button>
</div>`
    })
    productpage_data_main_item.innerHTML = html
    const productpage_data_main_item_s = document.querySelector('.productpage_data_main_item_s')
    const addCart = (id) => {
        window.location.href = `detailproduct.asp?id=${id}`
    }
</script>