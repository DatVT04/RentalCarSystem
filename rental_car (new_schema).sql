create database rental_car
GO

USE rental_car;
GO

-- Users table
CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) UNIQUE NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    password_hash NVARCHAR(255) NOT NULL,
    full_name NVARCHAR(100) NOT NULL,
    gender NVARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) NOT NULL,
    mobile NVARCHAR(20),
    avatar NVARCHAR(255),
    role NVARCHAR(20) CHECK (role IN ('admin', 'sale', 'owner', 'customer')) NOT NULL,
    status NVARCHAR(20) CHECK (status IN ('active', 'inactive', 'pending')) DEFAULT 'pending',
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

-- User addresses table
CREATE TABLE user_addresses (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    recipient_name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20) NOT NULL,
    address NVARCHAR(MAX) NOT NULL,
    is_default BIT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Categories table
CREATE TABLE categories (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(MAX),
    parent_id INT NULL,
    level INT NOT NULL DEFAULT 1,
    status NVARCHAR(20) CHECK (status IN ('active', 'inactive')) DEFAULT 'active',
    FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE NO ACTION
);
GO


-- cars table
CREATE TABLE cars (
    id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    description NVARCHAR(MAX),
    original_price DECIMAL(10,2) NOT NULL,
    sale_price DECIMAL(10,2) NOT NULL,
    thumbnail NVARCHAR(255),
    status NVARCHAR(20) CHECK (status IN ('active', 'inactive', 'EOStock')) DEFAULT 'EOStock',
    is_combo BIT DEFAULT 0,
    combo_group_id NVARCHAR(50),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- car images table
CREATE TABLE car_images (
    id INT IDENTITY(1,1) PRIMARY KEY,
    car_id INT NOT NULL,
    image_url NVARCHAR(255) NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);


CREATE TABLE car_sizes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    car_id INT NOT NULL,
    size NVARCHAR(20) NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE car_colors (
    id INT IDENTITY(1,1) PRIMARY KEY,
    car_id INT NOT NULL,
    color NVARCHAR(50) NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

-- car variants table (for sizes and colors)
CREATE TABLE car_variants (
    id INT IDENTITY(1,1) PRIMARY KEY,
    car_id INT NOT NULL,
    size_id INT NOT NULL,
    color_id INT NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    last_restock_date DATETIME2 NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (size_id) REFERENCES car_sizes(id),
    FOREIGN KEY (color_id) REFERENCES car_colors(id)
);

-- Orders table
CREATE TABLE orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT, -- ID ng??i dùng (NULL n?u là khách vãng lai)
    status NVARCHAR(20) CHECK (status IN ('pending_pay','pending', 'processing', 'shipping', 'completed', 'returned', 'cancelled')) NOT NULL DEFAULT 'pending',
    total_amount DECIMAL(10,2) NOT NULL,
    recipient_name NVARCHAR(100) NOT NULL,
    recipient_email NVARCHAR(100) NOT NULL,
    recipient_phone NVARCHAR(20) NOT NULL,
    recipient_address NVARCHAR(MAX) NOT NULL,
	shipping_code NVARCHAR(MAX),
	shiping_name NVARCHAR(MAX),
    notes NVARCHAR(MAX),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- Order items table
CREATE TABLE order_items (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    car_id INT,
    car_name NVARCHAR(255) NOT NULL,
    car_image NVARCHAR(255),
    variant_name NVARCHAR(255),
    quantity INT NOT NULL,
    unit_price_at_order DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE TABLE order_history (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    updated_by INT NOT NULL,
    status NVARCHAR(20) CHECK (status IN ('pending_pay', 'pending', 'processing', 'shipping', 'completed', 'returned', 'cancelled')),
    notes NVARCHAR(MAX),
    updated_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (updated_by) REFERENCES users(id)
);

-- Feedback table
CREATE TABLE feedback (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_item_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment NVARCHAR(MAX),
    status VARCHAR(20) CHECK (status IN ('pending', 'approved', 'rejected')) DEFAULT 'pending',
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (order_item_id) REFERENCES order_items(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE feedback_images (
    id INT IDENTITY(1,1) PRIMARY KEY,
    feedback_id INT NOT NULL,
    image_url NVARCHAR(255) NOT NULL,
    created_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (feedback_id) REFERENCES feedback(id)
);


CREATE TABLE feedback_reply (
    id INT IDENTITY(1,1) PRIMARY KEY,
    feedback_id INT NOT NULL, 
    user_id INT NOT NULL, 
    comment NVARCHAR(MAX) NOT NULL,
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (feedback_id) REFERENCES feedback(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);


-- Customer contact history table
CREATE TABLE customer_contact_history (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NULL,
    customer_type NVARCHAR(20) CHECK (customer_type IN ('normal', 'vip')) DEFAULT 'normal',
    email NVARCHAR(100) NOT NULL,
    full_name NVARCHAR(100) NOT NULL,
    gender NVARCHAR(10) CHECK (gender IN ('male', 'female', 'other')) NOT NULL,
    mobile NVARCHAR(20),
    
    total_purchases INT DEFAULT 0,
    total_spend DECIMAL(10,2) DEFAULT 0,
    updated_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);


create table tokenPassword (
	id int identity(1,1) primary key,
	token varchar(255) not null,
	expiryTime DATETIME NOT NULL,
	isUsed bit NOT NULL,
	UserID int NOT NULL,
	Foreign key (UserID) references users(id)
)

CREATE TABLE cart (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NULL,  -- NULL n?u là khách vãng lai
    created_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE cart_items (
    id INT IDENTITY(1,1) PRIMARY KEY,
    cart_id INT NOT NULL,
    car_id INT NOT NULL,
    variant_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    FOREIGN KEY (cart_id) REFERENCES cart(id),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (variant_id) REFERENCES car_variants(id)
);

CREATE TABLE payments (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    payment_method NVARCHAR(50) CHECK (payment_method IN ('in_store','bank_transfer', 'cod')) NOT NULL,
    payment_status NVARCHAR(20) CHECK (payment_status IN ('pending', 'completed', 'failed', 'refunded')) DEFAULT 'pending',
    transaction_id NVARCHAR(255),
    created_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);


CREATE TABLE shipping (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    shipping_provider NVARCHAR(100) NOT NULL,
    tracking_number NVARCHAR(100) UNIQUE,
    estimated_delivery DATE,
    delivered_at DATETIME2,
    FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE TABLE messages (
    id INT IDENTITY(1,1) PRIMARY KEY,
    sender_id INT NOT NULL, -- ID c?a ng??i g?i (t? b?ng users)
    receiver_id INT NOT NULL, -- ID c?a ng??i nh?n (t? b?ng users)
    content NVARCHAR(MAX), -- N?i dung tin nh?n
    image_url NVARCHAR(255), -- ???ng d?n ?nh n?u có
    is_read BIT DEFAULT 0, -- Tr?ng thái ?ã ??c (0: ch?a ??c, 1: ?ã ??c)
    created_at DATETIME2 DEFAULT GETDATE(),
    FOREIGN KEY (sender_id) REFERENCES users(id),
    FOREIGN KEY (receiver_id) REFERENCES users(id)
);
GO

-- Index ?? t?i ?u hóa tìm ki?m tin nh?n
CREATE INDEX idx_messages_sender_receiver ON messages(sender_id, receiver_id, created_at);
GO