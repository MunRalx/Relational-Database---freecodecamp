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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_description character varying(250),
    galaxy_nickname text,
    galaxy_year integer
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
    name character varying(50),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_num numeric(2,2),
    is_explored boolean
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
-- Name: moon_planet_loc_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_loc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_loc_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_loc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_loc_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_desc text,
    is_habitable boolean
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
-- Name: satelites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelites (
    name character varying(50),
    satelites_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.satelites OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_satelites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_satelites_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_satelites_id_seq OWNED BY public.satelites.satelites_id;


--
-- Name: satelites_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_universe_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_universe_id_seq OWNED BY public.satelites.galaxy_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    galaxy_id integer NOT NULL,
    star_age integer,
    star_desc text,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq1 OWNER TO freecodecamp;

--
-- Name: star_star_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq1 OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_loc_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelites satelites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN satelites_id SET DEFAULT nextval('public.satelites_satelites_id_seq'::regclass);


--
-- Name: satelites galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN galaxy_id SET DEFAULT nextval('public.satelites_universe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq1'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'galaxy were the Earth belongs', 'life galaxy', 13);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'the one next to us', 'M31', 17);
INSERT INTO public.galaxy VALUES ('Whirlpool', 3, 'the grand design spiral galaxy', 'M104', 23);
INSERT INTO public.galaxy VALUES ('Sombrero', 4, 'the lenticular one', 'M51', 28);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 5, 'the brither little one where starts still born', 'bright nebulae', 16);
INSERT INTO public.galaxy VALUES ('Triangulum', 6, 'Active start formation', 'M33', 33);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', 1, 1, 0.01, true);
INSERT INTO public.moon VALUES ('Deimos', 2, 2, 0.02, false);
INSERT INTO public.moon VALUES ('Phobos', 3, 3, 0.01, false);
INSERT INTO public.moon VALUES ('Io', 4, 5, 0.36, true);
INSERT INTO public.moon VALUES ('Europa', 5, 5, 0.47, true);
INSERT INTO public.moon VALUES ('Ganymede', 6, 5, 0.41, true);
INSERT INTO public.moon VALUES ('Callisto', 7, 5, 0.38, true);
INSERT INTO public.moon VALUES ('Mimas', 8, 6, 0.02, true);
INSERT INTO public.moon VALUES ('Enceladus', 9, 6, 0.04, true);
INSERT INTO public.moon VALUES ('Tethys', 10, 6, 0.05, true);
INSERT INTO public.moon VALUES ('Dione', 11, 6, 0.06, true);
INSERT INTO public.moon VALUES ('Rhea', 12, 6, 0.11, true);
INSERT INTO public.moon VALUES ('Titan', 13, 6, 0.71, true);
INSERT INTO public.moon VALUES ('Iapetus', 14, 6, 0.05, true);
INSERT INTO public.moon VALUES ('Umbriel', 15, 7, 0.03, true);
INSERT INTO public.moon VALUES ('Titania', 16, 7, 0.09, true);
INSERT INTO public.moon VALUES ('Oberon', 17, 7, 0.08, true);
INSERT INTO public.moon VALUES ('Ariel', 18, 7, 0.06, true);
INSERT INTO public.moon VALUES ('Miranda', 19, 7, 0.01, true);
INSERT INTO public.moon VALUES ('Triton', 20, 8, 0.44, true);
INSERT INTO public.moon VALUES ('Nereid', 21, 8, 0.03, true);
INSERT INTO public.moon VALUES ('Proteus', 22, 8, 0.02, true);
INSERT INTO public.moon VALUES ('Charon', 23, 10, 0.13, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 7, 'the pleace where human live', true);
INSERT INTO public.planet VALUES ('Mars', 2, 7, 'Our little oxidite brother', false);
INSERT INTO public.planet VALUES ('Mercury', 3, 7, 'The smallest and closest to our main star', false);
INSERT INTO public.planet VALUES ('Venus', 4, 1, 'A hot and hostile planet with a thick atmosphere', false);
INSERT INTO public.planet VALUES ('Jupiter', 5, 1, 'A gas giant with many moons', false);
INSERT INTO public.planet VALUES ('Saturn', 6, 1, 'A gas giant with beautiful rings', false);
INSERT INTO public.planet VALUES ('Uranus', 7, 1, 'An ice giant with a tilted axis', false);
INSERT INTO public.planet VALUES ('Neptune', 8, 1, 'A distant ice giant with a stormy atmosphere', false);
INSERT INTO public.planet VALUES ('Ceres', 9, 1, 'The largest object in the asteroid belt', false);
INSERT INTO public.planet VALUES ('Pluto', 10, 1, 'A dwarf planet with a heart-shaped feature', false);
INSERT INTO public.planet VALUES ('Haumea', 11, 1, 'A dwarf planet with an elongated shape', false);
INSERT INTO public.planet VALUES ('Makemake', 12, 1, 'A dwarf planet with a reddish surface', false);
INSERT INTO public.planet VALUES ('Eris', 13, 1, 'A dwarf planet larger than Pluto', false);


--
-- Data for Name: satelites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelites VALUES ('Satellite A', 1, 1);
INSERT INTO public.satelites VALUES ('Satellite B', 2, 2);
INSERT INTO public.satelites VALUES ('Satellite C', 3, 3);
INSERT INTO public.satelites VALUES ('Satellite D', 4, 4);
INSERT INTO public.satelites VALUES ('Satellite E', 5, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('HD14', 1, 14, 'is the oldest star of the constellation of libra', 1);
INSERT INTO public.star VALUES ('SMSS', 1, 14, 'known as the Methuselah star', 2);
INSERT INTO public.star VALUES ('V838', 1, 0, 'one of the youngest', 3);
INSERT INTO public.star VALUES ('HE', 1, 13, 'located in the constellation of Libra', 4);
INSERT INTO public.star VALUES ('SM0313', 2, 14, 'located in the Coma Cluster', 5);
INSERT INTO public.star VALUES ('PSR', 3, 13, 'a binary star ystem consisting of a neutron star', 6);
INSERT INTO public.star VALUES ('The Sun', 1, 4, 'the star that give us the down', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_loc_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_loc_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_satelites_id_seq', 1, false);


--
-- Name: satelites_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_universe_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: star_star_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq1', 7, true);


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
-- Name: satelites satelites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_pkey PRIMARY KEY (satelites_id);


--
-- Name: satelites satelites_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_universe_id_key UNIQUE (galaxy_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_namemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_namemoon UNIQUE (name);


--
-- Name: planet unique_nameplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_nameplanet UNIQUE (name);


--
-- Name: satelites unique_namesatalities; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT unique_namesatalities UNIQUE (name);


--
-- Name: star unique_namestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_namestar UNIQUE (name);


--
-- Name: moon moon_planet_loc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_loc_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_loc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_loc_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: satelites satelites_universe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_universe_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_gal_loc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_gal_loc_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

