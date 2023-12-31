--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8
-- Dumped by pg_dump version 14.8

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
-- Name: Boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Boards" (
    board_id integer NOT NULL,
    team_id integer NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE public."Boards" OWNER TO postgres;

--
-- Name: Boards_board_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Boards_board_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Boards_board_id_seq" OWNER TO postgres;

--
-- Name: Boards_board_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Boards_board_id_seq" OWNED BY public."Boards".board_id;


--
-- Name: Lanes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lanes" (
    lane_id integer NOT NULL,
    lane_name character varying(255) NOT NULL,
    board_id integer NOT NULL,
    seq_no integer NOT NULL
);


ALTER TABLE public."Lanes" OWNER TO postgres;

--
-- Name: Lanes_lane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Lanes_lane_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Lanes_lane_id_seq" OWNER TO postgres;

--
-- Name: Lanes_lane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Lanes_lane_id_seq" OWNED BY public."Lanes".lane_id;


--
-- Name: OnATeam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OnATeam" (
    on_id integer NOT NULL,
    user_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public."OnATeam" OWNER TO postgres;

--
-- Name: OnATeam_on_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OnATeam_on_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OnATeam_on_id_seq" OWNER TO postgres;

--
-- Name: OnATeam_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OnATeam_on_id_seq" OWNED BY public."OnATeam".on_id;


--
-- Name: Tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tasks" (
    task_id integer NOT NULL,
    lane_id integer NOT NULL,
    seq_no integer NOT NULL,
    description character varying NOT NULL,
    task_title character varying,
    color character varying
);


ALTER TABLE public."Tasks" OWNER TO postgres;

--
-- Name: Tasks_task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tasks_task_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tasks_task_id_seq" OWNER TO postgres;

--
-- Name: Tasks_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tasks_task_id_seq" OWNED BY public."Tasks".task_id;


--
-- Name: Teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Teams" (
    team_id integer NOT NULL,
    team_name character varying NOT NULL
);


ALTER TABLE public."Teams" OWNER TO postgres;

--
-- Name: Teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Teams_team_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Teams_team_id_seq" OWNER TO postgres;

--
-- Name: Teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Teams_team_id_seq" OWNED BY public."Teams".team_id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(15)
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: Users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_user_id_seq" OWNER TO postgres;

--
-- Name: Users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_user_id_seq" OWNED BY public."Users".user_id;


--
-- Name: Boards board_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Boards" ALTER COLUMN board_id SET DEFAULT nextval('public."Boards_board_id_seq"'::regclass);


--
-- Name: Lanes lane_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lanes" ALTER COLUMN lane_id SET DEFAULT nextval('public."Lanes_lane_id_seq"'::regclass);


--
-- Name: OnATeam on_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OnATeam" ALTER COLUMN on_id SET DEFAULT nextval('public."OnATeam_on_id_seq"'::regclass);


--
-- Name: Tasks task_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tasks" ALTER COLUMN task_id SET DEFAULT nextval('public."Tasks_task_id_seq"'::regclass);


--
-- Name: Teams team_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teams" ALTER COLUMN team_id SET DEFAULT nextval('public."Teams_team_id_seq"'::regclass);


--
-- Name: Users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN user_id SET DEFAULT nextval('public."Users_user_id_seq"'::regclass);


--
-- Data for Name: Boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Boards" (board_id, team_id, title) FROM stdin;
143	9	quaerat
144	4	dolores
145	4	nemo
146	6	tempora
147	6	quidem
148	4	eius
149	6	perspiciatis
151	6	fugit
152	19	NEWBOARDS
234	101	b1
238	105	New name
235	102	b2
\.


--
-- Data for Name: Lanes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Lanes" (lane_id, lane_name, board_id, seq_no) FROM stdin;
2	Hello From Postman	123	57
3	quod	2	41
4	quod	2	41
5	eum	7	29
6	modi	9	65
7	suscipit	150	27
8	itaque	144	40
9	molestias	145	25
10	necessitatibus	151	11
11	consequuntur	151	36
12	voluptas	143	24
13	dolore	142	63
14	distinctio	150	79
15	quod	144	1
16	cupiditate	147	18
21	New Lane	230	2
23	New	230	2
22	Lane	230	2
24	New Lane	227	1
25	TEST	233	1
32	New Lane	237	1
1		1	1
36	Complete	234	2
37	New Lane	234	1
26	Started	234	3
39	New Lane	238	1
40	New Lane	238	2
38	My lane	238	3
35	N	235	1
31	New Lane	235	2
34	New Lane	235	3
\.


--
-- Data for Name: OnATeam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OnATeam" (on_id, user_id, team_id) FROM stdin;
1	1807	7
2	1765	5
3	1840	6
4	1775	7
5	1752	3
6	1764	1
7	1798	9
8	1816	8
9	1791	1
10	1770	8
11	1842	5
12	1794	5
13	1797	2
14	1788	7
15	1777	2
16	1803	1
17	1777	7
18	1833	5
19	1831	9
20	1791	3
21	2110	2
22	2005	6
23	2134	5
24	1785	7
25	1782	7
26	1916	5
27	2053	10
28	1891	5
29	1806	6
30	1921	1
31	1964	4
32	1887	6
33	2032	8
34	1809	9
35	1888	9
36	1978	9
37	2098	2
38	2114	2
39	1937	10
40	2133	1
41	1904	8
42	1910	6
43	1810	4
44	1768	10
45	2147	6
46	1785	7
47	1814	2
48	1800	10
49	1797	7
50	2137	2
51	2001	6
52	1762	3
53	1958	2
54	2050	9
55	1889	3
56	2058	2
57	1844	10
58	1852	4
59	1978	10
60	2132	6
61	2014	2
62	2043	8
63	1868	1
64	1964	6
65	1821	1
66	1834	10
67	1754	2
68	2063	2
69	2112	9
70	1818	10
71	1981	5
72	1934	2
73	1873	3
74	1937	5
75	2074	8
76	2029	5
77	2114	6
78	1771	5
79	1748	1
80	1933	2
81	1835	3
82	2049	8
83	2122	3
84	2010	8
85	1773	8
86	2147	6
87	2143	3
88	2107	5
89	1885	1
90	1794	4
91	2093	4
92	2113	1
93	1770	6
94	1847	10
96	1765	1
95	2078	3
97	1813	5
98	2039	8
99	2006	1
100	1844	2
101	1803	6
103	1859	6
102	1916	7
104	2025	9
105	1834	10
106	2036	3
107	1772	8
108	2	1
109	2048	9
110	1938	6
111	2054	2
112	1846	7
114	1789	6
115	1783	10
113	1976	9
116	1914	7
117	2116	1
118	1833	7
119	2035	2
120	1905	2
121	2060	8
122	1997	8
123	1763	7
124	1815	3
125	1783	7
126	1777	4
127	1750	8
128	2045	3
129	2025	10
130	2040	9
131	2	20
132	2	21
133	2	22
134	2	23
135	2	24
136	2	25
137	2	26
138	2	27
139	2	28
140	2	29
141	2	30
142	2	31
143	2	32
144	2	33
145	2	34
146	2	35
147	2	36
148	2	37
149	2	38
150	2	39
151	2	40
152	2	41
153	2	42
154	2	43
155	2	44
156	2	45
157	2	46
158	2	47
159	2	48
160	2	49
161	2	50
162	2	51
163	2	52
164	2	53
165	2	54
166	2	55
167	2	56
168	2	57
169	2	58
170	2	59
171	2	60
172	2	61
173	2	62
174	2	63
175	2	64
176	2	65
177	2	66
178	2	67
179	2	68
180	2	69
181	2	70
182	2	71
183	2	72
184	2	73
185	2	74
186	2	75
187	2	76
188	2	77
189	2	78
190	2	79
191	2	80
192	2	81
193	2	82
194	2	83
195	2	84
196	2	85
197	2	86
198	2	87
199	2	88
200	2	89
201	2	90
202	2	91
203	2	92
204	2	93
205	2	94
206	2	95
207	2	96
208	2	97
209	2	98
210	2	99
211	2	100
212	2	101
213	2	102
214	2	103
215	2	104
216	2	105
217	2	106
\.


