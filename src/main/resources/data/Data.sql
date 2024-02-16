--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

-- Started on 2024-02-16 22:10:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2846 (class 0 OID 33158)
-- Dependencies: 201
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- DELETE FROM customers;

INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (1, '0001', '017000000000', 'rasel@gmail.com', 'Rasel Ahmed', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (2, '0002', '017000000001', 'arif@gmail.com', 'Ariful Islam', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (4, '0004', '017000000004', 'arafat@gmail.com', 'Arafat Rahman', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (3, '0003', '017000000002', 'aminul@gmail.com', 'Aminul Islam', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (5, '0054', '017000000005', 'saad@gmail.com', 'Saad', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (6, '006', '017000000006', 'junaid@gmail.com', 'Junaid', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (7, '007', '017000000007', 'danish@gmail.com', 'Danish', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (8, '008', '017000000008', 'sammer@gmail.com', 'Sameer', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (9, '009', '017000000009', 'maaz@gmail.com', 'Maaz', 'Dhaka');
INSERT INTO public.customers (id, code, phone, email, name, address) VALUES (10, '010', '017000000010', 'Haider@gmail.com', 'Haider', 'Dhaka');


--
-- TOC entry 2848 (class 0 OID 33172)
-- Dependencies: 203
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

--DELETE FROM menu_items;

INSERT INTO public.menu_items (price, id, code, name, description) VALUES (425.00, 1, '001', 'Ghorer Khabar', 'Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal, Mixed Vegetable Bhaji and choice of Chicken (Local) or Beef Bhuna.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (400.00, 2, '002', 'Bhorta Bahar', 'Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal and your choice of five Bhrota. Choose any five-Begun Bhorta, Aloo Bhorta, Daal Bhorta, Egg Bhorta, Chingri Bhorta, Shutki Bhorta, Mach Bhorta, Sheem Bhorta, Barbati Bhorta, Patal Bhorta, Tomato Bhorta.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (450.00, 4, '004', 'Luchi Kabab', 'Luchi/Parata, Aloo Dum/ Daal Bhuna, served with Special Haadi Kabab and Onion Salad. This Delicios meal also includes Gajorer/Sujir Halwa.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (425.00, 5, '005', 'Khichuri Khazana', 'Moog Daal er Bhuna Khichuri, Served with Begun Bhaja( Fried Brinjal), Mach Bhaja (Fish Fry), Egg Masala Omlette /Egg Bhuna and choice of Chicken (Local) or Beef Bhuna. This Menu comes with Salad, Caramal Pudding/ Roshogolla and Tea/Coffee.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (600.00, 6, '006', 'Pulao Korma/Roast', 'Best Quality Kalijeera Rice Pulao served with Chicken Korma / Roast, Rui Bhaja, Mixed Vegetable.This Menu comes with Salad, Caramal Pudding/ Roshogolla and Tea/Coffee.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (600.00, 7, '007', 'Pulao Gosht', 'Best Quality Kalijeera Rice Pulao served with Beef Bhuna / Jhal Gosht , Rui Bhaja, Mixed Vegetable.This Menu comes with Salad, Caramal Pudding/ Roshogolla and Tea/Coffee.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (600.00, 8, '008', 'Morogh Pulao', 'Best Quality Kalijeera Rice Pulao cooked with local chicken served with Shammi Kabab Mixed Vegetable.This Menu comes with Salad, Caramal Pudding/ Roshogolla and Tea/Coffee.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (600.00, 9, '009', 'Beef Tehari', 'Best Quality Kalijeera Rice Beef Tehari served with Aloo Keema Chop, Mixed Vegetable. This Menu comes with Salad, Caramal Pudding/ Roshogolla and Tea/Coffee.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (750.00, 10, '010', 'Pulao Mutton Rezala', 'Best Quality Kalijeera Rice Pulao served with Mutton Rezala, Shammi Kabab, Mixed Vegetable.This Menu comes with Salad, Caramal Pudding/ Roshogolla and Tea/Coffee.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (350.00, 11, '011', 'Kids Menu', 'Kid’s portion of Plain Pulao, chicken korma, Beef Chop served with French Fries. This Menu comes with vanilla ice cream.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (750.00, 12, '012', 'BBQ Night', 'Luchi/Parata, Butter Chicken served with BBQ Chichen Tandoori/Beef Shikh Kababa fresh from barbeque. This menu comes with salad, Firni /Gurer Payesh and your choice of Canned Beverage.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (25.00, 13, '013', 'Chapati', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (400.00, 3, '003', 'Mach a Bhat a', 'Fine Quality Steamed Rice (Katari bhog/Nazirshal), served with Thick Daal, Mixed Vegetable Bhaji and choice of Rui/Katal/ Illish Bhaji or Bhuna.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (60.00, 14, '014', 'Shami Kabab', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (50.00, 15, '015', 'Aloor Chop', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (125.00, 16, '016', 'Chicken bhuna', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (125.00, 17, '017', 'Beef bhuna', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (55.00, 18, '018', 'Egg Curry', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (70.00, 19, '019', 'Egg Daal Curry', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (55.00, 20, '020', 'Shutki', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (50.00, 21, '021', 'Balachao', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (50.00, 22, '022', 'Mixed Pickle', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (50.00, 23, '023', 'Chutney of the season', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (50.00, 24, '024', 'Onion, lemon and cucumber platter', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (20.00, 25, '025', 'Tea', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (30.00, 26, '026', 'Coffee', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (120.00, 27, '027', 'Soft Drinks – Litre Bottle', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (45.00, 28, '028', 'Soft Drinks – 250 ml can', NULL);
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (320.00, 29, '029', 'English Breakfast ', 'Two Eggs any style with 2 Beef or Chicken Sausages, Hash Brown Potatoes or Baked Beans, 2 Toast, Butter, jam or marmalade Coffee or Tea.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (300.00, 30, '030', 'Continental Menu', 'Juice, Bread Basket with a selection of six breads served with butter and jam, Coffee or Tea.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (200.00, 31, '031', 'Bangladeshi Menu', 'Parata or Chapatti served with Mixed Vegetable or Aloo Dum, 1 Egg, Sujir Halwa, Coffee or Tea.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (120.00, 32, '032', 'Cereal Menu', 'Cold cereal with Milk.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (150.00, 33, '033', 'French Toast Menu', '4 French Toast served with onion and tomato or syrup.');
INSERT INTO public.menu_items (price, id, code, name, description) VALUES (70.00, 34, '034', 'Two Fresh Eggs any style', NULL);


--
-- TOC entry 2852 (class 0 OID 33193)
-- Dependencies: 207
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

--DELETE FROM orders;

INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 50);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 51);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 52);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 53);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 42);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 43);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 44);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 45);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 46);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 47);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 48);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-12', 550.00, 3.00, 5, 49);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 33);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 34);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 35);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 36);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 37);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 38);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 4, 39);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 5, 40);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-11', 550.00, 3.00, 5, 41);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 2, 25);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 2, 26);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 2, 27);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 2, 28);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 4, 29);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 4, 30);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 4, 31);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-10', 550.00, 3.00, 4, 32);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 1, 18);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 1, 19);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 1, 20);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 2, 21);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 2, 22);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 2, 23);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-09', 550.00, 3.00, 2, 24);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 100);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 101);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 102);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 103);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 104);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 105);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 106);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 107);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 108);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 109);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 110);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 111);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 112);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 113);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-16', 550.00, 3.00, 10, 114);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 89);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 90);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 91);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 92);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 93);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 94);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 95);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 96);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 97);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 98);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-15', 550.00, 3.00, 10, 99);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 8, 75);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 8, 76);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 8, 77);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 8, 78);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 9, 79);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 9, 80);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 9, 81);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 9, 82);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 10, 83);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 10, 84);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 10, 85);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 10, 86);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 10, 87);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-14', 550.00, 3.00, 10, 88);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 54);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 55);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 5, 56);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 6, 57);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 6, 58);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 6, 59);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 6, 60);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 7, 61);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 7, 62);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 7, 63);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 7, 64);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 65);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 66);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 67);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 68);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 69);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 70);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 71);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 72);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 73);
INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES ('2024-02-13', 550.00, 3.00, 8, 74);




