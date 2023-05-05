
# E-commerce Website built with Laravel

This is an e-commerce website built using the Laravel framework. It provides basic functionality such as product listing, adding items to cart, checkout process, and order history. The project also includes authentication and authorization for both customers and admin users.


## Features
- User authentication (register, login)
- Admin authentication (login)
- Product listing with search functionality
- Product details page with related products
- Add items to cart
- Cart management (add, update, remove)
- Checkout process with order summary
- Order history for authenticated users
- Admin dashboard with order management and product management
- Admin can add, edit, and delete products
- Admin can view and manage orders
  
## Installation

To run this project on your local machine, follow the steps below:

1. Clone the repository to your local machine using the command:
```bash
  git clone https://github.com/canatatekirdagli/E-commerceWebsite-Laravel.git
```

2. Navigate to the project directory:
```bash
  cd E-commerceWebsite-Laravel
```
3. Install the dependencies:
```bash
  composer install
```
4. Create a new .env file by copying the .env.example file:
```bash
  cp .env.example .env
```
5. Generate a new application key:
```bash
  php artisan key:generate
```
6. Set up your database connection in the .env file:
```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_username
DB_PASSWORD=your_database_password
```
7. Run the database migrations:
```bash
  php artisan migrate
```
8. Seed the database with sample data:
```bash
  php artisan db:seed
```
9. Start the development server:
```bash
  php artisan serve
```
The project should now be running on http://localhost:8000.

  
## Usage

To use the e-commerce website, you can either register a new account as a customer or log in as an admin user.

User:

As a customer, you can:
- Browse the list of products by clicking the "Products" link in the navigation menu.
- Click on a product to view its details and add it to your cart.
- View your cart by clicking on the "Cart" link in the navigation menu. 
- Proceed to checkout by clicking on the "Checkout" button in the cart. 
- View your order history by clicking on the "Orders" link in the navigation menu. Here, you can see the status of your orders and view details about each one.

Admin: 

As an admin user, you can:

- View the list of orders by clicking the "Orders" link in the navigation menu. Here, you can filter orders by status and view details about each one.
- View the list of products by clicking the "Products" link in the navigation menu. Here, you can add, edit, or delete products.

## Lisans
This project was created by [Can Ata Tekirdağlı](https://github.com/canatatekirdagli). It is licensed under the
[MIT License.](https://choosealicense.com/licenses/mit/)

  
