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

INSERT INTO public.users VALUES ('user_1721346841743', 2, 704);
INSERT INTO public.users VALUES ('user_1721348362043', 1, 499);
INSERT INTO public.users VALUES ('user_1721346841744', 5, 274);
INSERT INTO public.users VALUES ('user_1721347508467', 2, 323);
INSERT INTO public.users VALUES ('user_1721347059003', 2, 91);
INSERT INTO public.users VALUES ('user_1721348362042', 1, 516);
INSERT INTO public.users VALUES ('user_1721347059004', 5, 276);
INSERT INTO public.users VALUES ('user_1721347508468', 5, 171);
INSERT INTO public.users VALUES ('user_1721347256617', 2, 514);
INSERT INTO public.users VALUES ('user_1721347256618', 5, 572);
INSERT INTO public.users VALUES ('user_1721347292505', 2, 164);
INSERT INTO public.users VALUES ('user_1721347566968', 2, 935);
INSERT INTO public.users VALUES ('user_1721347292506', 5, 401);
INSERT INTO public.users VALUES ('user_1721347332520', 2, 692);
INSERT INTO public.users VALUES ('user_1721347566969', 5, 767);
INSERT INTO public.users VALUES ('user_1721347332521', 5, 289);
INSERT INTO public.users VALUES ('user_1721347340104', 2, 802);
INSERT INTO public.users VALUES ('user_1721347623309', 2, 192);
INSERT INTO public.users VALUES ('user_1721347340105', 5, 682);
INSERT INTO public.users VALUES ('user_1721348365334', 1, 278);
INSERT INTO public.users VALUES ('user_1721347352783', 2, 636);
INSERT INTO public.users VALUES ('user_1721347623310', 5, 417);
INSERT INTO public.users VALUES ('user_1721347352784', 5, 639);
INSERT INTO public.users VALUES ('user_1721347394198', 2, 459);
INSERT INTO public.users VALUES ('user_1721348365333', 1, 564);
INSERT INTO public.users VALUES ('user_1721347394199', 5, 394);
INSERT INTO public.users VALUES ('user_1721347628269', 2, 162);
INSERT INTO public.users VALUES ('user_1721347401849', 2, 333);
INSERT INTO public.users VALUES ('user_1721347401850', 5, 478);
INSERT INTO public.users VALUES ('user_1721347628270', 5, 14);
INSERT INTO public.users VALUES ('user_1721347411481', 2, 289);
INSERT INTO public.users VALUES ('user_1721347411482', 5, 840);
INSERT INTO public.users VALUES ('user_1721347422178', 2, 593);
INSERT INTO public.users VALUES ('user_1721347664245', 2, 731);
INSERT INTO public.users VALUES ('user_1721347422179', 5, 68);
INSERT INTO public.users VALUES ('user_1721347428001', 2, 311);
INSERT INTO public.users VALUES ('user_1721347664246', 5, 347);
INSERT INTO public.users VALUES ('user_1721347428002', 5, 823);
INSERT INTO public.users VALUES ('user_1721347676304', 2, 633);
INSERT INTO public.users VALUES ('user_1721349827860', 2, 377);
INSERT INTO public.users VALUES ('user_1721347676305', 5, 409);
INSERT INTO public.users VALUES ('user_1721348974871', 2, 10);
INSERT INTO public.users VALUES ('user_1721348369715', 2, 253);
INSERT INTO public.users VALUES ('user_1721347810537', 2, 648);
INSERT INTO public.users VALUES ('user_1721349669260', 5, 159);
INSERT INTO public.users VALUES ('user_1721347810538', 5, 574);
INSERT INTO public.users VALUES ('user_1721349936164', 5, 302);
INSERT INTO public.users VALUES ('user_1721347898146', 2, 65);
INSERT INTO public.users VALUES ('user_1721348974872', 5, 327);
INSERT INTO public.users VALUES ('user_1721347898147', 5, 54);
INSERT INTO public.users VALUES ('user_1721348369716', 5, 572);
INSERT INTO public.users VALUES ('user_1721347903924', 2, 778);
INSERT INTO public.users VALUES ('user_1721347903925', 5, 454);
INSERT INTO public.users VALUES ('user_1721349074475', 2, 27);
INSERT INTO public.users VALUES ('user_1721348234224', 2, 56);
INSERT INTO public.users VALUES ('user_1721348410432', 2, 103);
INSERT INTO public.users VALUES ('user_1721349932517', 2, 694);
INSERT INTO public.users VALUES ('user_1721349800447', 2, 937);
INSERT INTO public.users VALUES ('user_1721349074476', 5, 81);
INSERT INTO public.users VALUES ('Cris', 5, 7);
INSERT INTO public.users VALUES ('user_1721348234225', 5, 846);
INSERT INTO public.users VALUES ('user_1721348341747', 1, 262);
INSERT INTO public.users VALUES ('user_1721348341746', 1, 379);
INSERT INTO public.users VALUES ('user_1721348410433', 5, 705);
INSERT INTO public.users VALUES ('user_1721349945159', 2, 33);
INSERT INTO public.users VALUES ('user_1721348522521', 2, 152);
INSERT INTO public.users VALUES ('user_1721349358199', 2, 96);
INSERT INTO public.users VALUES ('user_1721349827861', 5, 523);
INSERT INTO public.users VALUES ('user_1721349358200', 5, 57);
INSERT INTO public.users VALUES ('user_1721348522522', 5, 916);
INSERT INTO public.users VALUES ('user_1721349800448', 5, 832);
INSERT INTO public.users VALUES ('user_1721349480651', 2, 530);
INSERT INTO public.users VALUES ('user_1721348926940', 2, 177);
INSERT INTO public.users VALUES ('user_1721349932518', 5, 274);
INSERT INTO public.users VALUES ('user_1721349480652', 5, 37);
INSERT INTO public.users VALUES ('user_1721348926941', 5, 331);
INSERT INTO public.users VALUES ('user_1721348955597', 2, 589);
INSERT INTO public.users VALUES ('user_1721349920897', 2, 416);
INSERT INTO public.users VALUES ('user_1721349531003', 2, 236);
INSERT INTO public.users VALUES ('user_1721348955598', 5, 115);
INSERT INTO public.users VALUES ('user_1721349822206', 2, 573);
INSERT INTO public.users VALUES ('user_1721349531004', 5, 171);
INSERT INTO public.users VALUES ('user_1721349963663', 5, 118);
INSERT INTO public.users VALUES ('user_1721349920898', 5, 377);
INSERT INTO public.users VALUES ('user_1721349555295', 2, 622);
INSERT INTO public.users VALUES ('user_1721349822207', 5, 141);
INSERT INTO public.users VALUES ('user_1721349555296', 5, 43);
INSERT INTO public.users VALUES ('user_1721349938584', 2, 377);
INSERT INTO public.users VALUES ('user_1721349669259', 2, 621);
INSERT INTO public.users VALUES ('user_1721349928707', 2, 79);
INSERT INTO public.users VALUES ('user_1721349826116', 2, 87);
INSERT INTO public.users VALUES ('user_1721349934315', 2, 223);
INSERT INTO public.users VALUES ('user_1721349945160', 5, 108);
INSERT INTO public.users VALUES ('user_1721349928708', 5, 343);
INSERT INTO public.users VALUES ('user_1721349826117', 5, 222);
INSERT INTO public.users VALUES ('user_1721349938585', 5, 344);
INSERT INTO public.users VALUES ('user_1721349934316', 5, 164);
INSERT INTO public.users VALUES ('user_1721349930760', 2, 171);
INSERT INTO public.users VALUES ('user_1721349930761', 5, 186);
INSERT INTO public.users VALUES ('user_1721349936163', 2, 571);
INSERT INTO public.users VALUES ('user_1721349942410', 2, 668);
INSERT INTO public.users VALUES ('user_1721349961054', 2, 523);
INSERT INTO public.users VALUES ('user_1721349957585', 2, 231);
INSERT INTO public.users VALUES ('user_1721349959260', 2, 338);
INSERT INTO public.users VALUES ('user_1721349942411', 5, 211);
INSERT INTO public.users VALUES ('user_1721349963662', 2, 707);
INSERT INTO public.users VALUES ('user_1721349967126', 2, 130);
INSERT INTO public.users VALUES ('user_1721349961055', 5, 453);
INSERT INTO public.users VALUES ('user_1721349959261', 5, 477);
INSERT INTO public.users VALUES ('user_1721349957586', 5, 44);
INSERT INTO public.users VALUES ('user_1721349965461', 2, 5);
INSERT INTO public.users VALUES ('user_1721349965462', 5, 139);
INSERT INTO public.users VALUES ('user_1721349967127', 5, 81);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

