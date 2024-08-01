<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600&family=Roboto:wght@500;700&display=swap");

        :root {
            --clr-text: hsl(0, 0%, 100%);
        }

        * {
            box-sizing: border-box;
            padding: 0;
            margin: 0;
            font-family: "Quicksand", sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgba(13, 12, 12, 1);
            background: radial-gradient(
                    circle,
                    rgba(115, 12, 50, 1) 5%,
                    rgba(13, 12, 12, 1) 60%
            );
            min-height: 100vh;
        }

        section {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 100%;
            padding: 60px;
        }

        .recipe-container {
            background: rgba(189, 181, 181, 0.1);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 25px;
            padding: 30px 0;
            width: min(1200px, 100%);
        }

        .recipe-container h1 {
            font-size: 2rem;
            font-weight: 600;
            text-align: center;
            color: #dda3b6;
            margin: 20px 0 40px;
        }

        .swiper {
            width: 100%;
            height: 100%;
            margin-bottom: 30px;
        }

        .post {
            max-width: 432px;
            font-size: 1.5rem;
            /* font-weight: 500; */
            color: var(--clr-text);
            background: rgba(236, 149, 200, 0.2);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 16px 16px 0;
            margin-bottom: 44px;
            margin-left: 110px;
        }

        .post-img {
            width: 100%;
            max-width: 400px;
            object-fit: cover;
            overflow: hidden;
            aspect-ratio: 4/3;
            border-radius: 6px;
            user-select: none;
            pointer-events: none;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 1);
        }

        .post-body {
            display: grid;
            grid-template-columns: 15% 60% 20%;
            align-items: center;
            gap: 8px;
            padding: 15px 0;
            cursor: default;
        }

        .post-name {
            font-size: 1rem;
            font-weight: 600;
            margin-bottom: 2px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;

        }

        .post-author {
            width: fit-content;
            font-size: 0.8rem;
            font-weight: 600;
            opacity: 0.6;
            color: var(--clr-text);
        }

        .post-avatar {
            width: 40px;
            aspect-ratio: 1/1;
            object-fit: cover;
            border-radius: 5px;
            cursor: pointer;
        }

        .post-actions-content li {
            padding: 0.5rem 0.65rem;
            border-radius: 0.25rem;
            list-style: none;
        }

        .post-actions-content li:is(:hover, :focus-within) {
            background-color: rgba(248, 132, 169, 0.7);
        }

        /* MEDIA QUERIES */

        @media (max-width: 1200px) {
            .swiper {
                width: 80%;
            }
        }

        @media (max-width: 900px) {

            .swiper {
                width: 50%;
            }
        }

        @media (max-width: 765px) {
            .swiper {
                width: 100%;
            }
        }

        @media (max-width: 550px) {

            .swiper {
                width: 80%;
            }
        }

    </style>
</head>
<body>
<section>
    <div class="recipe-container">
        <marquee>
            <h1>Danh sách sản phẩm</h1>
        </marquee>
        <div class="swiper">
            <div>
                <div style="display: flex">
                    <a href="<%= request.getContextPath()%>/finances">

                        <div class=" post">
                            <img
                                    class="post-img"
                                    src="https://raw.githubusercontent.com/hienhavan/anh-bia-module3/master/anh-bia-tai-chinh.jpg"
                                    alt="recipe"/>
                            <div class="post-body">
                                <img
                                        class="post-avatar"
                                        src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                        alt="avatar"/>
                                <div class="post-detail">
                                    <h2 class="post-name">TÀI CHÍNH</h2>
                                    <p class="post-author">admin</p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class=" post">
                        <img
                                class="post-img"
                                src="https://github.com/hienhavan/anh-bia-module3/blob/master/sac-ve-giao-ti%C3%A9p.jpg?raw=true"
                                alt="recipe"/>

                        <div class="post-body">
                            <img
                                    class="post-avatar"
                                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                    alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">TƯ DUY</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="display: flex">
                    <div class=" post">
                        <img class="post-img"
                             src="https://github.com/hienhavan/anh-bia-module3/blob/master/anh-bia-sach-lop1-12.jpg?raw=true"
                             alt="recipe"/>

                        <div class="post-body">
                            <img
                                    class="post-avatar"
                                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                    alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">GIÁO DỤC</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                    <div class=" post">
                        <img class="post-img"
                             style="box-shadow: 0 4px 15px rgba(0, 0, 0, 1);"
                             src="https://github.com/hienhavan/anh-bia-module3/blob/master/phat-trien-ban-than.jpg?raw=true"
                             alt="recipe"/>

                        <div class="post-body">
                            <img
                                    class="post-avatar"
                                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                    alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">PHÁT TRIỂN BẢN THÂN</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="display: flex">
                    <div class=" post">
                        <img class="post-img"
                             src="https://github.com/hienhavan/anh-bia-module3/blob/master/sach-hay.jpg?raw=true"
                             alt="recipe"/>

                        <div class="post-body">
                            <img
                                    class="post-avatar"
                                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                    alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">SÁCH HAY</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                    <div class=" post">
                        <img class="post-img"
                             src="https://github.com/hienhavan/anh-bia-module3/blob/master/tieu%20thuyet.jpg?raw=true"
                             alt="recipe"/>

                        <div class="post-body">
                            <img
                                    class="post-avatar"
                                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                    alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">TIỂU THUYẾT</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="display: flex">
                    <div class="post">
                        <img
                                class="post-img"
                                src="https://github.com/hienhavan/anh-bia-module3/blob/master/ang%20giao%20tiep.jpg?raw=true"
                                alt="recipe"/>

                        <div class="post-body">
                            <img class="post-avatar"
                                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                 alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">GIAO TIẾP</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                    <div class="post">
                        <img
                                class="post-img"
                                src="https://github.com/hienhavan/anh-bia-module3/blob/master/vu-tru.jpg?raw=true"
                                alt="recipe"/>

                        <div class="post-body">
                            <img class="post-avatar"
                                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                                 alt="avatar"/>
                            <div class="post-detail">
                                <h2 class="post-name">VŨ TRỤ</h2>
                                <p class="post-author">admin</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
</body>
</html>