// Fetch inventory data from Flask API
function fetchInventory() {
    fetch('/api/products')
        .then(response => response.json())
        .then(data => {
            displayInventory(data);
        })
        .catch(error => {
            console.error('Error fetching inventory:', error);
        });
}

// Display inventory cards
function displayInventory(inventory) {
    const inventoryGrid = document.getElementById('inventoryGrid');
    inventoryGrid.innerHTML = ''; // Clear previous content

    inventory.forEach(item => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
            <img src="${item.image_path || '/pictures/default.jpg'}" alt="${item.product_name}" class="product-image">
            <div class="product-info">
                <div class="product-details">
                    <h3>${item.product_name}</h3>
                    <p class="product-price">${item.price} PKR</p>
                    <p class="product-category">${item.category}</p>
                </div>
                <i class="fas fa-chevron-right chevron-right"></i>
            </div>
        `;
        
        card.addEventListener('click', () => showProductDetails(item));
        inventoryGrid.appendChild(card);
    });
}

// Show product details in modal
function showProductDetails(product) {
    const modal = document.getElementById('productModal');
    const modalBody = modal.querySelector('.modal-body');

    modalBody.innerHTML = `
        <div class="product-detail-header">
            <img src="${product.image_path || '/pictures/default.jpg'}" alt="${product.product_name}" class="product-detail-image">
            <div class="product-detail-info">
                <h2>${product.product_name}</h2>
                <div class="product-detail-meta">
                    <div class="meta-item"><span class="meta-label">Price:</span><span class="meta-value">${product.price} PKR</span></div>
                    <div class="meta-item"><span class="meta-label">Category:</span><span class="meta-value">${product.category}</span></div>
                    <div class="meta-item"><span class="meta-label">Stock:</span><span class="meta-value">${product.stock_quantity} units</span></div>
                    <div class="meta-item"><span class="meta-label">Brand:</span><span class="meta-value">${product.brand}</span></div>
                    <div class="meta-item"><span class="meta-label">Expiry Date:</span><span class="meta-value">${product.expiry_date}</span></div>
                </div>
            </div>
        </div>
    `;

    modal.style.display = 'block';

    // Close modal on close button
    const closeBtn = modal.querySelector('.close-modal');
    closeBtn.onclick = () => modal.style.display = 'none';

    // Close modal on outside click
    window.onclick = (event) => {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    };
}

// On page load
document.addEventListener('DOMContentLoaded', () => {
    fetchInventory();
});

// Add expiry products to order function
async function addExpiryProductsToOrder() {
    try {
        const response = await fetch('/api/expiry_products_week');
        const expiryProducts = await response.json();
        
        if (expiryProducts.error) {
            alert('Error fetching expiry products: ' + expiryProducts.error);
            return;
        }
        
        if (expiryProducts.length === 0) {
            alert('No products expiring within a week found.');
            return;
        }
        
        // Store in sessionStorage and redirect to order page
        sessionStorage.setItem('expiryProductsToAdd', JSON.stringify(expiryProducts));
        
        // Show confirmation and redirect
        const confirmMsg = `Found ${expiryProducts.length} products expiring within a week.\nRedirect to order page to add them to cart?`;
        if (confirm(confirmMsg)) {
            window.location.href = '/order';
        }
        
    } catch (error) {
        console.error('Error adding expiry products to order:', error);
        alert('Error processing request. Please try again.');
    }
}

// Add predicted products to order function
async function addPredictedProductsToOrder() {
    try {
        const response = await fetch('/api/predicted_products_for_order');
        const predictedProducts = await response.json();
        
        if (predictedProducts.error) {
            alert('Error fetching predicted products: ' + predictedProducts.error);
            return;
        }
        
        if (predictedProducts.length === 0) {
            alert('No predicted restock products found.');
            return;
        }
        
        // Store in sessionStorage and redirect to order page
        sessionStorage.setItem('predictedProductsToAdd', JSON.stringify(predictedProducts));
        
        // Show confirmation and redirect
        const confirmMsg = `Found ${predictedProducts.length} products predicted for restock.\nRedirect to order page to add them to cart?`;
        if (confirm(confirmMsg)) {
            window.location.href = '/order';
        }
        
    } catch (error) {
        console.error('Error adding predicted products to order:', error);
        alert('Error processing request. Please try again.');
    }
}
