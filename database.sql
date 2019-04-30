--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.2

-- Started on 2018-04-23 14:08:27 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13241)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 218 (class 1259 OID 20670)
-- Name: actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE actions (
    id integer NOT NULL,
    file character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE actions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 20668)
-- Name: actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actions_id_seq OWNER TO postgres;

--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 217
-- Name: actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actions_id_seq OWNED BY actions.id;


--
-- TOC entry 202 (class 1259 OID 20560)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categories (
    id integer NOT NULL,
    category character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE categories OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 20558)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO postgres;

--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 201
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- TOC entry 204 (class 1259 OID 20568)
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE colors (
    id integer NOT NULL,
    color character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE colors OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 20566)
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE colors_id_seq OWNER TO postgres;

--
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 203
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE colors_id_seq OWNED BY colors.id;


--
-- TOC entry 206 (class 1259 OID 20576)
-- Name: deliveries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE deliveries (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE deliveries OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 20574)
-- Name: deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE deliveries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE deliveries_id_seq OWNER TO postgres;

--
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 205
-- Name: deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE deliveries_id_seq OWNED BY deliveries.id;


--
-- TOC entry 208 (class 1259 OID 20584)
-- Name: memories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE memories (
    id integer NOT NULL,
    memory integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE memories OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 20582)
-- Name: memories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE memories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE memories_id_seq OWNER TO postgres;

--
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 207
-- Name: memories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE memories_id_seq OWNED BY memories.id;


--
-- TOC entry 197 (class 1259 OID 20532)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 20530)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 196
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;


--
-- TOC entry 212 (class 1259 OID 20600)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_id integer NOT NULL,
    delivery_id integer NOT NULL,
    name character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    zip character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE orders OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 20598)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orders_id_seq OWNER TO postgres;

--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 211
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- TOC entry 200 (class 1259 OID 20551)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE password_resets OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 20592)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE payments (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE payments OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 20590)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payments_id_seq OWNER TO postgres;

--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 209
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE payments_id_seq OWNED BY payments.id;


--
-- TOC entry 216 (class 1259 OID 20652)
-- Name: product__orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product__orders (
    id integer NOT NULL,
    count integer NOT NULL,
    product_id integer NOT NULL,
    order_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE product__orders OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 20650)
-- Name: product__orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product__orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product__orders_id_seq OWNER TO postgres;

--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 215
-- Name: product__orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product__orders_id_seq OWNED BY product__orders.id;


--
-- TOC entry 214 (class 1259 OID 20626)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    price double precision NOT NULL,
    memory_id integer NOT NULL,
    category_id integer NOT NULL,
    color_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    file character varying(255) NOT NULL
);


ALTER TABLE products OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 20624)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO postgres;

