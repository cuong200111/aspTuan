<div class="header">
    <div class="header_main">
        <div class="header_main_logo">
            img
        </div>
        <div class="header_main_content">
            <ul>
                <li><a aria-valuetext="create.asp" href="./create.asp">CREATE PRODUCT</a></li>
                <li><a aria-valuetext="delete.asp" href="./delete.asp">DELETE PRODUCT</a></li>
                     <li><a aria-valuetext="libraryproduct.asp" href="libraryproduct.asp">ADD LIBRARY</a></li>
         
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
    console.log(pathName);
    const namePath = pathName ==='delete.asp'?'delete.asp':pathName ==='create.asp'?'create.asp':pathName ==='libraryproduct.asp'?'libraryproduct.asp':''
    a.forEach(item=>{
        if(namePath === item.ariaValueText){
            item.classList.add('active')
        }
    })

   
</script>