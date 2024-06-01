--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

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
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: sixuan
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO sixuan;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sixuan
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_id_seq OWNER TO sixuan;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixuan
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: sixuan
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO sixuan;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: sixuan
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_lock_index_seq OWNER TO sixuan;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixuan
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sixuan
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.users OWNER TO sixuan;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sixuan
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO sixuan;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sixuan
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: sixuan
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: sixuan
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: sixuan
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: sixuan
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
1	20240530180750_create_users_table.js	1	2024-05-30 14:19:06.158-04
\.


--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: sixuan
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sixuan
--

COPY public.users (id, name, email, created_at, updated_at) FROM stdin;
1	Hettie Marshall	lantunde@acbo.va	\N	\N
2	Hester Owens	zo@girih.lv	\N	\N
3	Henry Jackson	bekamohi@owo.mt	\N	\N
\.


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixuan
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 1, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: sixuan
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sixuan
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: sixuan
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sixuan
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sixuan
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

