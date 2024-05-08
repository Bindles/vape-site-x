<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />

  <style>
    /* CSS styles for the transparent fixed parallax scrolling effect */
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      overflow-x: hidden;
    }

    header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background-color: rgba(0, 0, 0, 0.8); /* Transparent black background */
      padding: 20px 0;
      z-index: 1000;
    }

    .parallax {
      background-image: url("https://www.w3schools.com/howto/img_parallax.jpg");
      min-height: 500px;
      background-attachment: fixed;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      margin-top: 100px; /* Adjusted margin-top to account for the fixed header */
    }

    /* End of CSS styles for the transparent fixed parallax scrolling effect */

    .mainview {
      height: 50vh;
    }

    .mainview2 {
      height: 50vh;
    }

    h1 {
      margin: 0;
    }

    a:hover {
      color: #66FFFF;
    }

    div a {
      text-decoration: none;
      color: #AAAAAA;
    }

    .search>img {
      display: flex;
      flex-flow: row nowrap;
      margin: 30px 50px;
      width: 20%;
    }
  </style>

</head>
<body>

<header>
  <div class="container mx-auto flex justify-between items-center">
    <div>
      <span class="text-lg font-bold text-white">posts</span>
    </div>
    <div class="flex space-x-4">
      <a href="#" class="hover:text-gray-500">Home</a>
      <a href="#" class="hover:text-gray-500">Code</a>
      <a href="#" class="hover:text-gray-500">Login</a>
    </div>
    <div>
      <form class="flex items-center" action="/posts" method="get">
        <input type="text" name="search" value="<%= params[:search] %>" placeholder="Search posts" class="rounded bg-gray-800 text-white px-4 py-2 focus:outline-none focus:shadow-outline">
        <input type="submit" value="Search" class="ml-2 bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 focus:outline-none focus:shadow-outline">
      </form>
    </div>
  </div>
</header>

<div class="parallax"></div>
<div>
  <div class="mainview">
    <h1>
      Main view content
    </h1>
  </div>
  <div class="mainview2">
    <h1>
      Main view 2 content
    </h1>
  </div>
  <div style="height:1000px;background-color:red;font-size:36px">
    Scroll Up and Down this page to see the parallax scrolling effect. This div is just here to enable scrolling. Tip: Try to remove the background-attachment property to remove the scrolling effect.
  </div>
  <div></div>
  <div></div>
</div>
<div>
  Test
</div>
  
<script>

document.addEventListener('scroll', () => {
  let myNav = document.getElementById("myNav");
  myNav.style.opacity = window.scrollY !== 0 ? .6 : 1;

});

</script>
  
</body>
</html>
