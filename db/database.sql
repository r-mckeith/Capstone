--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: rmckeith
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);

--
-- Name: playlists; Type: TABLE; Schema: public; Owner: rmckeith
--

CREATE TABLE public.playlists (
    id integer NOT NULL,
    name character varying(255),
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);

--
-- Name: playlistsSongs; Type: TABLE; Schema: public; Owner: rmckeith
--

CREATE TABLE public."playlistsSongs" (
    "playlistId" integer NOT NULL,
    "songId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);

--
-- Name: playlists_id_seq; Type: SEQUENCE; Schema: public; Owner: rmckeith
--

CREATE SEQUENCE public.playlists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: playlists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rmckeith
--

ALTER SEQUENCE public.playlists_id_seq OWNED BY public.playlists.id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: rmckeith
--

CREATE TABLE public.songs (
    id integer NOT NULL,
    name character varying(255),
    artist character varying(255),
    album character varying(255),
    "deezerId" character varying(255),
    url character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: rmckeith
--

CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rmckeith
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: rmckeith
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    name character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);

--
-- Name: usersSongs; Type: TABLE; Schema: public; Owner: rmckeith
--

CREATE TABLE public."usersSongs" (
    "userId" integer NOT NULL,
    "songId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);



--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: rmckeith
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rmckeith
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: playlists id; Type: DEFAULT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.playlists ALTER COLUMN id SET DEFAULT nextval('public.playlists_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: rmckeith
--

COPY public."SequelizeMeta" (name) FROM stdin;
20210219185732-create-user.js
20210223002610-create-playlist.js
20210223002719-create-song.js
20210223002834-create-playlists-songs.js
20210225233749-create-song.js
20210225235426-create-song.js
20210226011155-create-users-songs.js
\.


--
-- Data for Name: playlists; Type: TABLE DATA; Schema: public; Owner: rmckeith
--

COPY public.playlists (id, name, "userId", "createdAt", "updatedAt") FROM stdin;
1	drive time	5	2021-04-06 09:39:43.404-07	2021-04-06 09:39:43.417-07
\.


--
-- Data for Name: playlistsSongs; Type: TABLE DATA; Schema: public; Owner: rmckeith
--

COPY public."playlistsSongs" ("playlistId", "songId", "createdAt", "updatedAt") FROM stdin;
1	1	2021-04-06 09:39:53.028-07	2021-04-06 09:39:53.028-07
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: rmckeith
--

COPY public.songs (id, name, artist, album, "deezerId", url, "createdAt", "updatedAt") FROM stdin;
1	MMMBop	Hanson	Middle Of Nowhere	88685889	https://cdns-images.dzcdn.net/images/cover/394c44c400a9786a9582a7fed308622e/500x500-000000-80-0-0.jpg	2021-04-06 09:39:53.017-07	2021-04-06 09:39:53.017-07
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: rmckeith
--

COPY public.users (id, email, name, password, "createdAt", "updatedAt") FROM stdin;
1	test@butts.co	Mike Schull	$2b$12$mltxj/cddcjO0cZwl/JwEOLf6.lPD8b2j.XS5INoUJQ9kmFqBANaO	2021-02-28 14:55:44.834-08	2021-02-28 14:55:44.834-08
2	my@user.co	Steve Peters	$2b$12$6.7EE5ccw6Rzpr64h.py5.KvcAkWqCvvKug.X8nbtBWhlHZyNlYsO	2021-02-28 14:55:47.693-08	2021-02-28 14:55:47.693-08
3	\N	Muttbuncher	$2b$12$Xwu5sh5M3pz.zktGBNQ7wOlIgXjsCgAKbHj/GOSjNpgVhAWgzhfyS	2021-02-28 14:55:48.257-08	2021-02-28 14:55:48.257-08
4	test@test.co	Muttbuncher	$2b$12$cUCYK8JhvEeuCy0Etzzbz.hNd9gY9WHtfI4Qurp3jLY8jyHvtGZ1C	2021-02-28 14:55:48.529-08	2021-02-28 14:55:48.529-08
5	me@me.com	me	$2b$12$uFrXrsuDca69KSxdlQtOoOIx6BFlG5xJyDWOffl6NIF4gOYeJd0kq	2021-04-06 09:39:26.272-07	2021-04-06 09:39:26.272-07
\.


--
-- Data for Name: usersSongs; Type: TABLE DATA; Schema: public; Owner: rmckeith
--

COPY public."usersSongs" ("userId", "songId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: playlists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rmckeith
--

SELECT pg_catalog.setval('public.playlists_id_seq', 1, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rmckeith
--

SELECT pg_catalog.setval('public.songs_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rmckeith
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: playlistsSongs playlistsSongs_pkey; Type: CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."playlistsSongs"
    ADD CONSTRAINT "playlistsSongs_pkey" PRIMARY KEY ("playlistId", "songId");


--
-- Name: playlists playlists_pkey; Type: CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.playlists
    ADD CONSTRAINT playlists_pkey PRIMARY KEY (id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: usersSongs usersSongs_pkey; Type: CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."usersSongs"
    ADD CONSTRAINT "usersSongs_pkey" PRIMARY KEY ("userId", "songId");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: playlistsSongs playlistsSongs_playlistId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."playlistsSongs"
    ADD CONSTRAINT "playlistsSongs_playlistId_fkey" FOREIGN KEY ("playlistId") REFERENCES public.playlists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: playlistsSongs playlistsSongs_songId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."playlistsSongs"
    ADD CONSTRAINT "playlistsSongs_songId_fkey" FOREIGN KEY ("songId") REFERENCES public.songs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: playlists playlists_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public.playlists
    ADD CONSTRAINT "playlists_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: usersSongs usersSongs_songId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."usersSongs"
    ADD CONSTRAINT "usersSongs_songId_fkey" FOREIGN KEY ("songId") REFERENCES public.songs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: usersSongs usersSongs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rmckeith
--

ALTER TABLE ONLY public."usersSongs"
    ADD CONSTRAINT "usersSongs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

