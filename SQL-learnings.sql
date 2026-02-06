CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phoneno VARCHAR(15) NOT NULL UNIQUE
);
INSERT INTO customer (firstname, lastname, email, phoneno) VALUES
('Meet','Bataviya','meet.bataviya@gmail.com','9876543201'),
('Rahul','Sharma','rahul.sharma@gmail.com','9876543202'),
('Amit','Patel','amit.patel@gmail.com','9876543203'),
('Neha','Verma','neha.verma@gmail.com','9876543204'),
('Priya','Singh','priya.singh@gmail.com','9876543205'),
('Karan','Mehta','karan.mehta@gmail.com','9876543206'),
('Anjali','Desai','anjali.desai@gmail.com','9876543207'),
('Rohit','Agarwal','rohit.agarwal@gmail.com','9876543208'),
('Sneha','Iyer','sneha.iyer@gmail.com','9876543209'),
('Vikas','Gupta','vikas.gupta@gmail.com','9876543210'),
('Pooja','Nair','pooja.nair@gmail.com','9876543211'),
('Suresh','Reddy','suresh.reddy@gmail.com','9876543212'),
('Nikhil','Joshi','nikhil.joshi@gmail.com','9876543213'),
('Divya','Malhotra','divya.malhotra@gmail.com','9876543214'),
('Arjun','Kapoor','arjun.kapoor@gmail.com','9876543215'),
('Kavita','Chopra','kavita.chopra@gmail.com','9876543216'),
('Manish','Bansal','manish.bansal@gmail.com','9876543217'),
('Ayesha','Khan','ayesha.khan@gmail.com','9876543218'),
('Sanjay','Mishra','sanjay.mishra@gmail.com','9876543219'),
('Ritu','Saxena','ritu.saxena@gmail.com','9876543220'),
('Deepak','Yadav','deepak.yadav@gmail.com','9876543221'),
('Simran','Kaur','simran.kaur@gmail.com','9876543222'),
('Mohit','Arora','mohit.arora@gmail.com','9876543223'),
('Payal','Jain','payal.jain@gmail.com','9876543224'),
('Ashish','Tiwari','ashish.tiwari@gmail.com','9876543225'),
('Mehul','Shah','mehul.shah@gmail.com','9876543226'),
('Bhavna','Pandey','bhavna.pandey@gmail.com','9876543227'),
('Gaurav','Singhal','gaurav.singhal@gmail.com','9876543228'),
('Komal','Thakur','komal.thakur@gmail.com','9876543229'),
('Ankit','Srivastava','ankit.srivastava@gmail.com','9876543230'),
('Tanvi','Kulkarni','tanvi.kulkarni@gmail.com','9876543231'),
('Rakesh','Lal','rakesh.lal@gmail.com','9876543232'),
('Shreya','Bose','shreya.bose@gmail.com','9876543233'),
('Harsh','Vardhan','harsh.vardhan@gmail.com','9876543234'),
('Isha','Mittal','isha.mittal@gmail.com','9876543235'),
('Naveen','Kumar','naveen.kumar@gmail.com','9876543236'),
('Swati','Goyal','swati.goyal@gmail.com','9876543237'),
('Pranav','Kulkarni','pranav.k@gmail.com','9876543238'),
('Rina','Mukherjee','rina.m@gmail.com','9876543239'),
('Aditya','Rana','aditya.rana@gmail.com','9876543240'),
('Sonali','Pillai','sonali.p@gmail.com','9876543241'),
('Varun','Sethi','varun.sethi@gmail.com','9876543242'),
('Mitali','Das','mitali.d@gmail.com','9876543243'),
('Kunal','Malik','kunal.malik@gmail.com','9876543244'),
('Nisha','Bhatt','nisha.bhatt@gmail.com','9876543245'),
('Rohini','Sawant','rohini.s@gmail.com','9876543246'),
('Akash','Chauhan','akash.ch@gmail.com','9876543247'),
('Tanya','Roy','tanya.roy@gmail.com','9876543248'),
('Sameer','Ali','sameer.ali@gmail.com','9876543249'),
('Preeti','Sood','preeti.sood@gmail.com','9876543250');


CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL
);