--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 213
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- TOC entry 219 (class 1259 OID 20676)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sessions (
    id character varying(255) NOT NULL,
    user_id integer,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE sessions OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 20540)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    telephone character varying(255) NOT NULL,
    name_f character varying(255) NOT NULL,
    street_f character varying(255) NOT NULL,
    city_f character varying(255) NOT NULL,
    zip_f character varying(255) NOT NULL,
    name_d character varying(255) NOT NULL,
    street_d character varying(255) NOT NULL,
    city_d character varying(255) NOT NULL,
    zip_d character varying(255) NOT NULL,
    role boolean NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE users OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 20538)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 198
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- TOC entry 3070 (class 2604 OID 20673)
-- Name: actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actions ALTER COLUMN id SET DEFAULT nextval('actions_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 20563)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- TOC entry 3063 (class 2604 OID 20571)
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY colors ALTER COLUMN id SET DEFAULT nextval('colors_id_seq'::regclass);


--
-- TOC entry 3064 (class 2604 OID 20579)
-- Name: deliveries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deliveries ALTER COLUMN id SET DEFAULT nextval('deliveries_id_seq'::regclass);


--
-- TOC entry 3065 (class 2604 OID 20587)
-- Name: memories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY memories ALTER COLUMN id SET DEFAULT nextval('memories_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 20535)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);


--
-- TOC entry 3067 (class 2604 OID 20603)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- TOC entry 3066 (class 2604 OID 20595)
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payments ALTER COLUMN id SET DEFAULT nextval('payments_id_seq'::regclass);


--
-- TOC entry 3069 (class 2604 OID 20655)
-- Name: product__orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product__orders ALTER COLUMN id SET DEFAULT nextval('product__orders_id_seq'::regclass);


--
-- TOC entry 3068 (class 2604 OID 20629)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 20543)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 3249 (class 0 OID 20670)
-- Dependencies: 218
-- Data for Name: actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO actions VALUES (1, '5ba45b77694af25ade9c9303970498d11524418995.jpg', '2018-04-22 17:43:15', '2018-04-22 17:43:15');
INSERT INTO actions VALUES (2, '037daf4e80b719df6780f26e6b9e3fb11524419010.png', '2018-04-22 17:43:30', '2018-04-22 17:43:30');
INSERT INTO actions VALUES (3, 'ac2bda5d0f4efb312517810487918e571524419016.jpg', '2018-04-22 17:43:36', '2018-04-22 17:43:36');
INSERT INTO actions VALUES (4, '8e98b47d9111bad401e43bded146c4381524419070.jpg', '2018-04-22 17:44:30', '2018-04-22 17:44:30');


--
-- TOC entry 3233 (class 0 OID 20560)
-- Dependencies: 202
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categories VALUES (1, 'Počítače Apple', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO categories VALUES (2, 'Iphone', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO categories VALUES (3, 'Ipad', '2018-04-18 15:39:32', '2018-04-18 15:39:32');


--
-- TOC entry 3235 (class 0 OID 20568)
-- Dependencies: 204
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO colors VALUES (1, 'Gold', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO colors VALUES (2, 'Rose Gold', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO colors VALUES (3, 'Silver', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO colors VALUES (4, 'Space Gray', '2018-04-18 15:39:32', '2018-04-18 15:39:32');


--
-- TOC entry 3237 (class 0 OID 20576)
-- Dependencies: 206
-- Data for Name: deliveries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO deliveries VALUES (1, 'Osobný odber', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO deliveries VALUES (2, 'Slovenská pošta', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO deliveries VALUES (3, 'Kurier DHL', '2018-04-18 15:39:32', '2018-04-18 15:39:32');


--
-- TOC entry 3239 (class 0 OID 20584)
-- Dependencies: 208
-- Data for Name: memories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO memories VALUES (1, 16, '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO memories VALUES (2, 32, '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO memories VALUES (3, 64, '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO memories VALUES (4, 128, '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO memories VALUES (5, 256, '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO memories VALUES (6, 512, '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO memories VALUES (7, 1024, '2018-04-18 15:39:32', '2018-04-18 15:39:32');


--
-- TOC entry 3228 (class 0 OID 20532)
-- Dependencies: 197
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO migrations VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO migrations VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO migrations VALUES (3, '2018_04_18_150318_create_categories_table', 1);
INSERT INTO migrations VALUES (4, '2018_04_18_150328_create_colors_table', 1);
INSERT INTO migrations VALUES (5, '2018_04_18_150343_create_deliveries_table', 1);
INSERT INTO migrations VALUES (6, '2018_04_18_150353_create_memories_table', 1);
INSERT INTO migrations VALUES (7, '2018_04_18_150419_create_payments_table', 1);
INSERT INTO migrations VALUES (8, '2018_04_18_150421_create_orders_table', 1);
INSERT INTO migrations VALUES (9, '2018_04_18_150431_create_products_table', 1);
INSERT INTO migrations VALUES (10, '2018_04_18_150439_create_product__orders_table', 1);
INSERT INTO migrations VALUES (11, '2018_04_21_075732_create_actions_table', 1);
INSERT INTO migrations VALUES (12, '2018_04_21_112846_create_sessions_table', 1);


--
-- TOC entry 3243 (class 0 OID 20600)
-- Dependencies: 212
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders VALUES (1, 2, 4, 3, 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', '2018-04-23 08:22:39', '2018-04-23 08:22:39');
INSERT INTO orders VALUES (2, 2, 4, 3, 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', '2018-04-23 08:27:21', '2018-04-23 08:27:21');
INSERT INTO orders VALUES (3, 2, 4, 3, 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', '2018-04-23 08:32:05', '2018-04-23 08:32:05');
INSERT INTO orders VALUES (4, 2, 4, 3, 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', '2018-04-23 08:39:01', '2018-04-23 08:39:01');
INSERT INTO orders VALUES (5, 2, 4, 3, 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', '2018-04-23 08:40:13', '2018-04-23 08:40:13');
INSERT INTO orders VALUES (6, 2, 4, 3, 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', '2018-04-23 08:56:26', '2018-04-23 08:56:26');


--
-- TOC entry 3231 (class 0 OID 20551)
-- Dependencies: 200
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3241 (class 0 OID 20592)
-- Dependencies: 210
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO payments VALUES (1, 'Platba kartou - CardPay', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO payments VALUES (2, 'Online platba - TatraPay', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO payments VALUES (3, 'Bankový prevod', '2018-04-18 15:39:32', '2018-04-18 15:39:32');
INSERT INTO payments VALUES (4, 'V hotovosti', '2018-04-18 15:39:32', '2018-04-18 15:39:32');


--
-- TOC entry 3247 (class 0 OID 20652)
-- Dependencies: 216
-- Data for Name: product__orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO product__orders VALUES (2, 2, 32, 3, '2018-04-23 08:32:05', '2018-04-23 08:32:05');
INSERT INTO product__orders VALUES (3, 3, 33, 3, '2018-04-23 08:32:05', '2018-04-23 08:32:05');
INSERT INTO product__orders VALUES (5, 1, 15, 4, '2018-04-23 08:39:01', '2018-04-23 08:39:01');
INSERT INTO product__orders VALUES (6, 1, 33, 4, '2018-04-23 08:39:01', '2018-04-23 08:39:01');
INSERT INTO product__orders VALUES (7, 1, 40, 4, '2018-04-23 08:39:01', '2018-04-23 08:39:01');
INSERT INTO product__orders VALUES (8, 4, 5, 5, '2018-04-23 08:40:13', '2018-04-23 08:40:13');
INSERT INTO product__orders VALUES (9, 2, 33, 5, '2018-04-23 08:40:13', '2018-04-23 08:40:13');
INSERT INTO product__orders VALUES (10, 8, 33, 6, '2018-04-23 08:56:26', '2018-04-23 08:56:26');


--
-- TOC entry 3245 (class 0 OID 20626)
-- Dependencies: 214
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO products VALUES (1, 'iPhone X 256GB Space Gray', 'iPhone X je vlastne len obrazovka. Má 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením. Jeho
konštrukciu s vôbec najodolnejším sklom na smartfóne navyše spevňuje pruh z chirurgickej ocele. Nabíja sa
bezdrôtovo. Je odolný proti vode a prachu. Má 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu na
zachytávanie výborných fotiek i pri slabom svetle. TrueDepth kameru pre selfie v portrétnom režime s portrétnym
nasvietením. Vyspelé rozpoznávánie tváre, ktoré bezpečne odomkne iPhone X doslova na pohľad. A11 Bionic je
vôbec najvýkonnejší a najchytrejší čip v smartfóne. Podporuje rozšírenú realitu v hrách a aplikáciách.
S iPhonom X začína nová éra iPhonu.

Kľúčové funkcie

- 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením
- Konštrukcia z nerezovej ocele s celoskleneným povrchom, odolnosť proti vode a prachu
- 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu, portrétnym režimom, portrétnym nasvietením
a nahrávaním 4K videa až pri 60 fps
- 7MP predná TrueDepth kamera s portrétnym režimom a potrétnym nasvietením
- Face ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 1309, 5, 2, 4, '2018-04-22 17:54:29', '2018-04-22 17:54:29', 'dd81ac3da2d36fa5fae0aada741445871524419669.jpg');
INSERT INTO products VALUES (2, 'iPhone X 64GB Space Gray', 'iPhone X je vlastne len obrazovka. Má 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením. Jeho
konštrukciu s vôbec najodolnejším sklom na smartfóne navyše spevňuje pruh z chirurgickej ocele. Nabíja sa
bezdrôtovo. Je odolný proti vode a prachu. Má 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu na
zachytávanie výborných fotiek i pri slabom svetle. TrueDepth kameru pre selfie v portrétnom režime s portrétnym
nasvietením. Vyspelé rozpoznávánie tváre, ktoré bezpečne odomkne iPhone X doslova na pohľad. A11 Bionic je
vôbec najvýkonnejší a najchytrejší čip v smartfóne. Podporuje rozšírenú realitu v hrách a aplikáciách.
S iPhonom X začína nová éra iPhonu.

Kľúčové funkcie

- 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením
- Konštrukcia z nerezovej ocele s celoskleneným povrchom, odolnosť proti vode a prachu
- 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu, portrétnym režimom, portrétnym nasvietením
a nahrávaním 4K videa až pri 60 fps
- 7MP predná TrueDepth kamera s portrétnym režimom a potrétnym nasvietením
- Face ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 1120, 3, 2, 4, '2018-04-22 17:55:28', '2018-04-22 17:55:28', 'dd81ac3da2d36fa5fae0aada741445871524419728.jpg');
INSERT INTO products VALUES (3, 'iPhone X 64GB Silver', 'iPhone X je vlastne len obrazovka. Má 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením. Jeho
konštrukciu s vôbec najodolnejším sklom na smartfóne navyše spevňuje pruh z chirurgickej ocele. Nabíja sa
bezdrôtovo. Je odolný proti vode a prachu. Má 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu na
zachytávanie výborných fotiek i pri slabom svetle. TrueDepth kameru pre selfie v portrétnom režime s portrétnym
nasvietením. Vyspelé rozpoznávánie tváre, ktoré bezpečne odomkne iPhone X doslova na pohľad. A11 Bionic je
vôbec najvýkonnejší a najchytrejší čip v smartfóne. Podporuje rozšírenú realitu v hrách a aplikáciách.
S iPhonom X začína nová éra iPhonu.

Kľúčové funkcie

- 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením
- Konštrukcia z nerezovej ocele s celoskleneným povrchom, odolnosť proti vode a prachu
- 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu, portrétnym režimom, portrétnym nasvietením
a nahrávaním 4K videa až pri 60 fps
- 7MP predná TrueDepth kamera s portrétnym režimom a potrétnym nasvietením
- Face ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 1120, 3, 2, 3, '2018-04-22 17:57:05', '2018-04-22 17:57:29', '8d4ded52f26fcca90971c1c5f1cbe82c1524419825.jpg');
INSERT INTO products VALUES (4, 'iPhone X 256GB Silver', 'iPhone X je vlastne len obrazovka. Má 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením. Jeho
konštrukciu s vôbec najodolnejším sklom na smartfóne navyše spevňuje pruh z chirurgickej ocele. Nabíja sa
bezdrôtovo. Je odolný proti vode a prachu. Má 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu na
zachytávanie výborných fotiek i pri slabom svetle. TrueDepth kameru pre selfie v portrétnom režime s portrétnym
nasvietením. Vyspelé rozpoznávánie tváre, ktoré bezpečne odomkne iPhone X doslova na pohľad. A11 Bionic je
vôbec najvýkonnejší a najchytrejší čip v smartfóne. Podporuje rozšírenú realitu v hrách a aplikáciách.
S iPhonom X začína nová éra iPhonu.


Kľúčové funkcie

- 5,8-palcový Super Retina HD displej s HDR a True Tone zobrazením
- Konštrukcia z nerezovej ocele s celoskleneným povrchom, odolnosť proti vode a prachu
- 12MP dvojitý fotoaparát s dvojitou optickou stabilizáciou obrazu, portrétnym režimom, portrétnym nasvietením
a nahrávaním 4K videa až pri 60 fps
- 7MP predná TrueDepth kamera s portrétnym režimom a potrétnym nasvietením
- Face ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 1309, 5, 2, 3, '2018-04-22 17:58:37', '2018-04-22 17:58:37', '8d4ded52f26fcca90971c1c5f1cbe82c1524419917.jpg');
INSERT INTO products VALUES (5, 'iPhone 8 64GB Space Gray', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 801, 3, 2, 4, '2018-04-22 18:00:18', '2018-04-22 18:00:18', '1a81feb046fb74cfa2a39cc0ff0ad0491524420018.jpg');
INSERT INTO products VALUES (6, 'iPhone 8 256GB Space Gray', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 801, 5, 2, 4, '2018-04-22 18:00:41', '2018-04-22 18:00:41', '1a81feb046fb74cfa2a39cc0ff0ad0491524420041.jpg');
INSERT INTO products VALUES (8, 'iPhone 8 64GB Gold', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 801, 3, 2, 1, '2018-04-22 18:02:24', '2018-04-22 18:02:24', 'f54e21a79446fe8de996d135f69c768e1524420144.jpg');
INSERT INTO products VALUES (9, 'iPhone 8 128GB Gold', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 901, 4, 2, 1, '2018-04-22 18:02:38', '2018-04-22 18:02:38', 'f54e21a79446fe8de996d135f69c768e1524420158.jpg');
INSERT INTO products VALUES (10, 'iPhone 8 256GB Gold', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 999, 5, 2, 1, '2018-04-22 18:02:55', '2018-04-22 18:02:55', 'f54e21a79446fe8de996d135f69c768e1524420175.jpg');
INSERT INTO products VALUES (11, 'iPhone 8 256GB Silver', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 999, 5, 2, 3, '2018-04-22 18:04:08', '2018-04-22 18:04:08', '26023d2fdf9bc7bd5f8848a2b6308def1524420248.jpg');
INSERT INTO products VALUES (12, 'iPhone 8 128GB Silver', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 803, 4, 2, 3, '2018-04-22 18:04:18', '2018-04-22 18:05:03', '26023d2fdf9bc7bd5f8848a2b6308def1524420258.jpg');
INSERT INTO products VALUES (13, 'iPhone 8 64GB Silver', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 801, 3, 2, 3, '2018-04-22 18:04:32', '2018-04-22 18:04:32', '26023d2fdf9bc7bd5f8848a2b6308def1524420272.jpg');
INSERT INTO products VALUES (7, 'iPhone 8 128GB Space Gray', 'iPhone 8 predstavuje novú generáciu iPhonu. Jeho konštrukciu s vôbec nejodolnejším sklom na smartfóne
navyše spevňuje pruh z leteckého hliníka. Nabíja sa bezdrôtovo. Je odolný proti vode a prachu. Má 4,7-palcový
Retina HD displej s True Tone zobrazením. 12MP fotoaparát s novým snímačom a výkonným obrazovým 
signálovým procesorom. A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne. A podporuje rozšírenú realitu v
hrách a aplikáciách. iPhone 8. Pekne inteligentný telefón.

- 4,7-palcový Retina HD displej s True Tone zobrazením
- Konštrukcia zo skla a hliníka, odolnosť proti vode a prachu
- 12MP fotoaparát s optickou stabilizáciou obrazu a nahrávaním 4K videa až pri 60 fps
- 7MP fotoaparát FaceTime HD s bleskom Retina Flash pre parádne selfie
- Touch ID pre bezpečné overovanie
- A11 Bionic, vôbec najvýkonnejší a najchytrejší čip v smartfóne
- Bezdrôtové nabíjanie s podporou Qi nabíjačiek', 901, 4, 2, 4, '2018-04-22 18:00:59', '2018-04-22 18:04:46', '1a81feb046fb74cfa2a39cc0ff0ad0491524420059.jpg');
INSERT INTO products VALUES (14, 'iPad mini 4 128GB Wi-Fi Space Gray', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 429, 4, 3, 4, '2018-04-22 18:07:28', '2018-04-22 18:07:28', '8517d11f780470f3d4eb5658335c950e1524420448.jpg');
INSERT INTO products VALUES (15, 'iPad mini 4 64GB Wi-Fi Space Gray', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 388, 3, 3, 4, '2018-04-22 18:07:49', '2018-04-22 18:07:49', '8517d11f780470f3d4eb5658335c950e1524420469.jpg');
INSERT INTO products VALUES (16, 'iPad mini 4 32GB Wi-Fi Space Gray', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 350, 2, 3, 4, '2018-04-22 18:08:03', '2018-04-22 18:08:03', '8517d11f780470f3d4eb5658335c950e1524420483.jpg');
INSERT INTO products VALUES (17, 'iPad mini 4 16GB Wi-Fi Space Gray', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 312, 1, 3, 4, '2018-04-22 18:08:17', '2018-04-22 18:08:17', '8517d11f780470f3d4eb5658335c950e1524420497.jpg');
INSERT INTO products VALUES (18, 'iPad mini 4 128GB Wi-Fi Silver', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 429, 4, 3, 3, '2018-04-22 18:09:56', '2018-04-22 18:09:56', 'a6dede569ac3dec6701b4a15b400a09d1524420596.jpg');
INSERT INTO products VALUES (19, 'iPad mini 4 64GB Wi-Fi Silver', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 399, 3, 3, 3, '2018-04-22 18:10:09', '2018-04-22 18:10:09', 'a6dede569ac3dec6701b4a15b400a09d1524420609.jpg');
INSERT INTO products VALUES (20, 'iPad mini 4 32GB Wi-Fi Silver', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 350, 2, 3, 3, '2018-04-22 18:10:32', '2018-04-22 18:10:32', 'a6dede569ac3dec6701b4a15b400a09d1524420632.jpg');
INSERT INTO products VALUES (21, 'iPad mini 4 16GB Wi-Fi Silver', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 320, 1, 3, 3, '2018-04-22 18:10:48', '2018-04-22 18:10:48', 'a6dede569ac3dec6701b4a15b400a09d1524420648.jpg');
INSERT INTO products VALUES (22, 'iPad mini 4 16GB Wi-Fi Gold', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 320, 1, 3, 1, '2018-04-22 18:11:31', '2018-04-22 18:11:31', 'fae5a8980c192f4bc7d1b065586319011524420691.jpg');
INSERT INTO products VALUES (23, 'iPad mini 4 32GB Wi-Fi Gold', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 360, 2, 3, 1, '2018-04-22 18:11:41', '2018-04-22 18:11:41', 'fae5a8980c192f4bc7d1b065586319011524420701.jpg');
INSERT INTO products VALUES (24, 'iPad mini 4 64GB Wi-Fi Gold', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 390, 3, 3, 1, '2018-04-22 18:11:53', '2018-04-22 18:11:53', 'fae5a8980c192f4bc7d1b065586319011524420713.jpg');
INSERT INTO products VALUES (25, 'iPad mini 4 128GB Wi-Fi Gold', 'iPad mini 4 má nádherný 7,9-palcový displej Retina, pritom je tenký len 6,1 mm a váži len
necelých 300 gramov. Bez problémov sa tak zmestí do dlane alebo do tašky. Má výkonný čip A8
so 64-bitovou architektúrou na úrovni PC, kamery iSight a FaceTime HD, Touch ID, pripojenie Wi-Fi 
a batériu s výdržou až do 10 hodín. Obsahuje aj skvelé aplikácie na zvýšenie produktivity a kreativity, 
ako aj výkonné funkcie multitaskingu v systéme iOS 10 a viac ako milión aplikácií v App Store, ktoré sú 
navrhnuté práve pre iPad.

Kľúčové funkcie

- 7,9-palcový Retina displej s antireflexnou povrchovou úpravou
- Čip A8 druhej generácie so 64-bitovou architektúrou na úrovni stolného počítača
- Senzor odtlačku prsta Touch ID
- 8 Mpx kamera iSight s nahrávaním 1 080p videa
- 1,2 Mpx kamera FaceTime HD
- Wi-Fi 802.11ac s technológiou MIMO
- Výdrž batérie až do 10 hodín
- Dva reproduktory', 444, 4, 3, 1, '2018-04-22 18:12:06', '2018-04-22 18:12:06', 'fae5a8980c192f4bc7d1b065586319011524420726.jpg');
INSERT INTO products VALUES (26, 'iPhone 7 32GB Rose Gold', 'iPhone 7 má úplne novú 12 Mpx kameru s clonou f/1,8 pre úžasné fotky a 4K videá aj pri slabom
osvetlení. Optická stabilizácia obrazu. 4,7-palcový displej Retina HD so širokým farebným spektrom
a technológiou 3D Touch. Čip A10 Fusion, ktorý má až dvakrát vyšší výkon než iPhone 6. Touch ID.
Ultrarýchle bezdrôtové pripojenie. iPhone s najdlhšou výdržou batérie. Pôsobivý stereofónny zvuk,
odolnosť voči poliatiu a vode a iOS 10.
Kľúčové funkcie

- 4,7-palcový (diagonálne) displej Retina HD s rozlíšením 1 334 x 750 a širokým farebným spektrom
- 3D Touch
- Nová 12 Mpx kamera, optická stabilizácia obrazu, blesk True Tone Flash so štyrmi diódami a Live Photos
- Odolnosť voči poliatiu, vode a prachu
- Čip A10 Fusion s integrovaným pohybovým koprocesorom M10
- Nahrávanie 4K videa pri 30 snímkach/s a spomaleného videa s rozlíšením 1 080p pri 120 snímkach/s
- 7 Mpx kamera FaceTime HD s bleskom Retina Flash
- Senzor odtlačku prsta Touch ID v novom tlačidle Domov
- LTE Advanced s rýchlosťou až 450 Mb/s a Wi-Fi 802.11a/b/g/n/ac s technológiou MIMO
- iOS 10 a iCloud
- K dispozícii v temnej čiernej, čiernej, striebornej, zlatej a ružovozlatej', 602, 2, 2, 2, '2018-04-22 18:28:02', '2018-04-22 18:28:02', '75dbf92ca78511de643f839a64cfe7761524421682.jpg');
INSERT INTO products VALUES (27, 'iPhone 7 64GB Rose Gold', 'iPhone 7 má úplne novú 12 Mpx kameru s clonou f/1,8 pre úžasné fotky a 4K videá aj pri slabom
osvetlení. Optická stabilizácia obrazu. 4,7-palcový displej Retina HD so širokým farebným spektrom
a technológiou 3D Touch. Čip A10 Fusion, ktorý má až dvakrát vyšší výkon než iPhone 6. Touch ID.
Ultrarýchle bezdrôtové pripojenie. iPhone s najdlhšou výdržou batérie. Pôsobivý stereofónny zvuk,
odolnosť voči poliatiu a vode a iOS 10.
Kľúčové funkcie

- 4,7-palcový (diagonálne) displej Retina HD s rozlíšením 1 334 x 750 a širokým farebným spektrom
- 3D Touch
- Nová 12 Mpx kamera, optická stabilizácia obrazu, blesk True Tone Flash so štyrmi diódami a Live Photos
- Odolnosť voči poliatiu, vode a prachu
- Čip A10 Fusion s integrovaným pohybovým koprocesorom M10
- Nahrávanie 4K videa pri 30 snímkach/s a spomaleného videa s rozlíšením 1 080p pri 120 snímkach/s
- 7 Mpx kamera FaceTime HD s bleskom Retina Flash
- Senzor odtlačku prsta Touch ID v novom tlačidle Domov
- LTE Advanced s rýchlosťou až 450 Mb/s a Wi-Fi 802.11a/b/g/n/ac s technológiou MIMO
- iOS 10 a iCloud
- K dispozícii v temnej čiernej, čiernej, striebornej, zlatej a ružovozlatej', 712, 3, 2, 2, '2018-04-22 18:28:15', '2018-04-22 18:28:15', '75dbf92ca78511de643f839a64cfe7761524421695.jpg');
INSERT INTO products VALUES (28, 'iPhone 7 128GB Rose Gold', 'iPhone 7 má úplne novú 12 Mpx kameru s clonou f/1,8 pre úžasné fotky a 4K videá aj pri slabom
osvetlení. Optická stabilizácia obrazu. 4,7-palcový displej Retina HD so širokým farebným spektrom
a technológiou 3D Touch. Čip A10 Fusion, ktorý má až dvakrát vyšší výkon než iPhone 6. Touch ID.
Ultrarýchle bezdrôtové pripojenie. iPhone s najdlhšou výdržou batérie. Pôsobivý stereofónny zvuk,
odolnosť voči poliatiu a vode a iOS 10.
Kľúčové funkcie

- 4,7-palcový (diagonálne) displej Retina HD s rozlíšením 1 334 x 750 a širokým farebným spektrom
- 3D Touch
- Nová 12 Mpx kamera, optická stabilizácia obrazu, blesk True Tone Flash so štyrmi diódami a Live Photos
- Odolnosť voči poliatiu, vode a prachu
- Čip A10 Fusion s integrovaným pohybovým koprocesorom M10
- Nahrávanie 4K videa pri 30 snímkach/s a spomaleného videa s rozlíšením 1 080p pri 120 snímkach/s
- 7 Mpx kamera FaceTime HD s bleskom Retina Flash
- Senzor odtlačku prsta Touch ID v novom tlačidle Domov
- LTE Advanced s rýchlosťou až 450 Mb/s a Wi-Fi 802.11a/b/g/n/ac s technológiou MIMO
- iOS 10 a iCloud
- K dispozícii v temnej čiernej, čiernej, striebornej, zlatej a ružovozlatej', 799, 4, 2, 2, '2018-04-22 18:28:27', '2018-04-22 18:28:27', '75dbf92ca78511de643f839a64cfe7761524421707.jpg');
INSERT INTO products VALUES (29, 'MacBook Pro 15" Retina Touch Bar i7 2.8GHz 16GB 256GB Silver SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti revolučný Touch Bar – prúžok skla vstavaný do
klávesnice, ktorý podporuje technológiu Multi-Touch a poskytuje okamžitý prístup k tomu, čo chceš robiť, a presne
vtedy, keď to potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Štvorjadrový procesor Intel Core i7
- Radeon Pro 555 s 2 GB pamäte
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2799, 5, 1, 3, '2018-04-22 18:29:42', '2018-04-22 18:29:42', '675bd592458d19ae245312fad4a5c03a1524421782.jpg');
INSERT INTO products VALUES (30, 'MacBook Pro 15" Retina Touch Bar i7 2.8GHz 16GB 512GB Silver SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti revolučný Touch Bar – prúžok skla vstavaný do
klávesnice, ktorý podporuje technológiu Multi-Touch a poskytuje okamžitý prístup k tomu, čo chceš robiť, a presne
vtedy, keď to potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Štvorjadrový procesor Intel Core i7
- Radeon Pro 555 s 2 GB pamäte
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2899, 6, 1, 3, '2018-04-22 18:30:30', '2018-04-22 18:30:30', '675bd592458d19ae245312fad4a5c03a1524421830.jpg');
INSERT INTO products VALUES (31, 'MacBook Pro 15" Retina Touch Bar i7 2.8GHz 16GB 1024GB Silver SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti revolučný Touch Bar – prúžok skla vstavaný do
klávesnice, ktorý podporuje technológiu Multi-Touch a poskytuje okamžitý prístup k tomu, čo chceš robiť, a presne
vtedy, keď to potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Štvorjadrový procesor Intel Core i7
- Radeon Pro 555 s 2 GB pamäte
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2999, 7, 1, 3, '2018-04-22 18:30:44', '2018-04-22 18:30:44', '675bd592458d19ae245312fad4a5c03a1524421844.jpg');
INSERT INTO products VALUES (32, 'MacBook Pro 15" Retina Touch Bar i7 2.8GHz 16GB 1024GB Space Gray SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti revolučný Touch Bar – prúžok skla vstavaný do
klávesnice, ktorý podporuje technológiu Multi-Touch a poskytuje okamžitý prístup k tomu, čo chceš robiť, a presne
vtedy, keď to potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Štvorjadrový procesor Intel Core i7
- Radeon Pro 555 s 2 GB pamäte
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2999, 7, 1, 4, '2018-04-22 18:32:12', '2018-04-22 18:32:12', 'aca1ae479f5dfe84b51e314989f328f31524421932.jpg');
INSERT INTO products VALUES (33, 'MacBook Pro 15" Retina Touch Bar i7 2.8GHz 16GB 512GB Space Gray SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti revolučný Touch Bar – prúžok skla vstavaný do
klávesnice, ktorý podporuje technológiu Multi-Touch a poskytuje okamžitý prístup k tomu, čo chceš robiť, a presne
vtedy, keď to potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Štvorjadrový procesor Intel Core i7
- Radeon Pro 555 s 2 GB pamäte
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2899, 6, 1, 4, '2018-04-22 18:32:23', '2018-04-22 18:32:23', 'aca1ae479f5dfe84b51e314989f328f31524421943.jpg');
INSERT INTO products VALUES (34, 'MacBook Pro 15" Retina Touch Bar i7 2.8GHz 16GB 256GB Space Gray SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti revolučný Touch Bar – prúžok skla vstavaný do
klávesnice, ktorý podporuje technológiu Multi-Touch a poskytuje okamžitý prístup k tomu, čo chceš robiť, a presne
vtedy, keď to potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Štvorjadrový procesor Intel Core i7
- Radeon Pro 555 s 2 GB pamäte
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2799, 5, 1, 4, '2018-04-22 18:32:37', '2018-04-22 18:32:37', 'aca1ae479f5dfe84b51e314989f328f31524421957.jpg');
INSERT INTO products VALUES (35, 'MacBook Pro 13" Retina Touch Bar i5 3.1GHz 8GB 1024GB Silver SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti prevratný Touch Bar – prúžok skla vstavaný do
klávesnice s technológiou Multi-Touch, aby si mal okamžite poruke všetko, čo potrebuješ presne vtedy, keď to
potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Dvojjadrový Intel Core i5
- Intel Iris Plus Graphics 650
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 2149, 7, 1, 3, '2018-04-22 18:34:37', '2018-04-22 18:34:37', '39a8a319abecb36ca70be6c81dc949b41524422077.jpg');
INSERT INTO products VALUES (36, 'MacBook Pro 13" Retina Touch Bar i5 3.1GHz 8GB 512GB Silver SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti prevratný Touch Bar – prúžok skla vstavaný do
klávesnice s technológiou Multi-Touch, aby si mal okamžite poruke všetko, čo potrebuješ presne vtedy, keď to
potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Dvojjadrový Intel Core i5
- Intel Iris Plus Graphics 650
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 1999, 6, 1, 3, '2018-04-22 18:34:54', '2018-04-22 18:34:54', '39a8a319abecb36ca70be6c81dc949b41524422094.jpg');
INSERT INTO products VALUES (37, 'MacBook Pro 13" Retina Touch Bar i5 3.1GHz 8GB 256GB Silver SK', 'Nový MacBook Pro je rýchlejší a výkonnejší než predtým, a pritom výrazne tenší a ľahší. Má ten najjasnejší a
najfarebnejší displej v histórii notebookov Mac. A prináša ti prevratný Touch Bar – prúžok skla vstavaný do
klávesnice s technológiou Multi-Touch, aby si mal okamžite poruke všetko, čo potrebuješ presne vtedy, keď to
potrebuješ. Nový MacBook Pro je založený na prevratných nápadoch. A je pripravený na tie tvoje.

Objav nový MacBook Pro > 


Kľúčové funkcie

- Touch Bar
- Touch ID
- Brilantný displej Retina
- Dvojjadrový Intel Core i5
- Intel Iris Plus Graphics 650
- Ultrarýchly disk SSD
- Štyri porty Thunderbolt 3
- Výdrž batérie až do 10 hodín
- Wi-Fi 802.11ac
- Trackpad Force Touch
- Je k dispozícii v kozmickej sivej a striebornej farbe', 1888, 5, 1, 3, '2018-04-22 18:35:05', '2018-04-22 18:35:05', '39a8a319abecb36ca70be6c81dc949b41524422105.jpg');
INSERT INTO products VALUES (38, 'MacBook 12" Retina Core M3 1.2GHz 8GB 256GB Rose Gold', 'MacBook prináša plnohodnotný zážitok v podobe najľahšieho a najkompaktnejšieho notebooku Mac v histórii.
Klávesnica štandardnej veľkosti, trackpad citlivý na tlak, 12-palcový displej Retina, procesor Intel Core m3, i5 alebo i7
7. generácie, multifunkčný port USB-C a batéria s výdržou až do 12 hodín. MacBook prináša pokrok v neuveriteľne
kompaktnej podobe.

Kľúčové funkcie

- Dvojjadrový procesor 7. generácie Intel Core m3, i5 alebo i7
- Intel HD Graphics 615
- 256GB alebo 512GB SSD PCIe na doske
- Port USB-C
- Výdrž batérie až do 12 hodín
- Wi-Fi 802.11ac, Bluetooth 4.2
- Trackpad Force Touch
- Je k dispozícii v ružovozlatej, zlatej, kozmickej sivej a striebornej farbe', 1379, 5, 1, 2, '2018-04-22 18:36:06', '2018-04-22 18:36:06', '672bfaa9334c436621688f273a85c5471524422166.jpg');
INSERT INTO products VALUES (40, 'MacBook 12" Retina Core M3 1.2GHz 8GB 512GB Rose Gold', 'MacBook prináša plnohodnotný zážitok v podobe najľahšieho a najkompaktnejšieho notebooku Mac v histórii.
Klávesnica štandardnej veľkosti, trackpad citlivý na tlak, 12-palcový displej Retina, procesor Intel Core m3, i5 alebo i7
7. generácie, multifunkčný port USB-C a batéria s výdržou až do 12 hodín. MacBook prináša pokrok v neuveriteľne
kompaktnej podobe.

Kľúčové funkcie

- Dvojjadrový procesor 7. generácie Intel Core m3, i5 alebo i7
- Intel HD Graphics 615
- 256GB alebo 512GB SSD PCIe na doske
- Port USB-C
- Výdrž batérie až do 12 hodín
- Wi-Fi 802.11ac, Bluetooth 4.2
- Trackpad Force Touch
- Je k dispozícii v ružovozlatej, zlatej, kozmickej sivej a striebornej farbe', 1444, 6, 1, 2, '2018-04-22 18:36:36', '2018-04-22 18:36:36', '672bfaa9334c436621688f273a85c5471524422196.jpg');
INSERT INTO products VALUES (39, 'MacBook 12" Retina Core M3 1.2GHz 8GB 126GB Rose Gold', 'MacBook prináša plnohodnotný zážitok v podobe najľahšieho a najkompaktnejšieho notebooku Mac v histórii.
Klávesnica štandardnej veľkosti, trackpad citlivý na tlak, 12-palcový displej Retina, procesor Intel Core m3, i5 alebo i7
7. generácie, multifunkčný port USB-C a batéria s výdržou až do 12 hodín. MacBook prináša pokrok v neuveriteľne
kompaktnej podobe.

Kľúčové funkcie

- Dvojjadrový procesor 7. generácie Intel Core m3, i5 alebo i7
- Intel HD Graphics 615
- 256GB alebo 512GB SSD PCIe na doske
- Port USB-C
- Výdrž batérie až do 12 hodín
- Wi-Fi 802.11ac, Bluetooth 4.2
- Trackpad Force Touch
- Je k dispozícii v ružovozlatej, zlatej, kozmickej sivej a striebornej farbe', 1179, 4, 1, 2, '2018-04-22 18:36:19', '2018-04-22 18:36:56', '672bfaa9334c436621688f273a85c5471524422179.jpg');


--
-- TOC entry 3250 (class 0 OID 20676)
-- Dependencies: 219
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3230 (class 0 OID 20540)
-- Dependencies: 199
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO users VALUES (1, 'admin@admin.sk', '$2y$10$suc6UxXGi1wTWgtO9UzxAuoiyNroY9meCZA8xGaq3JFCXtWGcFGpG', '0901111111', 'Jozko Mrkvicka', 'Laravel 5', 'Bratislava', '80265', 'Admin Admin', 'Laravel 5', 'Bratislava', '80265', false, 'ZTMLRshjSBtRiR6U0HeYttfPcnQyXpHddMcdffnsqQ9TsJ6DdnLMPsEeC868', '2018-04-22 17:41:05', '2018-04-22 17:41:05');
INSERT INTO users VALUES (2, 'user@user.sk', '$2y$10$31tJlFliqHdf4soJmfARLe.F3vDnvBdHpDz/5PhDedDW0DRjqW0ui', '0922222222', 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', 'Marek Mrkvicka', 'HTML CSS', 'Bratislava', '08001', true, 'QYaogl1qeeP5oMVrnthSQ0vJyYm276xX7NC6AQzfPxQpAwAuhj54XPH5Lx1b', '2018-04-22 19:04:45', '2018-04-22 19:04:45');


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 217
-- Name: actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actions_id_seq', 4, true);


--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 201
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categories_id_seq', 1, false);


--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 203
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('colors_id_seq', 1, false);


--
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 205
-- Name: deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('deliveries_id_seq', 1, false);


--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 207
-- Name: memories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('memories_id_seq', 1, false);


--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 196
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('migrations_id_seq', 12, true);


--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 211
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orders_id_seq', 6, true);


--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 209
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('payments_id_seq', 1, false);


--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 215
-- Name: product__orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product__orders_id_seq', 10, true);


--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 213
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 40, true);


--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 198
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- TOC entry 3095 (class 2606 OID 20675)
-- Name: actions actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3079 (class 2606 OID 20565)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3081 (class 2606 OID 20573)
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- TOC entry 3083 (class 2606 OID 20581)
-- Name: deliveries deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);


--
-- TOC entry 3085 (class 2606 OID 20589)
-- Name: memories memories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY memories
    ADD CONSTRAINT memories_pkey PRIMARY KEY (id);


--
-- TOC entry 3072 (class 2606 OID 20537)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3089 (class 2606 OID 20608)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3087 (class 2606 OID 20597)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3093 (class 2606 OID 20657)
-- Name: product__orders product__orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product__orders
    ADD CONSTRAINT product__orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3091 (class 2606 OID 20634)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3097 (class 2606 OID 20683)
-- Name: sessions sessions_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_id_unique UNIQUE (id);


--
-- TOC entry 3074 (class 2606 OID 20550)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 3076 (class 2606 OID 20548)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 1259 OID 20557)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON password_resets USING btree (email);


--
-- TOC entry 3100 (class 2606 OID 20619)
-- Name: orders orders_delivery_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_delivery_id_foreign FOREIGN KEY (delivery_id) REFERENCES deliveries(id);


--
-- TOC entry 3099 (class 2606 OID 20614)
-- Name: orders orders_payment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_payment_id_foreign FOREIGN KEY (payment_id) REFERENCES payments(id);


--
-- TOC entry 3098 (class 2606 OID 20609)
-- Name: orders orders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id);


--
-- TOC entry 3105 (class 2606 OID 20663)
-- Name: product__orders product__orders_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product__orders
    ADD CONSTRAINT product__orders_order_id_foreign FOREIGN KEY (order_id) REFERENCES orders(id);


--
-- TOC entry 3104 (class 2606 OID 20658)
-- Name: product__orders product__orders_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product__orders
    ADD CONSTRAINT product__orders_product_id_foreign FOREIGN KEY (product_id) REFERENCES products(id);


--
-- TOC entry 3102 (class 2606 OID 20640)
-- Name: products products_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_category_id_foreign FOREIGN KEY (category_id) REFERENCES categories(id);


--
-- TOC entry 3103 (class 2606 OID 20645)
-- Name: products products_color_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_color_id_foreign FOREIGN KEY (color_id) REFERENCES colors(id);


--
-- TOC entry 3101 (class 2606 OID 20635)
-- Name: products products_memory_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_memory_id_foreign FOREIGN KEY (memory_id) REFERENCES memories(id);


-- Completed on 2018-04-23 14:08:27 CEST

--
-- PostgreSQL database dump complete
--

