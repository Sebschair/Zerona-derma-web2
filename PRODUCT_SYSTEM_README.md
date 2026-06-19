# Zerona Derma - Scalable Product System

## Overview
This is a production-quality, scalable product system for 15 skincare products using a data-driven architecture. All products are managed centrally through a single JSON file, eliminating code duplication.

## File Structure

```
project-root/
├── data/
│   └── products.json              # Central product database (15 products)
├── products/
│   └── product.html              # Template for individual product pages
├── products.html                  # Product listing page
├── js/
│   ├── main.js                    # Global navigation & interactions
│   ├── products.js               # Product listing loader
│   └── product-detail.js         # Product detail page loader
└── css/
    └── styles.css                # All styles (includes product detail CSS)
```

## How It Works

### 1. **Product Data** (`data/products.json`)
All 15 products are stored in a single JSON file with complete information:
- Product ID (slug for URLs)
- Name, category, price
- Short & full descriptions
- Key benefits (array)
- Usage instructions
- Key ingredients
- Product image URL
- Optional badge (Bestseller, New, Gift Set, etc.)

### 2. **Product Listing** (`products.html` + `js/products.js`)
- **Static HTML**: Single responsive grid container
- **Dynamic Loading**: `products.js` fetches `data/products.json` at page load
- **Rendering**: Products are rendered as cards with:
  - Product image
  - Category label
  - Product name
  - Short description (1-2 lines)
  - Price
  - "View Details →" link to product page
- **Responsive Grid**: 
  - 3 columns on desktop
  - 2 columns on tablet
  - 1 column on mobile

### 3. **Product Detail Pages** (`products/product.html` + `js/product-detail.js`)
- **Single Template**: One HTML template serves all 15 products
- **URL-Based**: Product ID passed via query string (`product.html?id=radiance-renewal-serum`)
- **Dynamic Content**: `product-detail.js` loads and displays:
  - Large product image with badge (if any)
  - Category, name, and price
  - Full product description
  - Key benefits (bulleted list)
  - How to use (usage instructions)
  - Key ingredients
  - Related products section (3 random other products)
  - "Back to Products" link for easy navigation

## Design System

All styles use CSS variables from `styles.css` for consistency:

### Colors
```css
--cyan: #12a6c8              /* Accent color */
--dark-blue: #0061af         /* Primary blue */
--medium-blue: #278ec1       /* Secondary blue */
--green: #50b848             /* Success/badge color */
--white: #ffffff
--black: #000000
--gray-100: #f7f9fb          /* Light background */
--gray-200: #e8edf2          /* Borders */
--gray-400: #8a9aab          /* Secondary text */
--gray-600: #4a5568          /* Primary text */
```

### Typography
```css
--font-heading: "Mintage"     /* Elegant serif (titles) */
--font-sub: "Melissa"         /* Stylish sans-serif (subtitles) */
--font-body: "Montserrat"     /* Clean sans-serif (body text) */
```

### Spacing & Layout
```css
--section-padding: clamp(4rem, 8vw, 7rem)
--container: min(1200px, 92vw)
--transition: 0.3s ease
```

## Adding New Products

To add a new product:

1. **Add to `data/products.json`**:
```json
{
  "id": "product-slug",
  "name": "Product Name",
  "category": "Serum",
  "price": 59,
  "badge": "New",
  "shortDesc": "1-2 line description",
  "fullDesc": "Full paragraph description",
  "benefits": [
    "Benefit 1",
    "Benefit 2",
    "Benefit 3"
  ],
  "usage": "Application instructions",
  "ingredients": "Key ingredients list",
  "image": "https://image-url.com/image.jpg"
}
```

2. **Done!** The product will automatically appear on:
   - Product listing page
   - Search/filter (if implemented)
   - Related products on other product pages

## Modifying Existing Products

Simply edit the product object in `data/products.json`. All pages automatically reflect changes on next page load.

## Responsive Design

All pages are mobile-first responsive:

**Desktop (1200px+)**
- Product grid: 3 columns
- Product detail: 2-column layout

**Tablet (768px - 991px)**
- Product grid: 2 columns
- Product detail: Stacked layout

**Mobile (<768px)**
- Product grid: 1 column
- Product detail: Single column
- Touch-friendly buttons and spacing

## Performance Optimizations

✅ **No duplication**: Single JSON source of truth
✅ **Lazy loading**: Products loaded on demand
✅ **Image optimization**: Using query parameters for image sizing
✅ **CSS variables**: Efficient style management
✅ **Smooth transitions**: 0.3s eases for all interactions

## Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- ES6+ JavaScript required
- CSS Grid and Flexbox support required

## Future Enhancements

Consider adding:
- Product filtering by category
- Search functionality
- User reviews/ratings
- Add to cart functionality
- Product variants (sizes, quantities)
- Wishlist feature
- Image gallery with zoom
- Price comparison
- Stock status indicators

## Navigation Flow

```
Home (index.html)
    ↓
Products (products.html)
    ├─→ All 15 products displayed in grid
    └─→ Click "View Details →"
            ↓
        Product Detail Page (products/product.html?id=xxx)
            ├─→ Full product information
            ├─→ Related products section
            └─→ "Back to Products" link
                    ↓
                Return to products.html
```

## Customization

### Change Colors
Edit CSS variables in `css/styles.css` (lines 23-42)

### Change Fonts
Update `@font-face` declarations and `--font-*` variables in `css/styles.css`

### Adjust Grid Layout
Modify `.products-grid` in `css/styles.css`:
```css
.products-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr); /* Change 3 to your preferred number */
  gap: 2rem;
}
```

## Troubleshooting

**Products not showing?**
- Check browser console for errors
- Verify `data/products.json` exists and has valid JSON
- Check CORS if loading from different domain

**Product detail page shows "Product not found"?**
- Verify product ID in URL matches JSON data
- Check that `products/product.html` exists
- Ensure `js/product-detail.js` is loaded

**Styling not applied?**
- Clear browser cache
- Verify `css/styles.css` is linked in HTML
- Check CSS class names match HTML structure

---

**Version**: 1.0  
**Created**: June 2026  
**Built with**: HTML5, CSS3, Vanilla JavaScript  
**Last Updated**: June 19, 2026