INSERT INTO product (product_name, category, unit_price) VALUES
('iPhone 14','Electronics',69999),
('Samsung Galaxy S23','Electronics',64999),
('OnePlus Nord CE','Electronics',24999),
('Dell Inspiron Laptop','Electronics',55999),
('HP Wireless Mouse','Electronics',1299),
('Sony Headphones','Electronics',3999),
('Men Cotton Shirt','Clothing',1499),
('Women Kurti','Clothing',1799),
('Blue Denim Jeans','Clothing',2499),
('Sports T-Shirt','Clothing',999),
('Nike Running Shoes','Sports',5999),
('Adidas Sports Shoes','Sports',6499),
('Yoga Mat','Sports',899),
('Cricket Bat','Sports',2999),
('Badminton Racket','Sports',1999),
('Office Chair','Home',7499),
('Study Table','Home',5999),
('LED Desk Lamp','Home',1299),
('Water Bottle Steel','Home',799),
('Mixer Grinder','Home',4999),
('Atomic Habits','Books',499),
('Rich Dad Poor Dad','Books',399),
('Think Like a Monk','Books',450),
('Python Programming','Books',799),
('SQL for Data Analysis','Books',899),
('Bluetooth Speaker','Electronics',3499),
('Smart Watch','Electronics',4999),
('Power Bank','Electronics',1999),
('Air Fryer','Home',8999),
('Induction Cooktop','Home',3499),
('Leather Wallet','Accessories',1299),
('Sunglasses','Accessories',1999),
('Backpack','Accessories',2499),
('Laptop Sleeve','Accessories',999),
('Formal Shoes','Footwear',3999),
('Casual Sneakers','Footwear',2999),
('Sandals','Footwear',1499),
('Heels','Footwear',2499),
('Hair Dryer','Personal Care',2299),
('Trimmer','Personal Care',1899),
('Face Wash','Personal Care',299),
('Body Lotion','Personal Care',399),
('Shampoo','Personal Care',499),
('Conditioner','Personal Care',549),
('Protein Powder','Health',3499),
('Multivitamin','Health',799),
('Whey Isolate','Health',4999),
('Green Tea','Health',599),
('Almonds 1kg','Grocery',899),
('Olive Oil 1L','Grocery',1299);


CREATE TABLE location (
    location_id SERIAL PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);

INSERT INTO location (city, state, country) VALUES
('Ahmedabad','Gujarat','India'),
('Surat','Gujarat','India'),
('Vadodara','Gujarat','India'),
('Rajkot','Gujarat','India'),
('Mumbai','Maharashtra','India'),
('Pune','Maharashtra','India'),
('Nagpur','Maharashtra','India'),
('Nashik','Maharashtra','India'),
('Delhi','Delhi','India'),
('New Delhi','Delhi','India'),
('Noida','Uttar Pradesh','India'),
('Ghaziabad','Uttar Pradesh','India'),
('Lucknow','Uttar Pradesh','India'),
('Kanpur','Uttar Pradesh','India'),
('Jaipur','Rajasthan','India'),
('Udaipur','Rajasthan','India'),
('Jodhpur','Rajasthan','India'),
('Kota','Rajasthan','India'),
('Bengaluru','Karnataka','India'),
('Mysuru','Karnataka','India'),
('Mangaluru','Karnataka','India'),
('Chennai','Tamil Nadu','India'),
('Coimbatore','Tamil Nadu','India'),
('Madurai','Tamil Nadu','India'),
('Hyderabad','Telangana','India'),
('Warangal','Telangana','India'),
('Vijayawada','Andhra Pradesh','India'),
('Visakhapatnam','Andhra Pradesh','India'),
('Kochi','Kerala','India'),
('Trivandrum','Kerala','India'),
('Thrissur','Kerala','India'),
('Kolkata','West Bengal','India'),
('Howrah','West Bengal','India'),
('Siliguri','West Bengal','India'),
('Patna','Bihar','India'),
('Gaya','Bihar','India'),
('Ranchi','Jharkhand','India'),
('Dhanbad','Jharkhand','India'),
('Bhopal','Madhya Pradesh','India'),
('Indore','Madhya Pradesh','India'),
('Raipur','Chhattisgarh','India'),
('Bilaspur','Chhattisgarh','India'),
('Chandigarh','Chandigarh','India'),
('Amritsar','Punjab','India'),
('Ludhiana','Punjab','India'),
('Dehradun','Uttarakhand','India'),
('Haridwar','Uttarakhand','India'),
('Shimla','Himachal Pradesh','India'),
('Panaji','Goa','India'),
('Margao','Goa','India');

