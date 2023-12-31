toc.dat                                                                                             0000600 0004000 0002000 00000026140 14457502003 0014442 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       "         
            {            db_jwtbootcamp    15.2    15.2 &    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         1           1262    47379    db_jwtbootcamp    DATABASE     �   CREATE DATABASE db_jwtbootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_jwtbootcamp;
                postgres    false         �            1259    315530 	   bootcamps    TABLE       CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    cue integer NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.bootcamps;
       public         heap    postgres    false         �            1259    315529    bootcamps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bootcamps_id_seq;
       public          postgres    false    219         2           0    0    bootcamps_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;
          public          postgres    false    218         �            1259    315538    user_bootcamp    TABLE     �   CREATE TABLE public.user_bootcamp (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "bootcampId" integer NOT NULL
);
 !   DROP TABLE public.user_bootcamp;
       public         heap    postgres    false         �            1259    315518    users    TABLE     m  CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    status boolean DEFAULT true,
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    315517    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217         3           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216         r           2604    315533    bootcamps id    DEFAULT     l   ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);
 ;   ALTER TABLE public.bootcamps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219         p           2604    315521    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217         *          0    315530 	   bootcamps 
   TABLE DATA           Z   COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219       3370.dat +          0    315538    user_bootcamp 
   TABLE DATA           Y   COPY public.user_bootcamp ("createdAt", "updatedAt", "userId", "bootcampId") FROM stdin;
    public          postgres    false    220       3371.dat (          0    315518    users 
   TABLE DATA           o   COPY public.users (id, "firstName", "lastName", email, status, password, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217       3368.dat 4           0    0    bootcamps_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);
          public          postgres    false    218         5           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    216         �           2606    315537    bootcamps bootcamps_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bootcamps DROP CONSTRAINT bootcamps_pkey;
       public            postgres    false    219         �           2606    315542     user_bootcamp user_bootcamp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_pkey PRIMARY KEY ("userId", "bootcampId");
 J   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT user_bootcamp_pkey;
       public            postgres    false    220    220         t           2606    315831    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    217         v           2606    315829    users users_email_key1 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key1;
       public            postgres    false    217         x           2606    315847    users users_email_key10 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key10 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key10;
       public            postgres    false    217         z           2606    315825    users users_email_key11 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key11 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key11;
       public            postgres    false    217         |           2606    315849    users users_email_key12 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key12 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key12;
       public            postgres    false    217         ~           2606    315823    users users_email_key13 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key13 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key13;
       public            postgres    false    217         �           2606    315851    users users_email_key14 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key14 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key14;
       public            postgres    false    217         �           2606    315833    users users_email_key2 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key2;
       public            postgres    false    217         �           2606    315835    users users_email_key3 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key3;
       public            postgres    false    217         �           2606    315837    users users_email_key4 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key4 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key4;
       public            postgres    false    217         �           2606    315839    users users_email_key5 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key5 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key5;
       public            postgres    false    217         �           2606    315827    users users_email_key6 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key6 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key6;
       public            postgres    false    217         �           2606    315841    users users_email_key7 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key7 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key7;
       public            postgres    false    217         �           2606    315843    users users_email_key8 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key8 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key8;
       public            postgres    false    217         �           2606    315845    users users_email_key9 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key9 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key9;
       public            postgres    false    217         �           2606    315526    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217         �           2606    315548 +   user_bootcamp user_bootcamp_bootcampId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_bootcampId_fkey" FOREIGN KEY ("bootcampId") REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT "user_bootcamp_bootcampId_fkey";
       public          postgres    false    220    3220    219         �           2606    315543 '   user_bootcamp user_bootcamp_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT "user_bootcamp_userId_fkey";
       public          postgres    false    217    3218    220                                                                                                                                                                                                                                                                                                                                                                                                                                        3370.dat                                                                                            0000600 0004000 0002000 00000001277 14457502003 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Introduciendo El Bootcamp De React	10	React es la librería más usada en JavaScript para el desarrollo de interfaces.	2023-07-24 13:52:53.605+00	2023-07-24 13:52:53.605+00
2	Bootcamp Desarrollo Web Full Stack	12	Crearás aplicaciones web utilizando las tecnologías y lenguajes más actuales y populares como JavaScript, nodeJS, Angular, MongoDB, ExpressJS.	2023-07-24 13:54:16.358+00	2023-07-24 13:54:16.358+00
3	Bootcamp Big Data, Inteligencia Artificial & Machine Learning	18	Domina Data Science todo el ecosistema de lenguajes y herramientas de Big Data e integrarlos con modelos avanzados de Artificial Intelligence y Machine Learning.	2023-07-24 13:55:00.515+00	2023-07-24 13:55:00.515+00
\.


                                                                                                                                                                                                                                                                                                                                 3371.dat                                                                                            0000600 0004000 0002000 00000000533 14457502003 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2023-07-24 13:57:35.085+00	2023-07-24 13:57:35.085+00	1	1
2023-07-24 13:57:42.493+00	2023-07-24 13:57:42.493+00	2	1
2023-07-24 13:57:54.2+00	2023-07-24 13:57:54.2+00	1	2
2023-07-24 13:57:57.91+00	2023-07-24 13:57:57.91+00	1	3
2023-07-24 13:58:07.425+00	2023-07-24 13:58:07.425+00	2	3
2023-07-24 13:58:12.216+00	2023-07-24 13:58:12.216+00	3	3
\.


                                                                                                                                                                     3368.dat                                                                                            0000600 0004000 0002000 00000000702 14457502003 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Mateo	Díaz	mateo.diaz@correo.com	t	mateo123456	2023-07-24 13:42:38.469+00	2023-07-24 13:42:38.469+00
2	Santiago	Mejías	santiago.mejias@correo.com	t	santiago123456	2023-07-24 13:43:47.979+00	2023-07-24 13:43:47.979+00
3	Lucas	Rojas	lucas.rojas@correo.com	t	lucas123456	2023-07-24 13:44:21.261+00	2023-07-24 13:44:21.261+00
4	Facundo	Fernandez	facundo.fernandez@correo.com	t	facundo123456	2023-07-24 13:44:49.298+00	2023-07-24 13:44:49.298+00
\.


                                                              restore.sql                                                                                         0000600 0004000 0002000 00000021056 14457502003 0015370 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE db_jwtbootcamp;
--
-- Name: db_jwtbootcamp; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_jwtbootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE db_jwtbootcamp OWNER TO postgres;

\connect db_jwtbootcamp

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
-- Name: bootcamps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    cue integer NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.bootcamps OWNER TO postgres;

--
-- Name: bootcamps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bootcamps_id_seq OWNER TO postgres;

--
-- Name: bootcamps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;


--
-- Name: user_bootcamp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_bootcamp (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "bootcampId" integer NOT NULL
);


ALTER TABLE public.user_bootcamp OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    status boolean DEFAULT true,
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: bootcamps id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: bootcamps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM '$$PATH$$/3370.dat';

--
-- Data for Name: user_bootcamp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_bootcamp ("createdAt", "updatedAt", "userId", "bootcampId") FROM stdin;
\.
COPY public.user_bootcamp ("createdAt", "updatedAt", "userId", "bootcampId") FROM '$$PATH$$/3371.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, "firstName", "lastName", email, status, password, "createdAt", "updatedAt") FROM stdin;
\.
COPY public.users (id, "firstName", "lastName", email, status, password, "createdAt", "updatedAt") FROM '$$PATH$$/3368.dat';

--
-- Name: bootcamps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: bootcamps bootcamps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);


--
-- Name: user_bootcamp user_bootcamp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_pkey PRIMARY KEY ("userId", "bootcampId");


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_email_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);


--
-- Name: users users_email_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key10 UNIQUE (email);


--
-- Name: users users_email_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key11 UNIQUE (email);


--
-- Name: users users_email_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key12 UNIQUE (email);


--
-- Name: users users_email_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key13 UNIQUE (email);


--
-- Name: users users_email_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key14 UNIQUE (email);


--
-- Name: users users_email_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);


--
-- Name: users users_email_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);


--
-- Name: users users_email_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key4 UNIQUE (email);


--
-- Name: users users_email_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key5 UNIQUE (email);


--
-- Name: users users_email_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key6 UNIQUE (email);


--
-- Name: users users_email_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key7 UNIQUE (email);


--
-- Name: users users_email_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key8 UNIQUE (email);


--
-- Name: users users_email_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key9 UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: user_bootcamp user_bootcamp_bootcampId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_bootcampId_fkey" FOREIGN KEY ("bootcampId") REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_bootcamp user_bootcamp_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT "user_bootcamp_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  