--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people; Type: TABLE; Schema: public; Owner: craigwermert; Tablespace: 
--

CREATE TABLE people (
    id integer NOT NULL,
    name character varying(255),
    title character varying(255),
    description text,
    photo character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.people OWNER TO craigwermert;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: craigwermert
--

CREATE SEQUENCE people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO craigwermert;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: craigwermert
--

ALTER SEQUENCE people_id_seq OWNED BY people.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: craigwermert; Tablespace: 
--

CREATE TABLE person (
    id integer NOT NULL,
    name character varying(255),
    title character varying(255),
    description text,
    photo character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.person OWNER TO craigwermert;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: craigwermert
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO craigwermert;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: craigwermert
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: craigwermert; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO craigwermert;

--
-- Name: stories; Type: TABLE; Schema: public; Owner: craigwermert; Tablespace: 
--

CREATE TABLE stories (
    id integer NOT NULL,
    title character varying(255),
    "time" character varying(255),
    icon character varying(255),
    "iconColor" character varying(255),
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.stories OWNER TO craigwermert;

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: craigwermert
--

CREATE SEQUENCE stories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stories_id_seq OWNER TO craigwermert;

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: craigwermert
--

ALTER SEQUENCE stories_id_seq OWNED BY stories.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: craigwermert
--

ALTER TABLE ONLY people ALTER COLUMN id SET DEFAULT nextval('people_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: craigwermert
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: craigwermert
--

ALTER TABLE ONLY stories ALTER COLUMN id SET DEFAULT nextval('stories_id_seq'::regclass);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: craigwermert
--

COPY people (id, name, title, description, photo, created_at, updated_at) FROM stdin;
1	Nicole Kulick	GRAD SCHOOL STUDENT, FUTURE SCHOOL COUNSELOR & A BUNDLE OF AWESOME	<p>Born and raised in Columbus, Ohio. Supported by two loving parents, Dan and Donna Coontz.</p><p>Extroverted. Enthusiastic. Hysterical.</p><p><strong>Likes</strong>: farmer's markets, horror movies, and donuts.</p><p><strong>Dislikes</strong>: mean people, oatmeal, and rolled-under toiletpaper</p>	assets/nicole.jpg	2014-11-15 13:56:50.846256	2014-11-15 13:56:50.846256
2	Craig Wermert	SOFTWARE DEVELOPER & TALL GUY	<p>Born and raised in Sidney, Ohio. Son of two loving parents, Carl and Rosie Wermert.</p><p>Amazing. Incredible. Humble.</p><p><strong>Likes</strong>: music, bad horror movies, and writing code (i.e. he's a nerd)</p><p><strong>Dislikes</strong>: tomatoes, clowns, and Nicole's nightly impromptu serenades</p>	assets/craig.jpg	2014-11-15 13:56:50.85865	2014-11-15 13:56:50.85865
\.


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: craigwermert
--

SELECT pg_catalog.setval('people_id_seq', 4, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: craigwermert
--

COPY person (id, name, title, description, photo, created_at, updated_at) FROM stdin;
\.


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: craigwermert
--

SELECT pg_catalog.setval('person_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: craigwermert
--

COPY schema_migrations (version) FROM stdin;
20141115132444
20141115135330
20141115171627
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: craigwermert
--

COPY stories (id, title, "time", icon, "iconColor", content, created_at, updated_at) FROM stdin;
1	The Beginning	March, 2012	mail	#3498db	<p>Who knew cupid would be real? OkCupid that is!</p><p>Craig joined to see what would happen and meet new people. Nicole joined after a bit of peer pressure from her coworkers.</p><p>She messaged him, he messaged back. And then, the awesomeness began.</p>	2014-11-15 17:22:09.865929	2014-11-15 17:22:09.865929
2	First Date	A few weeks later in March, 2012	heart	#e74c3c	<p>After a few drinks, Craig parallel parking Nicole's car, and some pizza at Plank's, they called it a night. By all accounts, the first date was a success. </p>	2014-11-15 17:22:09.870054	2014-11-15 17:22:09.870054
3	Craig Moves In	October, 2012	truck	#34495e	<p>By this time, they were in love.</p><p>Despite Nicole's hesitation regarding toilet seats left ajar and socks on the living room floor, Craig packed up his belongings and moved in with Nicole. Craig told her she had nothing to worry about. <strong><em>Craig was right.</em></strong>	2014-11-15 17:22:09.872784	2014-11-15 17:22:09.872784
4	Awesome Quiet Time	October, 2012 - March, 2014	clock	#16a085	<p>Other than day-to-day love and totally being awesome, not much happened in their relationship during this period. Nicole went back to school for her Master's degree, and Craig started working as a software engineer.</p>	2014-11-15 17:22:09.874901	2014-11-15 17:22:09.874901
5	The Question	March 8th, 2014	diamond	#3498db	<p>It was the biggest day of their lives (to this point, at least). Since the two are romantics at heart, it went something like this...</p><p><strong>Nicole</strong>: “What's wrong; do you have to poop?”</p><p><strong>Craig</strong>: “No, I was actually wondering if you'd marry me?”</p><p><strong>Nicole</strong>: “Shut up! Are you kidding?!”</p><p><strong>Craig</strong>: “…”</p><p><strong>Nicole</strong>: “Yes!”</p>	2014-11-15 17:22:09.876801	2014-11-15 17:22:09.876801
\.


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: craigwermert
--

SELECT pg_catalog.setval('stories_id_seq', 5, true);


--
-- Name: people_pkey; Type: CONSTRAINT; Schema: public; Owner: craigwermert; Tablespace: 
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: craigwermert; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: stories_pkey; Type: CONSTRAINT; Schema: public; Owner: craigwermert; Tablespace: 
--

ALTER TABLE ONLY stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: craigwermert; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: craigwermert
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM craigwermert;
GRANT ALL ON SCHEMA public TO craigwermert;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