-- TRUNCATE TABLE customer RESTART IDENTITY;


CREATE TABLE fact_sales (
    sales_id SERIAL PRIMARY KEY,

    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    location_id INT NOT NULL,

    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price NUMERIC(10,2) NOT NULL CHECK (unit_price > 0),
    total_amount NUMERIC(12,2) NOT NULL,

    sales_date DATE NOT NULL,

    -- Foreign Keys
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES product(product_id),

    CONSTRAINT fk_location
        FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);

INSERT INTO fact_sales
(customer_id, product_id, location_id, quantity, unit_price, total_amount, sales_date)
VALUES
(1, 1, 1, 1, 69999, 69999, '2024-01-05'),
(2, 3, 5, 2, 24999, 49998, '2024-01-06'),
(3, 7, 10, 3, 1499, 4497, '2024-01-07'),
(4, 12, 15, 1, 6499, 6499, '2024-01-08'),
(5, 20, 8, 2, 4999, 9998, '2024-01-09'),
(6, 25, 20, 1, 899, 899, '2024-01-10'),
(7, 30, 25, 1, 3499, 3499, '2024-01-11'),
(8, 18, 12, 2, 1299, 2598, '2024-01-12'),
(9, 40, 30, 1, 2299, 2299, '2024-01-13'),
(10, 15, 35, 3, 1999, 5997, '2024-01-14'),
(11, 5, 2, 2, 1299, 2598, '2024-01-15'),
(12, 9, 7, 1, 2499, 2499, '2024-01-16'),
(13, 22, 18, 4, 399, 1596, '2024-01-17'),
(14, 28, 22, 1, 1999, 1999, '2024-01-18'),
(15, 33, 28, 2, 2499, 4998, '2024-01-19'),
(16, 17, 11, 1, 5999, 5999, '2024-01-20'),
(17, 44, 40, 3, 549, 1647, '2024-01-21'),
(18, 46, 42, 1, 799, 799, '2024-01-22'),
(19, 48, 45, 2, 599, 1198, '2024-01-23'),
(20, 50, 50, 1, 1299, 1299, '2024-01-24'),
(21, 6, 3, 1, 3999, 3999, '2024-01-25'),
(22, 14, 9, 2, 2999, 5998, '2024-01-26'),
(23, 19, 16, 1, 799, 799, '2024-01-27'),
(24, 24, 19, 1, 799, 799, '2024-01-28'),
(25, 31, 24, 3, 1299, 3897, '2024-01-29'),
(26, 36, 27, 1, 2999, 2999, '2024-01-30'),
(27, 41, 31, 2, 299, 598, '2024-01-31'),
(28, 43, 33, 1, 499, 499, '2024-02-01'),
(29, 47, 38, 2, 4999, 9998, '2024-02-02'),
(30, 10, 14, 4, 999, 3996, '2024-02-03'),
(31, 21, 17, 1, 499, 499, '2024-02-04'),
(32, 29, 21, 1, 8999, 8999, '2024-02-05'),
(33, 32, 23, 2, 1999, 3998, '2024-02-06'),
(34, 38, 26, 1, 2499, 2499, '2024-02-07'),
(35, 45, 29, 3, 3499, 10497, '2024-02-08'),
(36, 8, 6, 1, 1799, 1799, '2024-02-09'),
(37, 11, 4, 2, 5999, 11998, '2024-02-10'),
(38, 16, 13, 1, 7499, 7499, '2024-02-11'),
(39, 26, 32, 2, 3499, 6998, '2024-02-12'),
(40, 34, 34, 1, 999, 999, '2024-02-13'),
(41, 42, 36, 3, 399, 1197, '2024-02-14'),
(42, 49, 37, 1, 899, 899, '2024-02-15'),
(43, 13, 41, 2, 450, 900, '2024-02-16'),
(44, 27, 43, 1, 4999, 4999, '2024-02-17'),
(45, 35, 44, 1, 3999, 3999, '2024-02-18'),
(46, 39, 46, 1, 1899, 1899, '2024-02-19'),
(47, 23, 47, 3, 450, 1350, '2024-02-20'),
(48, 4, 48, 1, 55999, 55999, '2024-02-21'),
(49, 2, 49, 2, 64999, 129998, '2024-02-22'),
(50, 1, 50, 1, 69999, 69999, '2024-02-23');

