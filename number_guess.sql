--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 917, 152);
INSERT INTO public.games VALUES (2, 180, 152);
INSERT INTO public.games VALUES (3, 667, 153);
INSERT INTO public.games VALUES (4, 888, 153);
INSERT INTO public.games VALUES (5, 470, 152);
INSERT INTO public.games VALUES (6, 8, 152);
INSERT INTO public.games VALUES (7, 731, 152);
INSERT INTO public.games VALUES (8, 12, 154);
INSERT INTO public.games VALUES (9, 24, 155);
INSERT INTO public.games VALUES (10, 788, 155);
INSERT INTO public.games VALUES (11, 93, 156);
INSERT INTO public.games VALUES (12, 529, 156);
INSERT INTO public.games VALUES (13, 460, 155);
INSERT INTO public.games VALUES (14, 584, 155);
INSERT INTO public.games VALUES (15, 683, 155);
INSERT INTO public.games VALUES (16, 86, 157);
INSERT INTO public.games VALUES (17, 308, 157);
INSERT INTO public.games VALUES (18, 358, 158);
INSERT INTO public.games VALUES (19, 729, 157);
INSERT INTO public.games VALUES (20, 84, 159);
INSERT INTO public.games VALUES (21, 881, 157);
INSERT INTO public.games VALUES (22, 434, 159);
INSERT INTO public.games VALUES (23, 615, 157);
INSERT INTO public.games VALUES (24, 803, 160);
INSERT INTO public.games VALUES (25, 580, 160);
INSERT INTO public.games VALUES (26, 185, 159);
INSERT INTO public.games VALUES (27, 990, 159);
INSERT INTO public.games VALUES (28, 632, 159);
INSERT INTO public.games VALUES (29, 45, 161);
INSERT INTO public.games VALUES (30, 411, 161);
INSERT INTO public.games VALUES (31, 826, 162);
INSERT INTO public.games VALUES (32, 774, 162);
INSERT INTO public.games VALUES (33, 928, 161);
INSERT INTO public.games VALUES (34, 829, 161);
INSERT INTO public.games VALUES (35, 378, 161);
INSERT INTO public.games VALUES (36, 185, 163);
INSERT INTO public.games VALUES (37, 124, 163);
INSERT INTO public.games VALUES (38, 559, 164);
INSERT INTO public.games VALUES (39, 89, 164);
INSERT INTO public.games VALUES (40, 602, 165);
INSERT INTO public.games VALUES (41, 285, 163);
INSERT INTO public.games VALUES (42, 248, 165);
INSERT INTO public.games VALUES (43, 120, 163);
INSERT INTO public.games VALUES (44, 297, 163);
INSERT INTO public.games VALUES (45, 828, 166);
INSERT INTO public.games VALUES (46, 1, 167);
INSERT INTO public.games VALUES (47, 377, 165);
INSERT INTO public.games VALUES (48, 851, 167);
INSERT INTO public.games VALUES (49, 168, 165);
INSERT INTO public.games VALUES (50, 510, 168);
INSERT INTO public.games VALUES (51, 92, 169);
INSERT INTO public.games VALUES (52, 431, 165);
INSERT INTO public.games VALUES (53, 565, 168);
INSERT INTO public.games VALUES (54, 712, 169);
INSERT INTO public.games VALUES (55, 479, 170);
INSERT INTO public.games VALUES (56, 941, 167);
INSERT INTO public.games VALUES (57, 11, 170);
INSERT INTO public.games VALUES (58, 963, 167);
INSERT INTO public.games VALUES (59, 284, 168);
INSERT INTO public.games VALUES (60, 447, 168);
INSERT INTO public.games VALUES (61, 784, 167);
INSERT INTO public.games VALUES (62, 120, 168);
INSERT INTO public.games VALUES (63, 673, 171);
INSERT INTO public.games VALUES (64, 635, 171);
INSERT INTO public.games VALUES (65, 482, 172);
INSERT INTO public.games VALUES (66, 457, 172);
INSERT INTO public.games VALUES (67, 617, 171);
INSERT INTO public.games VALUES (68, 476, 171);
INSERT INTO public.games VALUES (69, 116, 171);
INSERT INTO public.games VALUES (70, 630, 173);
INSERT INTO public.games VALUES (71, 882, 173);
INSERT INTO public.games VALUES (72, 694, 174);
INSERT INTO public.games VALUES (73, 109, 174);
INSERT INTO public.games VALUES (74, 901, 173);
INSERT INTO public.games VALUES (75, 56, 173);
INSERT INTO public.games VALUES (76, 511, 173);
INSERT INTO public.games VALUES (77, 595, 175);
INSERT INTO public.games VALUES (78, 422, 175);
INSERT INTO public.games VALUES (79, 566, 176);
INSERT INTO public.games VALUES (80, 409, 176);
INSERT INTO public.games VALUES (81, 406, 175);
INSERT INTO public.games VALUES (82, 133, 175);
INSERT INTO public.games VALUES (83, 22, 175);
INSERT INTO public.games VALUES (84, 10, 177);
INSERT INTO public.games VALUES (85, 949, 180);
INSERT INTO public.games VALUES (86, 183, 180);
INSERT INTO public.games VALUES (87, 449, 181);
INSERT INTO public.games VALUES (88, 883, 181);
INSERT INTO public.games VALUES (89, 308, 180);
INSERT INTO public.games VALUES (90, 263, 180);
INSERT INTO public.games VALUES (91, 54, 180);
INSERT INTO public.games VALUES (92, 723, 182);
INSERT INTO public.games VALUES (93, 971, 182);
INSERT INTO public.games VALUES (94, 268, 183);
INSERT INTO public.games VALUES (95, 479, 183);
INSERT INTO public.games VALUES (96, 701, 182);
INSERT INTO public.games VALUES (97, 732, 182);
INSERT INTO public.games VALUES (98, 405, 182);
INSERT INTO public.games VALUES (99, 1, 185);
INSERT INTO public.games VALUES (100, 89, 185);
INSERT INTO public.games VALUES (101, 71, 186);
INSERT INTO public.games VALUES (102, 696, 186);
INSERT INTO public.games VALUES (103, 576, 185);
INSERT INTO public.games VALUES (104, 780, 185);
INSERT INTO public.games VALUES (105, 558, 185);
INSERT INTO public.games VALUES (106, 214, 187);
INSERT INTO public.games VALUES (107, 142, 187);
INSERT INTO public.games VALUES (108, 728, 188);
INSERT INTO public.games VALUES (109, 203, 188);
INSERT INTO public.games VALUES (110, 150, 187);
INSERT INTO public.games VALUES (111, 226, 187);
INSERT INTO public.games VALUES (112, 429, 187);
INSERT INTO public.games VALUES (113, 315, 189);
INSERT INTO public.games VALUES (114, 504, 189);
INSERT INTO public.games VALUES (115, 797, 190);
INSERT INTO public.games VALUES (116, 881, 190);
INSERT INTO public.games VALUES (117, 190, 189);
INSERT INTO public.games VALUES (118, 657, 189);
INSERT INTO public.games VALUES (119, 702, 189);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (14, '$');
INSERT INTO public.users VALUES (21, 'user_1689133798908');
INSERT INTO public.users VALUES (22, 'user_1689133798907');
INSERT INTO public.users VALUES (23, 'user_1689133803105');
INSERT INTO public.users VALUES (24, 'user_1689133803104');
INSERT INTO public.users VALUES (25, 'user_1689133805665');
INSERT INTO public.users VALUES (26, 'user_1689133805664');
INSERT INTO public.users VALUES (27, 'user_1689133806991');
INSERT INTO public.users VALUES (28, 'user_1689133806990');
INSERT INTO public.users VALUES (29, 'user_1689133810968');
INSERT INTO public.users VALUES (30, 'user_1689133810967');
INSERT INTO public.users VALUES (31, 'user_1689133817801');
INSERT INTO public.users VALUES (32, 'user_1689133817800');
INSERT INTO public.users VALUES (33, 'user_1689133819048');
INSERT INTO public.users VALUES (34, 'user_1689133819047');
INSERT INTO public.users VALUES (35, 'user_1689133846274');
INSERT INTO public.users VALUES (36, 'user_1689133846273');
INSERT INTO public.users VALUES (37, 'user_1689133850424');
INSERT INTO public.users VALUES (38, 'user_1689133850423');
INSERT INTO public.users VALUES (39, 'user_1689133852139');
INSERT INTO public.users VALUES (40, 'user_1689133852138');
INSERT INTO public.users VALUES (41, 'user_1689133854692');
INSERT INTO public.users VALUES (42, 'user_1689133854691');
INSERT INTO public.users VALUES (43, 'user_1689133862638');
INSERT INTO public.users VALUES (44, 'user_1689133862637');
INSERT INTO public.users VALUES (45, 'user_1689133866597');
INSERT INTO public.users VALUES (46, 'user_1689133866596');
INSERT INTO public.users VALUES (47, 'Rafal');
INSERT INTO public.users VALUES (48, 'user_1689133889104');
INSERT INTO public.users VALUES (49, 'user_1689133889103');
INSERT INTO public.users VALUES (50, 'user_1689133976812');
INSERT INTO public.users VALUES (51, 'user_1689133977077');
INSERT INTO public.users VALUES (52, 'user_1689133977076');
INSERT INTO public.users VALUES (53, 'user_1689133976811');
INSERT INTO public.users VALUES (54, 'user_1689133985714');
INSERT INTO public.users VALUES (55, 'user_1689133985713');
INSERT INTO public.users VALUES (56, 'user_1689134001471');
INSERT INTO public.users VALUES (57, 'user_1689134001470');
INSERT INTO public.users VALUES (58, 'user_1689134005195');
INSERT INTO public.users VALUES (59, 'user_1689134005196');
INSERT INTO public.users VALUES (60, 'user_1689134006732');
INSERT INTO public.users VALUES (61, 'user_1689134006731');
INSERT INTO public.users VALUES (62, 'user_1689135885950');
INSERT INTO public.users VALUES (63, 'user_1689135885949');
INSERT INTO public.users VALUES (64, 'rafal');
INSERT INTO public.users VALUES (65, 'user_1689135958106');
INSERT INTO public.users VALUES (66, 'user_1689135958105');
INSERT INTO public.users VALUES (67, 'user_1689135962593');
INSERT INTO public.users VALUES (68, 'user_1689135962592');
INSERT INTO public.users VALUES (69, 'user_1689135971815');
INSERT INTO public.users VALUES (70, 'user_1689135971814');
INSERT INTO public.users VALUES (71, 'user_1689135973997');
INSERT INTO public.users VALUES (72, 'user_1689135973996');
INSERT INTO public.users VALUES (73, 'user_1689135976713');
INSERT INTO public.users VALUES (74, 'user_1689135976712');
INSERT INTO public.users VALUES (75, 'user_1689136278550');
INSERT INTO public.users VALUES (76, 'user_1689136278549');
INSERT INTO public.users VALUES (77, 'user_1689136283749');
INSERT INTO public.users VALUES (78, 'user_1689136283748');
INSERT INTO public.users VALUES (79, 'user_1689136296664');
INSERT INTO public.users VALUES (80, 'user_1689136296663');
INSERT INTO public.users VALUES (81, 'user_1689136310830');
INSERT INTO public.users VALUES (82, 'user_1689136310829');
INSERT INTO public.users VALUES (83, 'user_1689136313951');
INSERT INTO public.users VALUES (84, 'user_1689136313950');
INSERT INTO public.users VALUES (85, 'user_1689136321806');
INSERT INTO public.users VALUES (86, 'user_1689136321805');
INSERT INTO public.users VALUES (87, 'user_1689136323632');
INSERT INTO public.users VALUES (88, 'user_1689136323631');
INSERT INTO public.users VALUES (89, 'user_1689136325576');
INSERT INTO public.users VALUES (90, 'user_1689136325575');
INSERT INTO public.users VALUES (91, 'user_1689136327115');
INSERT INTO public.users VALUES (92, 'user_1689136327114');
INSERT INTO public.users VALUES (93, 'user_1689136329684');
INSERT INTO public.users VALUES (94, 'user_1689136329683');
INSERT INTO public.users VALUES (95, 'user_1689136363376');
INSERT INTO public.users VALUES (96, 'user_1689136363375');
INSERT INTO public.users VALUES (97, 'user_1689136365349');
INSERT INTO public.users VALUES (98, 'user_1689136365348');
INSERT INTO public.users VALUES (99, 'user_1689136367621');
INSERT INTO public.users VALUES (100, 'user_1689136367620');
INSERT INTO public.users VALUES (101, 'user_1689136373568');
INSERT INTO public.users VALUES (102, 'user_1689136373567');
INSERT INTO public.users VALUES (103, 'user_1689136394762');
INSERT INTO public.users VALUES (104, 'user_1689136394761');
INSERT INTO public.users VALUES (105, 'user_1689136397326');
INSERT INTO public.users VALUES (106, 'user_1689136397325');
INSERT INTO public.users VALUES (107, 'user_1689136400800');
INSERT INTO public.users VALUES (108, 'user_1689136400799');
INSERT INTO public.users VALUES (109, 'user_1689136419542');
INSERT INTO public.users VALUES (110, 'user_1689136419541');
INSERT INTO public.users VALUES (111, 'user_1689136425229');
INSERT INTO public.users VALUES (112, 'user_1689136425227');
INSERT INTO public.users VALUES (113, 'user_1689136428930');
INSERT INTO public.users VALUES (114, 'user_1689136428929');
INSERT INTO public.users VALUES (115, 'user_1689136441828');
INSERT INTO public.users VALUES (116, 'user_1689136444198');
INSERT INTO public.users VALUES (117, 'user_1689136444197');
INSERT INTO public.users VALUES (118, 'user_1689136455832');
INSERT INTO public.users VALUES (119, 'user_1689136455831');
INSERT INTO public.users VALUES (120, 'user_1689136457764');
INSERT INTO public.users VALUES (121, 'user_1689136457763');
INSERT INTO public.users VALUES (122, 'user_1689136461791');
INSERT INTO public.users VALUES (123, 'user_1689136461790');
INSERT INTO public.users VALUES (124, 'user_1689136463238');
INSERT INTO public.users VALUES (125, 'user_1689136463237');
INSERT INTO public.users VALUES (126, 'user_1689136476940');
INSERT INTO public.users VALUES (127, 'user_1689136477973');
INSERT INTO public.users VALUES (128, 'user_1689136476939');
INSERT INTO public.users VALUES (129, 'user_1689136477972');
INSERT INTO public.users VALUES (130, 'user_1689136484555');
INSERT INTO public.users VALUES (131, 'user_1689136484554');
INSERT INTO public.users VALUES (132, 'user_1689136487656');
INSERT INTO public.users VALUES (133, 'user_1689136487655');
INSERT INTO public.users VALUES (134, 'user_1689136489333');
INSERT INTO public.users VALUES (135, 'user_1689136489332');
INSERT INTO public.users VALUES (136, 'user_1689136493702');
INSERT INTO public.users VALUES (137, 'user_1689136493701');
INSERT INTO public.users VALUES (138, 'user_1689136497268');
INSERT INTO public.users VALUES (139, 'user_1689136497267');
INSERT INTO public.users VALUES (140, 'user_1689136499625');
INSERT INTO public.users VALUES (141, 'user_1689136499624');
INSERT INTO public.users VALUES (142, 'user_1689136501537');
INSERT INTO public.users VALUES (143, 'user_1689136501536');
INSERT INTO public.users VALUES (144, 'user_1689136503445');
INSERT INTO public.users VALUES (145, 'user_1689136503444');
INSERT INTO public.users VALUES (146, 'user_1689136505985');
INSERT INTO public.users VALUES (147, 'user_1689136505984');
INSERT INTO public.users VALUES (148, 'user_1689136510148');
INSERT INTO public.users VALUES (149, 'user_1689136510147');
INSERT INTO public.users VALUES (150, 'user_1689136512696');
INSERT INTO public.users VALUES (151, 'user_1689136512695');
INSERT INTO public.users VALUES (152, 'user_1689136519471');
INSERT INTO public.users VALUES (153, 'user_1689136519470');
INSERT INTO public.users VALUES (154, 'Kira');
INSERT INTO public.users VALUES (155, 'user_1689136675052');
INSERT INTO public.users VALUES (156, 'user_1689136675051');
INSERT INTO public.users VALUES (157, 'user_1689136713587');
INSERT INTO public.users VALUES (158, 'user_1689136713586');
INSERT INTO public.users VALUES (159, 'user_1689136716576');
INSERT INTO public.users VALUES (160, 'user_1689136716575');
INSERT INTO public.users VALUES (161, 'user_1689136735046');
INSERT INTO public.users VALUES (162, 'user_1689136735045');
INSERT INTO public.users VALUES (163, 'user_1689136739452');
INSERT INTO public.users VALUES (164, 'user_1689136739451');
INSERT INTO public.users VALUES (165, 'user_1689136741350');
INSERT INTO public.users VALUES (166, 'user_1689136741349');
INSERT INTO public.users VALUES (167, 'user_1689136743686');
INSERT INTO public.users VALUES (168, 'user_1689136745891');
INSERT INTO public.users VALUES (169, 'user_1689136743685');
INSERT INTO public.users VALUES (170, 'user_1689136745890');
INSERT INTO public.users VALUES (171, 'user_1689136751456');
INSERT INTO public.users VALUES (172, 'user_1689136751455');
INSERT INTO public.users VALUES (173, 'user_1689136763715');
INSERT INTO public.users VALUES (174, 'user_1689136763714');
INSERT INTO public.users VALUES (175, 'user_1689136774525');
INSERT INTO public.users VALUES (176, 'user_1689136774524');
INSERT INTO public.users VALUES (177, 'KIRA RAA');
INSERT INTO public.users VALUES (178, 'user_1689136995107');
INSERT INTO public.users VALUES (179, 'user_1689136995106');
INSERT INTO public.users VALUES (180, 'user_1689137049485');
INSERT INTO public.users VALUES (181, 'user_1689137049484');
INSERT INTO public.users VALUES (182, 'user_1689137128553');
INSERT INTO public.users VALUES (183, 'user_1689137128552');
INSERT INTO public.users VALUES (184, 'kiraaa');
INSERT INTO public.users VALUES (185, 'user_1689137196532');
INSERT INTO public.users VALUES (186, 'user_1689137196531');
INSERT INTO public.users VALUES (187, 'user_1689137217105');
INSERT INTO public.users VALUES (188, 'user_1689137217104');
INSERT INTO public.users VALUES (189, 'user_1689137297277');
INSERT INTO public.users VALUES (190, 'user_1689137297275');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 119, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 190, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

