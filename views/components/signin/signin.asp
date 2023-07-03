 <div class="container">
        <div class="row justify-content-center" style="margin-top:5%;">
            <div style="display: flex ;justify-content: center; align-items: center; flex-direction: column;"
                class="col-md-6 border shadow-lg rounded bg-light" style="padding:2%">
                <h1 class="text-center text-primary">Đăng nhập</h1>
                <form>
                    <small>

                    </small>
                  

                    <div class="row form-group" style="padding: 10px;">
                        <div class="col">
                            <label for="sodienthoai">Tên tài khoản</label>
                            <input type="text" class="form-control" id="email" name="email"
                                placeholder="Tên tài khoản">
                        </div>
                    </div>

                    <div class="row form-group" style="padding: 10px;">
                        <div class="col">
                            <label for="diachi">Mật khẩu</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu">
                        </div>
                    </div>

                    <div class="row justify-content-center" style="padding: 10px;">
                        <button  type="submit" class="btn btn-primary col" name="register" onclick="handleSignIn(event)">Đăng
                           Nhập</button>
                    </div>
                     <script>
            const username = document.querySelector('#email')
            const password = document.querySelector('#password')

            const handleSignIn = (e) => {
                e.preventDefault();
                const arr = dataJson
            console.log(arr)
                const findItem = arr.find(item => {
                    if (item.mail === username.value || item.nameacc === username.value) {
                        if (item.pass === password.value) {
                            return item
                        }
                    }
                })

                if (username.value !== "admin") {
                    if (findItem) {
                        localStorage.setItem('user', findItem.nameacc)
                        localStorage.setItem('fullName', findItem.names)
                        localStorage.setItem('emailUser', findItem.mail)
                        localStorage.setItem('address', findItem.addres)
                        localStorage.setItem('phoneUser', findItem.phone)
                        localStorage.setItem('online', true)
                        window.location.href = './'
                    }else{
                        alert("sai tên đăng nhập hoặc mật khẩu")
                    }
                } else {
                    if (password.value === 'admin123') {
                        localStorage.setItem('admin', username.value)
                        localStorage.setItem('onlineAdmin', true)
                        window.location.href = './dashboard/create.asp'
                    }
                }

            }
        </script>
                    <p align="center">Bạn chưa có tài khoản đăng nhập? <a href="./signup.asp" class="text-primary"
                            style="font-weight:600; text-decoration:none;">Đăng Ký</a></p>
                </form>
            </div>
        </div>
    </div>