-- data done

select * from customer;
select * from product;
select * from fact_sales;
select * from location;

-- 1. List all sales with customer full name, product name, and sales date.

select concat_ws(' ',c.firstname,c.lastname)as full_name ,
p.product_name,
s.sales_date
from fact_sales s
inner join customer c on c.customer_id = s.customer_id
inner join product p on p.product_id = s.product_id
order by s.sales_date

-- 2. Show total amount spent by each customer.

select c.customer_id, concat_ws(' ',c.firstname,c.lastname)as full_name ,
sum(s.total_amount)as total_spending from customer c
inner join fact_sales s on c.customer_id = s.customer_id 
group by c.customer_id
order by total_spending

-- 3. Display product name and total quantity sold.

select p.product_name,sum(s.quantity)as total_quantity from product p
inner join fact_sales s on p.product_id = s.product_id
group by p.product_name
order by total_quantity 

-- 4. Show city-wise total sales amount

select l.city,sum(s.total_amount)as total_sales from location l
inner join fact_sales s on l.location_id = s.location_id
group by l.city
order by total_sales

-- 5. List all sales where the product category is 'Electronics'.

select
    s.sales_id,
    p.product_name,
    p.category,
    s.total_amount,
    s.sales_date
from fact_sales s
join product p
    on s.product_id = p.product_id
where p.category = 'Electronics';


-- 6. Find top 5 customers by total spending.

select c.customer_id, concat_ws(' ',c.firstname,c.lastname)as full_name ,
sum(s.total_amount)as total_spending from customer c
inner join fact_sales s on c.customer_id = s.customer_id 
group by c.customer_id ,full_name
order by total_spending desc
limit 5

-- 7. Show total revenue by product category.
select p.category,sum(s.total_amount) total_revenue from product p
inner join fact_sales s on p.product_id =s.product_id
group by p.category
order by total_revenue desc

-- 8. Find total sales amount per state.

select l.state,sum(s.total_amount)as total_sales from location l
inner join fact_sales s on l.location_id = s.location_id
group by l.state
order by total_sales

-- 9. Display customers who purchased more than 3 items in a single transaction.

select c.customer_id, concat_ws(' ',c.firstname,c.lastname) as full_name,s.quantity
from customer c
inner join fact_sales s on c.customer_id = s.customer_id 
where s.quantity>3

-- 10. Find products that were never sold.

select p.product_id, p.product_name from product p
left join fact_sales s on p.product_id = s.product_id
where s.product_id is null


-- 11. Find customer-wise total revenue and number of orders.

select
    c.customer_id,
    concat_ws(' ',c.firstname,c.lastname) as full_name,
    count(s.sales_id) as number_of_orders,
    sum(s.total_amount) as total_revenue
from customer c
join fact_sales s
    on c.customer_id = s.customer_id
group by c.customer_id, c.firstname, c.lastname;


-- 12. Show city and product category combination with highest sales.

select l.city,p.category,sum(s.total_amount) as highest_sales from fact_sales s
inner join location l on l.location_id = s.location_id
inner join product p on p.product_id = s.product_id
group by l.city,p.category
order by highest_sales desc
limit 1

-- 13. Find top-selling product in each category.

select product_name, category, total_revenue
from (
    select
        p.product_name,
        p.category,
        sum(s.total_amount) as total_revenue,
        rank() over (partition by p.category order by sum(s.total_amount) desc) as rnk
    from product p
    join fact_sales s
        on p.product_id = s.product_id
    group by p.product_name, p.category
) t
where rnk = 1;


-- 14. Identify customers who bought from more than one city.

select c.customer_id,concat_ws(' ',c.firstname,c.lastname)as fullname
from fact_sales s
inner join customer c on c.customer_id = s.customer_id
inner join location l on l.location_id = s.location_id
group  by c.customer_id, c.firstname, c.lastname
having count(distinct l.city)>1

-- 15. Find locations where total sales exceed ₹50,000.

select
    l.location_id,
    l.city,
    sum(s.total_amount) as total_sales
from fact_sales s
join location l
    on l.location_id = s.location_id
group by l.location_id, l.city
having sum(s.total_amount) > 50000
order by total_sales desc;

