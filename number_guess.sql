--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    attempts integer,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (113, 11, 1);
INSERT INTO public.games VALUES (113, 13, 2);
INSERT INTO public.games VALUES (114, 64, 1);
INSERT INTO public.games VALUES (115, 615, 1);
INSERT INTO public.games VALUES (115, 221, 2);
INSERT INTO public.games VALUES (114, 393, 2);
INSERT INTO public.games VALUES (114, 651, 3);
INSERT INTO public.games VALUES (114, 451, 4);
INSERT INTO public.games VALUES (116, 730, 1);
INSERT INTO public.games VALUES (116, 251, 2);
INSERT INTO public.games VALUES (117, 858, 1);
INSERT INTO public.games VALUES (117, 412, 2);
INSERT INTO public.games VALUES (116, 330, 3);
INSERT INTO public.games VALUES (116, 799, 4);
INSERT INTO public.games VALUES (116, 372, 5);
INSERT INTO public.games VALUES (118, 302, 1);
INSERT INTO public.games VALUES (118, 255, 2);
INSERT INTO public.games VALUES (119, 168, 1);
INSERT INTO public.games VALUES (119, 399, 2);
INSERT INTO public.games VALUES (118, 779, 3);
INSERT INTO public.games VALUES (118, 61, 4);
INSERT INTO public.games VALUES (118, 875, 5);
INSERT INTO public.games VALUES (120, 531, 1);
INSERT INTO public.games VALUES (120, 696, 2);
INSERT INTO public.games VALUES (121, 434, 1);
INSERT INTO public.games VALUES (121, 703, 2);
INSERT INTO public.games VALUES (120, 423, 3);
INSERT INTO public.games VALUES (120, 860, 4);
INSERT INTO public.games VALUES (120, 304, 5);
INSERT INTO public.games VALUES (122, 839, 1);
INSERT INTO public.games VALUES (122, 658, 2);
INSERT INTO public.games VALUES (123, 886, 1);
INSERT INTO public.games VALUES (123, 640, 2);
INSERT INTO public.games VALUES (122, 553, 3);
INSERT INTO public.games VALUES (122, 605, 4);
INSERT INTO public.games VALUES (122, 109, 5);
INSERT INTO public.games VALUES (124, 694, 1);
INSERT INTO public.games VALUES (124, 284, 2);
INSERT INTO public.games VALUES (125, 250, 1);
INSERT INTO public.games VALUES (125, 22, 2);
INSERT INTO public.games VALUES (124, 655, 3);
INSERT INTO public.games VALUES (124, 229, 4);
INSERT INTO public.games VALUES (124, 631, 5);
INSERT INTO public.games VALUES (126, 445, 1);
INSERT INTO public.games VALUES (127, 526, 1);
INSERT INTO public.games VALUES (127, 65, 2);
INSERT INTO public.games VALUES (126, 834, 2);
INSERT INTO public.games VALUES (126, 645, 3);
INSERT INTO public.games VALUES (126, 975, 4);
INSERT INTO public.games VALUES (128, 613, 1);
INSERT INTO public.games VALUES (128, 8, 2);
INSERT INTO public.games VALUES (129, 587, 1);
INSERT INTO public.games VALUES (128, 425, 3);
INSERT INTO public.games VALUES (128, 532, 4);
INSERT INTO public.games VALUES (128, 589, 5);
INSERT INTO public.games VALUES (130, 788, 1);
INSERT INTO public.games VALUES (131, 868, 1);
INSERT INTO public.games VALUES (130, 204, 2);
INSERT INTO public.games VALUES (130, 285, 3);
INSERT INTO public.games VALUES (130, 723, 4);
INSERT INTO public.games VALUES (132, 908, 1);
INSERT INTO public.games VALUES (132, 720, 2);
INSERT INTO public.games VALUES (133, 660, 1);
INSERT INTO public.games VALUES (133, 273, 2);
INSERT INTO public.games VALUES (132, 35, 3);
INSERT INTO public.games VALUES (132, 587, 4);
INSERT INTO public.games VALUES (132, 857, 5);
INSERT INTO public.games VALUES (134, 882, 1);
INSERT INTO public.games VALUES (134, 96, 2);
INSERT INTO public.games VALUES (135, 718, 1);
INSERT INTO public.games VALUES (134, 38, 3);
INSERT INTO public.games VALUES (134, 835, 4);
INSERT INTO public.games VALUES (134, 316, 5);
INSERT INTO public.games VALUES (136, 225, 1);
INSERT INTO public.games VALUES (136, 609, 2);
INSERT INTO public.games VALUES (137, 794, 1);
INSERT INTO public.games VALUES (136, 814, 3);
INSERT INTO public.games VALUES (136, 350, 4);
INSERT INTO public.games VALUES (136, 416, 5);
INSERT INTO public.games VALUES (138, 767, 1);
INSERT INTO public.games VALUES (139, 772, 1);
INSERT INTO public.games VALUES (139, 80, 2);
INSERT INTO public.games VALUES (138, 107, 2);
INSERT INTO public.games VALUES (138, 920, 3);
INSERT INTO public.games VALUES (138, 138, 4);
INSERT INTO public.games VALUES (140, 173, 1);
INSERT INTO public.games VALUES (140, 432, 2);
INSERT INTO public.games VALUES (141, 104, 1);
INSERT INTO public.games VALUES (141, 886, 2);
INSERT INTO public.games VALUES (140, 305, 3);
INSERT INTO public.games VALUES (140, 636, 4);
INSERT INTO public.games VALUES (140, 385, 5);
INSERT INTO public.games VALUES (142, 730, 1);
INSERT INTO public.games VALUES (142, 446, 2);
INSERT INTO public.games VALUES (143, 216, 1);
INSERT INTO public.games VALUES (143, 967, 2);
INSERT INTO public.games VALUES (142, 354, 3);
INSERT INTO public.games VALUES (142, 731, 4);
INSERT INTO public.games VALUES (142, 254, 5);
INSERT INTO public.games VALUES (144, 856, 1);
INSERT INTO public.games VALUES (144, 445, 2);
INSERT INTO public.games VALUES (145, 62, 1);
INSERT INTO public.games VALUES (145, 744, 2);
INSERT INTO public.games VALUES (144, 161, 3);
INSERT INTO public.games VALUES (144, 542, 4);
INSERT INTO public.games VALUES (144, 759, 5);
INSERT INTO public.games VALUES (146, 767, 1);
INSERT INTO public.games VALUES (147, 197, 1);
INSERT INTO public.games VALUES (147, 111, 2);
INSERT INTO public.games VALUES (146, 177, 2);
INSERT INTO public.games VALUES (146, 710, 3);
INSERT INTO public.games VALUES (146, 993, 4);
INSERT INTO public.games VALUES (148, 740, 1);
INSERT INTO public.games VALUES (149, 471, 1);
INSERT INTO public.games VALUES (149, 36, 2);
INSERT INTO public.games VALUES (148, 865, 2);
INSERT INTO public.games VALUES (148, 272, 3);
INSERT INTO public.games VALUES (148, 28, 4);
INSERT INTO public.games VALUES (150, 154, 1);
INSERT INTO public.games VALUES (150, 263, 2);
INSERT INTO public.games VALUES (151, 107, 1);
INSERT INTO public.games VALUES (151, 929, 2);
INSERT INTO public.games VALUES (150, 619, 3);
INSERT INTO public.games VALUES (150, 811, 4);
INSERT INTO public.games VALUES (150, 921, 5);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1681537222377', 114);
INSERT INTO public.users VALUES ('user_1681537222376', 115);
INSERT INTO public.users VALUES ('user_1681537297235', 116);
INSERT INTO public.users VALUES ('user_1681537297234', 117);
INSERT INTO public.users VALUES ('user_1681537332782', 118);
INSERT INTO public.users VALUES ('user_1681537332781', 119);
INSERT INTO public.users VALUES ('user_1681537357562', 120);
INSERT INTO public.users VALUES ('user_1681537357561', 121);
INSERT INTO public.users VALUES ('user_1681537400204', 122);
INSERT INTO public.users VALUES ('user_1681537400203', 123);
INSERT INTO public.users VALUES ('user_1681537692539', 124);
INSERT INTO public.users VALUES ('user_1681537692538', 125);
INSERT INTO public.users VALUES ('user_1681537716430', 126);
INSERT INTO public.users VALUES ('user_1681537716429', 127);
INSERT INTO public.users VALUES ('user_1681537786384', 128);
INSERT INTO public.users VALUES ('user_1681537786383', 129);
INSERT INTO public.users VALUES ('user_1681537867597', 130);
INSERT INTO public.users VALUES ('user_1681537867596', 131);
INSERT INTO public.users VALUES ('user_1681537909727', 132);
INSERT INTO public.users VALUES ('user_1681537909726', 133);
INSERT INTO public.users VALUES ('user_1681537921796', 134);
INSERT INTO public.users VALUES ('user_1681537921795', 135);
INSERT INTO public.users VALUES ('user_1681538013867', 136);
INSERT INTO public.users VALUES ('user_1681538013866', 137);
INSERT INTO public.users VALUES ('user_1681538077726', 138);
INSERT INTO public.users VALUES ('user_1681538077725', 139);
INSERT INTO public.users VALUES ('user_1681538318587', 140);
INSERT INTO public.users VALUES ('user_1681538318586', 141);
INSERT INTO public.users VALUES ('user_1681538354533', 142);
INSERT INTO public.users VALUES ('user_1681538354532', 143);
INSERT INTO public.users VALUES ('user_1681538376243', 144);
INSERT INTO public.users VALUES ('user_1681538376242', 145);
INSERT INTO public.users VALUES ('user_1681538504259', 146);
INSERT INTO public.users VALUES ('user_1681538504258', 147);
INSERT INTO public.users VALUES ('user_1681538551932', 148);
INSERT INTO public.users VALUES ('user_1681538551931', 149);
INSERT INTO public.users VALUES ('user_1681538678214', 150);
INSERT INTO public.users VALUES ('user_1681538678213', 151);
INSERT INTO public.users VALUES ('Daniel', 113);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 151, true);


--
-- Name: users username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: users username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

