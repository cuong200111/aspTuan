<!doctype html>
<html lang="en">

<head>
    <title>Register</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>

<body>

    <div class="container">
        <div class="row justify-content-center" style="margin-top:5%;">
            <div style="display: flex ;justify-content: center; align-items: center; flex-direction: column;"
                class="col-md-6 border shadow-lg rounded bg-light" style="padding:2%">
                <h1 class="text-center text-primary">Register</h1>
                <form>
                    <small>

                    </small>
                    <div class="row form-group" style="padding: 10px;">
                        <div class="col">
                            <label for="hoten">Họ và tên</label>
                            <input type="text" class="form-control" id="full_name" name="full_name"
                                placeholder="Họ và tên">
                        </div>
                    </div>

                    <div class="row form-group" style="padding: 10px;">
                        <div class="col-md-6">
                            <label for="taikhoan">Tài khoản</label>
                            <input type="input" class="form-control" id="username" name="username"
                                placeholder="Tài khoản">
                        </div>
                        <div class="col-md-6">
                            <label for="matkhau">Mật khẩu</label>
                            <input type="password" class="form-control" id="password" name="password"
                                placeholder="Mật khẩu ">
                        </div>
                    </div>


                    <div class="row form-group" style="padding: 10px;">
                        <div class="col">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                        </div>
                    </div>

                    <div class="row form-group" style="padding: 10px;">
                        <div class="col">
                            <label for="sodienthoai">Số điện thoại</label>
                            <input type="number" class="form-control" id="phone" name="phone"
                                placeholder="Số điện thoại">
                        </div>
                    </div>

                    <div class="row form-group" style="padding: 10px;">
                        <div class="col">
                            <label for="diachi">Địa chỉ</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Địa chỉ">
                        </div>
                    </div>

                    <div class="row justify-content-center" style="padding: 10px;">
                        <button type="submit" class="btn btn-primary col" name="register" onclick="clicks(event)">Đăng
                            ký</button>
                    </div>
                    <p align="center">Bạn đã có tài khoản? <a href="" class="text-primary"
                            style="font-weight:600; text-decoration:none;">Đăng nhập</a></p>
                </form>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
    <script>
        const full_name = document.querySelector('#full_name')
        const username = document.querySelector('#username')
        const password = document.querySelector('#password')
        const email = document.querySelector('#email')
        const phone = document.querySelector('#phone')
        const address = document.querySelector('#address')

        window.setTimeout(function () {
            $(".alert").fadeTo(500, 0).slideUp(500, function () {
                $(this).remove();
            });
        }, 1000);

        function clicks(e) {
            e.preventDefault()
            const arr = dataJson
            const filters = arr.filter(item => {

                if (username.value !== 'admin' || email.value !== 'admin') {
                    if (item.nameacc === username.value || item.mail === email.value) {
                        return item
                    }
                }

            })

            const data = new URLSearchParams()
            data.append("names", full_name.value)
            data.append("nameacc", username.value)
            data.append("pass", password.value)
            data.append("mail", email.value)
            data.append("phone", phone.value)
            data.append("addres", address.value)

            if (filters.length === 0) {
                fetch("./views/components/signup/controller/createuser.asp", {
                    method: "post", body: data, headers: { "Content-Type": "application/x-www-form-urlencoded" }
                }).then(item => {
                    if (item.status === 200) {
                        window.location.reload()
                    }
                })
            } else {

            }
        }
    </script>

</body>

</html>