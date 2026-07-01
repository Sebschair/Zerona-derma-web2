// Load and display product details
let allProducts = [];

async function loadProductData() {
  try {
    const response = await fetch('../data/products.json');
    allProducts = await response.json();
    displayProductDetail();
  } catch (error) {
    console.error('Error loading product data:', error);
  }
}

function getProductIdFromUrl() {
  const params = new URLSearchParams(window.location.search);
  return params.get('id');
}

function displayProductDetail() {
  const productId = getProductIdFromUrl();
  const product = allProducts.find(p => p.id === productId);

  if (!product) {
    document.querySelector('main').innerHTML = '<div class="container" style="padding: 4rem 0; text-align: center;"><h1>Product not found</h1></div>';
    return;
  }

  // Update page title and meta
  document.title = `${product.name} | Zerona Derma`;

  // Populate product details
  document.getElementById('detailImage').src = product.image;
  document.getElementById('detailImage').alt = product.name;
  
  if (product.badge) {
    const badge = document.getElementById('detailBadge');
    badge.textContent = product.badge;
    badge.style.display = 'block';
  }

  document.getElementById('detailCategory').textContent = product.category;
  document.getElementById('detailName').textContent = product.name;
  document.getElementById('detailPrice').textContent = `$${product.price.toFixed(2)}`;
  document.getElementById('detailFullDesc').textContent = product.fullDesc;
  document.getElementById('detailUsage').textContent = product.usage;
  document.getElementById('detailIngredients').textContent = product.ingredients;

  // Populate benefits list
  const benefitsList = document.getElementById('benefitsList');
  benefitsList.innerHTML = product.benefits.map(benefit => `<li>${benefit}</li>`).join('');

  // Load related products (3 random products excluding current)
  loadRelatedProducts(productId);
}

function loadRelatedProducts(currentProductId) {
  const related = allProducts
    .filter(p => p.id !== currentProductId)
    .sort(() => Math.random() - 0.5)
    .slice(0, 3);

  const grid = document.getElementById('relatedGrid');
  if (!grid) return;

  grid.innerHTML = related.map(product => `
    <article class="product-card">
      <div class="product-image">
        <img src="${product.image}" alt="${product.name}">
        ${product.badge ? `<span class="product-badge">${product.badge}</span>` : ''}
      </div>
      <div class="product-info">
        <p class="product-category">${product.category}</p>
        <h2 class="product-name">${product.name}</h2>
        <p class="product-desc">${product.shortDesc}</p>
        <div class="product-footer">
          <span class="product-price">$${product.price.toFixed(2)}</span>
          <a href="products/product.html?id=${product.id}" class="product-link">View Details →</a>
        </div>
      </div>
    </article>
  `).join('');
}

document.addEventListener('DOMContentLoaded', loadProductData);
