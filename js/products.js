// Load products from JSON and render them
async function loadProducts() {
  try {
    const response = await fetch('../data/products.json');
    const products = await response.json();
    renderProducts(products);
  } catch (error) {
    console.error('Error loading products:', error);
  }
}

function renderProducts(products) {
  const grid = document.getElementById('productsGrid');
  if (!grid) return;

  grid.innerHTML = products.map(product => `
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
          <a href="product.html?id=${product.id}" class="product-link">View Details →</a>
        </div>
      </div>
    </article>
  `).join('');
}

document.addEventListener('DOMContentLoaded', loadProducts);
