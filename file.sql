--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: baranga; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baranga (
    nomor integer NOT NULL,
    kode_barang numeric,
    nama_barang character varying
);


ALTER TABLE public.baranga OWNER TO postgres;

--
-- Name: baranga_nomor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baranga_nomor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baranga_nomor_seq OWNER TO postgres;

--
-- Name: baranga_nomor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baranga_nomor_seq OWNED BY public.baranga.nomor;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    nomor integer NOT NULL,
    nama_pelanggan character varying,
    alamat character varying
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_nomor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_nomor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_nomor_seq OWNER TO postgres;

--
-- Name: pelanggan_nomor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_nomor_seq OWNED BY public.pelanggan.nomor;


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    no integer NOT NULL,
    kode_pelanggan numeric,
    total_harga numeric
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- Name: pesanan_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_no_seq OWNER TO postgres;

--
-- Name: pesanan_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_no_seq OWNED BY public.pesanan.no;


--
-- Name: baranga nomor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baranga ALTER COLUMN nomor SET DEFAULT nextval('public.baranga_nomor_seq'::regclass);


--
-- Name: pelanggan nomor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN nomor SET DEFAULT nextval('public.pelanggan_nomor_seq'::regclass);


--
-- Name: pesanan no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN no SET DEFAULT nextval('public.pesanan_no_seq'::regclass);


--
-- Data for Name: baranga; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.baranga (nomor, kode_barang, nama_barang) FROM stdin;
1	1236	buku
2	1237	sepatu
3	3456	pulpen
4	9087	pensil
5	6785	baju
6	934	topi
7	444	celana
8	7600	rok
9	5644	penghapus
10	2311	penggaris
11	1444	kaos kaki
12	1222	jilbab
13	3331	gelang
14	8888	ciput
15	5633	kalung
\.


--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (nomor, nama_pelanggan, alamat) FROM stdin;
1	jake	aussie
2	jay	mateng
3	dina	sendana
4	jungwon	seoul
5	riki	jepang
6	sunghoon	busan
7	heeseung	tiongkok
8	sunoo	hongkong
9	chanyeol	kalukku
10	lay	china
11	jooheon	malunda
12	younghoon	topoyo
13	kihyun	mamuju
14	suho	taludu
15	chen	majene
\.


--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (no, kode_pelanggan, total_harga) FROM stdin;
1	4041	8000
2	4042	48000
3	4043	7000
4	4044	47000
5	4045	3000
6	4046	6000
7	4047	9000
8	4048	7900
9	4049	5600
10	4050	10000
11	4562	6780
12	6789	8780
13	6543	9000
14	1400	1200
15	5678	7000
16	6700	8900
\.


--
-- Name: baranga_nomor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baranga_nomor_seq', 15, true);


--
-- Name: pelanggan_nomor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_nomor_seq', 15, true);


--
-- Name: pesanan_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_no_seq', 16, true);


--
-- Name: baranga baranga_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baranga
    ADD CONSTRAINT baranga_pkey PRIMARY KEY (nomor);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (nomor);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (no);


--
-- PostgreSQL database dump complete
--

