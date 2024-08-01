<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ht</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: #36454F;
    }

    .input {
      max-width: 600px;
    }

    .custom_input {
      display: flex;
      align-items: center;
      position: relative;
      max-width: 100%;
      justify-content: center;
    }

    .custom_input .svg_icon {
      left: 34.5%;
    }

    .input {
      font-size: 18px;
      padding: 5px 10px;
      width: 100%;
      padding-left: 35px;
      outline: none;
      background: #ffffff;
      color: #000000;
      border: 1px solid #c4d1eb;
      border-radius: 5px;
      box-shadow: 3px 3px 2px 0px #e2e2e2;
      transition: 0.3s ease;
    }

    .input:focus {
      background: #f2f2f2;
      border: 1px solid #5a7ec7;
      border-radius: 10px;
    }

    .input::placeholder {
      color: #dddddd;
    }

    .svg_icon {
      position: absolute;
      left: 550px;
      fill: #4660dc;
      width: 23px;
      height: 23px;
      justify-content: center;
    }

    .container {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
      gap: 100px 50px;
      padding: 100px 50px;
    }

    .container .card {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      width: 350px;
      max-width: 100%;
      height: 300px;
      background: #FFF;
      border-radius: 20px;
      transition: 0.5s;
      box-shadow: 0 35px 80px rgba(0, 0, 0, 0.15);
    }

    .container .card:hover {
      height: 400px;
    }

    .container .card .img-box {
      position: absolute;
      top: 20px;
      width: 150px;
      height: 220px;
      background: #333;
      border-radius: 12px;
      overflow: hidden;
      transition: 0.5s;
      box-shadow: 0 5px 10px black;
    }

    .container .card:hover .img-box {
      top: -100px;
      scale: 0.75;
      box-shadow: 0 15px 45px rgba(0, 0, 0, 0.2);
    }

    .container .card .img-box img {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .container .card .content {
      position: absolute;
      top: 252px;
      width: 100%;
      height: 35px;
      padding: 0 30px;
      text-align: center;
      overflow: hidden;
      transition: 0.5s;
    }

    .container .card:hover .content {
      top: 130px;
      height: 250px;
    }

    .container .card .content h2 {
      font-size: 1.5rem;
      font-weight: 700;
      color: var(--clr);
    }

    .container .card .content p {
      color: #333;
    }

    .container .card .content a {
      position: relative;
      top: 15px;
      display: inline-block;
      padding: 12px 25px;
      text-decoration: none;
      background: brown;
      color: #FFF;
      font-weight: 500;
    }

    .container .card .content a:hover {
      opacity: 0.8;
    }

    @media (max-width: 480px) {
      .container .card {
        width: 230px;
        border-radius: 15px;
      }

      .container .card .img-box {
        width: 185px;
        border-radius: 10px;
      }

      .container .card .content p {
        font-size: 0.8rem;
      }

      .container .card .content a {
        font-size: 0.9rem;
      }
    }

    .money {
      color: #f9004d;
    }
  </style>
</head>
<body>
<div class="custom_input">
  <svg
          viewBox="0 0 16 16"
          class="svg_icon"
          xmlns="http://www.w3.org/2000/svg"
  >
    <path
            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"
    ></path>
  </svg>
  <input placeholder="Placeholder Text" type="text" class="input"/>
</div>
<div class="container">
  <div class="card" style="--clr: #009688">
    <div class="img-box">
      <img src="https://cdn0.fahasa.com/media/catalog/product/i/m/image_244718_1_2849.jpg">
    </div>
    <div class="content">
      <h2>thông tin</h2>
      <p>
        "Đừng Để Tiền Ngủ Yên" của David Bach hướng dẫn cách đầu tư thông minh và tối ưu hóa tài chính cá nhân
        để tạo ra lợi nhuận...
      </p></br>
      <strong class="money">1.222.000$</strong></br>
      <a href="view/buy_products/buyProducts.jsp">Mua ngay</a>
    </div>
  </div>
  <div class="card" style="--clr: #009688">
    <div class="img-box">
      <img src="https://nhatrangbooks.com/wp-content/uploads/2019/10/tien-khong-phai-la-van-de.jpg">
    </div>
    <div class="content">
      <h2>thông tin</h2>
      <p>
        "Tiền Không Phải Là Vấn Đề" của T. Harv Eker cung cấp các nguyên tắc để thay đổi tư duy về tiền bạc,
        giúp xây dựng sự giàu có bền vững... </p></br>
      <strong class="money">1.222.000$</strong></br>
      <a href="view/buy_products/buyProducts.jsp">Mua ngay</a>
    </div>
  </div>
  <div class="card" style="--clr:#009688">
    <div class="img-box">
      <img src="https://cdn0.fahasa.com/media/catalog/product/b/i/bia-truoc-chien-tranh-tien-te-phan-1-1.jpg">
    </div>
    <div class="content">
      <h2>thông tin</h2>
      <p>
        "Chiến Tranh Tiền Tệ" của James Rickards phân tích các cuộc chiến tranh tiền tệ toàn cầu và tác động của
        chúng đến nền kinh...
      </p></br>
      <strong class="money">1.222.000$</strong></br>
      <a href="view/buy_products/buyProducts.jsp">Mua ngay</a>
    </div>
  </div>
  <div class="card" style="--clr:#009688">
    <div class="img-box">
      <img src="https://www.ldg.com.vn/media/uploads/uploads/2023/10/02112018-sach.jpeg">
    </div>
    <div class="content">
      <h2>thông tin</h2>
      <p>
        "Kiếm Tiền Thời Khủng Hoảng" của Gary Collins hướng dẫn cách tận dụng cơ hội tài chính trong thời kỳ
        khủng hoảng để tạo ra thu nhập... </p></br>
      <strong class="money">1.222.000$</strong></br>
      <a href="view/buy_products/buyProducts.jsp">Mua ngay</a>
    </div>
  </div>
</div>
</div>
</body>
</html>