--
-- Data for Name: Tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tasks" (task_id, lane_id, seq_no, description, task_title, color) FROM stdin;
1	16	70	Assumenda consectetur porro natus totam expedita mollitia iste.	ipsum	\N
2	4	85	Quasi laboriosam vel nisi error.	quam	\N
3	2	74	Labore quaerat architecto.	distinctio	\N
4	2	30	Ab doloribus dolorum molestiae quam architecto.	nostrum	\N
5	5	44	Repellendus officia incidunt accusamus rerum quae eligendi dolores optio.	doloremque	\N
6	12	58	Earum atque impedit voluptate quia officia autem repudiandae explicabo.	corrupti	\N
7	8	45	Eligendi dolore molestias.	repellat	\N
8	16	53	Velit impedit necessitatibus voluptates placeat dolor hic aspernatur veniam fugit.	quis	\N
9	1	5	Fugiat culpa facilis ducimus recusandae quaerat ullam.	amet	\N
10	8	95	Sunt quas illo harum possimus nulla vel excepturi dolorum officia.	quaerat	\N
11	14	3	Saepe possimus autem tempora deserunt autem nostrum inventore.	facilis	\N
12	11	8	Numquam quae error voluptatum explicabo nesciunt minima.	dignissimos	\N
13	16	75	Est error ut molestiae quibusdam.	aliquam	\N
14	1	49	Dolorum eveniet aliquid laudantium accusantium neque illum vero et tenetur.	vero	\N
15	16	8	Voluptates ut mollitia quo excepturi veritatis.	doloribus	\N
16	6	90	Quisquam similique dolor esse molestias.	doloremque	\N
17	5	60	Mollitia iste laboriosam iste culpa corporis.	voluptates	\N
18	3	28	Saepe nemo minus architecto quasi nesciunt dolores eius nam.	porro	\N
19	13	77	Reiciendis officia reiciendis id nobis a cumque aliquid ea quasi.	laborum	\N
20	5	19	Cupiditate doloremque pariatur cum magnam porro hic itaque enim optio.	veritatis	\N
21	4	96	Explicabo adipisci architecto temporibus iste eius cumque architecto vel.	iusto	\N
22	8	34	Debitis sit distinctio debitis facilis quia debitis illum illum eius.	quae	\N
23	1	73	Cum dolores iusto explicabo labore quibusdam ratione.	est	\N
24	1	42	Voluptate veritatis non eaque voluptas nisi.	repudiandae	\N
25	12	37	Occaecati dolores numquam ab iure.	saepe	\N
26	3	29	Laudantium voluptates exercitationem similique culpa rem fugiat omnis.	eveniet	\N
27	5	6	Exercitationem ratione veniam iste quaerat.	occaecati	\N
28	1	92	Quasi enim non aperiam.	quasi	\N
29	16	49	Laudantium ea fugit autem fuga deleniti.	earum	\N
30	9	99	Cupiditate illum reiciendis quae provident maxime dolorum culpa.	quisquam	\N
31	13	23	Possimus minima eius at ut sit et.	odit	\N
32	8	66	Omnis repellat impedit adipisci tempore.	nam	\N
33	13	98	Id veniam voluptates quas delectus dolorem adipisci.	a	\N
34	11	72	A iste sequi sint adipisci blanditiis.	aliquam	\N
35	1	62	Error reprehenderit labore facilis quos dolor culpa itaque error voluptate.	aliquam	\N
36	2	51	Magni asperiores modi quidem.	blanditiis	\N
37	14	86	Nisi corrupti consequatur odit aliquid rerum in doloribus.	optio	\N
38	16	40	At quisquam tenetur fugiat officia modi magnam sit.	assumenda	\N
39	7	85	Odio laudantium sit maxime explicabo maxime ullam accusantium.	totam	\N
40	15	42	Tempore nihil dolores blanditiis atque similique.	vel	\N
41	3	95	Nostrum odit tenetur quo quasi quidem laborum.	nihil	\N
42	4	23	Rem rem quas.	modi	\N
43	15	61	Quam at voluptatem recusandae minima cumque aperiam quidem laborum.	perspiciatis	\N
44	3	75	Culpa accusantium et.	asperiores	\N
45	10	38	Sed velit quisquam pariatur aperiam dolore assumenda consequuntur dicta.	porro	\N
46	8	78	Hic nam nulla.	aspernatur	\N
47	6	45	Possimus ipsa magnam dolorem.	nobis	\N
48	5	14	Optio debitis natus ipsa fugiat reiciendis inventore repellat.	architecto	\N
49	1	41	Sint totam unde fugiat est.	amet	\N
50	8	35	Consequatur voluptatum eius recusandae delectus debitis placeat.	animi	\N
51	11	72	Architecto nemo repellendus cumque odit sint.	architecto	\N
52	16	85	Dolorum possimus tempore corporis repellat perspiciatis blanditiis ab nobis harum.	impedit	\N
53	11	43	Ex cupiditate ut debitis.	deleniti	\N
54	2	21	Distinctio mollitia doloribus praesentium excepturi totam sequi libero.	deserunt	\N
55	5	30	Temporibus nobis ab dolorum.	fugiat	\N
56	3	95	Nemo autem officiis.	dolorum	\N
57	15	97	Necessitatibus tempore blanditiis nesciunt odit temporibus maxime voluptatibus beatae.	dicta	\N
58	8	56	Rem ullam officia adipisci qui.	ipsam	\N
59	8	22	At odit exercitationem impedit unde facilis nostrum nobis.	dolorum	\N
60	4	58	Nihil quasi perferendis veritatis aut.	nihil	\N
61	3	83	Quidem minus dignissimos quod optio laudantium adipisci expedita.	vero	\N
62	12	18	Tempore quod minus doloremque autem iste quaerat dignissimos possimus dolorem.	distinctio	\N
63	10	13	Ipsam veritatis quia quas dolorem.	ipsam	\N
64	3	98	Reprehenderit eaque repellat iusto repellat aut.	accusamus	\N
65	13	91	Nesciunt dolores ab.	voluptates	\N
66	8	37	Quo accusamus ipsa commodi voluptatem.	mollitia	\N
67	13	49	Vero nam aliquam.	a	\N
68	14	9	Architecto laborum odio quam unde autem ab praesentium odio magni.	sint	\N
69	11	70	Cumque provident ut.	amet	\N
70	3	41	Dolorem sed eveniet consequuntur saepe corporis.	unde	\N
71	1	86	Pariatur voluptas adipisci sunt.	excepturi	\N
72	15	96	Occaecati quo fugiat veniam laborum magni inventore pariatur id.	aut	\N
73	4	74	Possimus et voluptates dolorum tempora distinctio distinctio natus mollitia iure.	impedit	\N
74	7	27	Rerum accusamus incidunt officiis laborum.	asperiores	\N
75	9	99	Dolor provident nihil quos nesciunt.	sapiente	\N
76	10	60	Porro atque sapiente cumque suscipit.	debitis	\N
77	5	95	Adipisci dicta error debitis dolorum tempora a dolorem.	aut	\N
78	4	15	Ab natus praesentium sint quisquam nam ex quam earum.	nam	\N
79	10	41	Neque amet deserunt.	nam	\N
80	4	49	Odit dolores eaque alias fuga officiis pariatur.	corrupti	\N
82	15	27	Ullam inventore aperiam nihil exercitationem quas quo.	aliquam	\N
81	13	44	Ratione quos id quaerat inventore dignissimos asperiores impedit.	rerum	\N
84	14	70	Excepturi vel error rem libero cumque necessitatibus possimus.	impedit	\N
87	8	70	Perferendis voluptates dolor beatae veniam distinctio.	adipisci	\N
90	8	93	Dolorem nam repudiandae quidem nesciunt dolore quo.	harum	\N
93	8	15	Adipisci dolorem vel occaecati molestiae aliquid adipisci voluptate aliquid illum.	numquam	\N
96	15	74	Illum assumenda ex iure.	tenetur	\N
99	10	63	Nemo vel amet repellendus.	facilis	\N
103	7	91	Delectus illo cum ullam.	necessitatibus	\N
106	11	42	Quaerat ex perferendis consequatur fuga.	omnis	\N
109	11	33	Fuga sunt aut velit consectetur dolor mollitia.	nesciunt	\N
112	3	52	Sint et libero cupiditate rem perferendis sed enim.	ab	\N
115	8	9	Explicabo quibusdam reprehenderit placeat quidem rerum.	necessitatibus	\N
118	10	40	Illum sapiente pariatur qui nulla.	tenetur	\N
121	2	22	Nam beatae accusantium.	officia	\N
124	9	66	Omnis earum incidunt aliquid.	voluptas	\N
127	3	11	Nisi rerum distinctio necessitatibus.	beatae	\N
130	8	35	Rerum suscipit aspernatur at voluptatibus corrupti.	explicabo	\N
133	16	96	Nostrum necessitatibus officiis repudiandae unde incidunt aspernatur minima sunt saepe.	illum	\N
136	9	53	Iusto ea sequi consequuntur reiciendis nemo mollitia reprehenderit ratione iusto.	aliquid	\N
139	11	30	Sit qui provident consequuntur neque alias nesciunt vero.	eius	\N
142	3	100	Aliquid voluptate beatae nam.	officia	\N
145	6	10	Hic itaque molestias fugiat voluptas vero rem.	maxime	\N
148	5	18	Quasi expedita magni pariatur beatae.	soluta	\N
151	12	44	Qui nam officiis vitae qui at aliquam aspernatur.	aliquid	\N
154	7	35	Repellendus consequatur sed a.	rerum	\N
157	6	2	Sit nihil repellendus.	vel	\N
160	7	76	Dignissimos dicta veniam corporis eligendi laborum.	velit	\N
163	5	73	Odit repellat expedita saepe minus.	recusandae	\N
166	6	28	Odio ut corporis.	voluptate	\N
169	11	62	Qui odit nihil aliquam illum occaecati.	consectetur	\N
83	5	89	Sint cupiditate aut velit saepe laborum ullam.	voluptate	\N
86	8	36	Rem atque autem sapiente repudiandae nostrum.	placeat	\N
89	8	90	Aspernatur ipsam cum at quis nobis fugit aspernatur odit.	tempore	\N
92	9	78	Magnam tempore amet nemo praesentium reiciendis eligendi quasi dolor totam.	laborum	\N
95	5	7	Repellat praesentium a et.	hic	\N
98	7	73	Vel numquam qui quis odit facere.	architecto	\N
101	8	94	Quibusdam vel eum animi delectus blanditiis quae ea totam.	fugiat	\N
104	13	73	Temporibus dolorem non numquam aspernatur.	cupiditate	\N
107	3	67	Officiis eveniet blanditiis veniam numquam perferendis natus ex autem voluptatibus.	repellendus	\N
110	12	76	Atque doloremque voluptatum aliquam iure.	cumque	\N
113	9	81	Voluptatibus officia veritatis asperiores dolor perspiciatis.	dolores	\N
116	16	47	Accusantium voluptatem ut.	consectetur	\N
119	13	60	Dolore accusantium ad earum ducimus voluptas debitis nisi illo.	ducimus	\N
122	7	4	Quaerat minus repellat sint animi sint quidem labore eveniet minus.	laborum	\N
125	9	51	Sed sit sed.	rem	\N
128	16	98	Saepe quod alias minima dolorum dolor.	occaecati	\N
131	5	24	Iusto recusandae aperiam quia cupiditate nemo.	voluptatem	\N
134	12	70	Rerum expedita optio soluta aliquid perferendis.	consequuntur	\N
137	9	11	Quos dicta dolor iste omnis possimus magnam.	assumenda	\N
140	4	20	Iure ullam repudiandae debitis consequatur quos occaecati explicabo similique iure.	quae	\N
143	6	17	Voluptatibus voluptatibus minima aperiam.	accusamus	\N
146	2	94	Et eveniet atque accusamus reprehenderit.	in	\N
149	5	49	Harum esse ullam.	sit	\N
152	6	94	Fugiat occaecati quia.	porro	\N
155	4	93	Quis quam non iste sed dignissimos aspernatur.	unde	\N
158	15	32	Dolorum doloremque repudiandae harum repudiandae magnam.	est	\N
161	1	59	Commodi magnam ipsam ipsam iusto adipisci doloribus adipisci harum.	provident	\N
164	10	64	Ad velit soluta at impedit vel illum.	accusantium	\N
167	9	70	Aspernatur necessitatibus nesciunt cupiditate sit libero.	eum	\N
170	9	74	Repudiandae voluptatibus voluptatem ducimus ad nesciunt animi possimus velit ut.	sequi	\N
85	16	68	Consectetur maiores numquam omnis porro ullam.	qui	\N
88	6	96	Voluptas voluptates expedita earum minus.	aliquid	\N
91	6	53	Quis neque perferendis.	a	\N
94	11	22	Exercitationem ut ad amet possimus.	eligendi	\N
97	8	83	Incidunt ad delectus.	optio	\N
100	9	95	Dolores cupiditate eveniet eligendi libero iusto libero repellat recusandae quo.	voluptatem	\N
102	15	6	Inventore quas veritatis harum.	aut	\N
105	6	64	Distinctio veritatis quibusdam sint facere quaerat.	unde	\N
108	12	37	Hic veniam deleniti laboriosam placeat magni sequi maiores commodi exercitationem.	ratione	\N
111	5	82	Fugit vel vitae quo sequi nam in nesciunt modi et.	laboriosam	\N
114	6	91	Animi vero sint accusantium necessitatibus mollitia repudiandae voluptatem commodi.	suscipit	\N
117	2	28	Accusamus amet inventore.	aliquid	\N
120	7	58	At quasi nulla odit.	doloribus	\N
123	1	94	Expedita cum soluta voluptatem autem et nobis alias iste nostrum.	nam	\N
126	15	11	Eos accusamus possimus quasi repellendus dolorem ipsum ea voluptas.	tempora	\N
129	2	59	Incidunt nihil rem iure quod.	dolorem	\N
132	16	52	Impedit ipsa illum reprehenderit.	repellat	\N
135	1	63	Tenetur reprehenderit nobis alias.	culpa	\N
138	3	92	Cupiditate iste sed magnam temporibus iure cupiditate corrupti placeat tempora.	error	\N
141	2	2	Illo sapiente sunt expedita veritatis.	deserunt	\N
144	14	23	Sint architecto in perferendis doloribus quam voluptatem temporibus fuga facilis.	nobis	\N
147	14	72	Officiis nesciunt beatae beatae odit quisquam inventore aspernatur numquam.	quis	\N
150	5	34	In inventore quae.	cum	\N
153	6	2	Fuga deserunt recusandae.	quis	\N
156	7	55	Voluptatem accusamus deleniti possimus necessitatibus.	porro	\N
159	9	14	At odit suscipit error eveniet autem vero.	velit	\N
162	14	25	Quod quis et dignissimos ipsam ut tempore molestiae labore ad.	error	\N
165	14	31	Adipisci velit cupiditate.	sapiente	\N
168	3	83	Molestiae eius dignissimos iste cumque inventore explicabo iste.	quae	\N
171	15	30	Magnam voluptatem culpa error modi tenetur.	quibusdam	\N
173	1	59	In nulla totam eaque.	dolor	\N
172	10	50	Explicabo rerum repellendus sapiente tempore quia itaque omnis.	eaque	\N
174	3	61	Delectus maiores eum.	error	\N
175	4	10	Eos eligendi quidem debitis explicabo repellendus quam assumenda.	eligendi	\N
176	9	11	Culpa dolorem porro dolore quasi magni sit ipsam neque quia.	iste	\N
178	5	52	Repellat animi aliquam quasi autem suscipit.	mollitia	\N
177	10	46	Quod quo pariatur illo nisi praesentium.	earum	\N
179	3	81	Maiores temporibus consequatur fuga ex aliquid ipsa laborum ducimus hic.	dicta	\N
180	13	85	Nemo dolorum labore laudantium.	voluptates	\N
181	3	18	Consectetur iusto quo soluta cupiditate quos.	ad	\N
182	3	91	Eveniet culpa mollitia recusandae ex quo quisquam rem.	laboriosam	\N
183	15	2	Exercitationem dicta blanditiis porro nesciunt sit ullam.	quia	\N
184	9	98	Ipsam architecto at.	animi	\N
185	7	29	Cupiditate eligendi quis optio dolores delectus quo excepturi omnis mollitia.	ullam	\N
186	15	96	Ut quibusdam sed velit nemo iure facilis iure rem culpa.	ducimus	\N
187	4	59	Consequatur alias adipisci veniam porro vel dolor maiores.	nesciunt	\N
188	14	18	Vel adipisci neque nemo.	rerum	\N
189	9	100	Alias error aperiam praesentium.	labore	\N
190	7	91	Expedita in optio.	iusto	\N
191	6	90	Inventore nihil molestiae nam sed vero saepe beatae ab quos.	suscipit	\N
192	10	68	Laboriosam sequi illum expedita debitis deserunt tempore.	dolore	\N
193	1	49	Excepturi unde nihil fuga possimus autem.	autem	\N
194	8	52	Rerum doloremque rem perspiciatis explicabo ipsum dolores quibusdam.	voluptates	\N
195	5	57	Itaque quidem molestias tempora.	magni	\N
196	10	22	Veniam voluptatum harum.	odio	\N
197	13	93	Molestias cumque aliquid voluptatem natus ratione beatae provident nihil molestias.	provident	\N
198	15	50	Error ab officia ipsam porro aliquid molestias voluptates natus.	quam	\N
199	10	88	Atque reprehenderit culpa quis adipisci.	laudantium	\N
200	4	74	In debitis consequuntur.	quo	\N
201	13	46	Vel dignissimos fugiat saepe dolore repellat officiis aspernatur.	iure	\N
202	5	37	Dignissimos provident nihil consequuntur nostrum nulla expedita quasi tenetur.	nulla	\N
203	3	47	Quis debitis labore quaerat vitae repudiandae velit maiores enim.	aut	\N
204	10	30	Doloribus accusamus sequi voluptate molestias illo ullam maxime dignissimos reprehenderit.	totam	\N
205	2	70	Dolore doloribus omnis quibusdam sunt nobis minus.	nam	\N
206	14	82	Commodi vitae exercitationem autem commodi iure dolorum quod.	molestias	\N
207	11	78	Nobis nemo deleniti aperiam veritatis assumenda architecto corrupti quibusdam deserunt.	rem	\N
208	8	79	Nostrum similique deleniti.	nostrum	\N
209	11	38	Doloremque maiores nostrum.	sequi	\N
210	4	41	Repellat nisi cum suscipit illum reiciendis omnis et.	voluptatum	\N
211	2	31	Ipsa ducimus voluptatum maiores quidem dolor quo quos quas repellat.	asperiores	\N
212	15	5	Nam incidunt rerum.	quaerat	\N
213	1	46	Deleniti pariatur nam laudantium possimus velit iure at voluptate.	nulla	\N
214	15	75	Ipsam id voluptates.	nihil	\N
215	7	12	Cupiditate eveniet accusantium error itaque reiciendis veritatis odio tempora.	voluptates	\N
216	11	98	Atque quisquam modi amet saepe repellendus ullam perspiciatis.	repudiandae	\N
217	6	22	Officia repellendus quos ipsum explicabo neque voluptas sed saepe.	quia	\N
218	8	7	Expedita amet sint nesciunt.	sequi	\N
219	9	40	Quisquam rerum ratione nemo corrupti incidunt necessitatibus.	aliquid	\N
220	3	80	Earum natus tenetur possimus excepturi ex corporis cupiditate sunt rem.	minus	\N
221	7	15	Voluptatem minima iure.	tenetur	\N
223	6	77	Laborum sit eligendi quo.	asperiores	\N
222	4	77	Deleniti sit consequuntur dicta amet rerum dignissimos inventore numquam consequuntur.	dolore	\N
240	8	15	Itaque possimus voluptatum architecto eveniet saepe.	esse	\N
243	10	1	Inventore veritatis facilis nihil laborum quis.	sint	\N
246	12	71	Molestias accusantium possimus.	incidunt	\N
249	7	32	Libero enim ut dolores animi nihil eaque.	laboriosam	\N
252	7	83	Atque voluptatibus sapiente quod.	id	\N
255	8	70	Deserunt distinctio minus dignissimos fugit ea dolore exercitationem maiores consectetur.	deleniti	\N
258	6	4	Labore eligendi repellat beatae reprehenderit.	facilis	\N
261	11	74	Atque ab laborum deleniti minus expedita dolore.	nobis	\N
264	5	78	Quisquam eaque repellendus.	nobis	\N
267	10	16	Eveniet id iste veniam nesciunt ad cum officiis molestias exercitationem.	earum	\N
270	12	71	Commodi eveniet unde.	hic	\N
273	3	77	Odit vitae iusto numquam.	ea	\N
276	9	48	Enim tempore animi optio quas.	facere	\N
279	4	16	In ducimus reprehenderit.	beatae	\N
282	3	18	Hic illo dicta sint iure odit laborum nemo.	fugiat	\N
285	11	61	Iste ullam exercitationem cumque aliquid sint.	ea	\N
288	5	72	Porro fugit quod odio eum ab cupiditate similique temporibus facere.	atque	\N
291	4	67	Qui officiis beatae.	repudiandae	\N
294	4	33	Ab cupiditate placeat sit et omnis voluptatem.	sunt	\N
297	12	56	Soluta adipisci dolore et sint id magnam quas.	sed	\N
300	3	56	Autem asperiores itaque blanditiis cupiditate natus eveniet exercitationem velit quis.	fugiat	\N
311	10	66	Repudiandae totam cumque saepe error iure suscipit similique earum.	repellat	\N
314	6	40	Repudiandae magnam ut.	molestiae	\N
317	15	3	Officia autem voluptatem at sapiente qui.	ipsa	\N
320	13	3	Nulla nam quaerat repudiandae omnis omnis architecto.	dolor	\N
323	2	65	Quod distinctio repellendus harum deleniti.	reiciendis	\N
326	10	21	Necessitatibus nobis unde animi.	sed	\N
329	10	16	Nobis sequi nam voluptatum eos deleniti possimus nam.	unde	\N
332	1	88	Non et minima.	autem	\N
335	10	86	Eos ipsum expedita facilis debitis sapiente hic ex praesentium quibusdam.	illo	\N
338	5	86	Earum porro sint ipsam aliquam sequi veniam atque occaecati tempora.	molestias	\N
341	2	56	Facere necessitatibus consequuntur pariatur illum veniam voluptatum consequuntur.	voluptas	\N
344	12	1	Natus quo dolor beatae magnam.	possimus	\N
347	16	12	Architecto aspernatur a natus repellendus dicta eos magnam.	molestias	\N
350	6	63	Quasi labore eum molestias perspiciatis quos nostrum mollitia explicabo voluptate.	itaque	\N
353	14	3	Minima animi tempora dolore.	ex	\N
356	12	22	Incidunt error harum tenetur a esse tempore hic.	dolores	\N
359	4	49	Similique repudiandae at amet iusto maiores.	assumenda	\N
362	16	5	Facere id voluptatibus eligendi iusto consectetur non quam illo eum.	aperiam	\N
365	1	57	Nihil quis pariatur consequuntur voluptates culpa quo.	iusto	\N
410	3	18	Ea doloribus eveniet quibusdam suscipit harum.	excepturi	\N
414	14	47	Non aut natus rem neque itaque doloremque.	deserunt	\N
417	5	30	Assumenda eaque fugiat inventore.	officiis	\N
420	12	68	Perspiciatis impedit eligendi aspernatur.	corporis	\N
423	15	6	A ratione sit amet ab saepe praesentium fugit.	illo	\N
426	13	6	Vitae dolores labore officiis ipsum aliquid.	minima	\N
429	11	12	Eaque quidem quis facere dolores incidunt repellat.	officia	\N
432	8	33	Rem fuga numquam quod aliquam sequi porro rerum.	voluptates	\N
435	3	13	Occaecati vel sapiente provident.	at	\N
438	10	40	A sunt debitis sit.	repellat	\N
441	16	89	Omnis nihil eaque ad minus laudantium numquam numquam.	perferendis	\N
444	12	45	Incidunt iure debitis laboriosam praesentium aspernatur beatae amet.	asperiores	\N
447	2	55	Facilis laboriosam maiores odio consectetur possimus facere illo quos.	autem	\N
450	10	93	Saepe iste non voluptates provident libero.	mollitia	\N
453	11	26	Quidem aliquid laudantium recusandae ea aperiam.	modi	\N
456	3	84	Ab tenetur quam ratione non nisi quidem quas minus.	dolore	\N
459	6	33	Dolorum labore nulla voluptatibus quasi.	voluptatibus	\N
462	16	42	Nesciunt natus inventore.	voluptatum	\N
466	15	72	Quaerat necessitatibus quae explicabo corrupti optio hic deserunt voluptas.	quaerat	\N
470	5	65	Ducimus optio eos magnam quibusdam.	quae	\N
479	2	31	Iusto optio facilis molestiae qui suscipit deserunt quidem ad a.	odio	\N
482	15	88	Magnam odit dolore dignissimos animi eius.	molestias	\N
485	1	56	Numquam voluptate est doloribus eaque error architecto nulla.	omnis	\N
488	7	17	Earum tempore sint nihil reiciendis blanditiis saepe at.	ab	\N
491	14	85	Nobis incidunt nihil repellendus perspiciatis porro quos.	animi	\N
494	3	14	Temporibus sint asperiores cumque ullam.	architecto	\N
497	8	90	Similique natus commodi at odit possimus esse omnis voluptas.	repudiandae	\N
500	6	53	Repudiandae laborum temporibus eligendi provident.	nostrum	\N
503	12	30	Voluptas numquam magni quisquam minima reprehenderit voluptate.	aliquid	\N
506	2	44	Corporis itaque sit sint.	unde	\N
509	7	71	Perspiciatis iure et corporis at.	sit	\N
512	5	55	Doloribus deleniti laborum quidem veritatis neque laborum necessitatibus facere.	voluptatem	\N
515	11	67	A excepturi architecto rem molestiae.	esse	\N
518	2	61	Ad eaque delectus maiores.	totam	\N
521	2	86	Commodi animi dolor aut officia.	commodi	\N
525	3	27	Doloribus nisi adipisci.	deleniti	\N
528	9	62	Aperiam rerum adipisci dolorem consectetur.	iusto	\N
531	2	48	Nostrum cupiditate molestias.	dolorem	\N
534	5	6	Magnam sapiente eius placeat necessitatibus itaque delectus.	at	\N
537	14	53	Molestias assumenda dolorem possimus nesciunt quod deserunt animi.	a	\N
540	9	41	Placeat inventore totam esse.	quasi	\N
224	16	53	Esse sequi ullam vero.	id	\N
227	10	76	Vel repudiandae officia exercitationem debitis.	consequatur	\N
230	9	90	Natus sit aut.	fugit	\N
233	2	96	Aliquam eligendi ex aliquam nam esse inventore porro.	facere	\N
236	8	5	Consequuntur expedita perferendis nam.	occaecati	\N
239	1	61	Suscipit sint magni ipsum officiis sit vitae asperiores fuga repudiandae.	delectus	\N
242	4	46	Ad similique dignissimos praesentium.	et	\N
254	5	88	Iste autem recusandae porro dolorum suscipit accusantium perspiciatis.	nisi	\N
257	1	24	Sunt nam ad.	voluptates	\N
260	3	94	Quidem perferendis quos fugiat accusamus.	aspernatur	\N
263	9	20	Nisi illum voluptate expedita inventore autem occaecati repellendus sunt.	pariatur	\N
266	12	31	Unde illum rem repellat.	quidem	\N
269	9	27	Corrupti reiciendis reiciendis accusamus minima dolore nihil aut.	culpa	\N
272	14	8	Ab necessitatibus esse pariatur quaerat ratione odio.	voluptatum	\N
275	5	45	Laudantium hic ut maiores suscipit cum.	ab	\N
278	11	8	Debitis neque maiores perferendis quos maiores.	cum	\N
281	1	90	Sit veritatis unde corrupti quas esse sequi delectus vitae.	enim	\N
284	4	75	Culpa beatae sapiente inventore praesentium officia nam.	error	\N
287	5	50	Totam illo placeat consectetur sunt libero.	deserunt	\N
290	14	95	Deserunt molestiae autem saepe quae.	ipsa	\N
293	15	70	Sunt cupiditate suscipit consequuntur iure.	facilis	\N
296	16	100	Esse quis reprehenderit natus amet sequi debitis similique omnis quidem.	vitae	\N
299	14	50	Necessitatibus modi neque incidunt laboriosam dolor fugit maiores.	adipisci	\N
302	6	16	Voluptatem dicta nostrum rerum dolores ex.	quam	\N
305	14	51	Enim earum modi exercitationem eveniet explicabo eos voluptatum debitis.	totam	\N
308	11	92	Aperiam dolorum eaque dolor.	temporibus	\N
361	15	2	Rerum officiis explicabo quas quia provident explicabo itaque quas soluta.	rem	\N
364	13	12	In harum facilis itaque non omnis cumque accusamus commodi at.	alias	\N
367	2	4	Sint voluptatem vero corporis facere.	modi	\N
370	2	64	Commodi unde natus.	error	\N
373	8	34	Asperiores illum a.	nihil	\N
376	12	21	Ullam laborum adipisci ratione nam non unde.	perferendis	\N
379	7	32	Suscipit sequi ipsam.	reiciendis	\N
382	16	61	Veritatis aliquid minima repellat dolores.	atque	\N
385	4	7	Natus voluptatem nostrum commodi facere optio.	perspiciatis	\N
388	12	52	Eos ipsam eveniet eveniet non dolores.	eos	\N
391	9	54	Perspiciatis perspiciatis iste veniam itaque sed voluptas magni consequatur exercitationem.	maxime	\N
394	12	45	Explicabo amet nostrum ex natus placeat temporibus minima id quas.	veritatis	\N
397	9	18	Eum quis quidem voluptates dolorem expedita ab perferendis.	corporis	\N
400	10	63	Ad sit quam sapiente aliquid magni quae.	fuga	\N
403	6	62	Earum illo enim alias autem.	cumque	\N
406	1	30	Soluta unde consequatur facilis eligendi voluptatem architecto architecto.	perferendis	\N
409	2	8	Iusto enim inventore facere repellat facere ab totam at porro.	libero	\N
415	4	47	Quibusdam nobis sequi temporibus hic nulla autem doloribus.	ex	\N
418	7	29	Autem inventore omnis qui nostrum.	architecto	\N
422	3	4	Voluptatum cum modi provident voluptatum ipsa ea.	dolor	\N
425	7	26	Laudantium doloremque consequuntur itaque commodi suscipit nisi rerum perspiciatis hic.	voluptates	\N
428	13	4	Adipisci quo explicabo quo nisi quasi.	beatae	\N
431	1	54	Distinctio rem aspernatur atque.	ex	\N
434	4	42	Deleniti delectus aspernatur cumque.	alias	\N
437	9	6	Provident quasi modi vero necessitatibus velit odio tempore.	nihil	\N
440	16	47	Repellendus excepturi laudantium dolores.	repellat	\N
443	4	57	At et illo perferendis magni unde labore ipsum repellat.	aliquam	\N
446	2	25	Voluptatum dignissimos eos.	vel	\N
449	16	79	Ipsum exercitationem temporibus culpa dignissimos tempore libero amet amet.	odio	\N
452	3	13	Quo inventore sit dolorem debitis sed.	iste	\N
455	2	71	Fuga unde eum quis quasi necessitatibus ratione temporibus.	quaerat	\N
458	7	82	Consectetur rerum eum officia.	quia	\N
461	8	86	Pariatur amet nulla temporibus sint pariatur quaerat eligendi consequatur.	adipisci	\N
465	5	88	Laborum nesciunt libero nostrum tenetur.	quos	\N
469	16	25	Cum ipsam ab necessitatibus eligendi.	blanditiis	\N
474	13	89	Voluptatem laudantium quae.	consequuntur	\N
478	4	33	Laborum quam quis eum occaecati ducimus aperiam officiis incidunt ad.	quos	\N
481	15	98	Autem ipsam beatae aliquid alias accusamus nostrum.	soluta	\N
484	16	3	Est aut enim cupiditate quis.	ipsam	\N
487	3	97	Vel enim natus excepturi consequatur ipsa rem corrupti.	neque	\N
490	10	70	Enim excepturi qui aliquam quae aliquam aliquam sunt itaque.	alias	\N
493	5	3	Itaque quibusdam commodi corrupti neque nulla vero vero libero eum.	fugit	\N
496	16	72	Sit architecto voluptatibus id ducimus aliquid beatae autem.	deleniti	\N
499	15	36	Perferendis cum vero omnis.	magni	\N
502	10	72	Cumque ullam libero voluptatibus facere architecto quaerat consequuntur odio dignissimos.	quidem	\N
505	14	69	Alias ipsa veritatis.	recusandae	\N
508	9	83	Eius impedit repellat rerum id.	amet	\N
511	15	61	Laborum placeat et temporibus pariatur perspiciatis.	alias	\N
514	11	44	Adipisci facere qui quidem repellat.	expedita	\N
517	13	87	Molestiae expedita laborum repellendus odit nesciunt.	itaque	\N
522	14	75	Dicta omnis porro possimus.	tenetur	\N
526	7	38	Inventore magni laborum nemo itaque exercitationem minima.	et	\N
577	10	81	Esse quaerat odio quibusdam maxime veniam ab dolorum cumque.	nisi	\N
584	6	3	Maiores odit at occaecati magni perspiciatis officia at eveniet neque.	modi	\N
587	14	18	Assumenda eius accusamus quisquam iste fugiat rem temporibus repudiandae.	quis	\N
225	5	70	Voluptate id ullam.	tenetur	\N
228	7	79	Facere recusandae in.	beatae	\N
231	14	73	Itaque distinctio aspernatur pariatur nulla.	suscipit	\N
234	10	5	Aut unde esse fuga.	consectetur	\N
237	2	66	Praesentium vero aliquam nostrum placeat.	eaque	\N
245	14	65	Nihil quae illum maxime dignissimos nostrum reiciendis deleniti blanditiis.	quo	\N
248	14	100	Quas maiores recusandae sint.	iste	\N
251	1	25	Modi iste a qui sed nemo recusandae perspiciatis sequi.	fugiat	\N
303	3	38	Quisquam occaecati deleniti amet.	quae	\N
306	4	64	Laudantium saepe officia repudiandae voluptatum ad veniam.	mollitia	\N
309	1	55	Officia deleniti excepturi ex suscipit ad laboriosam.	consequuntur	\N
312	12	78	Laudantium eum quisquam consequuntur consequuntur sunt soluta magni placeat tempore.	praesentium	\N
315	14	49	Nobis explicabo laudantium recusandae.	blanditiis	\N
318	10	9	Quos molestias sequi.	totam	\N
321	8	54	Aliquid molestias et quisquam tempore doloribus laudantium nisi.	neque	\N
324	15	55	Dignissimos maxime doloribus dignissimos ratione excepturi provident in est doloremque.	maxime	\N
327	13	70	Rem possimus inventore ullam voluptate blanditiis culpa a.	amet	\N
330	16	87	Vel quae harum tenetur.	blanditiis	\N
333	7	47	Unde maiores maxime optio ipsam quae ullam a.	iste	\N
336	7	26	Inventore modi est enim tenetur aperiam.	sapiente	\N
339	14	80	Odit voluptatum dolor assumenda veritatis esse cum ipsum.	eaque	\N
342	3	92	Omnis nobis repudiandae.	dolorem	\N
345	8	82	Vero natus occaecati enim ullam tempore hic molestiae quam tempore.	possimus	\N
348	6	8	Fugiat aspernatur quibusdam quibusdam a quod cupiditate eos a facilis.	ipsa	\N
351	15	22	Quidem optio saepe quo.	necessitatibus	\N
354	6	51	Reprehenderit corrupti aperiam consequatur tempore magni.	ullam	\N
357	3	53	Asperiores optio quidem omnis amet quae voluptatum illo et.	dolore	\N
360	2	84	Earum quia ut voluptate.	quidem	\N
363	10	47	Porro quam illum modi ut iusto corporis pariatur eaque quidem.	officiis	\N
368	16	68	Earum vel non rem nemo inventore corporis sunt.	aut	\N
371	2	69	Dolor itaque tenetur fugiat.	repudiandae	\N
374	8	37	Commodi hic eum quo.	magnam	\N
377	2	47	In sapiente labore soluta.	impedit	\N
380	4	5	Facilis necessitatibus tempore porro eos doloribus porro.	atque	\N
383	4	82	Doloribus id aperiam libero ut hic voluptas facilis quos.	voluptatibus	\N
386	4	38	Ut quos incidunt quisquam repellat pariatur excepturi ut quo eaque.	nostrum	\N
389	7	51	Delectus praesentium corrupti quos molestias.	quaerat	\N
392	13	20	Molestias nemo hic natus aperiam architecto.	corporis	\N
396	3	86	Aspernatur voluptatibus quasi ducimus sunt nemo debitis.	occaecati	\N
399	11	83	Voluptatum laboriosam illum esse quidem sapiente quia amet fugiat aspernatur.	amet	\N
402	9	82	Similique quisquam voluptatum qui aperiam vitae.	minus	\N
405	10	12	Esse cupiditate quisquam.	laudantium	\N
408	11	65	Atque sapiente possimus.	possimus	\N
416	5	59	Voluptates modi sint vitae pariatur.	alias	\N
419	2	92	Praesentium autem a.	quaerat	\N
424	5	27	Aliquid ducimus sint repellat.	ad	\N
427	4	11	Reiciendis adipisci alias distinctio.	at	\N
430	15	57	Est consectetur rem ipsum.	deleniti	\N
433	11	8	Facilis culpa ducimus neque quisquam laboriosam.	dicta	\N
436	7	35	Est atque perspiciatis reiciendis consequatur nulla quam quibusdam est cumque.	vitae	\N
439	15	93	Aut cumque fugit dolorem quibusdam labore quod.	dignissimos	\N
442	5	30	Eos voluptate ipsa dolorem amet commodi perspiciatis cum perspiciatis sit.	inventore	\N
445	3	30	Beatae sit magni vitae distinctio laboriosam.	maxime	\N
448	7	7	Possimus corrupti ullam officia inventore dolor necessitatibus.	aut	\N
451	5	95	Assumenda omnis consectetur perferendis ut a.	itaque	\N
454	12	50	Similique eius amet sint.	non	\N
457	10	60	Pariatur quisquam perspiciatis qui ab suscipit id.	iste	\N
460	11	28	Nesciunt dignissimos ad nisi odit iste minima nesciunt debitis reiciendis.	magnam	\N
463	3	55	Et deleniti nulla qui.	vel	\N
467	14	32	Iure iure amet asperiores fugit porro.	molestiae	\N
471	12	100	Facilis impedit dolores eos illum tempore.	vitae	\N
475	8	23	Quae iusto quisquam suscipit.	perferendis	\N
579	11	77	Quibusdam necessitatibus quidem sunt perspiciatis consectetur repudiandae sapiente odio nemo.	quas	\N
582	6	66	Hic aliquam odio error hic necessitatibus modi aspernatur.	ullam	\N
588	10	12	Dicta dicta culpa architecto beatae recusandae velit error voluptatem.	deleniti	\N
610	12	24	Tempore perspiciatis eos vero voluptatem deleniti nemo cupiditate.	laboriosam	\N
633	4	35	Quis aperiam harum velit velit.	odio	\N
637	14	49	Ipsum voluptate ipsa quasi ratione.	quas	\N
643	1	8	Quaerat est reprehenderit ullam architecto neque quos nihil deserunt sapiente.	voluptate	\N
647	15	28	Aspernatur adipisci quibusdam ex.	dolore	\N
650	12	62	Aspernatur eos iusto quia minus facere architecto aliquam.	laboriosam	\N
653	8	45	Laboriosam adipisci ut fugit nulla minima debitis enim.	quis	\N
656	11	6	Doloremque quod eaque vero earum enim expedita porro magnam.	ad	\N
659	6	6	Deleniti blanditiis commodi excepturi modi recusandae occaecati fugit esse consequatur.	earum	\N
662	2	24	Perferendis at libero sunt officia est.	similique	\N
665	3	100	Expedita veritatis maxime qui repellat voluptates illo repudiandae nostrum sunt.	fugit	\N
668	2	15	Modi alias dicta veritatis officia accusantium facere.	aut	\N
226	5	77	Alias quos corporis ratione cum quibusdam.	eveniet	\N
229	1	64	Inventore eos deserunt enim non sunt quaerat blanditiis enim.	optio	\N
232	13	23	Esse a nam eum cumque nostrum voluptates totam ipsum blanditiis.	alias	\N
235	1	13	Voluptatum amet doloremque tenetur.	beatae	\N
238	15	48	Quam suscipit porro voluptatem alias ducimus.	assumenda	\N
241	15	71	Quidem qui laboriosam possimus illum repudiandae aut magnam.	quasi	\N
244	6	26	Officia sed incidunt.	incidunt	\N
247	11	21	Error praesentium tenetur natus quasi facere magnam debitis reprehenderit.	impedit	\N
250	5	47	In quasi veniam dolor magnam porro doloribus reprehenderit minus.	occaecati	\N
253	2	67	Iure id qui laboriosam officiis delectus excepturi qui.	magni	\N
256	16	40	Voluptatibus rem sit.	libero	\N
259	13	22	Eos iure expedita ipsa suscipit rem doloribus consectetur voluptatibus.	dolorem	\N
262	15	6	Cum ex laboriosam.	recusandae	\N
265	8	56	Repudiandae corporis ex numquam in cumque et excepturi quibusdam.	sapiente	\N
268	7	90	Doloribus labore fugiat.	maiores	\N
271	1	85	Debitis officiis architecto distinctio ut libero laudantium necessitatibus repudiandae.	nesciunt	\N
274	3	10	Possimus totam nisi.	occaecati	\N
277	5	26	Quod accusamus fugiat velit dolor.	distinctio	\N
280	5	29	Quibusdam eius sequi.	qui	\N
283	11	97	Rerum nisi magnam expedita eos nam.	nihil	\N
286	13	47	A laborum corporis.	fugiat	\N
289	15	76	Maiores amet nostrum harum ratione unde incidunt eligendi commodi aperiam.	repellat	\N
292	1	38	Beatae repellat nulla veniam placeat officiis laborum.	qui	\N
295	13	62	Aut iste fugit commodi.	delectus	\N
298	16	66	Ducimus harum omnis laudantium.	rerum	\N
301	15	74	Possimus cum culpa eum asperiores.	dignissimos	\N
304	8	56	Iste laborum nesciunt modi voluptas.	cupiditate	\N
307	4	81	Nesciunt autem voluptatem aliquam amet natus delectus alias.	maiores	\N
310	8	4	Labore reiciendis voluptas error error eum sapiente.	itaque	\N
313	1	91	Mollitia harum repudiandae dolores fugit.	ea	\N
316	5	46	Minima reiciendis quibusdam.	inventore	\N
319	7	46	Saepe possimus voluptas porro.	laborum	\N
322	4	70	Deleniti saepe nulla iure ad.	nulla	\N
325	15	42	Odit reprehenderit numquam ipsum.	eum	\N
328	4	48	Vitae dolor fugit est consequuntur hic alias.	dolore	\N
331	2	89	Excepturi odio suscipit amet eius.	unde	\N
334	4	82	Inventore illum aut voluptate dolorum quis.	saepe	\N
337	16	27	Eaque vitae aut ut.	aliquid	\N
340	16	38	At adipisci dolore assumenda ex.	quas	\N
343	7	68	Laudantium fuga nulla possimus quis architecto suscipit.	voluptates	\N
346	7	15	Qui accusantium labore sint rerum esse deserunt nulla.	officia	\N
349	13	26	Quam labore officiis deserunt ipsum suscipit quaerat inventore earum.	optio	\N
352	14	84	Inventore alias minima nisi soluta dolores assumenda culpa consequuntur eum.	facilis	\N
355	12	85	Impedit ea unde veritatis quia quo id fugiat repellat rerum.	iusto	\N
358	14	14	Quo earum veniam hic consectetur ad unde.	voluptatibus	\N
366	2	12	Libero placeat non exercitationem quidem iusto.	odio	\N
369	12	91	Possimus praesentium ipsa labore veritatis esse culpa.	inventore	\N
372	8	2	Omnis nostrum perferendis.	voluptates	\N
375	4	9	Molestias assumenda sed sed laboriosam accusamus.	quod	\N
378	14	51	Veniam commodi asperiores maiores dolorum molestiae corrupti perspiciatis corrupti.	doloremque	\N
381	4	12	Fugit repudiandae velit asperiores molestiae excepturi molestias.	corrupti	\N
384	14	73	Vel deserunt temporibus maxime nulla optio omnis.	aperiam	\N
387	15	54	Quidem iste id illum.	facere	\N
390	7	67	Provident molestias in deleniti porro fuga.	rem	\N
393	1	46	Earum fuga unde.	esse	\N
395	3	14	Ipsum eos laborum harum architecto excepturi.	optio	\N
398	5	46	Modi itaque iste consequuntur totam sapiente.	odio	\N
401	7	40	Impedit aliquam totam alias cupiditate vero rerum pariatur ducimus.	nostrum	\N
404	11	89	Nostrum beatae suscipit.	velit	\N
407	15	33	Ipsum suscipit velit labore vel ab est dignissimos.	dicta	\N
411	14	97	Architecto libero velit sed corporis quod ea minima aliquam.	saepe	\N
413	9	78	Officia odit ut odio dicta quod ad totam.	fugit	\N
412	9	5	Iste aliquam temporibus similique atque.	accusamus	\N
421	5	85	Sit sint laborum odit laudantium laborum qui quis.	assumenda	\N
464	7	33	Autem reprehenderit nihil laborum ipsum distinctio sapiente nemo ullam blanditiis.	tempore	\N
468	5	56	A quaerat iure facilis vel suscipit velit nobis.	natus	\N
472	1	59	Iusto corrupti aperiam reprehenderit natus veritatis.	rerum	\N
473	16	58	Ex nisi similique excepturi rerum.	eaque	\N
476	6	29	Odit amet quaerat.	in	\N
477	9	39	In maxime magni pariatur architecto excepturi quam blanditiis.	necessitatibus	\N
480	10	75	Rerum est enim animi sed nobis officiis fugit rerum.	mollitia	\N
483	1	55	Ex inventore nostrum similique ipsa tempore consequatur a temporibus illum.	fuga	\N
486	2	70	Saepe voluptate aperiam sunt praesentium atque vel iste.	veritatis	\N
489	10	71	Distinctio optio vitae illum doloremque occaecati neque dolores reprehenderit.	impedit	\N
492	12	89	Quia saepe porro nulla nesciunt ipsum eligendi dolorum iusto.	dignissimos	\N
495	7	5	Aut optio adipisci dolore.	natus	\N
498	12	89	Qui accusantium vitae earum.	voluptate	\N
501	14	17	At rerum optio saepe fugit magni veniam.	ea	\N
504	11	15	Nisi quisquam magni placeat quia occaecati.	reiciendis	\N
507	15	18	Accusamus optio numquam fugiat consectetur architecto.	dolorum	\N
510	7	38	Dolore sed neque labore amet facilis quibusdam suscipit magni.	eveniet	\N
513	14	36	Nostrum earum nesciunt officia ex ab dolorum aperiam nam dolore.	enim	\N
516	15	87	Nobis officiis officiis.	ratione	\N
519	9	88	Sed vitae culpa aut.	magnam	\N
523	13	53	Illo fugit nisi qui tenetur.	sequi	\N
527	11	96	Ipsa nemo recusandae unde eius voluptatem vero.	possimus	\N
530	16	52	Minus accusamus quam earum itaque aspernatur.	dolore	\N
533	13	2	Unde earum quasi doloremque dignissimos.	omnis	\N
536	15	34	Enim quis libero explicabo ipsum nulla similique fuga.	numquam	\N
539	9	5	Ea minus adipisci ipsam eligendi facilis corrupti.	sed	\N
542	4	73	Aliquid ipsa possimus dolore.	tempore	\N
545	3	14	Consequatur unde illum exercitationem modi ipsam.	repellendus	\N
548	13	29	Ea recusandae quos dolor impedit.	nobis	\N
551	5	43	Amet quod consequatur blanditiis.	reiciendis	\N
554	2	6	Quisquam eum ad.	alias	\N
557	8	62	Numquam sit cumque libero laudantium vero nam laudantium architecto.	perspiciatis	\N
560	16	54	Dignissimos rerum repellat.	voluptatem	\N
563	6	21	Expedita voluptatibus accusamus.	magnam	\N
566	16	4	Enim ipsam et dolorem.	aliquam	\N
569	7	41	Perferendis facere et facilis minima dolorum.	velit	\N
571	16	24	Perferendis cupiditate iusto est nostrum fuga.	neque	\N
574	5	61	Error repellendus perspiciatis earum aspernatur ipsum eaque aliquid.	quos	\N
578	7	55	Deleniti neque sit magni pariatur.	nam	\N
581	10	33	Ut qui sapiente.	ipsam	\N
585	1	77	Facere cupiditate modi soluta.	vitae	\N
591	15	9	Mollitia reprehenderit debitis cumque eveniet nisi ipsum quia.	quasi	\N
594	1	43	Laboriosam aspernatur enim commodi dolor iste sed totam fuga quo.	quas	\N
597	12	59	Aperiam vel esse natus.	nesciunt	\N
600	11	33	Quis ullam asperiores hic culpa facere rerum amet esse temporibus.	corporis	\N
603	3	64	Repellat et atque amet quaerat nihil velit.	minima	\N
606	2	6	Nulla quidem reprehenderit fugit eligendi maiores molestiae.	deleniti	\N
609	15	62	Quidem corrupti eligendi cupiditate fugiat labore.	excepturi	\N
612	2	38	Ducimus numquam dicta in officia libero iusto dolor.	in	\N
615	7	59	Consequatur adipisci laudantium corporis nulla.	distinctio	\N
618	16	26	Enim laudantium debitis itaque blanditiis ea.	fugit	\N
621	9	28	Voluptas necessitatibus ipsam labore eveniet et dicta voluptatem corrupti.	suscipit	\N
624	12	20	Deserunt deleniti mollitia reprehenderit aliquam consequuntur quia ea ea.	rerum	\N
627	13	6	Minima ipsam possimus eos quos quis velit sunt.	debitis	\N
630	10	100	Labore harum sunt.	consequuntur	\N
634	11	42	Laboriosam magni veniam blanditiis.	distinctio	\N
638	5	72	Sit accusamus nam laudantium fuga cupiditate eaque.	pariatur	\N
641	5	21	Doloribus laborum in impedit ipsum odit omnis accusamus eveniet.	quo	\N
644	1	51	Occaecati qui autem suscipit.	sequi	\N
520	11	96	Sapiente illo officiis ipsum.	perferendis	\N
524	3	37	Maiores consequuntur itaque fugiat officiis ipsam.	atque	\N
529	5	7	Dicta dolorem perspiciatis in impedit pariatur quo architecto.	nulla	\N
532	12	46	Consequuntur non enim quasi tenetur impedit aliquam veritatis est magni.	ullam	\N
535	9	48	Voluptatem cupiditate veritatis.	error	\N
538	8	51	Aut dolorum tenetur quod consectetur eligendi ullam aperiam modi.	dolore	\N
541	3	83	Nobis inventore ullam nostrum consequuntur error.	dolore	\N
544	1	90	Omnis consectetur atque excepturi autem ducimus nulla id quae temporibus.	iure	\N
547	1	33	Ullam earum exercitationem ex in cupiditate facilis qui ipsum.	quod	\N
550	14	34	Cum consequatur ratione a quia.	laboriosam	\N
553	14	71	Ipsa iure facilis libero architecto exercitationem.	iusto	\N
556	3	22	Labore porro rem dolorum.	voluptatibus	\N
559	4	90	Distinctio vero quis.	praesentium	\N
562	5	84	Iure tempore praesentium libero sapiente maiores nam maxime id eveniet.	dicta	\N
565	14	41	Numquam quos voluptatibus.	ducimus	\N
568	6	34	Exercitationem laboriosam laborum necessitatibus modi voluptates corrupti eligendi.	optio	\N
572	11	77	Totam temporibus dolorem qui.	cumque	\N
575	14	37	Harum expedita ut esse voluptates earum voluptas ipsam.	officiis	\N
639	12	86	Ipsa tempora adipisci esse id.	velit	\N
642	4	96	Odio exercitationem doloribus saepe suscipit odio aliquid saepe sit.	cumque	\N
645	11	65	Dolorum iusto quos quo ad.	sint	\N
648	1	52	Cum ipsam ipsum reiciendis tempore soluta velit omnis.	quia	\N
651	4	34	Ipsam deleniti explicabo.	dolore	\N
654	16	31	Rem nisi vitae enim porro optio similique.	ad	\N
657	12	34	Ex sint dolor quos aliquam praesentium repellat natus.	earum	\N
660	11	86	Ab sapiente suscipit ut.	blanditiis	\N
663	8	28	Sit deserunt corrupti dolorum fugit.	iusto	\N
666	13	32	Consectetur commodi reprehenderit laborum facilis.	officia	\N
669	15	53	At illum sint reprehenderit.	nobis	\N
543	14	60	Tempore rerum tempore unde autem eos sint.	sequi	\N
546	14	3	Nobis nesciunt neque.	molestias	\N
549	14	31	Nesciunt soluta in inventore consectetur perferendis.	recusandae	\N
552	2	23	Culpa quos facilis suscipit necessitatibus magni voluptatum assumenda.	veniam	\N
555	8	95	Numquam necessitatibus at libero consectetur animi repellendus voluptatibus.	doloribus	\N
558	8	50	Rerum ipsum esse aliquam porro consequuntur minima.	repellendus	\N
561	12	8	Quasi quam quo.	minima	\N
564	12	6	Est voluptatibus expedita repellat perspiciatis modi accusantium impedit distinctio harum.	in	\N
567	2	78	Natus hic excepturi nulla.	beatae	\N
570	13	42	Magnam eius possimus illo quo provident unde quos.	magnam	\N
573	6	52	Aperiam delectus exercitationem pariatur id eum sunt.	sunt	\N
576	8	79	Labore ad in.	veritatis	\N
580	2	77	Vero aperiam incidunt ullam expedita qui eos perferendis distinctio quis.	reiciendis	\N
583	3	78	Soluta laudantium molestiae neque animi.	eius	\N
586	15	51	Nobis temporibus reprehenderit occaecati beatae.	sint	\N
589	4	55	Deleniti sapiente id necessitatibus quasi placeat.	fugit	\N
592	15	9	Fugit et possimus labore magnam commodi consequuntur.	facere	\N
595	8	22	Quam ea possimus velit ipsum aut hic eaque.	impedit	\N
598	11	22	Illo impedit unde quas.	vel	\N
601	6	83	Illum est velit illum expedita voluptatum provident officiis aliquid.	voluptatem	\N
604	16	5	Maiores minus unde dolore eos inventore consectetur nihil.	repudiandae	\N
607	13	26	Debitis magni eos voluptatibus beatae at quos ipsa libero odio.	nisi	\N
613	9	62	Veritatis eum vel nisi quos eveniet dicta facere.	magnam	\N
616	4	62	Repudiandae amet quia deserunt inventore reprehenderit architecto.	beatae	\N
619	1	61	Praesentium sint ullam porro sed.	consequuntur	\N
622	13	44	Quae delectus eaque molestias cumque exercitationem maxime similique iusto quibusdam.	nisi	\N
625	7	2	Earum incidunt rerum blanditiis error quas quam mollitia.	harum	\N
628	12	87	Alias cupiditate cumque iure enim.	laborum	\N
631	9	28	Exercitationem nihil cupiditate nisi libero.	cupiditate	\N
635	9	17	Iste nobis iusto nemo.	animi	\N
590	5	50	Expedita architecto rem maiores culpa neque quo illo.	iure	\N
593	7	29	Possimus unde magnam.	tempora	\N
596	4	76	Esse excepturi consequatur quis.	saepe	\N
599	14	83	Reiciendis doloribus voluptatibus neque.	facilis	\N
602	7	97	Beatae illo quo.	neque	\N
605	5	23	Deserunt ad pariatur temporibus reprehenderit in quaerat.	ipsum	\N
608	2	46	Assumenda earum non velit quia ratione.	omnis	\N
611	13	58	Veritatis quidem exercitationem tempore saepe laboriosam sit accusantium.	reprehenderit	\N
614	15	25	Voluptatibus voluptatem dolorem odit perspiciatis non.	quod	\N
617	3	19	Eum nulla expedita optio ducimus nobis assumenda itaque quod rem.	officiis	\N
620	8	99	Minima ab eveniet autem itaque autem rem corporis eaque ea.	iusto	\N
623	6	26	Deleniti odit voluptates delectus.	consectetur	\N
626	1	22	Fuga sequi accusamus reprehenderit occaecati in.	quasi	\N
629	4	85	Ratione quam animi.	repellendus	\N
632	4	8	Sapiente laborum suscipit tenetur expedita molestias eaque tempore.	accusamus	\N
636	4	10	Natus hic illum laudantium error id reiciendis placeat.	iusto	\N
640	11	26	Voluptate debitis placeat nemo.	sunt	\N
646	6	32	Distinctio error dolor est voluptate eaque ipsam harum deleniti.	mollitia	\N
649	10	100	Minus ipsa officia aperiam adipisci cum.	ratione	\N
652	8	20	Ducimus maiores quisquam nulla.	cumque	\N
655	2	32	Aliquid soluta officia consequuntur dolor pariatur placeat veritatis fugit.	dolores	\N
658	5	57	Doloribus corrupti a.	at	\N
661	13	72	Mollitia soluta sunt necessitatibus nisi.	nemo	\N
664	6	1	Eveniet incidunt architecto ea sapiente iusto.	consequatur	\N
667	13	54	Excepturi voluptate ipsa nisi harum eligendi amet repudiandae quia.	quibusdam	\N
670	2	13	Iusto nam voluptates saepe sunt iste suscipit earum error magni.	fugiat	\N
671	9	10000	SOMEHITYNG 	NEWTEITJDSIFDJsklfdsa	\N
694	39	1	Enter description	New Task	#52c41a4d
703	38	3	Enter description	New Task	#f5deb3
706	26	1	Enter description	New Task	#2f54eb4d
679	34	1	Enter description	New Task	#f5deb3
680	34	2	Enter description	New Task	#f5deb3
708	26	3	Enter description	New Task	#8bbb114d
707	37	1	Enter description	New Task	#13a8a84d
696	39	3	Enter description	New Task	#722ed14d
693	40	1	Enter description	New Task	#f5deb3
692	40	2	Enter description	New Task	#8bbb114d
\.


