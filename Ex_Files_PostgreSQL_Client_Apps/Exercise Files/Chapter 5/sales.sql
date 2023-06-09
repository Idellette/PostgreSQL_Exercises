--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
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

SET default_tablespace = '';

SET default_table_access_method = heap;

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
-- Data for Name: customers; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.customers (customer_id, company, address, city, state, zip) FROM stdin;
FV418	Flavorville	798 Ravinia Road	Des Moines	IA	50320
WR421	Wild Rose	222 Dakota Lane	Kalamazoo	MI	49001
BX305	Bread Express	3362 Ute Loop	Tiffin	OH	44883
BV446	Blue Vine	40675 Raymond Curve	Columbus	GA	31901
GR208	Green Gardens	394 Mesa Palms Avenue	Glen Campbell	PA	15742
DF600	Delish Food	809 Weathersfield Ctr Park	Madisonville	OH	45227
\.


--
-- Data for Name: order_lines; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.order_lines (order_id, line_id, sku, quantity) FROM stdin;
100	1	HOJ016	2
101	2	MAN128	2
101	3	MIS032	1
101	4	PEN008	1
101	5	RI016	1
102	6	FCP128	2
102	7	FCP128	3
102	8	LGT016	3
102	9	MIS064	1
102	10	OBL008	3
103	11	FCP016	4
104	12	MIS016	1
105	13	HOJ128	2
105	14	KRN128	4
105	15	LEC008	4
106	16	JI032	1
106	17	MOR032	2
106	18	PIC016	1
106	19	RI032	4
107	20	LI016	3
107	21	PIC008	4
107	22	PIC064	3
107	23	V032	4
108	24	FCP008	4
108	25	RI008	1
109	26	EV008	3
109	27	OBL128	2
110	28	FCP008	5
110	29	LGT008	3
110	30	PUR016	4
110	31	V064	1
111	32	KRN128	3
112	33	JI032	3
112	34	OBL128	1
112	35	PCH032	4
113	36	HOJ008	2
113	37	PUR064	2
113	38	PUR128	3
113	39	REF008	3
114	40	EV128	5
115	41	FR128	5
115	42	PCH064	4
115	43	PUR064	4
116	44	FCP128	2
116	45	PEN064	4
117	46	ALB064	3
117	47	ALB128	2
117	48	GI032	4
117	49	HOJ064	2
117	50	JI016	1
117	51	PIC016	4
118	52	FR008	2
118	53	PIC016	2
118	54	REF008	2
119	55	JI016	3
119	56	MI008	3
120	57	BI008	4
120	58	EV032	4
120	59	FR064	1
120	60	PEN032	2
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.orders (order_id, order_date, customer_id) FROM stdin;
100	2020-10-15	BX305
101	2020-10-17	GR208
102	2020-10-19	BV446
103	2020-10-19	BV446
104	2020-10-20	FV418
105	2020-10-21	DF600
106	2020-10-22	FV418
107	2020-10-23	WR421
108	2020-10-24	WR421
109	2020-10-25	GR208
110	2020-10-25	BX305
111	2020-10-26	GR208
112	2020-10-26	BV446
113	2020-10-27	FV418
114	2020-10-28	WR421
115	2020-10-28	BV446
116	2020-10-28	DF600
117	2020-10-29	DF600
118	2020-10-29	BX305
119	2020-10-30	GR208
120	2020-10-31	BX305
\.


--
-- Name: order_lines_line_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.order_lines_line_id_seq', 60, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.orders_order_id_seq', 120, true);


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

