<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Alekhya Chitti Pickles · stunning flavors</title>
  <!-- Google Fonts for elegance -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;1,400&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600&display=swap" rel="stylesheet">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #fef7f0;  /* warm base */
      color: #2d1f14;
      line-height: 1.5;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 30px;
    }

    /* header / nav */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 24px 0 16px;
      border-bottom: 2px solid rgba(215, 160, 120, 0.25);
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .brand-icon {
      font-size: 2.4rem;
      color: #b45f3a;
      filter: drop-shadow(0 4px 6px rgba(180, 95, 58, 0.2));
    }

    .brand h1 {
      font-family: 'Playfair Display', serif;
      font-weight: 600;
      font-size: 2rem;
      letter-spacing: -0.5px;
      color: #3f2419;
    }

    .brand span {
      font-weight: 400;
      font-style: italic;
      color: #9a6b50;
      font-size: 1.2rem;
      margin-left: 4px;
    }

    .nav-links {
      display: flex;
      gap: 32px;
      font-weight: 500;
      color: #4d3224;
    }

    .nav-links a {
      text-decoration: none;
      color: inherit;
      font-size: 1.05rem;
      transition: 0.2s;
      border-bottom: 2px solid transparent;
      padding-bottom: 4px;
    }

    .nav-links a:hover {
      border-bottom-color: #b45f3a;
      color: #b45f3a;
    }

    .nav-links i {
      margin-right: 6px;
    }

    /* hero splash */
    .hero {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      margin: 40px 0 50px;
      gap: 30px;
    }

    .hero-text {
      flex: 1 1 300px;
    }

    .hero-text .badge {
      display: inline-block;
      background: #e9d4c4;
      padding: 6px 18px;
      border-radius: 40px;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 1px;
      color: #5d3827;
      margin-bottom: 18px;
      text-transform: uppercase;
    }

    .hero-text h2 {
      font-family: 'Playfair Display', serif;
      font-size: 3.2rem;
      line-height: 1.1;
      font-weight: 600;
      color: #2b1a10;
      margin-bottom: 20px;
    }

    .hero-text h2 i {
      color: #b45f3a;
      font-size: 2.8rem;
      margin-right: 6px;
    }

    .hero-text p {
      font-size: 1.15rem;
      color: #4e3527;
      max-width: 450px;
      margin-bottom: 30px;
      font-weight: 300;
      line-height: 1.6;
    }

    .hero-cta {
      display: flex;
      gap: 18px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-block;
      background: #b45f3a;
      color: #fff;
      padding: 14px 36px;
      border-radius: 60px;
      font-weight: 600;
      text-decoration: none;
      transition: 0.25s;
      box-shadow: 0 8px 18px rgba(180, 95, 58, 0.3);
      border: none;
      font-size: 1rem;
      letter-spacing: 0.3px;
    }

    .btn-outline {
      background: transparent;
      color: #b45f3a;
      box-shadow: none;
      border: 2px solid #b45f3a;
    }

    .btn-outline i {
      margin-right: 8px;
    }

    .btn:hover {
      transform: translateY(-4px);
      box-shadow: 0 14px 28px rgba(180, 95, 58, 0.4);
      background: #9f4e2d;
    }

    .btn-outline:hover {
      background: #b45f3a20;
      border-color: #9f4e2d;
      color: #9f4e2d;
      transform: translateY(-4px);
    }

    .hero-image {
      flex: 1 1 300px;
      background: radial-gradient(circle at 30% 40%, #f3ded0, #e6cdbb);
      padding: 30px 20px;
      border-radius: 60px 20px 60px 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 240px;
      box-shadow: 0 20px 40px rgba(100, 60, 40, 0.15);
      position: relative;
    }

    .hero-image i {
      font-size: 8rem;
      color: #79482e;
      opacity: 0.7;
      filter: drop-shadow(0 8px 12px rgba(0,0,0,0.1));
    }

    .hero-image .floating-tag {
      position: absolute;
      bottom: 20px;
      right: 20px;
      background: #fcf6f0;
      padding: 8px 20px;
      border-radius: 50px;
      font-weight: 600;
      color: #3f2419;
      box-shadow: 0 6px 14px rgba(0,0,0,0.04);
    }

    .floating-tag i {
      font-size: 1rem;
      margin-right: 8px;
      color: #b45f3a;
    }

    /* menu section */
    .menu-section {
      margin: 70px 0 40px;
    }

    .section-header {
      text-align: center;
      margin-bottom: 50px;
    }

    .section-header h3 {
      font-family: 'Playfair Display', serif;
      font-size: 2.8rem;
      color: #2b1a10;
      font-weight: 600;
      letter-spacing: -0.3px;
    }

    .section-header h3 i {
      color: #b45f3a;
      margin-right: 12px;
    }

    .section-header p {
      color: #5f4333;
      font-size: 1.1rem;
      margin-top: 8px;
      font-weight: 300;
    }

    .menu-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 35px 25px;
    }

    .menu-card {
      background: #ffffffd8;
      backdrop-filter: blur(2px);
      border-radius: 40px 12px 40px 12px;
      padding: 28px 22px 22px;
      box-shadow: 0 10px 28px rgba(110, 70, 50, 0.08);
      transition: all 0.25s ease;
      border: 1px solid #f5e5db;
      display: flex;
      flex-direction: column;
      position: relative;
      overflow: hidden;
    }

    .menu-card:hover {
      transform: scale(1.02);
      box-shadow: 0 20px 40px rgba(140, 90, 60, 0.12);
      border-color: #dbb6a2;
      background: #ffffff;
    }

    .menu-card .icon-wrap {
      font-size: 2.6rem;
      color: #b45f3a;
      margin-bottom: 12px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .menu-card .icon-wrap i:last-child {
      font-size: 1.2rem;
      color: #bd8b72;
      opacity: 0.6;
    }

    .menu-card h4 {
      font-size: 1.6rem;
      font-family: 'Playfair Display', serif;
      font-weight: 600;
      color: #2b1a10;
      margin-bottom: 6px;
    }

    .menu-card .desc {
      font-size: 0.95rem;
      color: #5e4537;
      margin: 10px 0 14px;
      flex: 1;
      font-weight: 300;
      line-height: 1.5;
    }

    .menu-card .price {
      font-size: 1.8rem;
      font-weight: 700;
      color: #b45f3a;
      letter-spacing: -0.5px;
      display: flex;
      align-items: baseline;
      gap: 6px;
      margin-top: 4px;
    }

    .menu-card .price small {
      font-size: 0.9rem;
      font-weight: 400;
      color: #7a5c49;
      margin-left: 4px;
    }

    .menu-card .order-badge {
      margin-top: 16px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-top: 1px dashed #e6cfc0;
      padding-top: 16px;
    }

    .menu-card .order-badge span {
      background: #f3e3d9;
      padding: 4px 14px;
      border-radius: 30px;
      font-size: 0.8rem;
      font-weight: 500;
      color: #4f3223;
    }

    .menu-card .order-badge i {
      color: #b45f3a;
      font-size: 1.2rem;
      transition: 0.2s;
      cursor: default;
    }

    .menu-card .order-badge i:hover {
      transform: scale(1.2);
      color: #884e31;
    }

    /* specials / highlight */
    .featured-badge {
      background: #e1c2ae;
      color: #361f14;
      font-weight: 600;
      font-size: 0.7rem;
      padding: 4px 12px;
      border-radius: 30px;
      display: inline-block;
      letter-spacing: 1px;
    }

    /* footer / contact */
    .footer {
      margin: 80px 0 30px;
      padding-top: 30px;
      border-top: 2px solid #ecdccf;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 25px;
    }

    .footer .social {
      display: flex;
      gap: 24px;
      font-size: 1.6rem;
      color: #7a5c49;
    }

    .footer .social i {
      transition: 0.2s;
      cursor: pointer;
    }

    .footer .social i:hover {
      color: #b45f3a;
      transform: scale(1.1);
    }

    .footer .copy {
      font-weight: 300;
      color: #5f4333;
      font-size: 0.95rem;
    }

    .footer .copy i {
      color: #b45f3a;
      margin: 0 4px;
    }

    /* responsive touches */
    @media (max-width: 650px) {
      .navbar {
        flex-direction: column;
        align-items: flex-start;
        gap: 18px;
      }
      .nav-links {
        flex-wrap: wrap;
        gap: 18px 22px;
      }
      .hero-text h2 {
        font-size: 2.6rem;
      }
    }
  </style>
</head>
<body>
  <div class="container">

    <!-- header -->
    <header class="navbar">
      <div class="brand">
        <i class="fas fa-jar brand-icon"></i>
        <h1>Alekhya <span>Chitti</span></h1>
      </div>
      <div class="nav-links">
        <a href="#"><i class="fas fa-seedling"></i> Pickles</a>
        <a href="#"><i class="fas fa-utensils"></i> Combos</a>
        <a href="#"><i class="fas fa-gift"></i> Offers</a>
        <a href="#"><i class="fas fa-user"></i> Sign in</a>
      </div>
    </header>

    <!-- hero -->
    <section class="hero">
      <div class="hero-text">
        <span class="badge"><i class="fas fa-star" style="margin-right: 6px;"></i> authentic & handcrafted</span>
        <h2><i class="fas fa-pepper-hot"></i> Alekhya Chitti <br>Pickles</h2>
        <p>Bold, tangy & made with love — every jar is a burst of traditional Andhra flavor. Spice up your meals with our signature collection.</p>
        <div class="hero-cta">
          <a href="#" class="btn"><i class="fas fa-shopping-bag"></i> Explore menu</a>
          <a href="#" class="btn btn-outline"><i class="fas fa-play"></i> Our story</a>
        </div>
      </div>
      <div class="hero-image">
        <i class="fas fa-jar"></i>
        <div class="floating-tag">
          <i class="fas fa-fire"></i> 12 spicy varieties
        </div>
      </div>
    </section>

    <!-- menu section -->
    <section class="menu-section">
      <div class="section-header">
        <h3><i class="fas fa-utensil-spoon"></i> Attractive menu</h3>
        <p>handpicked flavours · stunning prices</p>
      </div>

      <div class="menu-grid">
        <!-- card 1 -->
        <div class="menu-card">
          <div class="icon-wrap">
            <i class="fas fa-pepper"></i>
            <i class="fas fa-fire" style="color:#d97c4a;"></i>
          </div>
          <h4>Avakaya</h4>
          <div class="desc">Classic mango pickle with a punch of mustard & red chili. Aged to perfection.</div>
          <div class="price">₹199 <small>400g</small></div>
          <div class="order-badge">
            <span><i class="fas fa-tag"></i> bestseller</span>
            <i class="fas fa-plus-circle"></i>
          </div>
        </div>

        <!-- card 2 -->
        <div class="menu-card">
          <div class="icon-wrap">
            <i class="fas fa-lemon"></i>
            <i class="fas fa-seedling" style="color:#7a9c5a;"></i>
          </div>
          <h4>Nimbu Mirch</h4>
          <div class="desc">Tangy lemon pickle with green chili & a hint of asafoetida. Zesty & bright.</div>
          <div class="price">₹169 <small>400g</small></div>
          <div class="order-badge">
            <span><i class="far fa-heart"></i> popular</span>
            <i class="fas fa-plus-circle"></i>
          </div>
        </div>

        <!-- card 3 -->
        <div class="menu-card">
          <div class="icon-wrap">
            <i class="fas fa-carrot"></i>
            <i class="fas fa-meteor" style="color:#d68b5c;"></i>
          </div>
          <h4>Gongura</h4>
          <div class="desc">Sour & spicy sorrel leaves pickle, a tangy Andhra favourite with red chili.</div>
          <div class="price">₹219 <small>400g</small></div>
          <div class="order-badge">
            <span><i class="fas fa-crown"></i> signature</span>
            <i class="fas fa-plus-circle"></i>
          </div>
        </div>

        <!-- card 4 -->
        <div class="menu-card">
          <div class="icon-wrap">
            <i class="fas fa-chili-pepper"></i>
            <i class="fas fa-bolt" style="color:#ba6b3f;"></i>
          </div>
          <h4>Tomato Thokku</h4>
          <div class="desc">Sun-ripened tomato pickle with fenugreek & spice — sweet, sour, fiery.</div>
          <div class="price">₹189 <small>400g</small></div>
          <div class="order-badge">
            <span><i class="fas fa-star"></i> new</span>
            <i class="fas fa-plus-circle"></i>
          </div>
        </div>

        <!-- card 5 -->
        <div class="menu-card">
          <div class="icon-wrap">
            <i class="fas fa-eggplant"></i>
            <i class="fas fa-leaf" style="color:#4f7942;"></i>
          </div>
          <h4>Vankaya (Brinjal)</h4>
          <div class="desc">Smoky roasted brinjal pickle with sesame & tangy tamarind paste.</div>
          <div class="price">₹209 <small>400g</small></div>
          <div class="order-badge">
            <span><i class="fas fa-thumbs-up"></i> family fav</span>
            <i class="fas fa-plus-circle"></i>
          </div>
        </div>

        <!-- card 6 -->
        <div class="menu-card">
          <div class="icon-wrap">
            <i class="fas fa-garlic"></i>
            <i class="fas fa-spa" style="color:#9e7b5e;"></i>
          </div>
          <h4>Garlic & Ginger</h4>
          <div class="desc">Bold, aromatic pickle with whole garlic cloves & fresh ginger.</div>
          <div class="price">₹229 <small>400g</small></div>
          <div class="order-badge">
            <span><i class="fas fa-gem"></i> premium</span>
            <i class="fas fa-plus-circle"></i>
          </div>
        </div>
      </div>

      <!-- additional note: great prices -->
      <div style="text-align: center; margin-top: 40px; font-weight: 300; color: #4f3223; letter-spacing: 0.3px;">
        <i class="fas fa-rupee-sign" style="color:#b45f3a; margin-right: 6px;"></i> 
        <span style="background: #f3e3d9; padding: 6px 20px; border-radius: 40px;">great prices · 100% natural · free shipping on ₹599+</span>
      </div>
    </section>

    <!-- footer -->
    <footer class="footer">
      <div class="copy">
        <i class="fas fa-jar"></i> Alekhya Chitti Pickles · since 1986
      </div>
      <div class="social">
        <i class="fab fa-instagram"></i>
        <i class="fab fa-facebook-f"></i>
        <i class="fab fa-youtube"></i>
        <i class="fab fa-whatsapp"></i>
      </div>
      <div class="copy" style="display: flex; gap: 6px;">
        <span><i class="far fa-clock"></i> 9am – 8pm</span>
        <span><i class="fas fa-phone-alt"></i> +91 98765 43210</span>
      </div>
    </footer>
  </div>
  <!-- tiny extra visual delight -->
  <div style="position: fixed; bottom: 20px; right: 20px; opacity: 0.1; pointer-events: none; font-size: 4rem; color:#b45f3a; z-index: -1;">
    <i class="fas fa-pepper-hot"></i>
  </div>
</body>
</html>
