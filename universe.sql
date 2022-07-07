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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    reference_url text NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    reference_url text NOT NULL,
    distance_from_earth_in_millions_of_years numeric(5,3),
    constellation_id integer,
    has_life boolean
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
    reference_url text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
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
    reference_url text NOT NULL,
    year_discovered integer,
    has_life boolean,
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
    reference_url text NOT NULL,
    year_discovered integer,
    galaxy_id integer,
    constellation_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Ursa Major', 'https://en.wikipedia.org/wiki/Ursa_Major');
INSERT INTO public.constellation VALUES (2, 'Andromeda', 'https://en.wikipedia.org/wiki/Andromeda_(constellation)');
INSERT INTO public.constellation VALUES (3, 'Sagittarius', 'https://en.wikipedia.org/wiki/Sagittarius_(constellation)');
INSERT INTO public.constellation VALUES (4, 'Centaurus', 'https://en.wikipedia.org/wiki/Centaurus');
INSERT INTO public.constellation VALUES (5, 'Canes Venatici', 'https://en.wikipedia.org/wiki/Canes_Venatici');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'https://en.wikipedia.org/wiki/Milky_Way', 0.000, 3, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'https://en.wikipedia.org/wiki/Andromeda_Galaxy', 2.500, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'https://en.wikipedia.org/wiki/Cigar_Galaxy', 12.400, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sunflower Galaxy', 'https://en.wikipedia.org/wiki/Messier_63', 29.300, 5, NULL);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'https://en.wikipedia.org/wiki/Centaurus_A', 13.700, 4, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 'https://en.wikipedia.org/wiki/Messier_81', 12.000, 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon 1', 'http://url_for_moon_1', 55, false, 3);
INSERT INTO public.moon VALUES (22, 'Moon 2', 'http://url_for_moon_2', 123, false, 4);
INSERT INTO public.moon VALUES (23, 'Moon 3', 'http://url_for_moon_3', 22, false, 5);
INSERT INTO public.moon VALUES (24, 'Moon 4', 'http://url_for_moon_4', 45, false, 5);
INSERT INTO public.moon VALUES (25, 'Moon 5', 'http://url_for_moon_5', 34, false, 6);
INSERT INTO public.moon VALUES (26, 'Moon 6', 'http://url_for_moon_6', 68, false, 6);
INSERT INTO public.moon VALUES (27, 'Moon 7', 'http://url_for_moon_7', 3, false, 6);
INSERT INTO public.moon VALUES (28, 'Moon 8', 'http://url_for_moon_8', 79, false, 6);
INSERT INTO public.moon VALUES (29, 'Moon 9', 'http://url_for_moon_9', 80, false, 7);
INSERT INTO public.moon VALUES (30, 'Moon 10', 'http://url_for_moon_10', 45, false, 7);
INSERT INTO public.moon VALUES (31, 'Moon 11', 'http://url_for_moon_11', 67, false, 8);
INSERT INTO public.moon VALUES (32, 'Moon 12', 'http://url_for_moon_12', 34, false, 9);
INSERT INTO public.moon VALUES (33, 'Moon 13', 'http://url_for_moon_13', 789, false, 11);
INSERT INTO public.moon VALUES (34, 'Moon 14', 'http://url_for_moon_14', 80, false, 12);
INSERT INTO public.moon VALUES (35, 'Moon 15', 'http://url_for_moon_15', 34, false, 12);
INSERT INTO public.moon VALUES (36, 'Moon 16', 'http://url_for_moon_16', 23, false, 12);
INSERT INTO public.moon VALUES (37, 'Moon 17', 'http://url_for_moon_17', 45, false, 1);
INSERT INTO public.moon VALUES (38, 'Moon 18', 'http://url_for_moon_18', 6, false, 1);
INSERT INTO public.moon VALUES (39, 'Moon 19', 'http://url_for_moon_19', 69, false, 2);
INSERT INTO public.moon VALUES (40, 'Moon 20', 'http://url_for_moon_20', 9, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'https://en.wikipedia.org/wiki/Mercury_(planet)', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'https://en.wikipedia.org/wiki/Venus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'https://en.wikipedia.org/wiki/Earth', NULL, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'https://en.wikipedia.org/wiki/Mars', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'https://en.wikipedia.org/wiki/Jupiter', NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'https://en.wikipedia.org/wiki/Saturn', NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'https://en.wikipedia.org/wiki/Uranus', 1781, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'https://en.wikipedia.org/wiki/Neptune', 1846, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Saffar', 'https://en.wikipedia.org/wiki/Upsilon_Andromedae_b', 1996, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Samh', 'https://en.wikipedia.org/wiki/Upsilon_Andromedae_c', 1999, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Majriti', 'https://en.wikipedia.org/wiki/Upsilon_Andromedae_d', 1999, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Taphao Thong', 'https://en.wikipedia.org/wiki/47_Ursae_Majoris_b', 1996, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'https://en.wikipedia.org/wiki/Sun', NULL, 1, 3);
INSERT INTO public.star VALUES (2, 'Upsilon Andromedae', 'https://en.wikipedia.org/wiki/Upsilon_Andromedae', NULL, 2, 2);
INSERT INTO public.star VALUES (3, 'Chalawan', 'https://en.wikipedia.org/wiki/47_Ursae_Majoris', NULL, 1, 1);
INSERT INTO public.star VALUES (4, 'Sun2', 'https://en.wikipedia.org/wiki/Sun2', NULL, 1, 3);
INSERT INTO public.star VALUES (5, 'Upsilon Andromedae2', 'https://en.wikipedia.org/wiki/Upsilon_Andromedae2', NULL, 2, 2);
INSERT INTO public.star VALUES (6, 'Chalawan2', 'https://en.wikipedia.org/wiki/47_Ursae_Majoris2', NULL, 1, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

