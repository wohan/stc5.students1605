CREATE TABLE journal (
  id integer NOT NULL,
  lesson_id integer NOT NULL,
  student_id integer NOT NULL
);


--ALTER TABLE journal OWNER TO "user";

--
-- Name: journal_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE journal_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


--ALTER TABLE journal_id_seq OWNER TO "user";

--
-- Name: journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

--ALTER SEQUENCE journal_id_seq OWNED BY journal.id;


--
-- Name: lesson; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE lesson (
  id integer NOT NULL,
  study_group_id integer NOT NULL,
  lesson_date timestamp without time zone NOT NULL,
  room integer NOT NULL,
  description character varying(2000)
);


--ALTER TABLE lesson OWNER TO "user";

--
-- Name: lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE lesson_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


--ALTER TABLE lesson_id_seq OWNER TO "user";

--
-- Name: lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

--ALTER SEQUENCE lesson_id_seq OWNED BY lesson.id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE student (
  id integer NOT NULL,
  name character varying(255),
  age integer NOT NULL,
  group_id integer DEFAULT 0,
  user_st_id integer
);


--ALTER TABLE student OWNER TO "user";

--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE student_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


--ALTER TABLE student_id_seq OWNER TO "user";

--
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

--ALTER SEQUENCE student_id_seq OWNED BY student.id;


--
-- Name: study_group; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE study_group (
  id integer NOT NULL,
  name character varying(255)
);


--ALTER TABLE study_group OWNER TO "user";

--
-- Name: study_group_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE study_group_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


--ALTER TABLE study_group_id_seq OWNER TO "user";

--
-- Name: study_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

--ALTER SEQUENCE study_group_id_seq OWNED BY study_group.id;


--
-- Name: user_st; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE user_st (
  id integer NOT NULL,
  login character varying(255) NOT NULL,
  password character varying(255) NOT NULL,
  is_blocked boolean DEFAULT false NOT NULL
);


--ALTER TABLE user_st OWNER TO "user";

--
-- Name: table_name_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE table_name_id_seq
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


--ALTER TABLE table_name_id_seq OWNER TO "user";

--
-- Name: table_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE table_name_id_seq OWNED BY user_st.id;


--
-- Name: user_st_role; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE user_st_role (
  id integer NOT NULL,
  login character varying(255) NOT NULL,
  user_st_role character varying(255) NOT NULL
);


--ALTER TABLE user_st_role OWNER TO "user";

--
-- Name: table_name_id_seq1; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE table_name_id_seq1
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;


--ALTER TABLE table_name_id_seq1 OWNER TO "user";

--
-- Name: table_name_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE table_name_id_seq1 OWNED BY user_st_role.id;


--
-- Name: journal id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY journal ALTER COLUMN id SET DEFAULT nextval('journal_id_seq'::regclass);


--
-- Name: lesson id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY lesson ALTER COLUMN id SET DEFAULT nextval('lesson_id_seq'::regclass);


--
-- Name: student id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY student ALTER COLUMN id SET DEFAULT nextval('student_id_seq'::regclass);


--
-- Name: study_group id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY study_group ALTER COLUMN id SET DEFAULT nextval('study_group_id_seq'::regclass);


--
-- Name: user_st id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY user_st ALTER COLUMN id SET DEFAULT nextval('table_name_id_seq'::regclass);


--
-- Name: user_st_role id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY user_st_role ALTER COLUMN id SET DEFAULT nextval('table_name_id_seq1'::regclass);


--
-- Data for Name: journal; Type: TABLE DATA; Schema: public; Owner: user
--



--
-- Name: journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('journal_id_seq', 2, true);


--
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO lesson VALUES (1, 1, '2017-04-18 23:27:49.009', 435, 'Lesson1');
INSERT INTO lesson VALUES (2, 2, '2017-04-18 22:29:14.692', 342, 'Second lesson');