--
-- Data for Name: Teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Teams" (team_id, team_name) FROM stdin;
1	complicity
2	household
3	cobbler
4	scalp
5	labor
6	collagen
7	platform
8	postbox
9	revitalization
10	microphone
12	ANOTHERTESTEAM
13	ANOTHERTESTEAM
14	ANOTHERTESTEAM321
15	PLEASEJUSTWOKR
16	PLEASEJUSTWOKR
17	PLEASEJUSTWOKR
18	PLEASEJUSTWOKR
19	PLEASEJUSTWOKR
20	JUSTMADENOW
21	New Team
22	New Team
23	New Team
24	New Team
25	New Team
26	New Team
27	New Team
28	New Team
29	New Team
30	New Team
31	New Team
32	New Team
33	New Team
34	New Team
35	New Team
36	New Team
37	New Team
38	New Team
39	New Team
40	New Team
41	New Team
42	New Team
43	New Team
44	New Team
45	New Team
46	New Team
47	New Team
48	New Team
49	New Team
50	New Team
51	New Team
52	New Team
53	New Team
54	New Team
55	New Team
56	New Team
57	New Team
58	New Team
59	New Team
60	New Team
61	New Team
62	New Team
63	New Team
64	New Team
65	New Team
66	New Team
67	New Team
68	New Team
69	New Team
70	New Team
71	New Team
72	New Team
73	New Team
74	New Team
75	New Team
76	New Team
77	New Team
78	New Team
79	New Team
80	New Team
81	New Team
82	New Team
83	New Team
84	New Team
85	New Team
86	New Team
87	New Team
88	New Team
89	New Team
90	New Team
91	New Team
92	New Team
93	New Team
94	New Team
95	New Team
96	New Team
97	New Team
98	New Team
99	New Team
100	New Team
101	New Team
102	New Team
103	New Team
104	New Team
105	New Team
106	New Team
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (user_id, name, email, password, role) FROM stdin;
1	Razvan	razvan@email.com	1234	\N
2	Jim	jim@email.com	321312321321	\N
1744	Blair	Lawson.Hodkiewicz32@hotmail.com	YRmVB8ynWSn2DPF	\N
1745	Jaeden	Skylar.Lesch@gmail.com	XakG18zaaPJuVcG	\N
1746	Zaria	Queen.Spinka@hotmail.com	YPwv1oZPia4kUVF	\N
1747	Rico	Pat87@gmail.com	_wdlfbX8oCfZRCl	\N
1748	Brielle	April88@gmail.com	M27sp1NNleH1srK	\N
1749	Daniela	Romaine_Hudson-Kuphal@gmail.com	LYvCWigoiUjYkcq	\N
1750	Richard	Hettie_Towne@yahoo.com	glPtqEOTVudFSzC	\N
1751	Brook	Laurie_Swaniawski44@yahoo.com	S2f35IyFaZyAyc7	\N
1752	Adonis	Ocie33@gmail.com	30WwzkmYUO1axrZ	\N
1753	Hermann	Giovanny_Schumm79@hotmail.com	LWt1tgZDrjfUf1Z	\N
1754	Zora	Jayne_Zulauf@gmail.com	xQhpGNxATE4oCWd	\N
1755	Dane	Ardith62@gmail.com	JpAa6Yj9sGn_OPv	\N
1756	Zella	Isabelle.Strosin@yahoo.com	PEzmJZzlOXtzOau	\N
1757	Georgette	Jonas_Franecki@gmail.com	NPmo_GCW2Vz9Rph	\N
1758	Alanna	Emmett_Brekke9@gmail.com	du8TsVRNlQdmQeQ	\N
1759	Melyna	Elmer_Mraz28@gmail.com	r5Vvc7GcWuf2IbS	\N
1760	Kenneth	Talia_Gottlieb@hotmail.com	sGw38lCAV4yMXCI	\N
1761	Montana	Abigayle96@yahoo.com	Bad8kRuCVRgfRLa	\N
1762	Rosanna	Mertie83@hotmail.com	LVa4SbuWDgXwItx	\N
1763	Marshall	Alanis.Blick31@gmail.com	lN4o9SUDY35xcag	\N
1764	Mose	Oda.Greenholt@yahoo.com	PgkYXCVqW10P2jc	\N
1765	Brando	Charlie.Ullrich52@hotmail.com	HyXTOlBwzyfm3Xm	\N
1766	Nicholas	Earnest92@gmail.com	N4rTlCO5UbkYEvT	\N
1767	Otha	Earlene19@hotmail.com	g9jb7wPqa9YcC4G	\N
1768	Hettie	Eulalia.Gulgowski@hotmail.com	E2Q3bxZu62RN3oS	\N
1769	Shawna	Nedra_OConner26@gmail.com	Yu5Q7cajoui5bFP	\N
1770	Derrick	Casper_Beatty83@yahoo.com	VJmEOa8Rm44d_av	\N
1771	Imelda	Queenie.Baumbach21@hotmail.com	Qx4eCRuy00Q3BWT	\N
1772	Cale	Johanna79@hotmail.com	slW5StnkyVGbuQP	\N
1773	Roma	Jace_Kovacek@gmail.com	_RGw2ryIO30G2kc	\N
1774	Abel	Janice.Reichel@hotmail.com	HLdVRDwKldfafYO	\N
1775	Bella	Dewayne.Hand@gmail.com	qt91u1Gqi2IDPEV	\N
1776	Daren	Mollie89@yahoo.com	QgFoWBN1MeWZ7KH	\N
1777	Enrique	Dena.Hackett70@yahoo.com	JYgTqUWFbZxR9zh	\N
1778	Glennie	Rocky_Kertzmann10@hotmail.com	XalfW6wUhnLETQU	\N
1780	Nicolas	Marcos_Walker49@gmail.com	uXO1voGbVPBElmz	\N
1782	Manuela	Mathias_Kohler@yahoo.com	t3_TbvsuolSLH7F	\N
1779	Geraldine	Lyda_Morissette@hotmail.com	p2TibJk7JKDkDQe	\N
1781	Sam	Eliezer26@gmail.com	hYqBo4wrWjZI11d	\N
1783	Don	Angelina.Hegmann-Dooley@gmail.com	mULimLpuKavxaRt	\N
1784	Edwina	Roderick43@hotmail.com	CrZUbmlgnoqtwoB	\N
1785	Aric	Talon_Bernier@gmail.com	G5uGSJTWFrUltva	\N
1786	Amalia	Krystel63@hotmail.com	GNFfJH9zlqPzNpN	\N
1787	Elias	Garth_Sauer@hotmail.com	gcyxwLMsImNYsRG	\N
1789	Name	Gail15@yahoo.com	T61rDnPRBHkT9rU	\N
1788	Lilian	Lauriane_Conn@gmail.com	B_46DQPcQvMSBmJ	\N
1790	Mable	Krystina.Nolan48@gmail.com	zgmbhwF_dhere4L	\N
1792	Winfield	Wade.Frami@yahoo.com	98eGMzlTm9LP6z7	\N
1791	Kade	Elza.Reilly@hotmail.com	bh023Xir2gKSRKQ	\N
1793	Verdie	Joaquin_Effertz@gmail.com	1dyBCav0O3iK_hp	\N
1794	Cletus	Fidel.Ryan59@yahoo.com	qaEQlc6rO22uOS2	\N
1795	Tyreek	Harmon25@hotmail.com	lQB0x_kyQkeUwib	\N
1796	George	Stanton.Braun@hotmail.com	6lqb0r3kt6SpJ4f	\N
1797	Deon	Reese.Conn58@gmail.com	O0z7JlGyqV_6V0O	\N
1798	Dayton	Emmanuel38@gmail.com	ONxfkfSKHRvDDlG	\N
1799	Minerva	Murl_Bergnaum@yahoo.com	hfI8hUoUO5I1YsO	\N
1800	Haleigh	Greta_Schroeder44@hotmail.com	KC9DKbKiuREGDoj	\N
1801	Cristal	Stephanie95@hotmail.com	pEZVy1_9Qazso7P	\N
1803	Mateo	Turner_Kozey@gmail.com	ncWinLNql3d9aXs	\N
1802	Dustin	Ernest_Johnson98@gmail.com	dUhBoGnlf9RxBl9	\N
1804	Weston	Christina_Daniel93@gmail.com	jp2xrCsjMORrepR	\N
1805	Kiara	Dena_Wisozk@hotmail.com	AQScSf9oHanVxw6	\N
1806	Mustafa	Vicky_Koch@hotmail.com	moW17mN5dyaHxiv	\N
1807	Tomas	Mariana52@yahoo.com	72ER8ZVmyWyAMph	\N
1809	Cale	Marcella_Luettgen62@gmail.com	U9i_GFFl8fVf_8Z	\N
1810	Geo	Trent1@hotmail.com	stADZMcQCwCcfDD	\N
1808	Jimmy	Earline21@gmail.com	DcUIT5PwW6UBgqW	\N
1811	Jan	Lois22@yahoo.com	rOoKvpUDlzuN7l0	\N
1812	Maribel	Marques47@hotmail.com	q2KxYkfKVmkQ7O4	\N
1813	Jewell	Breanne.Tremblay@yahoo.com	PhosqcwCWQv4i_m	\N
1814	Orion	Obie_Johns19@hotmail.com	nvNqkC9kRYwJall	\N
1815	Rosalind	Gavin8@yahoo.com	ybtVLzElzTu6SJz	\N
1816	Kyla	Furman.Ernser6@gmail.com	y56sOZOLk4rMZjh	\N
1817	Maximilian	Stefanie81@hotmail.com	WiqPbXMmUDvMRH8	\N
1818	Bennie	Chyna_Mills@yahoo.com	U66B8NFoM7pNqne	\N
1819	Tyrique	Conrad37@yahoo.com	RwCu_1iRwyeL6D0	\N
1820	Dixie	Tabitha.Jerde32@gmail.com	b0nK6J696mofs5l	\N
1821	Elody	Bridget55@hotmail.com	8168YZtxOFvV6xi	\N
1822	Brook	Jovany_Terry@hotmail.com	rrSrfUyJ0WPEPrb	\N
1823	Geo	Caterina_VonRueden@gmail.com	UVIGts7zGK5DiF8	\N
1824	Roxane	Kara_Mann60@gmail.com	J2kwadOclVblPSj	\N
1825	Abbey	Maritza.Hoeger29@hotmail.com	FJkn6cqBqA4KbR2	\N
1826	Eduardo	Westley74@gmail.com	N7ct3x1TYXi4WjB	\N
1827	Lisandro	Rogers_Berge97@yahoo.com	Zikg3RF6n8Jxww1	\N
1828	Tanya	Jacklyn_Senger@gmail.com	AT6Dl0i78L819cN	\N
1829	Sasha	Katrine_Goodwin@gmail.com	qkmgiJXn1iT6UxD	\N
1830	Jody	Ross42@hotmail.com	S1qOdqSnFRCV0Fd	\N
1831	Margarete	Shad71@yahoo.com	yT3Z9Xoq60HcHE6	\N
1832	Randy	Brown.Hammes43@yahoo.com	lBv9ws2XFTHgpw_	\N
1833	Alaina	Troy56@hotmail.com	EfFHeCWrKeLglht	\N
1834	Helga	Toy73@gmail.com	sdw2ueCET9qxplJ	\N
1835	Eleanora	Haylee.Rowe9@gmail.com	caDMS0MDcWj9_nN	\N
1836	Tatyana	Armando_Hintz77@yahoo.com	8WjpSA1_hW1gVOs	\N
1837	Fleta	Palma_Will93@gmail.com	e3XsuMx4d0PidYr	\N
1838	Lawrence	Brooke45@yahoo.com	z3K5JSqpgXwMlUB	\N
1839	Godfrey	Gus94@yahoo.com	rfmwLZyng4rgcRM	\N
1840	Jake	Paige3@yahoo.com	xYOnjQ0MqefJOHl	\N
1841	Fay	Garrick59@gmail.com	0hK6PqZqaXC_G77	\N
1842	Martina	Mckayla.Cummings@hotmail.com	XGJjupBVx0USg9o	\N
1843	Nelle	Zora_Ward22@gmail.com	DpxtcmdZfIIq4i_	\N
1844	Cassidy	Mae35@yahoo.com	sePvHe3Tfu1Mjy7	\N
1845	Ali	Shannon72@yahoo.com	wNobi3z2RlgQSJw	\N
1846	Millie	Nestor_Kozey@hotmail.com	T4t8JGd6osPUOwA	\N
1847	Gonzalo	Akeem_Koepp@yahoo.com	MwKlpjpS6Z8igGu	\N
1848	Kareem	Walker_Quigley@hotmail.com	TxHyrgPQOICRf0I	\N
1849	Princess	Nora_VonRueden@yahoo.com	exoMRFoMyBdD3aJ	\N
1850	Janiya	Francisco_Wilderman@hotmail.com	iOJwRtOO7WOu4N8	\N
1851	Gail	Jalon85@hotmail.com	B3oEeVAZVyQkw0p	\N
1852	Zakary	Antonina_Larson71@yahoo.com	PxW1GsZDyGUIuNJ	\N
1853	Evan	Gunner2@yahoo.com	vtO5HuP5ZrrSWq1	\N
1854	Roderick	Anibal36@hotmail.com	lG8bv_Sa3pO01rP	\N
1855	Georgianna	Craig52@yahoo.com	tWqbOnxhELNAv69	\N
1856	Kane	Misael_Boyer15@gmail.com	NksdDDhBkMmsOc2	\N
1857	Owen	Hollie.Hettinger92@gmail.com	U10Z5EyhIerLyms	\N
1858	Peyton	Granville.Kovacek-Jenkins18@gmail.com	yHIQTpwlI3AlD1f	\N
1859	Dell	Murray_Johnston44@yahoo.com	yVre_kXgd6YCj1j	\N
1860	Lane	Annette.McClure@hotmail.com	0ugTFyu8ga43Uu1	\N
1861	Uriel	Lambert_Mayert@hotmail.com	FtV3446kWCWCkpX	\N
1862	Alphonso	Ashley.Schmitt40@yahoo.com	DT7194ACMuEyYlK	\N
1863	Lydia	Oceane9@yahoo.com	01Btf7T9yBhj1VK	\N
1864	Miguel	Earnest.Jenkins47@gmail.com	opRZZNmJiNEYZeL	\N
1865	Devon	Quinton86@yahoo.com	BzVKyWNKOAGfUU9	\N
1866	Ona	Sincere.Denesik@hotmail.com	6SXjA8BvdrESloK	\N
1867	Arden	Lenore19@gmail.com	xVnTzEmKQTE4jTJ	\N
1868	Christy	Rosie_McKenzie@yahoo.com	QMhE37g98WhmsLt	\N
1869	Preston	Wilford_Dickens@hotmail.com	ebVNW7LfLGt1Rm6	\N
1870	Hans	Justina.Johnston81@hotmail.com	xrcE7mtczvKTWkz	\N
1871	Colin	Faye_Lesch73@hotmail.com	yGVXocrEqcjWrTJ	\N
1872	Rocio	Joy_Weber@yahoo.com	sAwWx8v87fXfhqo	\N
1873	George	Darrion31@yahoo.com	g_WLfkLTRsglMvp	\N
1874	Arnold	Joey31@gmail.com	Yhwe_SInhef9qHM	\N
1875	Eudora	Abagail73@yahoo.com	GW9bxmsVL0mhn7U	\N
1876	Shad	Erling15@gmail.com	sCp8s9Y2e3SAc9W	\N
1877	Esteban	Rebekah_Graham@yahoo.com	J2tKfpfBl_p848R	\N
1878	Salma	Dejon.Rippin58@hotmail.com	bYKjCH6yNQzHArl	\N
1879	Myrna	Delta58@gmail.com	_iuKHlQctSbn9kg	\N
1880	Everette	Ervin_Nitzsche0@hotmail.com	HieyYFvHyXKhkiU	\N
1881	Winifred	Elva60@hotmail.com	uqbZlgdaFKYfFxz	\N
1882	Loma	Brady89@hotmail.com	H9YmCJBU72kVXi0	\N
1883	Roselyn	Karley.Barton86@yahoo.com	rHlcfGstWicvKDO	\N
1884	Demetris	Vilma44@hotmail.com	fPZQZsWvEJA3qxX	\N
1885	Jackeline	Germaine19@yahoo.com	fMvZxxky2Axh5tt	\N
1886	Gaetano	Jonatan_Ortiz-Heathcote@gmail.com	t8HgbyznveJtVc0	\N
1887	Stefanie	Francisco_Klein-Jenkins34@hotmail.com	FlfNawomlQr822Q	\N
1888	Michelle	Ena77@gmail.com	dmeK3ZDLdYvCr9E	\N
1889	Delia	Junior_Donnelly@gmail.com	HtoUqGC_FpVVWjj	\N
1890	Savannah	Hailie68@yahoo.com	OIis5X0xkwfAZq8	\N
1891	Audrey	Rhoda.Wiegand81@yahoo.com	UqTBM7Po1JqVzQ3	\N
1892	Althea	Katelin14@yahoo.com	v9lMckR6Swe_gdW	\N
1893	Terrance	Mabelle_Stark99@yahoo.com	KC0PDFRmXAAPIlD	\N
1894	Eleanore	Erwin53@yahoo.com	lhlJ42cBnfw7hGf	\N
1895	Kenya	Coleman80@hotmail.com	Mc6YSM6FPz9jwFj	\N
1896	Cleo	Nicolas72@hotmail.com	0VNoeEn8s7WXwCn	\N
1897	Green	Jaeden_Predovic40@hotmail.com	G03YPMWyna7EOaL	\N
1898	Benedict	Providenci72@hotmail.com	IEJgstyLK4es8pX	\N
1899	Santina	Foster_Lehner56@yahoo.com	GIcMp0xCKMcPNFU	\N
1900	Kurtis	Calista36@yahoo.com	SHaQmC5t_2DFZCq	\N
1901	Wellington	Cornelius.Graham14@hotmail.com	HWLGXcjPjP9HRRg	\N
1902	Louisa	Madalyn65@gmail.com	KSQqno6fhF550XZ	\N
1903	Rafaela	Lois.Gutmann48@hotmail.com	p2bXJVV9t1drtA9	\N
1904	Burnice	Ethan.Gulgowski@hotmail.com	pm83oJYKuBcvXbz	\N
1905	Marietta	Darion.Hoppe@yahoo.com	8H9jW6J15hdGaJd	\N
1906	Minnie	Winfield_Keebler73@hotmail.com	IxTjXVMw4ef8s7H	\N
1907	Lee	Joanne78@hotmail.com	IajiLGZjAatzpS4	\N
1908	Daisy	Marty22@yahoo.com	eV0MPaZqQ9BIeQh	\N
1909	Albina	Paris_Leannon58@gmail.com	BW7mMQuWWBJgKTe	\N
1910	Madison	Sim_Pagac82@hotmail.com	J6WZDb_WhN6rfv8	\N
1911	Magdalena	Gladys.Turner63@yahoo.com	H4A_wrwU7UdAP9v	\N
1912	Alexander	Rosamond38@yahoo.com	Oxewc6p0gsQrfDd	\N
1913	Mariah	Kip_Rutherford@gmail.com	2Btjew1RW0TuL2f	\N
1914	Jake	Ambrose.Fay37@gmail.com	vrIAGh_VUDJh5wC	\N
1915	Hailee	Barton56@yahoo.com	WclSPSoNyfhmAL4	\N
1916	Archibald	Kathleen.Purdy@gmail.com	VA9nIZMFvmfTrdr	\N
1917	Florida	Dallas35@yahoo.com	8ZMx_Z6phtm2lbN	\N
1918	Fermin	Kendall.Kuhn81@yahoo.com	cZGIE1IPU4ynH_h	\N
1919	Berniece	Brenna_Stokes@hotmail.com	UpF4fqfOZNOPB1X	\N
1920	Isabelle	Ryder.Lynch82@gmail.com	hLMtXE6yTc086a7	\N
1921	Brianne	Coty.Hyatt61@gmail.com	offvqXeNEtLIQcn	\N
1922	Harvey	Sandrine.Klocko53@gmail.com	xKJE5oHcKSdTemo	\N
1923	Owen	Aubree_Schmidt@gmail.com	KZlKTaT1vQ3C6Mv	\N
1924	Lila	General84@gmail.com	uZ1lR5pZB6WwHVc	\N
1925	Bret	Monty.OConner49@yahoo.com	aDC7xTZ6HeJ3alV	\N
1926	Sarina	Vida.Kiehn64@gmail.com	JQmDav_UIcNcx33	\N
1927	Curt	Harry_Rogahn@hotmail.com	K7FCeVon0pkMt83	\N
1928	Rodrick	Rodolfo69@yahoo.com	G9GxuoMo58m62yG	\N
1929	Caroline	Abel.Murazik@hotmail.com	Sm_um36j4JWmjU9	\N
1930	Brooks	Audra.Schneider@gmail.com	s0mPWHKq7Q9_mVC	\N
1931	Obie	Rosie.Davis15@gmail.com	ktqad8wj144AMv1	\N
1932	Violet	Kelvin.Watsica-Bahringer@yahoo.com	FLbJNaxQZTnWAQ9	\N
1933	Wanda	Kavon_Schneider55@hotmail.com	l_k82lx0pjCc7Ku	\N
1934	Dave	Adella_McCullough68@hotmail.com	DVxLlhvEfO07Gr4	\N
1935	Darius	Rollin.Deckow@yahoo.com	7KAbtnLi620rG9d	\N
1936	Angelina	Mina.Mertz54@yahoo.com	7sJMPZ9PPFBMevX	\N
1937	Jackie	Nicholas.McDermott@hotmail.com	RkjVyrdpeQED6xF	\N
1938	Earnestine	Janelle_Ernser@hotmail.com	dw0ALvUQt3gIE5W	\N
1939	Eddie	Myriam_Watsica95@yahoo.com	y8ct5nwpC_2qKnY	\N
1940	Candice	Ulices.Yost99@gmail.com	gh1I8R3LzvVc75y	\N
1941	Talia	Ulises_Ernser68@gmail.com	8FHQpUoRJmwXSyb	\N
1942	Brook	Raquel90@gmail.com	iPRlV9osLapVRc3	\N
1943	Filiberto	Cassandra_Kuhn36@hotmail.com	o5SDsLtoI3ef0m1	\N
1944	Brannon	Meagan_Prosacco10@yahoo.com	Fbv3InSS_f7aCFZ	\N
1945	Allene	Judson_Schaefer76@hotmail.com	NFa1OXXHpkHuIAO	\N
1946	Adeline	Dawson62@gmail.com	Y0nl8jQWICeNz_h	\N
1947	Angie	Elissa99@gmail.com	vMgK6PanFaH6ytE	\N
1948	Jazmin	Bernita_Harber@hotmail.com	LsAh_m0nnhPwzeb	\N
1949	Marjorie	Samson28@yahoo.com	QU65mb27WOz9Dle	\N
1950	Blanca	Misael.Ullrich@gmail.com	rXuGZMwICFRqSb6	\N
1951	Anika	Theresa10@gmail.com	dYscHHVqxLCQpjv	\N
1952	Toby	Deondre56@hotmail.com	8RGKHCTFw5dobqK	\N
1953	Marquis	Vance7@yahoo.com	avGokfDboU3_nYh	\N
1954	Enos	Jamarcus41@gmail.com	6BOdVpEhuOxenDd	\N
1955	Jaylan	Madonna_Roberts98@gmail.com	EaulfA4MowYKXf_	\N
1956	Hermina	Werner73@gmail.com	xajqe4vqrnIbYTx	\N
1957	Jermaine	Douglas.Zulauf@gmail.com	HiGc6bQV0Q6wMkq	\N
1958	Jennyfer	Stan.Harris75@hotmail.com	NR5Vxm0IjgMutzO	\N
1959	Rico	Esperanza_Kreiger85@yahoo.com	73a2m6W4LbvUvkp	\N
1960	Annie	Urban_Howell10@gmail.com	Uar6Nt55R_BqHHM	\N
1961	Maci	Fred90@yahoo.com	NHDLwWgsA2kd91x	\N
1962	Rubye	Chelsie.Greenfelder@yahoo.com	1hWmyNMlXV7O1xP	\N
1963	Reed	Jacquelyn_Gottlieb@yahoo.com	LuR8QJmv1NiJnNe	\N
1964	Shayne	Louie.Paucek42@yahoo.com	euPBCwC6yNtYkQ7	\N
1965	Irwin	Vincenza.Aufderhar58@gmail.com	lvvhoPO1ULjsdjm	\N
1966	Lynn	Xzavier_Koss26@yahoo.com	0LDse7oKoNCJEFK	\N
1967	Helena	Baron42@gmail.com	sR0ibKPDlX4jbOO	\N
1968	Casimir	Bret.Dach77@gmail.com	EZpV4qFXYLMkloN	\N
1969	Antone	Josefa67@hotmail.com	7jDS66xHibo_2b5	\N
1970	Zackery	Gracie.Maggio1@gmail.com	5sxNolF0POYlc43	\N
1971	Kim	Sidney.Kuhlman52@gmail.com	xz4nTPtYyB2kgly	\N
1972	Cristian	Thurman.Beer48@hotmail.com	Vj6N1NRPj5Yr8aw	\N
1973	Fleta	Hope_Pacocha@gmail.com	CgU0EiKkfQLtpcx	\N
1974	Wilmer	Columbus.Price@yahoo.com	3VqixZFXKzpNCZY	\N
1975	Kyra	Audrey44@hotmail.com	hcr9FJ7behq68ro	\N
1976	Phyllis	May_Braun8@hotmail.com	bEXsGc2kUfXiYVR	\N
1977	Giovani	Lilian.Kilback@yahoo.com	Gs_vCwX0EChvsuN	\N
1978	Sibyl	Maeve_Lesch@gmail.com	anmuieOqQAAWjks	\N
1979	Oceane	Bernice.Schaden@hotmail.com	0U5tN0uqsL8oBbo	\N
1980	Beverly	Francisco58@hotmail.com	M6SLEQ6z06qd0pe	\N
1981	Audie	Celestine46@yahoo.com	mKz6sSqdpiOqCI2	\N
1982	Clay	Jade77@hotmail.com	6CFm9CRjrlqGYOr	\N
1983	Lela	Lyric_Roberts71@gmail.com	GHBwAM6wAi8OFf1	\N
1984	Thurman	Mozell90@yahoo.com	O1Y3MdaqNLmPy02	\N
1985	Rozella	Dorothea_Murazik-Raynor13@gmail.com	zCaxVJB0OG9OI9y	\N
1986	Bill	Noe14@yahoo.com	JTO6rNSpOW6yzfg	\N
1987	Jordy	Ignatius8@yahoo.com	eT_PFobgNQbb2B4	\N
1988	Karolann	Jaida4@hotmail.com	PYvTu6sn9ht1XVo	\N
1989	Hilbert	Blake.Kautzer97@hotmail.com	DG07DUCjh1Wk0Tk	\N
1990	Jayson	Tania_Prohaska@hotmail.com	wPFveedZGtbaoQ_	\N
1991	Leonor	Sheila_Jast67@gmail.com	dNKIsbEBOWv1qDm	\N
1992	Lulu	Samara.Kuvalis64@hotmail.com	iMttg58cuNZrEU3	\N
1993	Pinkie	Estefania72@yahoo.com	797qArgKDzbQwWA	\N
1994	Gladyce	Ladarius.Wuckert-Stark6@yahoo.com	_nCCl1bgp1b58Cs	\N
1995	Clotilde	Emma85@hotmail.com	lFjQ6KZPM01mhUe	\N
1996	Natasha	Susanna4@gmail.com	WHci1_JjGk69Slc	\N
1997	Andy	Yvonne.Stark@hotmail.com	2BmbSmESLMWXmeP	\N
1998	Edwardo	Cloyd_Ward8@hotmail.com	l46fcaap8FYafmr	\N
1999	Shanon	Izaiah.Ritchie54@gmail.com	CqPo9mcJGcw821w	\N
2000	Conrad	Sabina.Boyer90@yahoo.com	9pFdCqWunMlHBPm	\N
2001	Opal	Annie.Botsford@gmail.com	sxA8O_tU2jlPl5r	\N
2002	Al	Lempi.Spinka83@gmail.com	p3J7bGUL0cWdivl	\N
2003	Haleigh	Shawna81@yahoo.com	3wIW9Hv2xhxl53J	\N
2004	Martine	Ethyl_Schuster71@yahoo.com	2VDD8w0EEETxjWH	\N
2005	Laurence	Javon.Cormier@hotmail.com	uKiWtkaMmy3jnUa	\N
2006	Eliezer	Jordane.Kessler35@yahoo.com	oM3m5ROT4Vk5tgy	\N
2007	Dameon	Cyrus.Blanda@gmail.com	vk8ZMVPyS4yJ6rA	\N
2008	Buddy	Savion_Considine86@hotmail.com	rW6OzuCGpk72AyO	\N
2009	Laurianne	Haylee.Wiza@hotmail.com	MZ7nGZ3Kf80g7XN	\N
2010	Aniyah	Kian38@gmail.com	qYiLSEcNVje7trZ	\N
2011	Mckenzie	Colby.Herman71@gmail.com	tL5DDpBVAy7KGir	\N
2012	Shania	Bryana.Rogahn34@yahoo.com	Tzne4vNRp9033i9	\N
2013	Jaylan	Mark.Smitham@hotmail.com	3MpHgg48Vh4Yz0q	\N
2014	Kailyn	Elmer_Miller@hotmail.com	lmM3S5zqtc6Qjwp	\N
2015	Savanna	Lori.Nienow34@yahoo.com	s9X5b8CnRLUMsIl	\N
2016	Jimmie	Colt.Leannon59@gmail.com	AhHCaT_Dbpbnc2c	\N
2017	Bertrand	Leopoldo.Schmitt@yahoo.com	jXslAvcwDDfwPnB	\N
2018	Rogelio	Raheem53@gmail.com	77kya1xB745Sm4u	\N
2019	Ramiro	Emmalee59@yahoo.com	Lf3I74v7ETAREuV	\N
2020	Citlalli	Camryn_Zulauf@yahoo.com	Y6ZTST1mYjk1PCB	\N
2021	Edd	Jacinthe_Hahn@yahoo.com	FOyGZqY3ojfJdp_	\N
2022	Vada	Libby.Rice28@hotmail.com	d_fRaueZMEsHciS	\N
2023	Nick	Beverly23@hotmail.com	OjugTfXyEXUgCAM	\N
2024	Mariah	Neha86@hotmail.com	KHQCYmT3dSvR_Bm	\N
2025	Pietro	Arvel_Schimmel@yahoo.com	3y8JiPqcpsfYHVw	\N
2026	Wayne	Lorenza.Bechtelar-Schulist@yahoo.com	jmkBZZ8dEQ108vq	\N
2027	Owen	Chelsey_Konopelski79@yahoo.com	wkH9asi7lRgYCb2	\N
2028	Roberto	Arch18@gmail.com	cZNvKdOUf5rzu93	\N
2029	Creola	Lonzo_Williamson@hotmail.com	C8elJ0nUBexhDZP	\N
2030	Abelardo	Garrett.Sporer@hotmail.com	T7KIjs9S405GS6X	\N
2031	Kellie	Cassandre.Deckow12@gmail.com	Q0J8lnxyLoasxNi	\N
2032	Kayleigh	Maynard_Senger-Orn29@hotmail.com	OjEscIh2Fg4UJKl	\N
2033	Johnathan	Rosie_Goyette93@yahoo.com	A4Q393Yrrtei8x7	\N
2034	Orlando	Travon.Boyer@gmail.com	TOeNCPhYvEb1hRH	\N
2035	Toni	Irwin37@hotmail.com	0SXF_mSqV65fOuz	\N
2036	Muhammad	Efren_Conn81@gmail.com	T273Sqm_o4k4Ert	\N
2037	Carmen	Nathanial.Wisoky64@hotmail.com	A9kocx40FsfX96W	\N
2038	Timmy	Mafalda.Wuckert21@yahoo.com	dkuqZwCpFAXK66x	\N
2039	Jaida	Ryann73@gmail.com	Jl2brxxLCsshlDI	\N
2040	Bettie	Guillermo13@hotmail.com	JddnggEbQUWCsFl	\N
2041	Frankie	Daisha_Keeling12@hotmail.com	zFbKKiLVcSx6w_j	\N
2042	Ayana	Kiel39@hotmail.com	SVrg0p_q42KpIDp	\N
2043	Raven	Cyrus_Rutherford@hotmail.com	GxAuNDtPaNoTYQT	\N
2044	Jodie	Deangelo.Jerde62@hotmail.com	jbOrrPyLyIlWohn	\N
2045	Francis	Donnell_Stroman44@yahoo.com	VaqBphymG6qbjQx	\N
2046	Lora	Ayla_Waelchi19@gmail.com	0J_QL2uRI8gLrQy	\N
2047	Sadye	Kaelyn.Sauer@hotmail.com	SkHxicshi3xsQ2E	\N
2048	Germaine	Richie77@yahoo.com	UK5YVFLxAKSP7zy	\N
2049	Jammie	Brady55@hotmail.com	jlFSj9NCMaTCEXG	\N
2050	Fannie	Clementine_Armstrong-Marvin67@yahoo.com	AIBIpqHOYp_iv7B	\N
2051	Neha	Caterina74@gmail.com	9oU8pWcupleGrVr	\N
2052	Rosie	Lon77@yahoo.com	ojchek0kB4sdUAC	\N
2053	Bradley	Joanne_Tremblay79@gmail.com	b33I4GE4liLH7_5	\N
2054	Melvin	Shanna71@hotmail.com	3DcKsevGPgo1bUf	\N
2055	Dominique	Linda.Fritsch90@gmail.com	mzORaoCOosHXy47	\N
2056	Janis	Stacey_Brown@yahoo.com	qxFb74wmyXubMPz	\N
2057	Julio	Arianna.Nitzsche-Simonis@hotmail.com	QrC3y8lC3sFRTDZ	\N
2058	Henri	Viviane.Predovic78@yahoo.com	Q7nzlRcdDMyVnJR	\N
2059	Imogene	Cleve_Miller22@yahoo.com	ZZk7gSiXLcnCFEk	\N
2060	Alvera	Rickie.Bradtke@hotmail.com	xAGd1fjtKeC2I0r	\N
2061	Kiel	Christiana_Batz46@hotmail.com	9wHSLpm1df0Ga4P	\N
2062	Katelyn	Elsa_Littel45@yahoo.com	q1BUCHNHvak6Tg6	\N
2063	Jovany	Javier.Bosco@hotmail.com	tWOge1MwVPraenO	\N
2064	Jessica	Werner.Farrell@gmail.com	bWyGpuZgpV7OXIU	\N
2065	Cornell	Junius44@gmail.com	wdIUdggQsmMHE1q	\N
2066	Dayne	Jacinto_Kuhn@gmail.com	lkLNiTXshThJld2	\N
2067	Hayden	Neil_Conn@hotmail.com	lxEbGXPz1cFA4os	\N
2068	Roscoe	Reta_Abbott@yahoo.com	FocuIYGKnXFmjPp	\N
2069	Saige	Hillary34@yahoo.com	bfmHreKhCioDrPa	\N
2070	Gwendolyn	Dallin_Adams@yahoo.com	vt6q8SOpIDAdSs0	\N
2071	Vada	Jan.Spencer-Hickle24@gmail.com	y_imLyne1WEZ8wS	\N
2072	Betty	Natalia.Langosh@gmail.com	axnV2dRy3HBdnFg	\N
2073	Jaida	Ruben.Conn@gmail.com	JkL3C4Uu2jgB3DP	\N
2074	Eveline	Bailey7@gmail.com	5Kc0UCHXNRV_lck	\N
2075	Francisca	Celestino_Tromp22@hotmail.com	cZKjHn7tBfWRjKU	\N
2076	Fritz	Willis_Schaefer76@hotmail.com	CvwfdUmpJDcYbO6	\N
2077	Brody	Pascale.Wintheiser@gmail.com	7VJ7j0EHLMHT0sF	\N
2078	Brandy	Krystina.Windler46@hotmail.com	Bo_RQxBvyd6uj5w	\N
2079	Queen	Maybell_Hickle0@yahoo.com	C_KBvFTyJNFnrTW	\N
2080	Lauretta	Bridgette_Kilback@gmail.com	NH0oYA3QYEaILGw	\N
2081	Patrick	Kyla.Hilpert-Wisozk@gmail.com	vBr0O68V66ahPfX	\N
2082	Junius	Ronaldo_Weimann@yahoo.com	_7kDfMYukH8IhCx	\N
2083	Kris	Nicholaus.Kautzer@gmail.com	ZjC512kq2fIK3hJ	\N
2084	Frederique	Geovany_Marks@hotmail.com	zeuR0aUxzhBlzK8	\N
2085	Destin	Sallie.Stokes@gmail.com	3brI3ZgLeGhCghf	\N
2086	Lenore	Pete_Herman@hotmail.com	LRt6kva2Ja93Oce	\N
2087	Verlie	Garrison15@gmail.com	rGUy5ghSKOvlMmL	\N
2088	Holly	Antonina12@gmail.com	ZwqJRiObLVhcbda	\N
2089	Aryanna	Maria_Funk30@gmail.com	6_R9U13_WjB3tqp	\N
2090	Ashleigh	Rosemarie.Daniel@gmail.com	STC31O_SKwBI7O9	\N
2091	Mike	Charlie.Orn24@gmail.com	wjWQHoY217th_RU	\N
2092	Kaitlin	Eveline64@yahoo.com	4Ukpuyc7R5dbYiX	\N
2093	Brandyn	Jeramie_Yost@hotmail.com	5cihPa7dD2KKGzX	\N
2094	Darion	Avery.Blanda@hotmail.com	j2xZ3iQJW8Zl7b8	\N
2095	Shawn	Earline52@yahoo.com	h7XHQlwArCumMuN	\N
2096	Tomas	Mathew.Effertz@yahoo.com	Bb8jHFc6yhZGFRW	\N
2097	Whitney	Chloe61@yahoo.com	orqg07yZloBGsDy	\N
2098	Lambert	Kristian41@gmail.com	hybBHoMEFrDfCcP	\N
2099	Shanie	Jeanette41@yahoo.com	6FLcWJw9FeDsGNQ	\N
2100	Ayana	Reanna11@gmail.com	3bOoXBaseHMQoa4	\N
2101	Rhianna	Nico_Schiller2@hotmail.com	Uw5yUTxgy0w7SLO	\N
2102	Gregorio	Demarco.Stracke@yahoo.com	1wHUvPp7FHgBERx	\N
2103	Abbey	Rebeka_Lemke@yahoo.com	3mOXUL6ZqUQlPyR	\N
2104	Emmet	Caleigh_Powlowski@yahoo.com	qZKlrForjnHB4B5	\N
2105	Reynold	Tamara76@gmail.com	ia5DAVq38jemwmb	\N
2106	Izaiah	Rosalee.Vandervort@hotmail.com	SlpooKTLu_wYY1x	\N
2107	Meta	Nettie.Erdman50@hotmail.com	DecAnfyhrfEhabH	\N
2108	Asia	Darius.Marquardt@gmail.com	wCfqsIHaJ8GD1yF	\N
2109	Austyn	Sally.Lakin37@yahoo.com	aUVmlatGksDPQkg	\N
2110	Vicente	Dahlia_Ryan@yahoo.com	w9VEN0laCWHS1FW	\N
2111	Luther	Ozella18@gmail.com	0e1hO9qWhT2yDTu	\N
2112	Alexander	Keeley81@gmail.com	MyJccjgpS6_DFOf	\N
2113	Leone	Deven_Fahey@gmail.com	SsVei_31QLEkCqn	\N
2114	Lennie	Princess.Deckow@hotmail.com	zKYmVe9oWXXLP0w	\N
2115	Nyasia	Chesley.Bahringer@hotmail.com	TQYiLoskIu3n0tz	\N
2116	Eula	Darryl.Hudson-Koelpin@hotmail.com	G3tJQoP5KuK6aFn	\N
2117	Adolf	Dillon.Rath91@gmail.com	KFghuLy9zEF27jc	\N
2118	Kaylee	Alyce_Hoppe86@yahoo.com	Da7c_06ph1DEnk7	\N
2119	Rylee	Laurie_Huels@gmail.com	kcy1W8JNDLK7sGR	\N
2120	Hardy	Garrick_White@hotmail.com	LNAvZF80S9wWnMz	\N
2121	Marlene	Macey21@gmail.com	n5q8CS0Cc2VtcU8	\N
2122	Jacky	Cicero32@gmail.com	K3ZHG9mqCUziRH2	\N
2123	Amina	Pamela54@yahoo.com	n4yoO0lj0gY1wKi	\N
2124	Odie	Tremayne.Kuphal71@yahoo.com	IIELm5D5Hfray4u	\N
2125	Catalina	Jeffry.Mills38@hotmail.com	DK9JCBM2kIINKEh	\N
2126	Merlin	Eleonore.Green92@gmail.com	5ZVdQmHXwFqXynj	\N
2127	Alexander	Betsy28@hotmail.com	liQetpr0QZL3QRf	\N
2128	Beth	Kristopher_Bernier89@hotmail.com	24eThbk0cE_VjyR	\N
2129	Triston	Gunnar.Walker@gmail.com	Cgm1W7ZaDOSgBN9	\N
2130	Efrain	Jaclyn33@yahoo.com	vUvwmbOlHl91Iz3	\N
2131	Ulices	Junius.Sipes@gmail.com	neAISxMz3Av1n89	\N
2132	Dereck	Myles.Walsh88@hotmail.com	tY_4geVaASfMG6l	\N
2133	Una	Gerry49@gmail.com	1YzVTB7qYHpvn60	\N
2134	Arlo	Orlo75@yahoo.com	pQ9lEAHoEjQKV4c	\N
2135	Howell	Jerod79@gmail.com	5SczGHBc8FnLjlF	\N
2136	Elmo	Gerhard36@hotmail.com	ofWL3TAyeWx7FI1	\N
2137	Porter	Salma.Oberbrunner79@yahoo.com	pp2bfwzHInwdS2H	\N
2138	Waylon	Jean9@yahoo.com	ssU5WimLOEdVNBg	\N
2139	Gertrude	Randi.Farrell@hotmail.com	esV0VNxE9slTkF7	\N
2140	Ben	Dante.Keeling68@yahoo.com	6DjinZEnLft2Tkz	\N
2141	Lyla	Arne.Hessel12@hotmail.com	mj8J2KK24nd7qe3	\N
2142	Declan	Josefa4@gmail.com	tH5MuFwf4EyhgXm	\N
2143	Dedrick	Dakota.Kshlerin@gmail.com	kl91FETTUgm1VYE	\N
2144	Russel	Wallace20@yahoo.com	Iz4y9lSMjWUv3Gk	\N
2145	Dusty	Cortney.Hermiston65@gmail.com	u4hl9OglTMvU2cc	\N
2146	Pablo	Marc14@yahoo.com	MPGFFlWu4FRQO5B	\N
2147	Providenci	Marley53@yahoo.com	5kEQmn8Ru2H90kF	\N
2148	BOBBY	BOBBY	NOMAME	\N
2149	BOBBY2	BOBBY2	NOMAME	\N
\.


