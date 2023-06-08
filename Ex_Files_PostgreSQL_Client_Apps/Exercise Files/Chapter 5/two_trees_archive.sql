--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.2

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

DROP DATABASE IF EXISTS two_trees_archive;
--
-- Name: two_trees_archive; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE two_trees_archive WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE two_trees_archive OWNER TO postgres;

\connect two_trees_archive

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
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- Name: sales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sales;


ALTER SCHEMA sales OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categories; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.categories (
    category_id integer NOT NULL,
    category_description character varying(50),
    product_line character varying(25)
);


ALTER TABLE inventory.categories OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.products (
    sku character varying(7) NOT NULL,
    product_name character varying(50) NOT NULL,
    category_id integer,
    size integer,
    price numeric(5,2) NOT NULL
);


ALTER TABLE inventory.products OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.customers (
    customer_id character(5) NOT NULL,
    company character varying(100),
    address character varying(100),
    city character varying(50),
    state character(2),
    zip character(5)
);


ALTER TABLE sales.customers OWNER TO postgres;

--
-- Name: order_lines; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.order_lines (
    order_id integer,
    line_id integer NOT NULL,
    sku character varying(7),
    quantity integer
);


ALTER TABLE sales.order_lines OWNER TO postgres;

--
-- Name: order_lines_line_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

ALTER TABLE sales.order_lines ALTER COLUMN line_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME sales.order_lines_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: orders; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.orders (
    order_id integer NOT NULL,
    order_date date,
    customer_id character(5)
);


ALTER TABLE sales.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

ALTER TABLE sales.orders ALTER COLUMN order_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME sales.orders_order_id_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.categories VALUES (1, 'Olive Oils', 'Gourmet Chef');
INSERT INTO inventory.categories VALUES (2, 'Flavor Infused Oils', 'Gourmet Chef');
INSERT INTO inventory.categories VALUES (3, 'Bath and Beauty', 'Cosmetics');