--
-- Name: lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('lesson_id_seq', 2, true);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO student VALUES (3, 'Зайцев', 34, 2, 2);
INSERT INTO student VALUES (5, 'Павлов', 30, 2, 3);
INSERT INTO student VALUES (6, 'Кузнецов', 24, 1, 4);
INSERT INTO student VALUES (18, 'Еще ученичок', 12, 1, 5);
INSERT INTO student VALUES (19, 'Студентик', 24, 2, 6);
INSERT INTO student VALUES (21, 'Spring driven', 12, 1, 7);
INSERT INTO student VALUES (22, 'Я из Spring', 23, 1, 8);
INSERT INTO student VALUES (15, 'Ололоев', 23, 1, 1);
INSERT INTO student VALUES (1, 'Вяткин', 30, 1, 9);
INSERT INTO student VALUES (43, 'sff', 12, 1, NULL);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('student_id_seq', 43, true);


--
-- Data for Name: study_group; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO study_group VALUES (1, '01-116');
INSERT INTO study_group VALUES (2, '08-223');


--
-- Name: study_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('study_group_id_seq', 2, true);


--
-- Name: table_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('table_name_id_seq', 9, true);


--
-- Name: table_name_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('table_name_id_seq1', 10, true);


--
-- Data for Name: user_st; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO user_st VALUES (1, 'user', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (3, 'user2', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (4, 'user3', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (5, 'user4', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (6, 'user5', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (7, 'user6', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (8, 'user7', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (9, 'user8', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);
INSERT INTO user_st VALUES (2, 'admin', '$2a$10$vsNo7xTxYni8J9D9v4Z3M.UZYv8tHhotRr3ahBJkyH0a7eTsgygRC', false);


--
-- Data for Name: user_st_role; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO user_st_role VALUES (1, 'user', 'ROLE_USER');
INSERT INTO user_st_role VALUES (4, 'user2', 'ROLE_USER');
INSERT INTO user_st_role VALUES (5, 'user3', 'ROLE_USER');
INSERT INTO user_st_role VALUES (6, 'user4', 'ROLE_USER');
INSERT INTO user_st_role VALUES (7, 'user5', 'ROLE_USER');
INSERT INTO user_st_role VALUES (8, 'user6', 'ROLE_USER');
INSERT INTO user_st_role VALUES (9, 'user7', 'ROLE_USER');
INSERT INTO user_st_role VALUES (10, 'user8', 'ROLE_USER');
INSERT INTO user_st_role VALUES (3, 'admin', 'ROLE_ADMIN');


--
-- Name: lesson fk_lesson; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY lesson
  ADD CONSTRAINT fk_lesson PRIMARY KEY (id);


--
-- Name: journal pk_journal_id; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY journal
  ADD CONSTRAINT pk_journal_id PRIMARY KEY (id);


--
-- Name: student pk_student_id; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY student
  ADD CONSTRAINT pk_student_id PRIMARY KEY (id);


--
-- Name: study_group pk_study_group_id; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY study_group
  ADD CONSTRAINT pk_study_group_id PRIMARY KEY (id);


--
-- Name: user_st table_name_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY user_st
  ADD CONSTRAINT table_name_pkey PRIMARY KEY (id);


--
-- Name: user_st_role user_st_role_id_pk; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY user_st_role
  ADD CONSTRAINT user_st_role_id_pk PRIMARY KEY (id);


--
-- Name: table_name_id_uindex; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX table_name_id_uindex ON user_st_role USING btree (id);


--
-- Name: table_name_login_uindex; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX table_name_login_uindex ON user_st_role USING btree (login);


--
-- Name: user_st_login_uindex; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX user_st_login_uindex ON user_st USING btree (login);


--
-- Name: journal fk_journal_lesson; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY journal
  ADD CONSTRAINT fk_journal_lesson FOREIGN KEY (lesson_id) REFERENCES lesson(id);


--
-- Name: journal fk_journal_student; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY journal
  ADD CONSTRAINT fk_journal_student FOREIGN KEY (student_id) REFERENCES student(id);


--
-- Name: lesson fk_lesson_study_group; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY lesson
  ADD CONSTRAINT fk_lesson_study_group FOREIGN KEY (study_group_id) REFERENCES study_group(id);


--
-- Name: student fk_student__study_group; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY student
  ADD CONSTRAINT fk_student__study_group FOREIGN KEY (group_id) REFERENCES study_group(id);


--
-- Name: student student_user_st_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY student
  ADD CONSTRAINT student_user_st_id_fk FOREIGN KEY (user_st_id) REFERENCES user_st(id);