--
-- TOC entry 2850 (class 0 OID 33185)
-- Dependencies: 205
-- Data for Name: order_lines; Type: TABLE DATA; Schema: public; Owner: postgres
--

--DELETE FROM order_lines;

INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 28, 1, 18);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 29, 19, 18);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 30, 20, 18);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 31, 1, 19);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 32, 19, 19);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 33, 20, 19);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 34, 1, 20);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 35, 19, 20);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 36, 20, 20);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 37, 1, 21);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 38, 19, 21);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 39, 20, 21);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 40, 1, 22);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 41, 19, 22);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 42, 20, 22);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 43, 1, 23);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 44, 19, 23);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 45, 20, 23);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 46, 1, 24);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 47, 19, 24);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 48, 20, 24);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 49, 1, 25);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 50, 19, 25);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 51, 20, 25);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 52, 1, 26);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 53, 19, 26);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 54, 20, 26);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 55, 1, 27);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 56, 19, 27);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 57, 20, 27);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 58, 1, 28);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 59, 19, 28);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 60, 20, 28);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 61, 1, 29);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 62, 19, 29);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 63, 20, 29);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 64, 1, 30);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 65, 19, 30);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 66, 20, 30);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 67, 1, 31);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 68, 19, 31);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 69, 20, 31);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 70, 1, 32);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 71, 19, 32);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 72, 20, 32);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 73, 1, 33);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 74, 19, 33);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 75, 20, 33);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 76, 1, 34);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 77, 19, 34);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 78, 20, 34);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 79, 1, 35);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 80, 19, 35);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 81, 20, 35);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 82, 1, 36);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 83, 19, 36);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 84, 20, 36);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 85, 1, 37);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 86, 19, 37);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 87, 20, 37);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 88, 1, 38);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 89, 19, 38);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 90, 20, 38);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 91, 1, 39);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 92, 19, 39);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 93, 20, 39);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 94, 1, 40);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 95, 19, 40);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 96, 20, 40);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 97, 1, 41);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 98, 19, 41);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 99, 20, 41);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 100, 1, 42);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 101, 19, 42);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 102, 20, 42);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 103, 1, 43);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 104, 19, 43);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 105, 20, 43);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 106, 1, 44);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 107, 19, 44);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 108, 20, 44);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 109, 1, 45);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 110, 19, 45);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 111, 20, 45);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 112, 1, 46);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 113, 19, 46);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 114, 20, 46);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 115, 1, 47);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 116, 19, 47);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 117, 20, 47);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 118, 1, 48);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 119, 19, 48);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 120, 20, 48);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 121, 1, 49);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 122, 19, 49);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 123, 20, 49);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 124, 1, 50);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 125, 19, 50);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 126, 20, 50);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 127, 1, 51);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 128, 19, 51);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 129, 20, 51);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 130, 1, 52);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 131, 19, 52);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 132, 20, 52);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 133, 1, 53);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 134, 19, 53);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 135, 20, 53);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 136, 1, 54);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 137, 19, 54);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 138, 20, 54);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 139, 1, 55);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 140, 19, 55);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 141, 20, 55);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 142, 1, 56);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 143, 19, 56);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 144, 20, 56);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 145, 1, 57);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 146, 19, 57);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 147, 20, 57);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 148, 1, 58);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 149, 19, 58);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 150, 20, 58);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 151, 1, 59);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 152, 19, 59);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 153, 20, 59);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 154, 1, 60);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 155, 19, 60);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 156, 20, 60);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 157, 1, 61);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 158, 19, 61);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 159, 20, 61);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 160, 1, 62);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 161, 19, 62);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 162, 20, 62);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 163, 1, 63);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 164, 19, 63);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 165, 20, 63);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 166, 1, 64);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 167, 19, 64);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 168, 20, 64);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 169, 1, 65);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 170, 19, 65);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 171, 20, 65);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 172, 1, 66);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 173, 19, 66);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 174, 20, 66);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 175, 1, 67);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 176, 19, 67);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 177, 20, 67);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 178, 1, 68);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 179, 19, 68);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 180, 20, 68);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 181, 1, 69);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 182, 19, 69);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 183, 20, 69);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 184, 1, 70);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 185, 19, 70);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 186, 20, 70);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 187, 1, 71);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 188, 19, 71);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 189, 20, 71);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 190, 1, 72);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 191, 19, 72);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 192, 20, 72);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 193, 1, 73);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 194, 19, 73);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 195, 20, 73);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 196, 1, 74);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 197, 19, 74);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 198, 20, 74);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 199, 1, 75);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 200, 19, 75);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 201, 20, 75);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 202, 1, 76);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 203, 19, 76);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 204, 20, 76);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 205, 1, 77);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 206, 19, 77);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 207, 20, 77);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 208, 1, 78);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 209, 19, 78);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 210, 20, 78);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 211, 1, 79);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 212, 19, 79);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 213, 20, 79);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 214, 1, 80);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 215, 19, 80);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 216, 20, 80);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 217, 1, 81);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 218, 19, 81);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 219, 20, 81);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 220, 1, 82);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 221, 19, 82);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 222, 20, 82);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 223, 1, 83);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 224, 19, 83);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 225, 20, 83);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 226, 1, 84);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 227, 19, 84);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 228, 20, 84);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 229, 1, 85);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 230, 19, 85);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 231, 20, 85);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 232, 1, 86);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 233, 19, 86);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 234, 20, 86);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 235, 1, 87);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 236, 19, 87);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 237, 20, 87);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 238, 1, 88);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 239, 19, 88);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 240, 20, 88);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 241, 1, 89);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 242, 19, 89);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 243, 20, 89);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 244, 1, 90);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 245, 19, 90);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 246, 20, 90);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 247, 1, 91);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 248, 19, 91);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 249, 20, 91);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 250, 1, 92);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 251, 19, 92);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 252, 20, 92);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 253, 1, 93);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 254, 19, 93);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 255, 20, 93);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 256, 1, 94);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 257, 19, 94);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 258, 20, 94);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 259, 1, 95);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 260, 19, 95);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 261, 20, 95);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 262, 1, 96);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 263, 19, 96);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 264, 20, 96);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 265, 1, 97);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 266, 19, 97);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 267, 20, 97);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 268, 1, 98);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 269, 19, 98);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 270, 20, 98);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 271, 1, 99);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 272, 19, 99);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 273, 20, 99);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 274, 1, 100);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 275, 19, 100);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 276, 20, 100);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 277, 1, 101);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 278, 19, 101);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 279, 20, 101);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 280, 1, 102);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 281, 19, 102);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 282, 20, 102);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 283, 1, 103);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 284, 19, 103);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 285, 20, 103);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 286, 1, 104);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 287, 19, 104);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 288, 20, 104);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 289, 1, 105);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 290, 19, 105);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 291, 20, 105);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 292, 1, 106);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 293, 19, 106);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 294, 20, 106);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 295, 1, 107);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 296, 19, 107);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 297, 20, 107);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 298, 1, 108);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 299, 19, 108);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 300, 20, 108);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 301, 1, 109);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 302, 19, 109);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 303, 20, 109);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 304, 1, 110);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 305, 19, 110);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 306, 20, 110);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 307, 1, 111);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 308, 19, 111);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 309, 20, 111);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 310, 1, 112);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 311, 19, 112);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 312, 20, 112);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 313, 1, 113);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 314, 19, 113);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 315, 20, 113);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, 316, 1, 114);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, 317, 19, 114);
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, 318, 20, 114);



INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES (CURRENT_DATE, 550.00, 3.00, 8, (SELECT COALESCE(MAX(id),0) + 1 FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 1, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 19, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 20, (SELECT MAX(id) FROM orders));

INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES (CURRENT_DATE, 550.00, 3.00, 8, (SELECT COALESCE(MAX(id),0) + 1 FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 1, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 19, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 20, (SELECT MAX(id) FROM orders));

INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES (CURRENT_DATE, 550.00, 3.00, 8, (SELECT COALESCE(MAX(id),0) + 1 FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 1, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 19, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 20, (SELECT MAX(id) FROM orders));

INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES (CURRENT_DATE, 550.00, 3.00, 8, (SELECT COALESCE(MAX(id),0) + 1 FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 1, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 19, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 20, (SELECT MAX(id) FROM orders));

INSERT INTO public.orders (order_date, total_amount, total_quantity, customer_id, id) VALUES (CURRENT_DATE, 550.00, 3.00, 8, (SELECT COALESCE(MAX(id),0) + 1 FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (425.00, 425.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 1, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (70.00, 70.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 19, (SELECT MAX(id) FROM orders));
INSERT INTO public.order_lines (amount, price, quantity, id, item_id, order_id) VALUES (55.00, 55.00, 1.00, (SELECT COALESCE(MAX(id),0) + 1 FROM order_lines), 20, (SELECT MAX(id) FROM orders));


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 200
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 10, true);


--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 196
-- Name: customers_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_seq', 1, false);


--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 197
-- Name: menu_item_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_item_seq', 1, false);


--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 202
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 34, true);


--
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 204
-- Name: order_lines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_lines_id_seq', 318, true);


--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 198
-- Name: order_lines_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_lines_seq', 1, false);


--
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 206
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 114, true);


--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 199
-- Name: orders_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_seq', 1, false);


-- Completed on 2024-02-16 22:10:33

--
-- PostgreSQL database dump complete
--