--
-- Name: Boards_board_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Boards_board_id_seq"', 239, true);


--
-- Name: Lanes_lane_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Lanes_lane_id_seq"', 40, true);


--
-- Name: OnATeam_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OnATeam_on_id_seq"', 217, true);


--
-- Name: Tasks_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tasks_task_id_seq"', 708, true);


--
-- Name: Teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Teams_team_id_seq"', 106, true);


--
-- Name: Users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_user_id_seq"', 2149, true);


--
-- Name: Boards Boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Boards"
    ADD CONSTRAINT "Boards_pkey" PRIMARY KEY (board_id);


--
-- Name: Lanes Lanes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lanes"
    ADD CONSTRAINT "Lanes_pkey" PRIMARY KEY (lane_id);


--
-- Name: OnATeam OnATeam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OnATeam"
    ADD CONSTRAINT "OnATeam_pkey" PRIMARY KEY (on_id);


--
-- Name: Tasks Tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY (task_id);


--
-- Name: Teams Teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT "Teams_pkey" PRIMARY KEY (team_id);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (user_id);


--
-- Name: Tasks Lane Constraint; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Lane Constraint" FOREIGN KEY (lane_id) REFERENCES public."Lanes"(lane_id);


--
-- Name: Boards Team Constraint; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Boards"
    ADD CONSTRAINT "Team Constraint" FOREIGN KEY (team_id) REFERENCES public."Teams"(team_id);


--
-- Name: OnATeam UserConstraint; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OnATeam"
    ADD CONSTRAINT "UserConstraint" FOREIGN KEY (user_id) REFERENCES public."Users"(user_id);


--
-- Name: OnATeam teamConstraint; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OnATeam"
    ADD CONSTRAINT "teamConstraint" FOREIGN KEY (team_id) REFERENCES public."Teams"(team_id);


--
-- PostgreSQL database dump complete
--

