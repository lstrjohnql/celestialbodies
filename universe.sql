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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    planet_count integer NOT NULL,
    moon_count integer,
    entropy numeric(1,1),
    has_life boolean,
    is_reachable boolean,
    galaxy_description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_mi integer NOT NULL,
    distance_from_planet integer,
    temperature numeric(2,1),
    has_alien boolean,
    bright boolean,
    moon_description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_mi integer,
    distance_from_star integer,
    temperature numeric(3,1),
    has_alien boolean,
    is_liveable boolean,
    planet_description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_mi integer NOT NULL,
    distance_in_ly integer,
    temperature numeric(3,1),
    is_blackhole boolean,
    is_dying boolean,
    star_description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: the_void; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.the_void (
    the_void_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nothing integer,
    existence integer
);


ALTER TABLE public.the_void OWNER TO freecodecamp;

--
-- Name: the_void_the_void_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.the_void_the_void_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.the_void_the_void_id_seq OWNER TO freecodecamp;

--
-- Name: the_void_the_void_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.the_void_the_void_id_seq OWNED BY public.the_void.the_void_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: the_void the_void_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_void ALTER COLUMN the_void_id SET DEFAULT nextval('public.the_void_the_void_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 678, 1590, 0.5, true, false, NULL, 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 47, 24, 0.3, true, false, NULL, 2);
INSERT INTO public.galaxy VALUES ('Bode Galaxy', 50, 5, 0.4, true, false, NULL, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 112, 56, 0.9, true, false, NULL, 4);
INSERT INTO public.galaxy VALUES ('Medusa Merger', 436, 200, 0.8, true, true, NULL, 5);
INSERT INTO public.galaxy VALUES ('Eye of Sauron', 40, 368, 0.5, true, false, NULL, 6);
INSERT INTO public.galaxy VALUES ('Malin 1', 12, 7, 0.7, true, true, NULL, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1243, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 523, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Pheibos', 6789, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Amalthea', 3576, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Calisto', 124, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Europa', 452, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Ganymede', 3589, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Io', 154, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Dione', 937, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Enceladus', 483, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Hyperion', 3759, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Lapetus', 7812, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 583, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Phoebe', 324, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Rhea', 789, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Thetis', 5153, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (17, 'Titan', 34, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'Ariel', 958, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (19, 'Miranda', 736, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (20, 'Oberon', 6372, NULL, NULL, NULL, NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 53, 710, 40.4, true, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 298, 700, 68.6, true, true, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 254, 979, 23.8, true, true, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 547, 672, 71.4, true, true, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 785, 560, 54.9, false, false, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 549, 77, 90.1, true, false, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 200, 314, 37.2, false, true, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 439, 21, 76.3, false, true, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 346, 484, 97.4, true, true, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Achilles', 784, 23, 57.8, false, true, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Archon', 137, 871, 78.4, true, true, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Inazuma', 15, 25, 12.2, true, false, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 889, 8285, 50.7, false, false, NULL, 1);
INSERT INTO public.star VALUES (2, 'Canopus', 3459, 1014, 63.4, true, true, NULL, 2);
INSERT INTO public.star VALUES (3, 'Arcturus', 4330, 8356, 85.1, true, false, NULL, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 158, 324, 91.7, false, true, NULL, 4);
INSERT INTO public.star VALUES (5, 'Vega', 9385, 7801, 90.8, true, true, NULL, 5);
INSERT INTO public.star VALUES (6, 'Rigel', 4431, 737, 89.6, true, false, NULL, 6);


--
-- Data for Name: the_void; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.the_void VALUES (1, 'Hello', 1, 2);
INSERT INTO public.the_void VALUES (2, 'World', 3, 4);
INSERT INTO public.the_void VALUES (3, 'XD', 5, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: the_void_the_void_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.the_void_the_void_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: the_void the_void_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_void
    ADD CONSTRAINT the_void_name_key UNIQUE (name);


--
-- Name: the_void the_void_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_void
    ADD CONSTRAINT the_void_pkey PRIMARY KEY (the_void_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

