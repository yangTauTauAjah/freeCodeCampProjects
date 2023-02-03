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
    description text,
    galaxy_id integer NOT NULL,
    name character varying(10) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    mock_value numeric(10,2),
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_type_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_type_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_type_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_type_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(10) NOT NULL,
    description text,
    age_in_million_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
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
    star_id integer,
    name character varying(10) NOT NULL,
    description text,
    age_in_million_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    speed numeric(10,2)
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(10) NOT NULL,
    description text,
    age_in_million_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_star_id_seq OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_type_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 2, 'galaxy_1', NULL, NULL, NULL, true, false);
INSERT INTO public.galaxy VALUES (NULL, 3, 'galaxy_2', NULL, NULL, NULL, true, false);
INSERT INTO public.galaxy VALUES (NULL, 4, 'galaxy_3', NULL, NULL, NULL, true, false);
INSERT INTO public.galaxy VALUES (NULL, 5, 'galaxy_4', NULL, NULL, NULL, true, false);
INSERT INTO public.galaxy VALUES (NULL, 6, 'galaxy_5', NULL, NULL, NULL, true, false);
INSERT INTO public.galaxy VALUES (NULL, 7, 'galaxy_6', NULL, NULL, NULL, true, false);
INSERT INTO public.galaxy VALUES (NULL, 1, 'Milky_way', NULL, NULL, NULL, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 2, 'Moon_1', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (2, 2, 'moon_2', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (3, 2, 'moon_3', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (4, 2, 'moon_4', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (5, 2, 'moon_5', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (6, 2, 'moon_6', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (7, 2, 'moon_7', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (8, 2, 'moon_8', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (9, 2, 'moon_9', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (10, 2, 'moon_10', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (11, 2, 'moon_12', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (12, 2, 'moon_13', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (13, 2, 'moon_14', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (14, 2, 'moon_15', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (15, 2, 'moon_16', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (16, 2, 'moon_17', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (17, 2, 'moon_18', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (18, 2, 'moon_19', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (19, 2, 'moon_20', NULL, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (20, 2, 'moon_11', NULL, NULL, NULL, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 2, 'Earth', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (3, 2, 'planet_1', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (4, 3, 'planet_2', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (5, 4, 'planet_4', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (6, 4, 'planet_3', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (7, 6, 'planet_5', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (8, 7, 'planet_6', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (9, 8, 'planet_7', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (10, 2, 'planet_8', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (11, 3, 'planet_9', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (12, 4, 'planet_10', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (13, 4, 'planet_11', NULL, NULL, NULL, true, true);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'rocket_1', NULL, 300.00);
INSERT INTO public.rocket VALUES (2, 'rocket_2', NULL, 300.00);
INSERT INTO public.rocket VALUES (3, 'rocket_3', NULL, 300.00);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 1, 'Sun', NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (3, 1, 'star_1', NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (4, 2, 'star_2', NULL, NULL, NULL, true, false);
INSERT INTO public.star VALUES (5, 3, 'star_3', NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (6, 4, 'star_4', NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (7, 5, 'star_5', NULL, NULL, NULL, true, false);
INSERT INTO public.star VALUES (8, 6, 'star_6', NULL, NULL, NULL, true, true);


--
-- Name: galaxy_galaxy_type_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_type_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 3, true);


--
-- Name: start_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_constraint UNIQUE (name);


--
-- Name: galaxy unique_constraint_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_constraint_galaxy UNIQUE (name);


--
-- Name: moon unique_constraint_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_constraint_moon UNIQUE (name);


--
-- Name: star unique_constraint_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_constraint_star UNIQUE (name);


--
-- Name: rocket unique_rocket_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT unique_rocket_constraint UNIQUE (name);


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
-- Name: star start_galaxy_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_galaxy_type_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