--
-- Data for Name: products; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.products VALUES ('ALB008', 'Delicate', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('ALB032', 'Delicate', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('ALB064', 'Delicate', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('ALB128', 'Delicate', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('EV008', 'Extra Virgin', 1, 8, 8.99);
INSERT INTO inventory.products VALUES ('EV016', 'Extra Virgin', 1, 16, 12.99);
INSERT INTO inventory.products VALUES ('EV032', 'Extra Virgin', 1, 32, 16.99);
INSERT INTO inventory.products VALUES ('EV064', 'Extra Virgin', 1, 64, 20.99);
INSERT INTO inventory.products VALUES ('EV128', 'Extra Virgin', 1, 128, 24.99);
INSERT INTO inventory.products VALUES ('FCP008', 'First Cold Press', 1, 8, 8.99);
INSERT INTO inventory.products VALUES ('FCP016', 'First Cold Press', 1, 16, 12.99);
INSERT INTO inventory.products VALUES ('FCP032', 'First Cold Press', 1, 32, 16.99);
INSERT INTO inventory.products VALUES ('FCP064', 'First Cold Press', 1, 64, 20.99);
INSERT INTO inventory.products VALUES ('FCP128', 'First Cold Press', 1, 128, 24.99);
INSERT INTO inventory.products VALUES ('FR008', 'Frantoio', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('FR016', 'Frantoio', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('FR032', 'Frantoio', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('FR064', 'Frantoio', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('FR128', 'Frantoio', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('HOJ008', 'Bold', 1, 8, 11.99);
INSERT INTO inventory.products VALUES ('HOJ016', 'Bold', 1, 16, 15.99);
INSERT INTO inventory.products VALUES ('HOJ032', 'Bold', 1, 32, 19.99);
INSERT INTO inventory.products VALUES ('HOJ064', 'Bold', 1, 64, 23.99);
INSERT INTO inventory.products VALUES ('HOJ128', 'Bold', 1, 128, 27.99);
INSERT INTO inventory.products VALUES ('KRN008', 'Koroneiki', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('KRN016', 'Koroneiki', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('KRN032', 'Koroneiki', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('KRN064', 'Koroneiki', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('KRN128', 'Koroneiki', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('LEC008', 'Leccino', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('LEC016', 'Leccino', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('LEC032', 'Leccino', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('LEC064', 'Leccino', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('LEC128', 'Leccino', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('LGT008', 'Light', 1, 8, 8.99);
INSERT INTO inventory.products VALUES ('LGT016', 'Light', 1, 16, 12.99);
INSERT INTO inventory.products VALUES ('LGT032', 'Light', 1, 32, 16.99);
INSERT INTO inventory.products VALUES ('LGT064', 'Light', 1, 64, 20.99);
INSERT INTO inventory.products VALUES ('LGT128', 'Light', 1, 128, 24.99);
INSERT INTO inventory.products VALUES ('MAN008', 'Manzanilla', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('MAN016', 'Manzanilla', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('MAN032', 'Manzanilla', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('MAN064', 'Manzanilla', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('MAN128', 'Manzanilla', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('MIS008', 'Mission', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('MIS016', 'Mission', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('MIS032', 'Mission', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('MIS064', 'Mission', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('MIS128', 'Mission', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('MOR008', 'Moraiolo', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('MOR016', 'Moraiolo', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('MOR032', 'Moraiolo', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('MOR064', 'Moraiolo', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('MOR128', 'Moraiolo', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('OBL008', 'Oblica', 1, 8, 11.99);
INSERT INTO inventory.products VALUES ('OBL016', 'Oblica', 1, 16, 15.99);
INSERT INTO inventory.products VALUES ('OBL032', 'Oblica', 1, 32, 19.99);
INSERT INTO inventory.products VALUES ('OBL064', 'Oblica', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('OBL128', 'Oblica', 1, 128, 27.99);
INSERT INTO inventory.products VALUES ('PEN008', 'Pendolino', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('PEN016', 'Pendolino', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('PEN032', 'Pendolino', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('PEN064', 'Pendolino', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('PEN128', 'Pendolino', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('PCH008', 'Picholine', 1, 8, 11.99);
INSERT INTO inventory.products VALUES ('PCH016', 'Picholine', 1, 16, 15.99);
INSERT INTO inventory.products VALUES ('PCH032', 'Picholine', 1, 32, 19.99);
INSERT INTO inventory.products VALUES ('PCH064', 'Picholine', 1, 64, 23.99);
INSERT INTO inventory.products VALUES ('PCH128', 'Picholine', 1, 128, 27.99);
INSERT INTO inventory.products VALUES ('PIC008', 'Picual', 1, 8, 10.99);
INSERT INTO inventory.products VALUES ('PIC016', 'Picual', 1, 16, 14.99);
INSERT INTO inventory.products VALUES ('PIC032', 'Picual', 1, 32, 18.99);
INSERT INTO inventory.products VALUES ('PIC064', 'Picual', 1, 64, 22.99);
INSERT INTO inventory.products VALUES ('PIC128', 'Picual', 1, 128, 26.99);
INSERT INTO inventory.products VALUES ('PUR008', 'Pure', 1, 8, 8.99);
INSERT INTO inventory.products VALUES ('PUR016', 'Pure', 1, 16, 12.99);
INSERT INTO inventory.products VALUES ('PUR032', 'Pure', 1, 32, 16.99);
INSERT INTO inventory.products VALUES ('PUR064', 'Pure', 1, 64, 20.99);
INSERT INTO inventory.products VALUES ('PUR128', 'Pure', 1, 128, 24.99);
INSERT INTO inventory.products VALUES ('REF008', 'Refined', 1, 8, 8.99);
INSERT INTO inventory.products VALUES ('REF016', 'Refined', 1, 16, 12.99);
INSERT INTO inventory.products VALUES ('REF032', 'Refined', 1, 32, 16.99);
INSERT INTO inventory.products VALUES ('REF064', 'Refined', 1, 64, 20.99);
INSERT INTO inventory.products VALUES ('REF128', 'Refined', 1, 128, 24.99);
INSERT INTO inventory.products VALUES ('V008', 'Virgin', 1, 8, 8.99);
INSERT INTO inventory.products VALUES ('V016', 'Virgin', 1, 16, 12.99);
INSERT INTO inventory.products VALUES ('V032', 'Virgin', 1, 32, 16.99);
INSERT INTO inventory.products VALUES ('V064', 'Virgin', 1, 64, 20.99);
INSERT INTO inventory.products VALUES ('V128', 'Virgin', 1, 128, 24.99);
INSERT INTO inventory.products VALUES ('MI008', 'Mandarin-Infused EVO', 2, 8, 8.99);
INSERT INTO inventory.products VALUES ('MI016', 'Mandarin-Infused EVO', 2, 16, 12.99);
INSERT INTO inventory.products VALUES ('MI032', 'Mandarin-Infused EVO', 2, 32, 16.99);
INSERT INTO inventory.products VALUES ('LI008', 'Lemon-Infused EVO', 2, 8, 8.99);
INSERT INTO inventory.products VALUES ('LI016', 'Lemon-Infused EVO', 2, 16, 12.99);
INSERT INTO inventory.products VALUES ('LI032', 'Lemon-Infused EVO', 2, 32, 16.99);
INSERT INTO inventory.products VALUES ('BI008', 'Basil-Infused EVO', 2, 8, 10.99);
INSERT INTO inventory.products VALUES ('BI016', 'Basil-Infused EVO', 2, 16, 14.99);
INSERT INTO inventory.products VALUES ('BI032', 'Basil-Infused EVO', 2, 32, 18.99);
INSERT INTO inventory.products VALUES ('RI008', 'Rosemary-Infused EVO', 2, 8, 10.99);
INSERT INTO inventory.products VALUES ('RI016', 'Rosemary-Infused EVO', 2, 16, 14.99);
INSERT INTO inventory.products VALUES ('RI032', 'Rosemary-Infused EVO', 2, 32, 18.99);
INSERT INTO inventory.products VALUES ('GI008', 'Garlic-Infused EVO', 2, 8, 11.99);
INSERT INTO inventory.products VALUES ('GI016', 'Garlic-Infused EVO', 2, 16, 15.99);
INSERT INTO inventory.products VALUES ('GI032', 'Garlic-Infused EVO', 2, 32, 19.99);
INSERT INTO inventory.products VALUES ('JI008', 'Chili-Infused EVO', 2, 8, 11.99);
INSERT INTO inventory.products VALUES ('JI016', 'Chili-Infused EVO', 2, 16, 15.99);
INSERT INTO inventory.products VALUES ('JI032', 'Chili-Infused EVO', 2, 32, 19.99);
INSERT INTO inventory.products VALUES ('OGEC004', 'Olive Glow eye cream', 3, 4, 18.99);
INSERT INTO inventory.products VALUES ('OGFL006', 'Olive Glow face lotion', 3, 6, 14.99);
INSERT INTO inventory.products VALUES ('OGBL012', 'Olive Glow body lotion', 3, 12, 12.99);
INSERT INTO inventory.products VALUES ('OGFT006', 'Olive Glow foot treatment', 3, 6, 7.99);
INSERT INTO inventory.products VALUES ('OGNR004', 'Olive Glow night repair', 3, 4, 21.99);
INSERT INTO inventory.products VALUES ('OGBG016', 'Olive Glow bath gel', 3, 16, 9.99);
INSERT INTO inventory.products VALUES ('OGHS006', 'Olive Glow hand soap', 3, 6, 6.99);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: sales; Owner: postgres
--

INSERT INTO sales.customers VALUES ('FV418', 'Flavorville', '798 Ravinia Road', 'Des Moines', 'IA', '50320');
INSERT INTO sales.customers VALUES ('WR421', 'Wild Rose', '222 Dakota Lane', 'Kalamazoo', 'MI', '49001');
INSERT INTO sales.customers VALUES ('BX305', 'Bread Express', '3362 Ute Loop', 'Tiffin', 'OH', '44883');
INSERT INTO sales.customers VALUES ('BV446', 'Blue Vine', '40675 Raymond Curve', 'Columbus', 'GA', '31901');
INSERT INTO sales.customers VALUES ('GR208', 'Green Gardens', '394 Mesa Palms Avenue', 'Glen Campbell', 'PA', '15742');
INSERT INTO sales.customers VALUES ('DF600', 'Delish Food', '809 Weathersfield Ctr Park', 'Madisonville', 'OH', '45227');


--
-- Data for Name: order_lines; Type: TABLE DATA; Schema: sales; Owner: postgres
--

INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (100, 1, 'HOJ016', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (101, 2, 'MAN128', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (101, 3, 'MIS032', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (101, 4, 'PEN008', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (101, 5, 'RI016', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (102, 6, 'FCP128', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (102, 7, 'FCP128', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (102, 8, 'LGT016', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (102, 9, 'MIS064', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (102, 10, 'OBL008', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (103, 11, 'FCP016', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (104, 12, 'MIS016', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (105, 13, 'HOJ128', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (105, 14, 'KRN128', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (105, 15, 'LEC008', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (106, 16, 'JI032', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (106, 17, 'MOR032', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (106, 18, 'PIC016', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (106, 19, 'RI032', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (107, 20, 'LI016', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (107, 21, 'PIC008', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (107, 22, 'PIC064', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (107, 23, 'V032', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (108, 24, 'FCP008', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (108, 25, 'RI008', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (109, 26, 'EV008', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (109, 27, 'OBL128', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (110, 28, 'FCP008', 5);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (110, 29, 'LGT008', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (110, 30, 'PUR016', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (110, 31, 'V064', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (111, 32, 'KRN128', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (112, 33, 'JI032', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (112, 34, 'OBL128', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (112, 35, 'PCH032', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (113, 36, 'HOJ008', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (113, 37, 'PUR064', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (113, 38, 'PUR128', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (113, 39, 'REF008', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (114, 40, 'EV128', 5);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (115, 41, 'FR128', 5);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (115, 42, 'PCH064', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (115, 43, 'PUR064', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (116, 44, 'FCP128', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (116, 45, 'PEN064', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (117, 46, 'ALB064', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (117, 47, 'ALB128', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (117, 48, 'GI032', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (117, 49, 'HOJ064', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (117, 50, 'JI016', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (117, 51, 'PIC016', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (118, 52, 'FR008', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (118, 53, 'PIC016', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (118, 54, 'REF008', 2);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (119, 55, 'JI016', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (119, 56, 'MI008', 3);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (120, 57, 'BI008', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (120, 58, 'EV032', 4);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (120, 59, 'FR064', 1);
INSERT INTO sales.order_lines OVERRIDING SYSTEM VALUE VALUES (120, 60, 'PEN032', 2);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: sales; Owner: postgres
--

INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (100, '2020-10-15', 'BX305');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (101, '2020-10-17', 'GR208');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (102, '2020-10-19', 'BV446');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (103, '2020-10-19', 'BV446');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (104, '2020-10-20', 'FV418');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (105, '2020-10-21', 'DF600');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (106, '2020-10-22', 'FV418');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (107, '2020-10-23', 'WR421');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (108, '2020-10-24', 'WR421');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (109, '2020-10-25', 'GR208');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (110, '2020-10-25', 'BX305');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (111, '2020-10-26', 'GR208');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (112, '2020-10-26', 'BV446');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (113, '2020-10-27', 'FV418');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (114, '2020-10-28', 'WR421');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (115, '2020-10-28', 'BV446');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (116, '2020-10-28', 'DF600');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (117, '2020-10-29', 'DF600');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (118, '2020-10-29', 'BX305');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (119, '2020-10-30', 'GR208');
INSERT INTO sales.orders OVERRIDING SYSTEM VALUE VALUES (120, '2020-10-31', 'BX305');


--
-- Name: order_lines_line_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.order_lines_line_id_seq', 60, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.orders_order_id_seq', 120, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (sku);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: order_lines order_lines_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_lines
    ADD CONSTRAINT order_lines_pkey PRIMARY KEY (line_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products fk_products_category_id; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.products
    ADD CONSTRAINT fk_products_category_id FOREIGN KEY (category_id) REFERENCES inventory.categories(category_id);


--
-- Name: orders fk_customers_customer_id; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders
    ADD CONSTRAINT fk_customers_customer_id FOREIGN KEY (customer_id) REFERENCES sales.customers(customer_id);


--
-- Name: order_lines fk_orders_order_id; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.order_lines
    ADD CONSTRAINT fk_orders_order_id FOREIGN KEY (order_id) REFERENCES sales.orders(order_id);


--
-- PostgreSQL database dump complete
--

