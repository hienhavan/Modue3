
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      font-size: 0.9rem;
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
          <div class=" post">
            <img
                    class="post-img"
                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/defebc72-ea17-41c7-9bb6-70b3974a93b7"
                    alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/f9d29d0e-f03b-4990-9bc5-ade57a276b41"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Homemade Ice Cream</h2>
                <p class="post-author">Evelyn Taylor</p>
              </div>
            </div>
          </div>
          <div class=" post">
            <img
                    class="post-img"
                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/defebc72-ea17-41c7-9bb6-70b3974a93b7"
                    alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/f9d29d0e-f03b-4990-9bc5-ade57a276b41"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Homemade Ice Cream</h2>
                <p class="post-author">Evelyn Taylor</p>
              </div>
            </div>
          </div>
        </div>
        <div style="display: flex">
          <div class=" post">
            <img class="post-img"
                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7443d18f-26b6-47eb-bfca-541fb72cee65"
                 alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Pancake</h2>
                <p class="post-author">Ethan Wilson</p>
              </div>
            </div>
          </div>
          <div class=" post">
            <img class="post-img"
                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7443d18f-26b6-47eb-bfca-541fb72cee65"
                 alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/3c7b6ef9-cd2d-4d70-819a-2aa9c2309083"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Pancake</h2>
                <p class="post-author">Ethan Wilson</p>
              </div>
            </div>
          </div>
        </div>
        <div style="display: flex">
          <div class=" post">
            <img class="post-img"
                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/24566dbf-61a2-4bd0-bb29-ef1773364eba"
                 alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/01332597-5aeb-483b-b682-9379c6ed8f14"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Macaron</h2>
                <p class="post-author">Bella Smith</p>
              </div>
            </div>
          </div>
          <div class=" post">
            <img class="post-img"
                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/24566dbf-61a2-4bd0-bb29-ef1773364eba"
                 alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/01332597-5aeb-483b-b682-9379c6ed8f14"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Macaron</h2>
                <p class="post-author">Bella Smith</p>
              </div>
            </div>
          </div>
        </div>
        <div style="display: flex">
          <div class="post">
            <img
                    class="post-img"
                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/a208eb17-a847-4e04-be2c-d7ec2071ae45"
                    alt="recipe"/>

            <div class="post-body">
              <img class="post-avatar"
                   src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/b9f5ef94-c2c9-4792-b7a3-593d393f2c84"
                   alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Cheesecake</h2>
                <p class="post-author">Mia Dixon</p>
              </div>
            </div>
          </div>
          <div class="post">
            <img
                    class="post-img"
                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/a208eb17-a847-4e04-be2c-d7ec2071ae45"
                    alt="recipe"/>

            <div class="post-body">
              <img class="post-avatar"
                   src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/b9f5ef94-c2c9-4792-b7a3-593d393f2c84"
                   alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Cheesecake</h2>
                <p class="post-author">Mia Dixon</p>
              </div>
            </div>
          </div>
        </div>
        <div style="display: flex">
          <div class="post">
            <img class="post-img"
                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/208fe8f5-9d7f-4b83-9249-43601bb4c500"
                 alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/58f9319c-78cf-444b-ba71-701c506c2dd3"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Donuts</h2>
                <p class="post-author">Olivia Martinez</p>
              </div>
            </div>
          </div>
          <div class="post">
            <img class="post-img"
                 src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/208fe8f5-9d7f-4b83-9249-43601bb4c500"
                 alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/58f9319c-78cf-444b-ba71-701c506c2dd3"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Donuts</h2>
                <p class="post-author">Olivia Martinez</p>
              </div>
            </div>
          </div>
        </div>
        <div style="display: flex">
          <div class="post">
            <img
                    class="post-img"
                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/e4f91d6d-ee11-4ff7-9e6f-0fb3f9a78598"
                    alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/24ca2eec-a5ba-4c32-907c-ffffca203e1c"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Rolo Cheesecake</h2>
                <p class="post-author">Benjamin Clark</p>
              </div>
            </div>
          </div>
          <div class="post">
            <img
                    class="post-img"
                    src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/e4f91d6d-ee11-4ff7-9e6f-0fb3f9a78598"
                    alt="recipe"/>

            <div class="post-body">
              <img
                      class="post-avatar"
                      src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/24ca2eec-a5ba-4c32-907c-ffffca203e1c"
                      alt="avatar"/>
              <div class="post-detail">
                <h2 class="post-name">Rolo Cheesecake</h2>
                <p class="post-author">Benjamin Clark</p>
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
