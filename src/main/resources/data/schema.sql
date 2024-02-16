--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

-- Started on 2024-02-16 16:42:07

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
-- TOC entry 2841 (class 1262 OID 31435)
-- Name: dockerdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE IF NOT EXISTS dockerdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE dockerdb OWNER TO postgres;

\connect dockerdb

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 32131)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    address character varying(255),
    code character varying(10),
    email character varying(60),
    name character varying(100),
    phone character varying(30)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 32129)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 200
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 196 (class 1259 OID 32097)
-- Name: customers_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_seq OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 32099)
-- Name: menu_item_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_item_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_item_seq OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 32139)
-- Name: menu_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_items (
    id bigint NOT NULL,
    code character varying(10),
    description character varying(500),
    name character varying(100),
    price numeric(38,2) DEFAULT 0
);


ALTER TABLE public.menu_items OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 32137)
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_items_id_seq OWNER TO postgres;

--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 202
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- TOC entry 205 (class 1259 OID 32151)
-- Name: order_lines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_lines (
    id bigint NOT NULL,
    price numeric(38,2),
    quantity numeric(38,2),
    amount numeric(38,2),
    item_id bigint,
    order_id bigint
);


ALTER TABLE public.order_lines OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32149)
-- Name: order_lines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_lines_id_seq OWNER TO postgres;

--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 204
-- Name: order_lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_lines_id_seq OWNED BY public.order_lines.id;


--
-- TOC entry 198 (class 1259 OID 32101)
-- Name: order_lines_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_lines_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_lines_seq OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 32159)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_date date,
    total_amount numeric(38,2) DEFAULT 0,
    total_quantity numeric(38,2) DEFAULT 0,
    customer_id bigint
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 32157)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 206
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 199 (class 1259 OID 32103)
-- Name: orders_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_seq OWNER TO postgres;

--
-- TOC entry 2697 (class 2604 OID 32134)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 2698 (class 2604 OID 32142)
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- TOC entry 2700 (class 2604 OID 32154)
-- Name: order_lines id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_lines ALTER COLUMN id SET DEFAULT nextval('public.order_lines_id_seq'::regclass);


--
-- TOC entry 2701 (class 2604 OID 32162)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 2705 (class 2606 OID 32136)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 2707 (class 2606 OID 32148)
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- TOC entry 2709 (class 2606 OID 32156)
-- Name: order_lines order_lines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_lines
    ADD CONSTRAINT order_lines_pkey PRIMARY KEY (id);


--
-- TOC entry 2711 (class 2606 OID 32169)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2714 (class 2606 OID 32180)
-- Name: orders customer_orders; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT customer_orders FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- TOC entry 2712 (class 2606 OID 32170)
-- Name: order_lines item_orderlines; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_lines
    ADD CONSTRAINT item_orderlines FOREIGN KEY (item_id) REFERENCES public.menu_items(id);


--
-- TOC entry 2713 (class 2606 OID 32185)
-- Name: order_lines order_orderlines; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_lines
    ADD CONSTRAINT order_orderlines FOREIGN KEY (order_id) REFERENCES public.orders(id);


-- Completed on 2024-02-16 16:42:08

--
-- PostgreSQL database dump complete
--

