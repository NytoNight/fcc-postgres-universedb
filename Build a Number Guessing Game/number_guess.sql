--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1738391558145', 2, 87);
INSERT INTO public.users VALUES ('user_1738391558146', 5, 1);
INSERT INTO public.users VALUES ('user_1738392334187', 2, 212);
INSERT INTO public.users VALUES ('user_1738391743390', 2, 620);
INSERT INTO public.users VALUES ('user_1738391743391', 5, 38);
INSERT INTO public.users VALUES ('user_1738392334188', 5, 78);
INSERT INTO public.users VALUES ('user_1738391799608', 2, 52);
INSERT INTO public.users VALUES ('user_1738391799609', 5, 392);
INSERT INTO public.users VALUES ('user_1738391863711', 2, 415);
INSERT INTO public.users VALUES ('user_1738391863712', 5, 155);
INSERT INTO public.users VALUES ('user_1738392399449', 2, 765);
INSERT INTO public.users VALUES ('user_1738391890528', 2, 2);
INSERT INTO public.users VALUES ('user_1738391890529', 5, 331);
INSERT INTO public.users VALUES ('user_1738392399450', 5, 67);
INSERT INTO public.users VALUES ('user_1738391944836', 2, 36);
INSERT INTO public.users VALUES ('user_1738391944837', 5, 39);
INSERT INTO public.users VALUES ('user_1738391985815', 2, 474);
INSERT INTO public.users VALUES ('user_1738391985816', 5, 446);
INSERT INTO public.users VALUES ('user_1738392430082', 2, 128);
INSERT INTO public.users VALUES ('user_1738392035021', 2, 718);
INSERT INTO public.users VALUES ('user_1738392035022', 5, 67);
INSERT INTO public.users VALUES ('user_1738392430083', 5, 23);
INSERT INTO public.users VALUES ('user_1738392086528', 2, 25);
INSERT INTO public.users VALUES ('user_1738392086529', 5, 389);
INSERT INTO public.users VALUES ('user_1738392169294', 2, 97);
INSERT INTO public.users VALUES ('user_1738392169295', 5, 534);
INSERT INTO public.users VALUES ('user_1738392546982', 2, 129);
INSERT INTO public.users VALUES ('user_1738392313508', 2, 20);
INSERT INTO public.users VALUES ('user_1738392313509', 5, 51);
INSERT INTO public.users VALUES ('user_1738392546983', 5, 57);
INSERT INTO public.users VALUES ('user_1738392556727', 2, 893);
INSERT INTO public.users VALUES ('user_1738392556728', 5, 25);
INSERT INTO public.users VALUES ('user_1738393474504', 2, 358);
INSERT INTO public.users VALUES ('user_1738393474505', 5, 185);
INSERT INTO public.users VALUES ('user_1738393510360', 2, 115);
INSERT INTO public.users VALUES ('user_1738393510361', 5, 258);
INSERT INTO public.users VALUES ('user_1738393556833', 2, 232);
INSERT INTO public.users VALUES ('user_1738393556834', 5, 427);
INSERT INTO public.users VALUES ('user_1738393712680', 2, 164);
INSERT INTO public.users VALUES ('user_1738393712681', 5, 543);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

