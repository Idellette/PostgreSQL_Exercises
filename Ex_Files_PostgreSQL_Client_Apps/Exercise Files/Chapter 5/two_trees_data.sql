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

--
-- Data for Name: categories; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

COPY inventory.categories (category_id, category_description, product_line) FROM stdin;
1	Olive Oils	Gourmet Chef
2	Flavor Infused Oils	Gourmet Chef
3	Bath and Beauty	Cosmetics
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

COPY inventory.products (sku, product_name, category_id, size, price) FROM stdin;
ALB008	Delicate	1	8	10.99
ALB032	Delicate	1	32	18.99
ALB064	Delicate	1	64	22.99
ALB128	Delicate	1	128	26.99
EV008	Extra Virgin	1	8	8.99
EV016	Extra Virgin	1	16	12.99
EV032	Extra Virgin	1	32	16.99
EV064	Extra Virgin	1	64	20.99
EV128	Extra Virgin	1	128	24.99
FCP008	First Cold Press	1	8	8.99
FCP016	First Cold Press	1	16	12.99
FCP032	First Cold Press	1	32	16.99
FCP064	First Cold Press	1	64	20.99
FCP128	First Cold Press	1	128	24.99
FR008	Frantoio	1	8	10.99
FR016	Frantoio	1	16	14.99
FR032	Frantoio	1	32	18.99
FR064	Frantoio	1	64	22.99
FR128	Frantoio	1	128	26.99
HOJ008	Bold	1	8	11.99
HOJ016	Bold	1	16	15.99
HOJ032	Bold	1	32	19.99
HOJ064	Bold	1	64	23.99
HOJ128	Bold	1	128	27.99
KRN008	Koroneiki	1	8	10.99
KRN016	Koroneiki	1	16	14.99
KRN032	Koroneiki	1	32	18.99
KRN064	Koroneiki	1	64	22.99
KRN128	Koroneiki	1	128	26.99
LEC008	Leccino	1	8	10.99
LEC016	Leccino	1	16	14.99
LEC032	Leccino	1	32	18.99
LEC064	Leccino	1	64	22.99
LEC128	Leccino	1	128	26.99
LGT008	Light	1	8	8.99
LGT016	Light	1	16	12.99
LGT032	Light	1	32	16.99
LGT064	Light	1	64	20.99
LGT128	Light	1	128	24.99
MAN008	Manzanilla	1	8	10.99
MAN016	Manzanilla	1	16	14.99
MAN032	Manzanilla	1	32	18.99
MAN064	Manzanilla	1	64	22.99
MAN128	Manzanilla	1	128	26.99
MIS008	Mission	1	8	10.99
MIS016	Mission	1	16	14.99
MIS032	Mission	1	32	18.99
MIS064	Mission	1	64	22.99
MIS128	Mission	1	128	26.99
MOR008	Moraiolo	1	8	10.99
MOR016	Moraiolo	1	16	14.99
MOR032	Moraiolo	1	32	18.99
MOR064	Moraiolo	1	64	22.99
MOR128	Moraiolo	1	128	26.99
OBL008	Oblica	1	8	11.99
OBL016	Oblica	1	16	15.99
OBL032	Oblica	1	32	19.99
OBL064	Oblica	1	64	22.99
OBL128	Oblica	1	128	27.99
PEN008	Pendolino	1	8	10.99
PEN016	Pendolino	1	16	14.99
PEN032	Pendolino	1	32	18.99
PEN064	Pendolino	1	64	22.99
PEN128	Pendolino	1	128	26.99
PCH008	Picholine	1	8	11.99
PCH016	Picholine	1	16	15.99
PCH032	Picholine	1	32	19.99
PCH064	Picholine	1	64	23.99
PCH128	Picholine	1	128	27.99
PIC008	Picual	1	8	10.99
PIC016	Picual	1	16	14.99
PIC032	Picual	1	32	18.99
PIC064	Picual	1	64	22.99
PIC128	Picual	1	128	26.99
PUR008	Pure	1	8	8.99
PUR016	Pure	1	16	12.99
PUR032	Pure	1	32	16.99
PUR064	Pure	1	64	20.99
PUR128	Pure	1	128	24.99
REF008	Refined	1	8	8.99
REF016	Refined	1	16	12.99
REF032	Refined	1	32	16.99
REF064	Refined	1	64	20.99
REF128	Refined	1	128	24.99
V008	Virgin	1	8	8.99
V016	Virgin	1	16	12.99
V032	Virgin	1	32	16.99
V064	Virgin	1	64	20.99
V128	Virgin	1	128	24.99
MI008	Mandarin-Infused EVO	2	8	8.99
MI016	Mandarin-Infused EVO	2	16	12.99
MI032	Mandarin-Infused EVO	2	32	16.99
LI008	Lemon-Infused EVO	2	8	8.99
LI016	Lemon-Infused EVO	2	16	12.99
LI032	Lemon-Infused EVO	2	32	16.99
BI008	Basil-Infused EVO	2	8	10.99
BI016	Basil-Infused EVO	2	16	14.99
BI032	Basil-Infused EVO	2	32	18.99
RI008	Rosemary-Infused EVO	2	8	10.99
RI016	Rosemary-Infused EVO	2	16	14.99
RI032	Rosemary-Infused EVO	2	32	18.99
GI008	Garlic-Infused EVO	2	8	11.99
GI016	Garlic-Infused EVO	2	16	15.99
GI032	Garlic-Infused EVO	2	32	19.99
JI008	Chili-Infused EVO	2	8	11.99
JI016	Chili-Infused EVO	2	16	15.99
JI032	Chili-Infused EVO	2	32	19.99
OGEC004	Olive Glow eye cream	3	4	18.99
OGFL006	Olive Glow face lotion	3	6	14.99
OGBL012	Olive Glow body lotion	3	12	12.99
OGFT006	Olive Glow foot treatment	3	6	7.99
OGNR004	Olive Glow night repair	3	4	21.99
OGBG016	Olive Glow bath gel	3	16	9.99
OGHS006	Olive Glow hand soap	3	6	6.99
\.


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
-- Name: order_lines_line_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.order_lines_line_id_seq', 60, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.orders_order_id_seq', 120, true);


--
-- PostgreSQL database dump complete
--

