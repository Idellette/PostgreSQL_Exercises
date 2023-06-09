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
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- PostgreSQL database dump complete
--

