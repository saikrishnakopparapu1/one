<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · dark neon</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & variables (DARK NEON) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #0b0e17;
      --primary: #eef3ff;
      --accent: #f72585;
      --accent-glow: rgba(247, 37, 133, 0.35);
      --muted: #8892a8;
      --card: #141a26;
      --surface: #1e2638;
      --radius: 24px;
      --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.6);
      --shadow-hover: 0 28px 48px rgba(0, 0, 0, 0.8);
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
      --border-glow: 1px solid rgba(247, 37, 133, 0.2);
    }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- header (dark glass) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(11, 14, 23, 0.8);
      backdrop-filter: blur(18px) saturate(180%);
      -webkit-backdrop-filter: blur(18px) saturate(180%);
      border-bottom: 1px solid rgba(247, 37, 133, 0.15);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 24px;
      letter-spacing: -0.3px;
      color: #fff;
    }
    .brand .accent { color: var(--accent); text-shadow: 0 0 12px var(--accent-glow); }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    nav.main-nav li a i { opacity: 0.7; font-size: 1rem; }
    nav.main-nav li a:hover {
      background: var(--surface);
      color: var(--accent);
      box-shadow: 0 0 16px var(--accent-glow);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      min-width: 200px;
      transition: var(--transition);
      border: 1px solid transparent;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #141a26;
      box-shadow: 0 0 0 4px var(--accent-glow);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
      padding: 8px 0;
      color: #fff;
    }
    .search-wrap input::placeholder { color: var(--muted); }
    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: #0b0e17;
      width: 40px;
      height: 40px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 15px;
      font-weight: 700;
    }
    .search-wrap button:hover {
      background: #fff;
      color: var(--accent);
      box-shadow: 0 0 20px var(--accent-glow);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.2rem;
      color: var(--primary);
      padding: 8px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      width: 44px;
      height: 44px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--accent);
      box-shadow: 0 0 16px var(--accent-glow);
    }
    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #0b0e17;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: inline-grid;
      place-items: center;
      border: 2px solid #0b0e17;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.6rem;
      cursor: pointer;
      color: var(--primary);
      padding: 4px 8px;
    }
    #mobileMenu {
      background: rgba(11, 14, 23, 0.96);
      backdrop-filter: blur(8px);
      border-top: 1px solid rgba(247, 37, 133, 0.15);
    }
    #mobileMenu ul {
      list-style: none;
      padding: 16px 0;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    #mobileMenu ul a {
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
      display: block;
      transition: var(--transition);
      color: var(--primary);
    }
    #mobileMenu ul a:hover {
      background: var(--surface);
      color: var(--accent);
    }

    /* ----- hero (neon) ----- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      background: linear-gradient(145deg, rgba(247, 37, 133, 0.25), rgba(11, 14, 23, 0.9)),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      color: white;
      min-height: 400px;
      padding: 60px 20px;
      border-radius: 0 0 48px 48px;
      margin-bottom: 16px;
      border-bottom: 2px solid var(--accent);
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 3.4rem;
      letter-spacing: -0.02em;
      margin-bottom: 14px;
      line-height: 1.1;
      text-shadow: 0 0 30px var(--accent-glow);
    }
    .hero p {
      opacity: 0.9;
      max-width: 700px;
      margin: 0 auto 28px;
      font-size: 1.2rem;
      color: #cfd9f0;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 14px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 1rem;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
      background: white;
      color: #0b0e17;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      box-shadow: 0 8px 24px rgba(247, 37, 133, 0.5);
    }
    .btn-primary:hover {
      transform: scale(1.02);
      box-shadow: 0 12px 40px rgba(247, 37, 133, 0.7);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.06);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(247, 37, 133, 0.4);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(247, 37, 133, 0.2);
      border-color: var(--accent);
    }

    /* sections */
    .section {
      padding: 56px 0 32px;
    }
    .section-title {
      font-family: 'Poppins', sans-serif;
      font-size: 2.2rem;
      letter-spacing: -0.02em;
      color: #fff;
    }
    .section-sub {
      color: var(--muted);
      margin-top: 6px;
    }
    .title-center {
      text-align: center;
      margin-bottom: 36px;
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 20px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: default;
      border: 1px solid rgba(247, 37, 133, 0.1);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
      box-shadow: 0 0 30px var(--accent-glow);
    }
    .cat-card .icon {
      font-size: 2.4rem;
      color: var(--accent);
      margin-bottom: 10px;
      filter: drop-shadow(0 0 8px var(--accent-glow));
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; color: #fff; }
    .cat-card .muted { color: var(--muted); }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(247, 37, 133, 0.08);
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: #10131f;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 220px;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.02); }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      padding: 4px 16px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.75rem;
      box-shadow: 0 0 20px var(--accent-glow);
    }
    .product-card .body {
      padding: 16px 16px 10px;
      flex: 1;
    }
    .product-card .body h5 {
      font-weight: 600;
      font-size: 1rem;
      color: #fff;
      margin-bottom: 4px;
    }
    .product-card .body .category-tag {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 10px;
    }
    .price-current {
      font-weight: 700;
      font-size: 1.2rem;
      color: var(--accent);
    }
    .price-old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 8px;
    }
    .rating {
      color: #f5b342;
      font-size: 0.9rem;
    }
    .product-card .actions {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--accent);
      color: #fff;
      border: 0;
      padding: 12px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      box-shadow: 0 0 16px rgba(247, 37, 133, 0.2);
    }
    .add-btn:hover {
      background: #fff;
      color: var(--accent);
      box-shadow: 0 0 30px var(--accent-glow);
    }
    .wish-btn {
      background: var(--surface);
      border: 0;
      width: 48px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1.1rem;
      color: var(--primary);
    }
    .wish-btn:hover {
      background: #2a1a2a;
      color: var(--accent);
      box-shadow: 0 0 20px var(--accent-glow);
    }

    /* deal */
    .deal-card {
      display: flex;
      gap: 20px;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      align-items: stretch;
      border: 1px solid rgba(247, 37, 133, 0.15);
    }
    .deal-card img {
      width: 45%;
      object-fit: cover;
      min-height: 260px;
    }
    .deal-content {
      padding: 32px 32px 32px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      color: #fff;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--accent);
      color: #0b0e17;
      padding: 10px 12px;
      border-radius: 16px;
      min-width: 72px;
      text-align: center;
      box-shadow: 0 0 24px var(--accent-glow);
    }
    .time-box div:first-child {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .deal-discount {
      background: #ff4757;
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      min-width: 320px;
      background: var(--card);
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      flex-shrink: 0;
      border: 1px solid rgba(247, 37, 133, 0.08);
    }
    .testimonial-card .rating { margin-bottom: 8px; }
    .testimonial-card p { color: #cfd9f0; }
    .testimonial-card .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 14px;
    }
    .testimonial-card .avatar img {
      width: 44px;
      height: 44px;
      border-radius: 40px;
      object-fit: cover;
      border: 2px solid var(--accent);
    }

    /* newsletter */
    .newsletter-box {
      background: var(--card);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
      border: 1px solid rgba(247, 37, 133, 0.2);
      box-shadow: 0 0 40px rgba(247, 37, 133, 0.05);
    }
    .newsletter-box input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      width: 320px;
      max-width: 100%;
      font-size: 1rem;
      outline: none;
      background: var(--surface);
      color: #fff;
    }
    .newsletter-box input::placeholder { color: var(--muted); }
    .newsletter-box .btn {
      background: var(--accent);
      color: #fff;
      font-weight: 700;
      box-shadow: 0 0 24px var(--accent-glow);
    }
    .newsletter-box .btn:hover {
      background: #fff;
      color: var(--accent);
    }

    /* footer */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid rgba(247, 37, 133, 0.1);
      color: var(--muted);
    }
    footer .icon-btn { color: var(--muted); }
    footer .icon-btn:hover { color: var(--accent); }

    /* responsive */
    @media (max-width: 1100px) {
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .products-grid { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 860px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 140px; }
      .products-grid { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; height: 220px; }
      .deal-content { padding: 24px; }
      .hero h1 { font-size: 2.4rem; }
    }
    @media (max-width: 560px) {
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .products-grid { grid-template-columns: 1fr; }
      .hero h1 { font-size: 1.8rem; }
      .header-inner { gap: 8px; }
      .search-wrap { min-width: 100px; padding: 4px 4px 4px 12px; }
      .brand { font-size: 20px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
    </div>
    <nav class="main-nav" aria-label="Primary">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn" href="#" aria-label="Account"><i class="far fa-user"></i></a>
        <a class="icon-btn" href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
        <a class="cart" href="#" id="cartBtn" aria-label="Cart">
          <i class="fas fa-shopping-cart" style="font-size:1.3rem;"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">About</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="hero">
    <div class="container">
      <h1>New Winter Collection<br />Neon Drops</h1>
      <p>Discover the latest in fashion, tech, and accessories — curated for you. Limited deals & free shipping.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section container" aria-labelledby="cat-title">
    <div class="title-center" id="cat-title">
      <h2 class="section-title">Shop by Category</h2>
      <p class="section-sub">Browse our curated collection</p>
    </div>
    <div class="categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" aria-labelledby="prod-title">
    <div class="title-center" id="prod-title">
      <h2 class="section-title">Trending Products</h2>
      <p class="section-sub">Popular picks based on recent activity</p>
    </div>
    <div class="products-grid" id="productsGrid"></div>
  </section>

  <!-- deals -->
  <section id="deals" class="section container" aria-labelledby="deals-title">
    <div class="title-center" id="deals-title">
      <h2 class="section-title">Flash Sale</h2>
      <p class="section-sub">Limited-time offers</p>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" />
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and powerful — now with M2 performance.</p>
        <div class="timer">
          <div class="time-box"><div id="dealDays">0</div><div style="font-size:0.7rem;opacity:0.8;">Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div style="font-size:0.7rem;opacity:0.8;">Hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div style="font-size:0.7rem;opacity:0.8;">Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div style="font-size:0.7rem;opacity:0.8;">Sec</div></div>
        </div>
        <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
          <div><span class="price-current">$999</span> <span class="price-old">$1,199</span></div>
          <span class="deal-discount">−17%</span>
        </div>
        <p style="margin:8px 0 12px;"><strong>12</strong> items left at this price!</p>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;">Buy Now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container" aria-labelledby="test-title">
    <div class="title-center" id="test-title">
      <h2 class="section-title">What our customers say</h2>
      <p class="section-sub">Real reviews from verified buyers</p>
    </div>
    <div class="testimonial-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="rating">★★★★★</div>
        <p>"Fast shipping and excellent support. Exceeded expectations!"</p>
        <div class="avatar">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" />
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating">★★★★☆</div>
        <p>"Great selection and smooth checkout. Will shop again."</p>
        <div class="avatar">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" />
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section container" aria-labelledby="news-title">
    <div class="newsletter-box">
      <h3 id="news-title" style="font-family:'Poppins',sans-serif;font-size:1.8rem;">Stay in the loop</h3>
      <p style="margin-bottom:18px;">Subscribe for exclusive offers & new arrivals</p>
      <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;">
        <input id="newsletterEmail" type="email" placeholder="Enter your email" required />
        <button class="btn" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;justify-content:space-between;">
    <div>
      <div style="font-weight:700;font-size:1.2rem;color:#fff;">NexusShop</div>
      <p class="muted" style="max-width:280px;margin-top:6px;">Modern e‑commerce demo built with neon vibes.</p>
      <div style="display:flex;gap:12px;margin-top:12px;">
        <a class="icon-btn" href="#"><i class="fab fa-facebook"></i></a>
        <a class="icon-btn" href="#"><i class="fab fa-twitter"></i></a>
        <a class="icon-btn" href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div style="display:flex;gap:40px;flex-wrap:wrap;">
      <div><div style="font-weight:600;color:#fff;">Company</div><div class="muted" style="line-height:1.9;">About<br />Careers<br />Press</div></div>
      <div><div style="font-weight:600;color:#fff;">Support</div><div class="muted" style="line-height:1.9;">Help Center<br />Shipping<br />Contact</div></div>
    </div>
  </div>
  <div style="text-align:center;margin-top:28px;font-size:0.85rem;color:var(--muted);">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
      img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86,
      img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%',
      img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53,
      img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
    { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42,
      img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189,
      img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67,
      img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156,
      img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
  ];

  let cartCount = 0;
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
