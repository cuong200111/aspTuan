<div class="header">
    <div class="header_main">
        <div class="header_main_logo">
            img
        </div>
        <div class="header_main_content">
            <ul>
                <li><a aria-valuetext="create.asp" href="./create.asp">Tạo sản phẩm mới</a></li>
                <li><a aria-valuetext="delete.asp" href="./delete.asp">Xóa sản phẩm</a></li>
                 <li><a aria-valuetext="orderconfirm.asp" href="./orderconfirm.asp">Xác nhận đơn hàng</a></li>
                     <li><a aria-valuetext="libraryproduct.asp" href="libraryproduct.asp">Thêm chi tiết cho sản phẩm</a></li>
            <li><a aria-valuetext="detailShipped.asp" href="detailShipped.asp">Xem trạng thái giao hàng</a></li>
            </ul>
        </div>
        <div class="header_main_account">
           logout
        </div>
    </div>
</div>
<script>
    const a = document.querySelectorAll('.header_main_content ul li a')
    const pathName = location.pathname.slice(location.pathname.lastIndexOf('/')+1)
    const namePath = pathName ==='delete.asp'?'delete.asp':pathName ==='create.asp'?'create.asp':pathName ==='libraryproduct.asp'?'libraryproduct.asp':pathName ==='orderconfirm.asp'?'orderconfirm.asp':pathName ==='detailShipped.asp'?'detailShipped.asp':''
    a.forEach(item=>{
        if(namePath === item.ariaValueText){
            item.classList.add('active')
        }
    })

   
</script>