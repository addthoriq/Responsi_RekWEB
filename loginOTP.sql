--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: users; Type: TABLE; Schema: public; Owner: loginOTP
--

CREATE TABLE public.users (
    kode_pengguna character(5) NOT NULL,
    nama_pengguna character varying(50) NOT NULL,
    email_pengguna character varying(30)
);


ALTER TABLE public.users OWNER TO "loginOTP";

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: loginOTP
--

COPY public.users (kode_pengguna, nama_pengguna, email_pengguna) FROM stdin;
12345	Kang Thoriq	siniajasmr@gmail.com
54321	Wakana Ookuma	download.thoriq@gmail.com
25431	Shibuya Kanon	cameroon.isaac@gmail.com
\.


--
-- Name: users users_email_pengguna_key; Type: CONSTRAINT; Schema: public; Owner: loginOTP
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_pengguna_key UNIQUE (email_pengguna);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: loginOTP
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (kode_pengguna);


--
-- PostgreSQL database dump complete
--

