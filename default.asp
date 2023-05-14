<!-- #include file="./controller/queryproject.asp" -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- ====== Favicon ====== -->
  <link rel="shortcut icon" href="images/logoss.jpg" type="image/png" />
  <!-- ====== Boxicons ====== -->
  
  <link rel="stylesheet" href="css/styles.css" />
  <title>KaTieu Shop</title>
</head>

<body>
  <!-- ====== Header ====== -->
  <header class="header">
    <!-- ====== Navigation ====== -->
    <nav class="navbar">
      <div class="row container d-flex">
        <div class="logo">
          <img style="width: 100px ; height: 50px;" src="./images/logoss.jpg" alt="" />
        </div>

        <div class="nav-list d-flex">
          <a href="">Trang Chủ</a>
          <a href="">Cửa Hàng</a>
          <a href="">Danh Mục</a>
          <a href="">Liên Hệ</a>
          <a href="">Tra Cứu</a>
          <div class="close">
            <i class="bx bx-x"></i>
          </div>
          <a class="user-link">Login</a>
        </div>

        <div class="icons d-flex">
          <div class="icon d-flex"><i class="bx bx-search"></i></div>
          <div class="icon user-icon d-flex">
            <i class="bx bx-user"></i>
          </div>
          <div class="icon d-flex">
            <i class="bx bx-bell"></i>
            <span></span>
          </div>
        </div>

        <!-- Hamburger -->
        <div class="hamburger">
          <i class="bx bx-menu-alt-right"></i>
        </div>
      </div>
    </nav>

    <!-- ====== Hero Area ====== -->
    <div class="hero">
      <div class="row container d-flex">
        <div class="col">
          <span class="subtitle">Thời gian giới hạn chỉ dành cho mùa đông</span>
          <h1>fash<span class="i">i</span>on</h1>
          <p>HÃY XEM BẠN ĐẸP NHẤT VÀO NGÀY ĐẸP NHẤT</p>

          <button class="btn">Khám phá ngay!</button>
        </div>
        <img src="./images/woman-in-cart.png" alt="" />
      </div>
    </div>
  </header>
  <!-- ====== Collection ====== -->
  <section class="section collection">
    <div class="title">
      <span>Bộ Sưu Tập</span>
      <h2>Bộ sưu tập hàng đầu của chúng tôi</h2>
    </div>
    <div class="filters d-flex">
      <div data-filter="Jewellery">Áo Polo</div>
      <div data-filter="Accessories">Áo Sơ Mi</div>
      <div data-filter="Dresses">QUần</div>
      <div data-filter="Footwear">Phụ Kiện</div>
    </div>

    <div class="products container">
      <div class="swiper mySwiper">
        <div class="swiper-wrapper" id="products">
          <div class="swiper-slide">
      
          </div>
        </div>
      </div>
      <div class="pagination">
        <div class="custom-pagination"></div>
      </div>
    </div>
  </section>

  <!-- ====== New Arrival ====== -->
  <section class="section new-arrival">
    <div class="title">
      <span>Hàng Mới Về</span>
      <h2>Bộ sưu tập mới nhất</h2>
    </div>

    <div class="row container">
      <div class="col col-1">
        <img src="./images/poster-1.png" alt="" />
        <h3>
          2023 Trends <br />
          Áo Polo nam
        </h3>
      </div>
      <div class="col col-2">
        <img src="./images/poster-2.png" alt="" />
        <h3>
          2023 Trends <br />
          Áo sơ mi nam
        </h3>
      </div>
      <div class="col col-3">
        <img src="./images/poster-3.png" alt="" />
        <h3>
          2023 Trends <br />
          QUần jean nam <br />
          <span>Khám Phá Nhiều Hơn</span>
        </h3>
      </div>
    </div>
  </section>

  <!-- ====== Categories ====== -->
  <section class="section categories">
    <div class="title">
      <span>Thể Loại</span>
      <h2>Bộ Sưu Tập Mới Nhất 2023</h2>
    </div>

    <div class="products container">
      <!-- <div class="product">
          <div class="top d-flex">
            <img src="./images/product-1.png" alt="" />
            <div class="icon d-flex">
              <i class="bx bxs-heart"></i>
            </div>
          </div>
          <div class="bottom">
            <div class="d-flex">
              <h4>Nike Air Men’s Hoodie - Imported Hoodie Red</h4>
              <a href="" class="btn cart-btn">Add to Cart</a>
            </div>
            <div class="d-flex">
              <div class="price">$150</div>
              <div class="rating">
                <i class="bx bxs-star"></i>
                <i class="bx bxs-star"></i>
                <i class="bx bxs-star"></i>
                <i class="bx bxs-star"></i>
                <i class="bx bxs-star"></i>
              </div>
            </div>
          </div>
        </div> -->
    </div>

    <div class="button d-flex">
      <a class="btn loadmore">Thêm</a>
    </div>
  </section>

  <!-- ====== Statistics ====== -->
  <section class="section statistics">
    <div class="title">
      <span>Liên Hệ</span>
      <h2>Liên Hệ Cho Chúng Tôi</h2>
    </div>

    <div class="row container">
      <div class="col">
        <div class="icon">
          <i class="bx bxs-check-square"></i>
        </div>
        <h3>Hệ thống đặt hàng dễ dàng</h3>

      </div>
      <div class="col">
        <div class="icon">
          <i class="bx bxs-user"></i>
        </div>
        <h3>Giao hàng đúng hẹn</h3>

      </div>
      <div class="col">
        <div class="icon">
          <i class="bx bxs-dollar-circle"></i>
        </div>
        <h3>Bảo đảm hoàn lại tiền</h3>

      </div>
      <div class="col">
        <div class="icon">
          <i class="bx bxs-user"></i>
        </div>
        <h3>Hỗ trợ khách hàng 24/7</h3>

      </div>
    </div>
  </section>



  <!-- ====== Footer ====== -->
  <footer class="footer">
    <div class="row container">
      <div class="col">
        <div class="logo d-flex">
          <img style="width: 150px; " src="./images/logoss.jpg" alt="logo" />
        </div>

        <div class="icons d-flex">
          <div class="icon d-flex">
            <i class="bx bxl-facebook"></i>
          </div>
          <div class="icon d-flex"><i class="bx bxl-twitter"></i></div>
          <div class="icon d-flex"><i class="bx bxl-instagram"></i></div>
          <div class="icon d-flex"><i class="bx bxl-youtube"></i></div>
        </div>

      </div>
      <div class="col">
        <div>
          <h4>Sản phẩm</h4>
          <a href="">Tải Xuống</a>
          <a href="">Định Giá</a>
          <a href="">Vị Trí</a>
          <a href="">Blog</a>

        </div>
        <div>
          <h4>Tài Khoản Của TÔi</h4>
          <a href="">Tài Khoản</a>
          <a href="">Giảm Giá</a>

          <a href="">Lịch Sử Đơn Hàng</a>
          <a href="">Theo Dõi</a>
        </div>
        <div>
          <h4>Hệ Thống Cửa Hàng</h4>
          <a href="">96 Nguyễn Trãi</a>
          <a href="">765 Giải Phóng</a>
          <a href="">150 Hồ Tùng Mậu</a>
          <a href="">120 Đường Cầu Giấy</a>

        </div>
        <div>
          <h4>Liên hệ chúng tôi</h4>
          <div class="d-flex">
            <div class="icon"><i class="bx bxs-map"></i></div>
            <span>Tại Hệ Thống Cửa Hàng</span>
          </div>
          <div class="d-flex">
            <div class="icon"><i class="bx bxs-envelope"></i></div>
            <span>abc@gmail.com</span>
          </div>
          <div class="d-flex">
            <div class="icon"><i class="bx bxs-phone"></i></div>
            <span>0986549522</span>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- ====== Login and Signup Form ====== -->
  <div class="user-form">
    <div class="close-form d-flex"><i class="bx bx-x"></i></div>
    <div class="form-wrapper container">
      <div class="user login">
        <div class="img-box">
          <img src="./images/login.svg" alt="" />
        </div>
        <div class="form-box">
          <div class="top">
            <p>
              Bạn chưa có tài khoản?
              <span data-id="#ff0066">Đăng ký ngay</span>
            </p>
          </div>
          <form action="">
            <div class="form-control">
              <h2>Xin Chào</h2>
              <p>Chào Mừng Bạn Đến Với Chúng Tôi</p>
              <input type="text" placeholder="Tên Đăng Nhập" />
              <div>
                <input type="password" placeholder="Mật Khẩu" />
                <div class="icon form-icon">
                  <!-- <img src="./images/eye.svg" alt="" /> -->
                </div>
              </div>
              <span>Khôi phục mật khẩu</span>
              <input type="Submit" value="Đăng Nhập" />
            </div>
            <div class="form-control">
              <p>Đăng Nhập Bằng</p>
              <div class="icons">
                <div class="icon">
                  <img src="./images/search.svg" alt="" />
                </div>
                <div class="icon">
                  <img src="./images/apple.svg" alt="" />
                </div>
                <div class="icon">
                  <img src="./images/facebook.svg" alt="" />
                </div>
                <div class="icon">
                  <img src="./images/github.svg" alt="" />
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>

      <!-- Register -->
      <div class="user signup">
        <div class="form-box">
          <div class="top">
            <p>
              Already a member?
              <span data-id="#1a1aff">Login now</span>
            </p>
          </div>
          <form action="">
            <div class="form-control">
              <h2>Welcome Codevo!</h2>
              <p>It's good to have you.</p>
              <input type="email" placeholder="Enter Email" />
              <div>
                <input type="password" placeholder="Password" />
                <div class="icon form-icon">
                  <img src="./images/eye.svg" alt="" />
                </div>
              </div>
              <div>
                <input type="password" placeholder="Confirm Password" />
                <div class="icon form-icon">
                  <img src="./images/eye.svg" alt="" />
                </div>
              </div>
              <input type="Submit" value="Register" />
            </div>
            <div class="form-control">
              <p>Or continue with</p>
              <div class="icons">
                <div class="icon">
                  <img src="./images/search.svg" alt="" />
                </div>
                <div class="icon">
                  <img src="./images/apple.svg" alt="" />
                </div>
                <div class="icon">
                  <img src="./images/facebook.svg" alt="" />
                </div>
                <div class="icon">
                  <img src="./images/github.svg" alt="" />
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="img-box">
          <img src="./images/trial.svg" alt="" />
        </div>
      </div>
    </div>
  </div>
  <script>
  const srtArrProduct = "<%=arr%>"
const tex=  document.createElement('tex')
tex.innerHTML = srtArrProduct
const text = tex.innerHTML === 'failure'?"[]":tex.innerHTML
const dataJson = JSON.parse(text.replaceAll('_','"').slice(0,text.lastIndexOf(','))+"]")
console.log(dataJson)
  </script>
  <!-- ====== SwiperJs ====== -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <!-- ====== Custom Script ====== -->
  <script src="./js/product.js"></script>
  <script src="./js/main.js"></script>
</body>

</html>