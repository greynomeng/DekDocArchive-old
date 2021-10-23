--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)

-- Started on 2021-09-30 15:40:32 AEST

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
-- TOC entry 209 (class 1259 OID 18001)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO deksiteuser;

--
-- TOC entry 208 (class 1259 OID 17999)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 18011)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO deksiteuser;

--
-- TOC entry 210 (class 1259 OID 18009)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 17993)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO deksiteuser;

--
-- TOC entry 206 (class 1259 OID 17991)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 18019)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO deksiteuser;

--
-- TOC entry 215 (class 1259 OID 18029)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO deksiteuser;

--
-- TOC entry 214 (class 1259 OID 18027)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 18017)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 18037)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO deksiteuser;

--
-- TOC entry 216 (class 1259 OID 18035)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 219 (class 1259 OID 18097)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO deksiteuser;

--
-- TOC entry 218 (class 1259 OID 18095)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 17983)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO deksiteuser;

--
-- TOC entry 204 (class 1259 OID 17981)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 17972)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO deksiteuser;

--
-- TOC entry 202 (class 1259 OID 17970)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 226 (class 1259 OID 18177)
-- Name: django_session; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO deksiteuser;

--
-- TOC entry 221 (class 1259 OID 18130)
-- Name: docs_category; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.docs_category (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.docs_category OWNER TO deksiteuser;

--
-- TOC entry 220 (class 1259 OID 18128)
-- Name: docs_category_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.docs_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.docs_category_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 220
-- Name: docs_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.docs_category_id_seq OWNED BY public.docs_category.id;


--
-- TOC entry 225 (class 1259 OID 18149)
-- Name: docs_docimage; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.docs_docimage (
    id bigint NOT NULL,
    caption character varying(255),
    image character varying(100) NOT NULL,
    doc_id bigint NOT NULL
);


ALTER TABLE public.docs_docimage OWNER TO deksiteuser;

--
-- TOC entry 224 (class 1259 OID 18147)
-- Name: docs_docimage_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.docs_docimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.docs_docimage_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 224
-- Name: docs_docimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.docs_docimage_id_seq OWNED BY public.docs_docimage.id;


--
-- TOC entry 223 (class 1259 OID 18138)
-- Name: docs_document; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.docs_document (
    id bigint NOT NULL,
    title character varying(500) NOT NULL,
    summary character varying(500),
    doc_date date,
    dutch_text text,
    english_text text,
    notes text,
    slug character varying(500),
    status character varying(1) NOT NULL,
    updated timestamp with time zone NOT NULL,
    author_id integer,
    category_id bigint,
    created timestamp with time zone NOT NULL
);


ALTER TABLE public.docs_document OWNER TO deksiteuser;

--
-- TOC entry 222 (class 1259 OID 18136)
-- Name: docs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.docs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.docs_document_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 222
-- Name: docs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.docs_document_id_seq OWNED BY public.docs_document.id;


--
-- TOC entry 230 (class 1259 OID 18210)
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO deksiteuser;

--
-- TOC entry 229 (class 1259 OID 18208)
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 229
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- TOC entry 232 (class 1259 OID 18222)
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO deksiteuser;

--
-- TOC entry 231 (class 1259 OID 18220)
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 231
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- TOC entry 228 (class 1259 OID 18189)
-- Name: users_profile; Type: TABLE; Schema: public; Owner: deksiteuser
--

CREATE TABLE public.users_profile (
    id bigint NOT NULL,
    phone character varying(20),
    avatar character varying(100),
    date_created timestamp with time zone,
    user_id integer NOT NULL
);


ALTER TABLE public.users_profile OWNER TO deksiteuser;

--
-- TOC entry 227 (class 1259 OID 18187)
-- Name: users_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: deksiteuser
--

CREATE SEQUENCE public.users_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_profile_id_seq OWNER TO deksiteuser;

--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deksiteuser
--

ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;


--
-- TOC entry 2926 (class 2604 OID 18004)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 18014)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2925 (class 2604 OID 17996)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 18022)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 18032)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 18040)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 18100)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 17986)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 17975)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 18133)
-- Name: docs_category id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_category ALTER COLUMN id SET DEFAULT nextval('public.docs_category_id_seq'::regclass);


--
-- TOC entry 2935 (class 2604 OID 18152)
-- Name: docs_docimage id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_docimage ALTER COLUMN id SET DEFAULT nextval('public.docs_docimage_id_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 18141)
-- Name: docs_document id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_document ALTER COLUMN id SET DEFAULT nextval('public.docs_document_id_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 18213)
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- TOC entry 2938 (class 2604 OID 18225)
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- TOC entry 2936 (class 2604 OID 18192)
-- Name: users_profile id; Type: DEFAULT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);


--
-- TOC entry 3171 (class 0 OID 18001)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3173 (class 0 OID 18011)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3169 (class 0 OID 17993)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add category	7	add_category
26	Can change category	7	change_category
27	Can delete category	7	delete_category
28	Can view category	7	view_category
29	Can add document	8	add_document
30	Can change document	8	change_document
31	Can delete document	8	delete_document
32	Can view document	8	view_document
33	Can add doc image	9	add_docimage
34	Can change doc image	9	change_docimage
35	Can delete doc image	9	delete_docimage
36	Can view doc image	9	view_docimage
37	Can add profile	10	add_profile
38	Can change profile	10	change_profile
39	Can delete profile	10	delete_profile
40	Can view profile	10	view_profile
41	Can add tag	11	add_tag
42	Can change tag	11	change_tag
43	Can delete tag	11	delete_tag
44	Can view tag	11	view_tag
45	Can add tagged item	12	add_taggeditem
46	Can change tagged item	12	change_taggeditem
47	Can delete tagged item	12	delete_taggeditem
48	Can view tagged item	12	view_taggeditem
\.


--
-- TOC entry 3175 (class 0 OID 18019)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$LnlYpkgIw6zdtyMJdu7A9h$qsO0nzgvY20m9dVZMgVEwVAPFKGCh/oVjUqjd2UluEk=	2021-06-30 06:45:55.737678+10	t	admin			greynomeng@gmail.com	t	t	2021-06-25 08:42:45+10
\.


--
-- TOC entry 3177 (class 0 OID 18029)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3179 (class 0 OID 18037)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3181 (class 0 OID 18097)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-06-25 08:43:25.01609+10	1	Booklet	1	[{"added": {}}]	7	1
2	2021-06-25 08:43:34.419298+10	2	Letter - Official	1	[{"added": {}}]	7	1
3	2021-06-25 08:43:40.054144+10	3	Letter - Personal	1	[{"added": {}}]	7	1
4	2021-06-25 08:43:45.55701+10	4	Magazine Article	1	[{"added": {}}]	7	1
5	2021-06-25 09:19:10.186181+10	1	admin	2	[{"changed": {"fields": ["Username", "Email address"]}}]	4	1
6	2021-06-25 11:36:33.419522+10	1	Letter - de Rooy to Dekker - 1	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (1)"}}, {"added": {"name": "doc image", "object": "DocImage object (2)"}}, {"added": {"name": "doc image", "object": "DocImage object (3)"}}, {"added": {"name": "doc image", "object": "DocImage object (4)"}}]	8	1
7	2021-06-25 11:39:11.685349+10	2	Booklet - Trade Union, Henk Dekker	1	[{"added": {}}]	8	1
8	2021-06-25 13:58:11.906908+10	1	Letter - de Rooy to Dekker - 1	2	[{"changed": {"fields": ["Tags"]}}]	8	1
9	2021-06-26 07:26:13.619648+10	3	Article - Steenkool magazine	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (5)"}}, {"added": {"name": "doc image", "object": "DocImage object (6)"}}]	8	1
10	2021-06-26 07:29:51.917196+10	4	Letter - Hoeks to Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (7)"}}, {"added": {"name": "doc image", "object": "DocImage object (8)"}}, {"added": {"name": "doc image", "object": "DocImage object (9)"}}, {"added": {"name": "doc image", "object": "DocImage object (10)"}}]	8	1
11	2021-06-26 07:33:11.935422+10	5	Letter - Nel Dekker to Henk Dekker 2	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (11)"}}, {"added": {"name": "doc image", "object": "DocImage object (12)"}}]	8	1
12	2021-06-26 07:38:24.596808+10	6	Letter - Zeegers to Nel Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (13)"}}, {"added": {"name": "doc image", "object": "DocImage object (14)"}}]	8	1
13	2021-06-26 07:59:48.510738+10	7	Letter - Hoeks to Dekker 2	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (15)"}}, {"added": {"name": "doc image", "object": "DocImage object (16)"}}, {"added": {"name": "doc image", "object": "DocImage object (17)"}}]	8	1
14	2021-06-26 08:01:50.609122+10	8	Letter - van Buren to Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (18)"}}, {"added": {"name": "doc image", "object": "DocImage object (19)"}}]	8	1
15	2021-06-26 08:04:18.078366+10	9	Letter - de Rooy to Dekker - 2	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (20)"}}, {"added": {"name": "doc image", "object": "DocImage object (21)"}}]	8	1
16	2021-06-26 08:08:21.045666+10	10	Letter - van de Brink to Dekker 2	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (22)"}}, {"added": {"name": "doc image", "object": "DocImage object (23)"}}]	8	1
17	2021-06-26 08:11:04.489538+10	11	Letter - H Dekker to C Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (24)"}}, {"added": {"name": "doc image", "object": "DocImage object (25)"}}]	8	1
18	2021-06-26 08:17:05.25632+10	12	Letter - van Eijs to Dekker 2	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (26)"}}, {"added": {"name": "doc image", "object": "DocImage object (27)"}}, {"added": {"name": "doc image", "object": "DocImage object (28)"}}, {"added": {"name": "doc image", "object": "DocImage object (29)"}}]	8	1
19	2021-06-26 08:19:35.555948+10	13	Letter - Henk Dekker to Nel Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (30)"}}, {"added": {"name": "doc image", "object": "DocImage object (31)"}}, {"added": {"name": "doc image", "object": "DocImage object (32)"}}]	8	1
20	2021-06-26 08:21:11.365073+10	14	Letter - Nel Dekker to Henk Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (33)"}}]	8	1
21	2021-06-26 08:22:11.672222+10	14	Letter - Nel Dekker to Henk Dekker	2	[{"added": {"name": "doc image", "object": "DocImage object (34)"}}]	8	1
22	2021-06-26 08:23:41.035503+10	15	Letter - Roodbol to Dekker 1	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (35)"}}, {"added": {"name": "doc image", "object": "DocImage object (36)"}}]	8	1
23	2021-06-26 08:25:34.454189+10	16	Letter - de Rooy to Dekker - 3	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (37)"}}, {"added": {"name": "doc image", "object": "DocImage object (38)"}}]	8	1
24	2021-06-26 08:27:30.339587+10	17	Letter - van Eijs to Dekker 1	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (39)"}}, {"added": {"name": "doc image", "object": "DocImage object (40)"}}, {"added": {"name": "doc image", "object": "DocImage object (41)"}}, {"added": {"name": "doc image", "object": "DocImage object (42)"}}]	8	1
25	2021-06-26 08:47:40.857722+10	18	Letter - van de Brink to Dekker 3	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (43)"}}, {"added": {"name": "doc image", "object": "DocImage object (44)"}}]	8	1
26	2021-06-26 08:50:33.882664+10	19	Letter - van Buren to Dekker 2	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (45)"}}, {"added": {"name": "doc image", "object": "DocImage object (46)"}}, {"added": {"name": "doc image", "object": "DocImage object (47)"}}]	8	1
27	2021-06-26 08:52:49.665407+10	20	Letter - van de Brink to Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (48)"}}, {"added": {"name": "doc image", "object": "DocImage object (49)"}}]	8	1
28	2021-06-26 08:55:04.484973+10	21	Letter - Arie Dekker to Henk Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (50)"}}, {"added": {"name": "doc image", "object": "DocImage object (51)"}}, {"added": {"name": "doc image", "object": "DocImage object (52)"}}]	8	1
29	2021-06-26 08:56:42.505878+10	22	Letter - van de Ruit to Dekker	1	[{"added": {}}, {"added": {"name": "doc image", "object": "DocImage object (53)"}}]	8	1
30	2021-06-27 08:03:12.60655+10	11	Letter - H Dekker to C Dekker	2	[{"changed": {"fields": ["Tags"]}}]	8	1
\.


--
-- TOC entry 3167 (class 0 OID 17983)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	docs	category
8	docs	document
9	docs	docimage
10	users	profile
11	taggit	tag
12	taggit	taggeditem
\.


--
-- TOC entry 3165 (class 0 OID 17972)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-06-25 08:40:58.110532+10
2	auth	0001_initial	2021-06-25 08:40:59.119684+10
3	admin	0001_initial	2021-06-25 08:40:59.34418+10
4	admin	0002_logentry_remove_auto_add	2021-06-25 08:40:59.37254+10
5	admin	0003_logentry_add_action_flag_choices	2021-06-25 08:40:59.390087+10
6	contenttypes	0002_remove_content_type_name	2021-06-25 08:40:59.413692+10
7	auth	0002_alter_permission_name_max_length	2021-06-25 08:40:59.443259+10
8	auth	0003_alter_user_email_max_length	2021-06-25 08:40:59.479101+10
9	auth	0004_alter_user_username_opts	2021-06-25 08:40:59.509313+10
10	auth	0005_alter_user_last_login_null	2021-06-25 08:40:59.529827+10
11	auth	0006_require_contenttypes_0002	2021-06-25 08:40:59.542414+10
12	auth	0007_alter_validators_add_error_messages	2021-06-25 08:40:59.556152+10
13	auth	0008_alter_user_username_max_length	2021-06-25 08:40:59.61607+10
14	auth	0009_alter_user_last_name_max_length	2021-06-25 08:40:59.656287+10
15	auth	0010_alter_group_name_max_length	2021-06-25 08:40:59.679816+10
16	auth	0011_update_proxy_permissions	2021-06-25 08:40:59.698884+10
17	auth	0012_alter_user_first_name_max_length	2021-06-25 08:40:59.717513+10
18	docs	0001_initial	2021-06-25 08:41:00.236395+10
19	sessions	0001_initial	2021-06-25 08:41:00.436583+10
20	users	0001_initial	2021-06-25 08:41:00.561143+10
21	docs	0002_alter_document_slug	2021-06-25 11:34:17.83637+10
22	taggit	0001_initial	2021-06-25 13:43:40.94008+10
23	taggit	0002_auto_20150616_2121	2021-06-25 13:43:41.004998+10
24	taggit	0003_taggeditem_add_unique_index	2021-06-25 13:43:41.081246+10
25	docs	0003_document_tags	2021-06-25 13:43:41.137559+10
26	docs	0004_alter_document_tags	2021-06-26 07:25:28.20941+10
27	docs	0005_alter_document_slug	2021-06-26 07:48:43.060447+10
28	docs	0006_alter_document_updated	2021-06-29 12:17:36.55326+10
29	docs	0007_alter_document_title	2021-06-29 12:17:36.701761+10
30	docs	0008_document_created	2021-06-29 12:34:40.935573+10
\.


--
-- TOC entry 3188 (class 0 OID 18177)
-- Dependencies: 226
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
didlvrzhct5802hx6646pplod7vle85f	.eJxVjEEOwiAQRe_C2hDKEBCX7j1DM8wMUjWQlHbVeHdt0oVu_3vvb2rEdSnj2mUeJ1YXNajT75aQnlJ3wA-s96ap1WWekt4VfdCub43ldT3cv4OCvXzrCBDFRU-JCfIQwKIY5kAsdqDgQVCsQXs2LpvESXLkBDmAdz5TcOr9Af2iOME:1lwaRW:tWeBQeKLqZD5Hyn-uGElWDFKxCNPI8FI74mQUDEIKlY	2021-07-09 11:15:38.958222+10
aim922qr2h38yqfl3dzm8502cnhgh10g	.eJxVjEEOwiAQRe_C2hDKEBCX7j1DM8wMUjWQlHbVeHdt0oVu_3vvb2rEdSnj2mUeJ1YXNajT75aQnlJ3wA-s96ap1WWekt4VfdCub43ldT3cv4OCvXzrCBDFRU-JCfIQwKIY5kAsdqDgQVCsQXs2LpvESXLkBDmAdz5TcOr9Af2iOME:1lwtfU:F0eXqGwHJUTx-eAVkeXNpdc9GfymWUfRYZqfC5z1z8A	2021-07-10 07:47:20.252994+10
1pkkhkuvc78adhvx3l4aixhbfgru0fjy	.eJxVjEEOwiAQRe_C2hDKEBCX7j1DM8wMUjWQlHbVeHdt0oVu_3vvb2rEdSnj2mUeJ1YXNajT75aQnlJ3wA-s96ap1WWekt4VfdCub43ldT3cv4OCvXzrCBDFRU-JCfIQwKIY5kAsdqDgQVCsQXs2LpvESXLkBDmAdz5TcOr9Af2iOME:1lxGrC:rH-VxwyOM1cgNALjI8_C1SEGNF2dU-BVzMVMnj1tp9E	2021-07-11 08:32:58.906876+10
j5jvu0tj7oucnb9con5dkj9z6lspd56b	.eJxVjEEOwiAQRe_C2hDKEBCX7j1DM8wMUjWQlHbVeHdt0oVu_3vvb2rEdSnj2mUeJ1YXNajT75aQnlJ3wA-s96ap1WWekt4VfdCub43ldT3cv4OCvXzrCBDFRU-JCfIQwKIY5kAsdqDgQVCsQXs2LpvESXLkBDmAdz5TcOr9Af2iOME:1lyKcF:vNXiYZJ5Rxeei1D5irGr47sHeB0CdziZETq9NJxGT-Y	2021-07-14 06:45:55.754622+10
\.


--
-- TOC entry 3183 (class 0 OID 18130)
-- Dependencies: 221
-- Data for Name: docs_category; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.docs_category (id, name, slug) FROM stdin;
1	Booklet	booklet
2	Letter - Official	letter-official
3	Letter - Personal	letter-personal
4	Magazine Article	magazine-article
\.


--
-- TOC entry 3187 (class 0 OID 18149)
-- Dependencies: 225
-- Data for Name: docs_docimage; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.docs_docimage (id, caption, image, doc_id) FROM stdin;
1	Letter page 1	images/documents/let-derooy-dekker_001.jpg	1
2	Letter page 2	images/documents/let-derooy-dekker_002.jpg	1
3	Envelope front	images/documents/env-derooy-dekker_1.jpg	1
4	Envelope back	images/documents/env-derooy-dekker_2.jpg	1
5	The carpenters Mat Wouters and Hendrik Dekker are putting the finishing touches to the formwork of the entrance for the switch room of the pump room.	images/documents/steenkool-1.jpg	3
6	Applying the formwork around the iron skeleton for the entrance to the switch room of the pump room requires great expertise from the carpenters. Carpenter Hendrik Dekker carries a formwork baffle to the opposite side.	images/documents/steenkool-2.jpg	3
7	Page 1	images/documents/hoek-dekker-letter-01.jpg	4
8	Page 2	images/documents/hoek-dekker-letter-02.jpg	4
9	Page 3	images/documents/hoek-dekker-letter-03.jpg	4
10	Page 4  - Address	images/documents/hoek-dekker-letter-04.jpg	4
11	\N	images/documents/letter-neldekker-henkdekker_02-01.jpg	5
12	\N	images/documents/letter-neldekker-henkdekker_02-02.jpg	5
13	\N	images/documents/19540925-letter-zeegers-nel-dekker-1.jpg	6
14	\N	images/documents/19540925-letter-zeegers-nel-dekker-2.jpg	6
15	\N	images/documents/letter-hoek-dekker-1.jpg	7
16	\N	images/documents/letter-hoek-dekker-2.jpg	7
17	\N	images/documents/letter-hoek-dekker-3.jpg	7
18	\N	images/documents/19540901-letter-letter-van-buren-dekker-1.jpg	8
19	\N	images/documents/19540901-letter-letter-van-buren-dekker-2.jpg	8
20	\N	images/documents/let-derooy-dekker_2_001.jpg	9
21	\N	images/documents/let-derooy-dekker_2_002.jpg	9
22	\N	images/documents/letter-vdbrink-dekker-2-1.jpg	10
23	\N	images/documents/letter-vdbrink-dekker-2-2.jpg	10
24	\N	images/documents/letter-hdekker-cdekker-01-01.jpg	11
25	\N	images/documents/letter-hdekker-cdekker-01-02.jpg	11
26	\N	images/documents/19541002-letter-van-eijs-dekker-2-1.jpg	12
27	\N	images/documents/19541002-letter-van-eijs-dekker-2-2.jpg	12
28	\N	images/documents/19541002-letter-van-eijs-dekker-2-3.jpg	12
29	\N	images/documents/19541002-letter-van-eijs-dekker-2-4.jpg	12
30	\N	images/documents/letter-hdekker-cdekker-02-01.jpg	13
31	\N	images/documents/letter-hdekker-cdekker-02-02.jpg	13
32	\N	images/documents/letter-hdekker-cdekker-02-03.jpg	13
33	\N	images/documents/letter-neldekker-henkdekker_01-01.jpg	14
34	\N	images/documents/letter-neldekker-henkdekker_01-02.jpg	14
35	\N	images/documents/19541031-letter-roodbol-dekker-1-1.jpg	15
36	\N	images/documents/19541031-letter-roodbol-dekker-1-2.jpg	15
37	\N	images/documents/letter-derooy-dekker-3-1.jpg	16
38	\N	images/documents/letter-derooy-dekker-3-2.jpg	16
39	\N	images/documents/19541117-letter-van-eijs-dekker-1.jpg	17
40	\N	images/documents/19541117-letter-van-eijs-dekker-2.jpg	17
41	\N	images/documents/19541117-letter-van-eijs-dekker-3.jpg	17
42	\N	images/documents/19541117-letter-van-eijs-dekker-4.jpg	17
43	\N	images/documents/19541202-letter-van-de-brink-dekker-3-1.jpg	18
44	\N	images/documents/19541202-letter-van-de-brink-dekker-3-2.jpg	18
45	\N	images/documents/19541217letter-van-buren-dekker-2-1.jpg	19
46	\N	images/documents/19541217letter-van-buren-dekker-2-2.jpg	19
47	\N	images/documents/19541217letter-van-buren-dekker-2-3.jpg	19
48	\N	images/documents/brink-dekker-letter-01.jpg	20
49	\N	images/documents/brink-dekker-letter-02.jpg	20
50	\N	images/documents/IMG_20190809_0001.jpg	21
51	\N	images/documents/IMG_20190809_0002.jpg	21
52	\N	images/documents/IMG_20190809_0003.jpg	21
53	\N	images/documents/vanderuit-dekker-letter.jpg	22
\.


--
-- TOC entry 3185 (class 0 OID 18138)
-- Dependencies: 223
-- Data for Name: docs_document; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.docs_document (id, title, summary, doc_date, dutch_text, english_text, notes, slug, status, updated, author_id, category_id, created) FROM stdin;
2	Booklet - Trade Union, Henk Dekker	Trade union contribution booklet?	1937-09-27	<p><em>Voorkant</em>&nbsp;ROOMS-KATHOLIEKE BOUWVAKARBEIDERSBOND ST. JOSEPH Afdeling: Heerlen Naam: Hendrik Dekker Bondsnummer: 109492</p>\r\n\r\n<h4><em>Binnenkant omslag (Some script - hospitaal lid?)</em></h4>\r\n\r\n<p>Het bestuur van de Rooms Katholieke Bouwvakarbeidersbond St. Joseph verklaart, dat het lid, wiens naam op bladz. 1 is vermeld, met rechten is overgekomen uit......... en aldaar toegetreden:&hellip;. Aantal weken contributie betald:&hellip; tot en met:&hellip;.</p>\r\n\r\n<p>Der Vorstand des Rooms Katholieke Bouwvakarbeidersbond St. Joseph erkl&auml;rt, dasz das Mitglied, wessen Namen auf Seite 1 angegeben ist, mit Anrechten ist her&uuml;bergekommen aus &hellip;. und dort beigetritten: &hellip;. Wochen Kontribution bezahlt: &hellip;. bis einschlieszch: &hellip;.</p>\r\n\r\n<p>(Previous section in French)</p>\r\n\r\n<h4><em>Blad 1</em>&nbsp;CONTRIBUTIEBOEKJE TEVENS BEWIJS VAN LIDMAATSCHAP VOOR Bondsnummer: 109492 Voornamen: Hendrik Naam: Dekker Geboortedatum en jaartal: 10 April 1914 Beroep: Timmerman Gemeente: Heerlen Adres: Kloosterkoolhof (?number illegible) Datum aanvang lidmaatschap: 27 Sep 1937 Gehoud - ongehuwd (<em>unmarried underlined)</em>&nbsp;Aantal kinderen lid van de bond onder No. ... Was voorheen lid van de bond oner No. ...</h4>\r\n\r\n<p><em>Strijdlied (binnenkant achterkant)</em></p>\r\n\r\n<p><em>van het R. K. Werliedenverbond. Woorden van Bern.Verhoeven</em></p>\r\n\r\n<p>Christen strijders, broeders, makkers, Bouwers van de Maatshappij, Werkers, die nog slapt wordt wakker, en strijdt mede in onze rij! Weg de moker, met de troffel Sterk bewapend, roept de troffel Allen tot de grote slag. Heft de vanen hoog, heft de vanen hoog, heft de vanen in de dag. Heft de vanen hoog, heft de vanen hoog, heft de vanen in de dag.</p>\r\n\r\n<p>Ziet de vele duizentallen, Eensgezind ten strijde gaan. Wie er vluchten, wie er vallen, Christen strijders blijven staan! Liefde is in ons schild geschreven, Maar de kracht is ons gegeven, Om voor God de hoogste goed. Pal te staan met moed, pal te staan met moed, pal te staan met mannenmoed. Pal te staan met moed, pal te staan met moed, pal te staan met mannenmoed.</p>\r\n\r\n<p>O wij strijden voor Uw waarde, Voor Uw kroost en voor Uw brood, Maar ons pad voert van deez&#39; aarde Tot het hemels morgenrood! En we breken niet to bouwen Vrede recht en nieuw vertrouwen Broeders op ons vaderhuis Triompheert het kruis, triompheert het kruis, triompheert het Christenkruis Triompheert het kruis, triompheert het kruis, triompheert het Christenkruis</p>	<p>Municipality: Heerlen Address: Kloosterkoolhof Date of commencement of membership: 27 Sep 1937 Married - unmarried&nbsp;<em>(unmarried underlined)</em>&nbsp;Number of children a member of the association under No. ... Was previously a member of the Association ...</p>\r\n\r\n<p><em>Battle Song</em>&nbsp;<em>(inside back cover)</em></p>\r\n\r\n<p><em>from the R. K. Wermen Association. Words from Bern. Verhoeven</em></p>\r\n\r\n<p>Christian warriors, brothers, companions, Builders of the Maatshappij, Workers, who are still asleep, wake up, and competes in our row! Road the sledgehammer with the trowel, Strongly armed, the trowel calls All to the big stroke. Lifts the vanes high, lifts the vanes high, raises the vanes in the day. Lifts the vanes high, lifts the vanes high, raises the vanes in the day.</p>\r\n\r\n<p>See the many thousands of thousands, Go to battle with one mind. Who flees, who falls, Christian warriors remain standing! Love is written in our shield, But the power has been given to us, To be the highest good for God. Stand with courage, stand with courage, Stand firm with courage for men.</p>\r\n\r\n<p>O we fight for your value, for your offspring and for your bread, But our path leads from this earth To heavenly morning red! And we do not break to build Peace law and new trust Brothers at our father&#39;s house Triumphs the cross, triumphs the cross, triumphs the Christian cross Triumphs the cross, triumphs the cross, triumphs the Christian cross</p>		1937-09-27-booklet-booklet-trade-union-henk-dekker	p	2021-06-25 10:00:00+10	1	1	2021-06-29 12:34:40.912826+10
1	Letter - de Rooy to Dekker - 1	A letter from Koos and Nel de Rooy to Nel and Henk Dekker	1968-12-13	<p>Alderley 13th Dec &#39;68</p>\r\n\r\n<p>Beste Nel, Henk en kinderen</p>\r\n\r\n<p>Het is alweer een jaar geleden dat ik aan je schrief. Ik heem altijd voor om nog eens meer te schrief maar er komt niet iets aan.</p>\r\n\r\n<p>Verleden jaar schrief je dat Riny in Melbourne was en je zei dat Dick wel eens naar jullie toe mocht komen maar, algemeen daarna is hhij naar Vietnam vertrokken en hij us daar nu alweer voor de tweede keer sinds je laatste brief. Hij is on the Perth en hooft in April weer thuis te zijn. The navy heeft weer een film opgenomen waar moeders of vrouwen of meisjes konden praten tegen ze. Dat is wel erg aardig dat ze dat doen hoor. Als it Kerstmas is dan worden die films gedraaid en worden Nieuw Jaar gewenst door hun family leden.</p>\r\n\r\n<p>Wij zijn zo druk in ons werk af te krijgen voor we met vacantie gaan. We gaan de 20th naar Sydney naar Arie en Barbara komen the 20th weer terug dat is Zaterdag middag. Dan blijven we thuis tot Dinsdag en vertrekken Dinsdagmorgen vroeg, met Agnes en John (die bij John&#39;s moeder zyn over de Kerstmis) naar Mackay waar ze nu alweer een jaar wonen. Ze komen met de auto hier naar toe en nemen ons mee terug en daar blyven we 1 1/2 week en vliegen dan terug naar huis. Het is 650 mile naar Sydney maar ook van Brisbane 650 mile naar Mackay dus we zullen wel heel wat af reizen.</p>\r\n\r\n<p>Ik zit elke avond een paar brieven te schrijven want anders kom ik niet klaar. We hebben zoo juist coffee met boterlitter(?) gegeten want ik ktijg nog steeds elk jaar een pakket uit Holland van mijn zusters. Er zit een boterletter in en lekker speculaas en zowat van alles wat by Sinterklaasfeest hoort. Ze hebben het van eer firma in Haarlem geloof ik en betalen het en zy doen de rest. Het is ieder jaar weer een echte verrassing. Koos en ik zijn nog maarmet ons tweetjes overgesechoten en ik ben bly dat we naar den kinderen toegaan want anders was het maar eens aleen hoor!</p>\r\n\r\n<p>Frank en Dick zijn de enige ongetrouden bij mij. Maar Frank is nog niet zoo oud hoor. 24 Febr. wordt hij 21 jaar en hooft hij thuis te komen ervoor wat wel leuk zal zijn. Hij zit nog steeds in Townsville en heeft het er erg goed naar zijn zin. Arie en Barbara zijn ook alweer 1 jaar thuis van England. Ze hebben een nieuw huis gekocht en Mt. Druitt dat is geloof ik 27 mile uit Sydney. Wij slappen in Hornsby uit en hij komt ons daar afhalen. Ella en Joe zitten weer in Darwin. Ze zijn thuis geweest voor Agnes trouwen maar zijn toch weer terug gegaan naar Darwin want ze verdienen er zoo goed geld. Ella is in verwaching van haar eerste kindje. Ze denkt Februari. Het is jammer dat het zoo ver weg is he? We moeten wachten om de baby te zien tot over 2 jaar dan krygen ze vacantie met een betalde vliegreis.</p>\r\n\r\n<p>Ja zo gaat dat hier. Ik heb er geen een in Brisbane. Maryke is kortste by in Kingaroy nog steeds 134 mile hier vandaan. Ik hoop dat bij jullie alles nog gezond is. Wij wensen jullie een gelukkig Nieuwjaar toe en ik hoop dat je mer nog weer eens terug to schriweft he Nel?</p>\r\n\r\n<p>Hart, Groeten van ons allen</p>\r\n\r\n<p>Koos en Nel</p>	<p>Alderley 13th Dec 1968</p>\r\n\r\n<p>Dear Nel, Henk and children.</p>\r\n\r\n<p>It has been a year since I wrote to you. I always wish to write more but nothing is coming.</p>\r\n\r\n<p>Last year you wrote that Riny was in Melbourne and you said that Dick might come to you but, generally after that, he left for Vietnam and he is already there for the second time since your last letter. He is on the Perth and is expected to be home again in April. The navy has again recorded a film where mothers or women or girls could talk to them. That is very nice that they do. If it is Christmas then those films are shot and New Year is desired by their family members.</p>\r\n\r\n<p>We are so busy getting our work done before we go on holiday. We are going to Sydney on the 20th. Arie and Barbara will be returning on the 20th, that is Saturday afternoon. Then we stay home until Tuesday and leave early Tuesday morning, with Agnes and John (who&#39;s with John&#39;s mother over Christmas) to Mackay where they have been living for another year now. They come here by car and take us back and there we fly for 1 1/2 week and then fly back home. It is 650 miles to Sydney but also from Brisbane 650 miles to Mackay so we will travel quite a bit.</p>\r\n\r\n<p>I write a few letters every evening because otherwise I won&#39;t be able to finish. We have just eaten coffee with butter litter (?) Because every year I still receive a package from Holland from my sisters. There is a butter (???) letter in it and tasty gingerbread and just about everything that belongs to Sinterklaasfeest. I think they have it from a firm in Haarlem and they pay for it and they do the rest. It is a real surprise every year. Koos and I have just gotten over with the two of us, and I am very happy that we are going to the children, because otherwise it would only have happened!</p>\r\n\r\n<p>Frank and Dick are the only ones with me. But Frank is not that old yet. 24 Feb. he turns 21 and he needs to come home for what will be fun. He is still in Townsville and is having a good time there. Arie and Barbara have also been home to England for 1 year. They have bought a new house and Mt. Druitt that is, I believe, 27 miles from Sydney. We drop in Hornsby and he comes to pick us up. Ella and Joe are back in Darwin. They have been home before Agnes got married, but have nevertheless returned to Darwin because they are making such good money there. Ella is expecting her first child. She thinks February. It&#39;s a shame it&#39;s so far away, isn&#39;t it? We have to wait to see the baby until in 2 years she will get a holiday with a paid flight.</p>\r\n\r\n<p>Yes that&#39;s how it goes here. I don&#39;t have one in Brisbane. Maryke is shortest by in Kingaroy still 134 miles from here. I hope that everything is still healthy with you. We wish you a happy New Year and I hope that you will write back to me again, Nel?</p>\r\n\r\n<p>Heart, Greetings from all of us</p>\r\n\r\n<p>Koos and Nel</p>		1968-12-13-letter-personal-letter-de-rooy-to-dekker-1	c	2021-06-25 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
3	Article - Steenkool magazine	Steenkool mine article relating to Henk Dekker.	1951-07-20	<div>\r\n<p><strong>Nieuw Leven in een oude loods</strong></p>\r\n\r\n<p>Ondergronders en bovengronders werken samen bij de aanleg van de nieuw 810m verdieping van Staatsmijn Maurits</p>\r\n\r\n<p>Het zal nog enkele jaren duren, voordat Staatsmijn Maurits kan gaan profiteren van haar nieuwe 810 meter verdieping, aan de annleg waarvan momenteel door ongever honderd vakbekwame mijnwerkers met voortvarendheid wordt gewerkt. Van het werkfront kunnen intussen reeds goede vorderingen worden gemeld.</p>\r\n\r\n<p>[Embedded Image]</p>\r\n\r\n<ul>\r\n\t<li>De timmerlieden Mat Wouters en Hendrik Dekker leggen de laatste hand aan de bekisting van de entree voor de schakelruimte van de pompenkamer.<br />\r\n\t<br />\r\n\t[Embedded Image]</li>\r\n</ul>\r\n\r\n<p>Het aanbrengen van de bekisting om het ijzeren skelet voor de entree van de schakelruimte van de pompenkamer vraagt van de timmerlieden grote vakkennis. Timmerman Hendrik Dekker draagt een bekistingsschotje naar de ovwezijde.</p>\r\n</div>	<p><strong>New Life in an old shed</strong></p>\r\n\r\n<p>Undergrounds and above grounders work together on the construction of the new 810m floor of the Maurits State Mine</p>\r\n\r\n<p>It will take a few more years before the Maurits State Mine can start taking advantage of its new 810-meter floor, which is currently being built with enthusiasm by about 100 skilled miners. Good progress can already be reported from the work front.</p>\r\n\r\n<ol>\r\n\t<li>The carpenters Mat Wouters and Hendrik Dekker are putting the finishing touches to the formwork of the entrance for the switch room of the pump room.</li>\r\n\t<li>Applying the formwork around the iron skeleton for the entrance to the switch room of the pump room requires great expertise from the carpenters. Carpenter Hendrik Dekker carries a formwork baffle to the opposite side.</li>\r\n</ol>		1951-07-20-magazine-article-article-steenkool-magazine	c	2021-06-26 10:00:00+10	1	4	2021-06-29 12:34:40.912826+10
4	Letter - Hoeks to Dekker	Letter Hoeks to Dekker	1954-04-10	<div>\r\n<p>Mijn heer</p>\r\n\r\n<p>Wij hebben u brief in de beste gezondheid ontvangen en gelezen dat u planne ook zyn on te emigrrien en datu myn adres van Meneer Kaplaan Kaps hed gekregen en graag eens had geweten hoe het heir is.</p>\r\n\r\n<p>Nu is het beter als in Holland. Maar je moet je heir aan alles dan passen het leven is heel anders als in Holland. Want het Zaterdags word hier niet gewerkt en de winkels zijn dan open tot 11 uur. Daar na ishier niet veel meer te beleven. Dat wilt zeggen je kunt de stad in gaan en alles eens bekijkenhet het is een prachtige stad. Nu en wat plezier betreft daar moet je de eerste tijd niet aan denken, want het is hard in het begin, je moet je aan alles aan passen. Dat wilt zeggen, als je in het Kamp zit, de kost is veel anders als in Holland. En je krijg in het kamp vertrekjes naar je gezin. Maar in het kamp moet je niet blijven natuurlijk uit kijken voer wat anders, dat doen ze allemaar de een zit 1 maand in het kamp, de ander 5 manden. Nu als je uit het kamp ben, dan ken je het leven zo gezelg mogelijk maken met je vrouw en kinderen. Maar zorg dan dat alleen komst in een huisje niet onet een twee de gezin! Nu best vriend ik zal het je eerlijk zeggen als je ze hier kend wenne met zi gezin dan heb je het veel beter als in Holland, en ook wat betref u ver uit zichten.</p>\r\n\r\n<p>Nu hier antwoord op u vragen&hellip;</p>\r\n\r\n<ol>\r\n\t<li>Hoe de aan kom is in Perth. Alle gezinnen worden of gehaald door een hollander, een zekere appelloo (?), hey in een jood hoor, en de breng zi met de anderen wat in Perth af gaan met auto bussen naar het kamp.</li>\r\n\t<li>En als je daar bent soek dan zo vlug mogelijk naae een woning dat i sook beter voor je vrouw</li>\r\n\t<li>Ze werk kleding wat je ook in Holland draag is hier nu ook goed, als u kuund neem een kort broekje mee, is altijd gemakkelijk</li>\r\n\t<li>Maar nu komt de winter aan en dan kan je een overal wel verdragen (?)</li>\r\n\t<li>Een fiets zo je kan hier soms nodig hebben, als een goeier heb mee hem mee ward die fietsen hier die zijn geen donder ward. Als ik u mach ? aan zaden ? doe u een versnelling er op.</li>\r\n\t<li>Zo een woning kunt u huren ook met 3 kinderen maar niet zogemakhelijk</li>\r\n\t<li>Nu voor werk hoe u niet bang te zijn , toen ik af kwan kronen ze de timmerlieden van Boord af halen ???</li>\r\n\t<li>Maar ik ben geen timmerman zoal een steward ???</li>\r\n\t<li>Je vragen van de levensstandaard zijn haast hetzelfde als in Holland, het een is ast dieunder het ander veel goed kopen</li>\r\n\t<li>Nu hoe het mij bevalt, niet slecht maar ik ben pas hier en de meste menschen die pas hier zijn neilles terug maar als je gewerd bend wilje voor geld meer wild ?????????????</li>\r\n</ol>\r\n\r\n<p>REST OF PAGE UNINTELLIGIBLE ... next page ...</p>\r\n\r\n<p>Heb maar aan geld nodig 400 pond en je bent weer in Holland. Maar je moet 2 jaar hier blijven, als je eerder terug wild dan moet je de rijs wat de Hollandse zegering je aan subsidie hieft betaald, die moet je dan terug betalen wand de Hollandse zegering die krijg vande Australie Zegering ??? 1000 pond. Dus nu weet u waarom je twee jaar moet hier blijven anders heeft de Zegering laade.</p>\r\n\r\n<p>NB: The rest of the letter is difficult to decipher - may come back to this later.</p>\r\n</div>	<div>\r\n<p>Sir</p>\r\n\r\n<p>We have received your letter in good health and have read that you are also planning to emigrate and that you have received my address from Mr. Kaplaan Kaps and would have liked to know how it is.</p>\r\n\r\n<p>Now it&#39;s better than in Holland. But you have to adapt to everything, life is very different from Holland. Because Saturdays don&#39;t work here and the stores are open until 11 am After that there is not much to do here. That means you can go into town and have a look at everything, it&#39;s a beautiful city. Now and when it comes to pleasure, you shouldn&#39;t think about it the first time, because it&#39;s hard in the beginning, you have to adapt to everything. That is, if you are in the camp, the cost is much different than in Holland. And in the camp you will get a room for your family. But you don&#39;t have to stay in the camp, of course, watch something else, they do that all the time. Now when you&#39;re out of the camp, you know how to make life as companion as possible with your wife and children. But then make sure that only coming into a house does not affect a second family! Now dear friend I will honestly tell you if you knew them here with their family then you are much better off than in Holland, and also as far as you are concerned.</p>\r\n\r\n<p>Now answer your questions here &hellip;</p>\r\n\r\n<ol>\r\n\t<li>How the arrival is in Perth. All families are met or picked up by a Dutchman, a certain apple (?), Hey in a Jew, and the ones who go to Perth camp with the others go by car buses to the camp.</li>\r\n\t<li>And if you are there, search for a home as quickly as possible and I will also look better for your wife</li>\r\n\t<li>They work clothes whatever you wear in Holland is now also good here, if you can take shorts with you, it&#39;s always easy</li>\r\n\t<li>But now the winter is coming and you can tolerate it everywhere (?)</li>\r\n\t<li>A bike so you may need it here sometimes, as a good guy have him along ward that bikes here that aren&#39;t a thunder ward. If I could make a suggestion, put gears on it.</li>\r\n\t<li>You can also rent such a house with 3 children but not easily</li>\r\n\t<li>Now for work how not to be afraid, when I finished, they take the carpenters off Board ???</li>\r\n\t<li>But I&#39;m not a carpenter like a steward ???</li>\r\n\t<li>Your questions about the standard of living are almost the same as in Holland</li>\r\n\t<li>Now how I like it, not bad but I am only here and the most people who are only here are neilles back but if you became a gang you want more money for money ????????????</li>\r\n</ol>\r\n\r\n<p>REST OF PAGE UNINTELLIGIBLE</p>\r\n\r\n<p>...... next page ...</p>\r\n\r\n<p>Need only 400 pounds of money and you&#39;re back in Holland. But you have to stay here for 2 years, if you want to go back sooner then you have to raise what the Dutch stamp will pay you in subsidy, which you then have to pay back because of the Dutch stamp that will get the Australian Stamp ?? 1000 pounds. So now you know why you have to stay here for two years, otherwise the Zegering has loading.</p>\r\n</div>	<p><small>Seems to be quite a formal letter.</small></p>	1954-04-10-letter-personal-letter-hoeks-to-dekker	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
5	Letter - Nel Dekker to Henk Dekker 2	Letter from Nel Dekker to Henk Dekker, including a transcription of a letter from Zeegers to Nel.	1954-04-30	<div>\r\n<p>Bonegilla 30 April 1954</p>\r\n\r\n<p>My dear man,</p>\r\n\r\n<p>Ik hoop dat de titel goed gevonden woord, want we moeten ons maar een beetje vereugdsen. Nu is het anders er is vanmiddag post van Kobus gekomen en de brief sluit ik hierbij in, en wat hij vraagt over de arbeidersbureau zou ik allemaal maar opgeven, je zal wel deren als dat je in Lismore al ingeschreven staat op de arbeidersbureau. Schrijf jij Kobus terug want er staat geen adres op de enveloppe, gisteren is er ook een briefkaart van Zeegers gekomen, hier volgt wat hij schrift:</p>\r\n\r\n<p>Bij deze laat ik U weten als dat we tamelijk goed terecht zijn gekomen. We zitten in het Hostel met een grote keuken, 1 groote slaapkamer met 4 (1 pers) en 1 (2 pers) bed erop, plus is er nog een slaapzal. We zitten nu alleen, een Familie vandaag naar hein huisje vertroken wat ze gekocht hebben. Er is ook nog een familie uit Holland met 3 kinderen en die is tevens hier als huisbaas. In de keuken hebben we een fornuis dat we met hout stoken en daar moeten ook andere familie koken als ze in het hostel zijn, maar die hebben dar zelf hen zittekamer. We hebben meubels maar niet nieuw - maar het gaat wel voor je te helpen. Ik ben Vrijdag al beginnen te werken, zonder gereedschap maar dat heb ik bij den aannemer gekregen, zoolang mijn gereedschap nog onderweg is. Het is ja natuurlijk wat vreemd in begin zoon huis of te timmeren, het is well anders dan in Holland met dat raamwerk allemaal van zware kiepers, maar het zal lwel gaan daar ben ik niet bang voor. Ik heb de hele dag al met een Engelse duimstok gewerkt, maar het zijn hollanders waar ik bij werk dus dat valt nog mee, die kunnen je wat helpenmet van alles, zoolang als nog niet eigen bent van de taal. Ik verdien &pound;19/15 per week en kan s&#39;Zaterdag ook werken als ik wil. Die aannemer doet niets anders als dan nieuwe huizen zetten, dus ik zit altijd buiten. Innie is ook al aan het werk van vrijdag in een kindertehuis en verdient &pound;5/- per week en ze vind het goed daar. Dus je ziet dat help alweer want het begin is moeilijk. Als je &pound;150/- kun jehier al een huis kopen en dat doen hierallemaal de emigrant hier zo wat 1000 Hollandse emigranten in Ballarat. Ik werk in Ballarat 1/4 uur met de bus rijden. Ik heb de aannemer gevraagd voorlopig voor je maar heeft geen nodig. Wele groete van ons allen en tot ziens.</p>\r\n\r\n<p>Dit is het volledige schrijven van Zeegers, zijn adres zal ik onder aan de brief setten dan kan je hem ook schrijven, ik zal hun ook antwoorden. Ik heb nog wel geen bericht van je gehad, maar die brief van Kobus vind ik belangrijk genoeg om even, wat te later kizen. Morgenochtend gaat Paultje met z&#39;n broertje en moeder ons verlaten, haar man heeft een huis en nu gaat ze weg naar 3 maander hier gewoond te hebben. Nu we missen je wel, vooral s avonds het is dan zo stil als alles slaapt, dan ga ik ook maar vroeg naar bed, want ik weet niet wat to doen alleen.</p>\r\n\r\n<p>Nu Henk ontvangt de hartelijke groetten en kusjes van Corrie, Rini, Leni, en your housewife</p>\r\n\r\n<p>O ja, de kleine jongen van van Gisbergen ligt in het hospital met bronchitus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>P. Zeegers-Timmers (?)</p>\r\n\r\n<p>&quot;Chrisholmhouse&quot;</p>\r\n\r\n<p>Victoria Street</p>\r\n\r\n<p>Creswick</p>\r\n</div>	<div>\r\n<p>Bonegilla 30 April 1954</p>\r\n\r\n<p>My dear husband,</p>\r\n\r\n<p>I hope the title is well-liked word, because we just have to rejoice a little. Now it is different there has been mail from Kobus this afternoon and I am enclosing the letter here, and I would just give up what he is asking about the workers &#39;office, you will be bothered if you are already registered at the workers&#39; office in Lismore. Do you write back Kobus because there is no address on the envelope, yesterday there was also a postcard from Zeegers, here&#39;s what he writes:</p>\r\n\r\n<p>I hereby let you know that we have ended up fairly well. We are in the Hostel with a large kitchen, 1 large bedroom with 4 (1 pers) and 1 (2 pers) bed on it, plus there is another dormitory. We are now alone, a family left today for the house that they bought. There is also a family from Holland with 3 children, who is also the landlord here. In the kitchen we have a wood burning stove and other families cook there when they are in the hostel, but they have their own sitting room. We have furniture but not new - but it&#39;s going to help you. I already started working Friday, without tools, but I can borrow them from the contractor, while my tools are still on their way. Yes it is of course a bit strange in the beginning of the son&#39;s house or carpentry, it is certainly different than in Holland with that framework all made of heavy tippers, but it will go well I am not afraid of that. I have been working with an English ruler all day, but they are Dutch people I work with, so that is not so bad, they can help you with anything, as long as you are not familiar with the language. I&#39;m earning &pound;19/6 per week and I can also work Saturdays if I want. The contractor only build new houses so I am always working outside. Innie is also working on Friday in a children&#39;s home and earns &pound; 5 / week and she thinks it&#39;s good there. So you see that help again because the beginning is difficult. If you have &pound; 150 / - you can already buy a house here and all of them here do the emigrant here some 1000 Dutch emigrants in Ballarat. I work in Ballarat, 1/4 hour by bus. I have asked the contractor for work for you but for the time being he does not need one. Best regards from all of us and see you soon.</p>\r\n\r\n<p>This is the complete letter from Zeegers, I will write his address at the bottom of the letter, then you can also write to him, I will also answer them. I have not received a message from you yet, but I think that letter from Kobus is important enough to make a little later decision. Tomorrow morning Paultje is leaving us with his brother and mother, her husband has a house and now she is leaving having lived here for 3 months. Now that we miss you, especially in the evenings, when everyone is asleep, then I go to bed early, because I don&#39;t know what to do alone.</p>\r\n\r\n<p>Now Henk receives the warm greetings and kisses from Corrie, Rini, Leni, and your housewife</p>\r\n\r\n<p>Oh yes, the little boy from van Gisbergen is in the hospital with bronchitis</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>P. Zeegers-Timmers (?)</p>\r\n\r\n<p>&quot;Chrisholmhouse&quot;</p>\r\n\r\n<p>Victoria Street</p>\r\n\r\n<p>Creswick</p>\r\n</div>	<p><small>We have a copy of the letter that Nel transcribed - <a href="http://raspi:8000/archive/letter-zeegers-nel-dekker/">Letter - Zeegers to Nel Dekker</a>.</small></p>	1954-04-30-letter-personal-letter-nel-dekker-to-henk-dekker-2	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
6	Letter - Zeegers to Nel Dekker	Letter Zeegers to Nel Dekker.	1954-09-25	<div>\r\n<p>Bonegilla 30 April 1954</p>\r\n\r\n<p>My dear man,</p>\r\n\r\n<p>Ik hoop dat de titel goed gevonden woord, want we moeten ons maar een beetje vereugdsen. Nu is het anders er is vanmiddag post van Kobus gekomen en de brief sluit ik hierbij in, en wat hij vraagt over de arbeidersbureau zou ik allemaal maar opgeven, je zal wel deren als dat je in Lismore al ingeschreven staat op de arbeidersbureau. Schrijf jij Kobus terug want er staat geen adres op de enveloppe, gisteren is er ook een briefkaart van Zeegers gekomen, hier volgt wat hij schrift:</p>\r\n\r\n<p>Bij deze laat ik U weten als dat we tamelijk goed terecht zijn gekomen. We zitten in het Hostel met een grote keuken, 1 groote slaapkamer met 4 (1 pers) en 1 (2 pers) bed erop, plus is er nog een slaapzal. We zitten nu alleen, een Familie vandaag naar hein huisje vertroken wat ze gekocht hebben. Er is ook nog een familie uit Holland met 3 kinderen en die is tevens hier als huisbaas. In de keuken hebben we een fornuis dat we met hout stoken en daar moeten ook andere familie koken als ze in het hostel zijn, maar die hebben dar zelf hen zittekamer. We hebben meubels maar niet nieuw - maar het gaat wel voor je te helpen. Ik ben Vrijdag al beginnen te werken, zonder gereedschap maar dat heb ik bij den aannemer gekregen, zoolang mijn gereedschap nog onderweg is. Het is ja natuurlijk wat vreemd in begin zoon huis of te timmeren, het is well anders dan in Holland met dat raamwerk allemaal van zware kiepers, maar het zal lwel gaan daar ben ik niet bang voor. Ik heb de hele dag al met een Engelse duimstok gewerkt, maar het zijn hollanders waar ik bij werk dus dat valt nog mee, die kunnen je wat helpenmet van alles, zoolang als nog niet eigen bent van de taal. Ik verdien &pound;19/15 per week en kan s&#39;Zaterdag ook werken als ik wil. Die aannemer doet niets anders als dan nieuwe huizen zetten, dus ik zit altijd buiten. Innie is ook al aan het werk van vrijdag in een kindertehuis en verdient &pound;5/- per week en ze vind het goed daar. Dus je ziet dat help alweer want het begin is moeilijk. Als je &pound;150/- kun jehier al een huis kopen en dat doen hierallemaal de emigrant hier zo wat 1000 Hollandse emigranten in Ballarat. Ik werk in Ballarat 1/4 uur met de bus rijden. Ik heb de aannemer gevraagd voorlopig voor je maar heeft geen nodig. Wele groete van ons allen en tot ziens.</p>\r\n\r\n<p>Dit is het volledige schrijven van Zeegers, zijn adres zal ik onder aan de brief setten dan kan je hem ook schrijven, ik zal hun ook antwoorden. Ik heb nog wel geen bericht van je gehad, maar die brief van Kobus vind ik belangrijk genoeg om even, wat te later kizen. Morgenochtend gaat Paultje met z&#39;n broertje en moeder ons verlaten, haar man heeft een huis en nu gaat ze weg naar 3 maander hier gewoond te hebben. Nu we missen je wel, vooral s avonds het is dan zo stil als alles slaapt, dan ga ik ook maar vroeg naar bed, want ik weet niet wat to doen alleen.</p>\r\n\r\n<p>Nu Henk ontvangt de hartelijke groetten en kusjes van Corrie, Rini, Leni, en your housewife</p>\r\n\r\n<p>O ja, de kleine jongen van van Gisbergen ligt in het hospital met bronchitus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>P. Zeegers-Timmers (?)</p>\r\n\r\n<p>&quot;Chrisholmhouse&quot;</p>\r\n\r\n<p>Victoria Street</p>\r\n\r\n<p>Creswick</p>\r\n</div>	<div>\r\n<p>Bonegilla 30 April 1954</p>\r\n\r\n<p>My dear husband,</p>\r\n\r\n<p>I hope the title is well-liked word, because we just have to rejoice a little. Now it is different there has been mail from Kobus this afternoon and I am enclosing the letter here, and I would just give up what he is asking about the workers &#39;office, you will be bothered if you are already registered at the workers&#39; office in Lismore. Do you write back Kobus because there is no address on the envelope, yesterday there was also a postcard from Zeegers, here&#39;s what he writes:</p>\r\n\r\n<p>I hereby let you know that we have ended up fairly well. We are in the Hostel with a large kitchen, 1 large bedroom with 4 (1 pers) and 1 (2 pers) bed on it, plus there is another dormitory. We are now alone, a family left today for the house that they bought. There is also a family from Holland with 3 children, who is also the landlord here. In the kitchen we have a wood burning stove and other families cook there when they are in the hostel, but they have their own sitting room. We have furniture but not new - but it&#39;s going to help you. I already started working Friday, without tools, but I can borrow them from the contractor, while my tools are still on their way. Yes it is of course a bit strange in the beginning of the son&#39;s house or carpentry, it is certainly different than in Holland with that framework all made of heavy tippers, but it will go well I am not afraid of that. I have been working with an English ruler all day, but they are Dutch people I work with, so that is not so bad, they can help you with anything, as long as you are not familiar with the language. I&#39;m earning &pound;19/6 per week and I can also work Saturdays if I want. The contractor only build new houses so I am always working outside. Innie is also working on Friday in a children&#39;s home and earns &pound; 5 / week and she thinks it&#39;s good there. So you see that help again because the beginning is difficult. If you have &pound; 150 / - you can already buy a house here and all of them here do the emigrant here some 1000 Dutch emigrants in Ballarat. I work in Ballarat, 1/4 hour by bus. I have asked the contractor for work for you but for the time being he does not need one. Best regards from all of us and see you soon.</p>\r\n\r\n<p>This is the complete letter from Zeegers, I will write his address at the bottom of the letter, then you can also write to him, I will also answer them. I have not received a message from you yet, but I think that letter from Kobus is important enough to make a little later decision. Tomorrow morning Paultje is leaving us with his brother and mother, her husband has a house and now she is leaving having lived here for 3 months. Now that we miss you, especially in the evenings, when everyone is asleep, then I go to bed early, because I don&#39;t know what to do alone.</p>\r\n\r\n<p>Now Henk receives the warm greetings and kisses from Corrie, Rini, Leni, and your housewife</p>\r\n\r\n<p>Oh yes, the little boy from van Gisbergen is in the hospital with bronchitis</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>P. Zeegers-Timmers (?)</p>\r\n\r\n<p>&quot;Chrisholmhouse&quot;</p>\r\n\r\n<p>Victoria Street</p>\r\n\r\n<p>Creswick</p>\r\n</div>	<p><small>Letter transcribed in Nel to Henk Dekker letter - <a href="http://raspi:8000/archive/letter-nel-dekker-henk-dekker-2/">Letter - Nel Dekker to Henk Dekker 2</a></small></p>	1954-09-25-letter-personal-letter-zeegers-to-nel-dekker	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
7	Letter - Hoeks to Dekker 2	Letter - Hoeks in WA to Dekker in Geleen.	1954-05-01	<p>Kalamunda 1 mei 1954</p>\r\n\r\n<p>Beste menschen</p>\r\n\r\n<p>Hier dan antwoord op uw brief van 8 April. Nu wij hebben hem in de beste staat van gezond hier ontvangen en lezen dat jullie al goed begid op te schielen(?).</p>	<div>\r\n<p>Kalamunda 1 mei 1954</p>\r\n\r\n<p>Dear people</p>\r\n\r\n<p>Then answer your letter of 8 April here. Now we have received it in the best state of health here and read that you are already well prepared to stand up (?).</p>\r\n</div>	<p><small>DIFFICULT TO MAKE OUT THE SCRIPT!!!</small></p>	1954-05-01-letter-personal-letter-hoeks-to-dekker-2	n	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
8	Letter - van Buren to Dekker	Letter from Jan Arie van Buren, Schoonhoven to H Dekker & family "...on the Waterman".	1954-09-01	<p>Schoonhoven, 1 Sep 1954</p>\r\n\r\n<p>Zuster en Zwager</p>\r\n\r\n<p>Naar ik uit je brief heb vernomen is het nogal warm op de boot. Wij groeten jullie ook van Vader en hopen dat jullie nog alle gezond zijn.</p>\r\n\r\n<p>Het is met Vader hopeloos mis. Gisteren 31 Augustus s avonds om10 huur heb ik Vader met de ziekenauto naar het ziekenhuis gebracht en daar ligt hij nu weer op zaal 4. Ik heb ook dokter Geelkerken gesproken en die vertelde me dat Vader een zeer zware operatiezal moeten ondergaan wil hij weer eenigrius er boven op komen. De laatste dagen deed hij niet anders dan bloed wateren en nu heb ik de dokter eens afgevraagd waar dat van dan kwam en hij vertelde dat de binnen kant van de blaas zat vol met wratjes en toen vroeg ik hem of dat de bloeding veroorraakte waarop hij antwoorde dat dat inderdaad zoo was, en dat het zlat begin van kanker was en daarom moet de gehele blaas eruit en vanaf de nieren zullen ze dan het water door de darmen afvoeren met andere woorden. Vader wordt niks meer ik heb zo de verwachting dat het hoogstens nog een jaar kan duren. Tot zover het nieuws over Vader. Ik ben vandaag bij hem op bezoek geweest hij voelt zich erg goed en zo is het mischien goed hij weet er zelf niks van. Hiermee zal ik eindigen.</p>\r\n\r\n<p>Wij zijn allen gezond en we hopen van jullie het zelfde. De school is hier weer begonnen daar heben Leni en Rini nu een jopje(?) aan en Corrie. Het zal wel druk zijn op de boot. Nu veel groeten van ond allen. De jongens van Nelly en Leny aan Leny en Riny en u het bijsonder aan Corrie van Zygen en Arie.</p>	<div>\r\n<p>Schoonhoven, 1 Sep 1954</p>\r\n\r\n<p>Sister and brother-in-law</p>\r\n\r\n<p>As I learned from your letter, it is rather hot on the boat. We also send Father&#39;s greetings and hope you are all well.</p>\r\n\r\n<p>It is hopelessly wrong with Father. Yesterday, 31 August at 10 a.m. rent, I took Dad with the ambulance to the hospital and he is now back in room 4. I also spoke to doctor Geelkerken and he told me that Father will have to undergo a very serious operation if he wants to get back on his feet. The last few days he did nothing but blood waters and now I asked the doctor where that came from and he told me that the inside of the bladder was full of warts and then I asked him if the bleeding was causing him to answer that that was indeed the case, and that it was just the beginning of cancer, and that is why the entire bladder must be removed, and from the kidneys they will then drain the water through the intestines, in other words. Father is not going to be anything anymore I have the expectation that it can take another year at most. So much for the news about Father. I visited him today, he feels very good and it may be that way he knows nothing about it himself. I will end with this.</p>\r\n\r\n<p>We are all healthy and we hope the same of you. The school started here again, Leni and Rini are now wearing jokes (?) And Corrie. It will be busy on the boat. Now many greetings from all of us. The guys from Nelly and Leny to Leny and Riny and you especially Corrie van Zygen and Arie.</p>\r\n</div>		1954-09-01-letter-personal-letter-van-buren-to-dekker	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
9	Letter - de Rooy to Dekker - 2	Letter - de Rooy in Lismore to Henk & Nel Dekker.	1954-09-28	<div>\r\n<p>Lismore 28-9-1954<br />\r\nBeste Nel, Hendrik en kind</p>\r\n\r\n<p>Even een krabbeltje of een blad uit een schrift want mijn blocknote is op. Roos is zojuist thuisgekomen met het bericht dat er werk for je is in Lismore. Ze hebben het arbeidsbureau in Bonegilla camp een telegram gestuurd. Ik hoop als je it aanneemt dat je ze zolang in onze villa wilt behelpen. Als je maar eenmaal hier bent dan zien we wel weer. Ik hoop dat je niet van ons huis schrikt af jullie komen zo vers uit Holland. Wij zijn wat gerwend. Ik hoop toch zo dat dit door gant. Schrijf je ons direct als het doorgaat en wanneer jullie komen dan kan ik er oprekenen. Wij hebben een kamer die we niet gebruiken en een balcon waar we sleep - out van kunnen maker. Ik zou daar dan mijn 2 oudster op later slapen en dan heb ik 2 vertrikten voor jullie vrij om te slapen.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>UNFINISHED</p>\r\n</div>	<div>\r\n<p>Lismore 28-9-1954<br />\r\nDear Nel, Hendrik and child</p>\r\n\r\n<p>Just a scribble or a sheet from a notebook because my blocknote is finished. Roos has just come home with the message that there is work for you in Lismore. They sent a telegram to the employment office at the Bonegilla camp .I hope if you accept it that you want to help them in our villa for so long. Once you get here, we&#39;ll see again. I hope you don&#39;t get scared of our house. You are so fresh from Holland. We are somewhat used to it. I hope that this will go through. If you continue to write to us immediately, I can count on it when you come. We have a room that we do not use and a balcony where to sleep out. I would sleep on that later on with my 2 parent and then I have 2 rooms free for you to sleep.</p>\r\n</div>	<div>\r\n<p><small>2 letters - one from mum to dad (3-10-1954), one from people in Lismore to Mum (28-9-1954)</small></p>\r\n\r\n<p><small>Check whether one letter refers to the other. Can we separate them?</small></p>\r\n\r\n<p><small>Also, the Mum-Dad letter needs to be scanned.</small></p>\r\n</div>	1954-09-28-letter-personal-letter-de-rooy-to-dekker-2	n	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
10	Letter - van de Brink to Dekker 2	Letter from M v d Brink to Mr Dekker	1954-09-29	<p>Beste Henk Nel en Kinderen</p>\r\n\r\n<p>Wij hebben maandag u brief ontvangen en gezien dat jullie het goed maken. Nu hier is alles gelukkig ook goed alle gezond alleen het weer dat is treurig. Alle dag regen en op het ogenblik een flinke hagelbui voor af wisseling. Ik heb het huis helemaal geschilderd alleen het hekje om het platte dak staat nog in de grondverf maar ik krijg geenkans om het af to maken. Je word er ziek van Moeder is ook al een tijdje zoo hangerig lustloos ze is niet ziek en toch mankeert er wat aan. Jullie maken anders van alles mee zoo nu in het kamp dat is echt soldaten leven eij moester vroegen ook met het ketelje naar de keuken en daar krug je het val geschelt en dan een kuch en klaar voor den heele dag. Maar dat is maar tijdelijk en als jullie op je eigen zit woordt dat wel beter het is te hoopen dat dat niet lang duurt. Je schrijft van Kobus de Rooij woont die ver van jullie van daan je bent toch nu niet waar je heen zou gaan of heb ik dat mis het zijn al zoo&#39;n vreemde namen. Je brieven worden hier verslonder Joep en Marie en Arie en Sef hier boven alle hebben ze gelezen. Maar je moet niet zo heel klein schrijven Moeder had er heefd je ijn van dat lezen bij de lamp hij kwam s&#39;avonds ik zeg wacht tot morgen maar dat ging niet. Er is anders veel belangstelling voor de Waterman geweest dat is me zoo moois op gevallen de groette in de krant en in de Libille staat een stuk je ik denkdat het op jullie gemunt is ik zal het woordelijks over schrijven versetten.</p>\r\n\r\n<p>De dokter heeft het ook gezegd, niet aan denken, bitste een moeder tegen haar dochtertje dat was bleek tegen de metaler wand in de gang leunde. Je moet eens terugschrijven of dat niet zo is. En dan wat over die 32 van de staats mijnen dat ging zoi maar niet eerst is moeder met dat formulier en haar spaan boekje naar het post kantoor geweest of dat zoo goed was en toets op gestuurd en een poos later kwam een postbode het exstra brengen het was zoo niet goed ze moester jouw boekje hebben ik zeg die is noeg geimigreert loen nam hij die machteging wel mee roij zouder wel meer van hoor maar er kwam niets toen een tijd later is moeder naar het postkantoor gegaan hoe af dat was. En daar zeiden ze dat ze bericht gestuurd hadden en bij onderzoek hadden ze datnaar Geleen gestuurd en nu verleden week is Arie met de motor gaan kijken en die heef het mee gebracht.</p>\r\n\r\n<p>Dus nu over 2 jaar komt het los wat een gekke werk menselen die na dat feestgepensineerd. Zij hebben ze het uitbetaald waarom jou in dit geval ook niet.</p>\r\n\r\n<p>Nu menselen moet ik eindigen nog wat de oude Smits man is dood. Verders de hartelijke groette van all Moder en Tinus.</p>	<div>\r\n<p>Dear Henk Nel and Kinderen</p>\r\n\r\n<p>We received your letter on Monday and saw that you were well. Now here everything is fortunately also good all healthy only the weather that is sad. Rain all day and at the moment a big hail shower for a change. I painted the house completely, only the fence around the flat roof is still primed, but I don&#39;t get a chance to finish it. You get sick from it. Mother has been so lame for a while, she is not sick, and yet something is wrong with it. You will experience everything else so now in the camp that is really soldiers live and you had to ask the kettle to go to the kitchen and there you scold the fall and then a cough and ready for the whole day. But that is only temporary and if you sit on your own words it is better to hope that it does not last long. You write from Kobus de Rooij who lives far away from you, you are not where you are going now, or am I mistaken that such strange names are already. Your letters are devoured here Joep and Marie and Arie and Sef here above all they have read. But you must not write so very little Mother had you read that reading by the lamp he came in the evening I say wait until tomorrow but that did not work. Otherwise there has been a lot of interest in the Waterman that has caught my eye in the newspaper and there is a piece in the Libille that I think you are after.</p>\r\n\r\n<p>The doctor said it too, don&#39;t think about it, a mother smashed at her daughter who was pale leaned against the metal wall in the corridor. You must write back if that is not the case. And then what about those 32 of the state mines that went like this, but not first did mother go to the post office with that form and her chip book or that was so good and sent a key, and a while later a postman came to bring it up was so not good she must have had your book I say that has been emigrated loen he did take that empowerment rowing would be more of it but nothing came when a while later mother went to the post office how finished that was. And there they said they had sent a message and on investigation they had sent that to Geleen and now Arie went to look with the motorcycle last week and he brought it with him.</p>\r\n\r\n<p>So now in 2 years it will come loose what a crazy work people who retired after that party. They paid them why not you in this case either.</p>\r\n\r\n<p>Now people, I have to finish what the old Smit&#39;s man is dead. Verders the cordial greetings from all Moder and Tinus.</p>\r\n</div>	<p><small>Letter damaged and date is missing. But date on postmark appears to be: 29 IX 54 - interpret that to be 29 Sep 1954.</small></p>	1954-09-29-letter-personal-letter-van-de-brink-to-dekker-2	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
12	Letter - van Eijs to Dekker 2	Letter van Eijs family to Dekker family.	1954-10-02	<p>2-10-54</p>\r\n\r\n<p>Beste Familie</p>\r\n\r\n<p>Wij hebben u brief ontvangen en gezien dat u goed bent aangekomen in goede gezondheid wat ons plezier had. Wij hebben een dade brief gekregen van Oppoe van Mijn heer Dekker en ook de kaart van die 32 gulden van de mijn Ome Arie heeft beden mee genomen naar Moder in Heerlen. Het is hier al flink koud wij hebben nog niks als regen en hagel gehad. Onze nieuwe buurman zijn 2 oude mensen en een zoon van 30 jaar de vrouw hebben wij niet gezien of het een dikke of een dunnen is. De 29-9-54 is op de Cauberg in Valkenburg een bus ongeluk gebeurd daar bij zijn 19 mensen gedood. De meid van Kerkhofs die naar Canada was komt al terug zij hadden al 5000 guilden verdiend wie heb geloopt maar wij niet.(???)</p>	<div>\r\n<p>2-10-54</p>\r\n\r\n<p>Dear Family</p>\r\n\r\n<p>We have received your letter and have seen that you have arrived in good health, which we enjoyed. We have received a letter from Oppoe from My lord Dekker and also the card of those 32 guilders from the mine Uncle Arie has taken beda to Moder in Heerlen. It is already quite cold here, we have not had anything like rain and hail. Our new neighbors are 2 old people and a son of 30 years - the woman, we have not seen whether she is a fat or a thin one. On the 29-9-54 there was a bus accident on the Cauberg in Valkenburg where 19 people were killed. The Kerkhofs girl who came to Canada is already coming back. They already had 5000 guilders who have walked but we have not. (???)</p>\r\n</div>		1954-10-02-letter-personal-letter-van-eijs-to-dekker-2	p	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
13	Letter - Henk Dekker to Nel Dekker	Letter from Henk Dekker in Gundagai to Nel Dekker in Bonegilla.	1954-10-02	<div>\r\n<p>Gundagai 2 Oct &#39;54<br />\r\nBeste mama, Leny, Riny en Cor</p>\r\n\r\n<p>Het is nu Zaterdag middag en ik heb je brief vanmiddag ontvangen. Zoals ik er uit lees, is het bij jullie erg stil &#39;s avonds, nu hier is ook niet veel te beleven. Maar ja, we moeten ons er maar aan wennen en als jullie hier eenmaal zijn, dan zullen we het best welwier gezellig krijgen.</p>\r\n\r\n<p>Je zult intressen mijn briefkaart wel ontvangen hebben. Het gaat hier anders niet zo vlug met de post. Ik ben vandaag vrij en nu heb ik vanmiddag maar se corrospondentie af gemaakt. Zo heb ik dan naar Zeegers en naar Kobus terug geschreven hoeof het met ons staat. Maar de brieven geen niet eerder weg dan Dinsdag om dat het Maandag hier een soort feestdag is.</p>\r\n\r\n<p>En nu zal ik nog eens wat schrijven over het plaatsje. Het bestaat uit twee gedeelten - Noord en Zuid Gundagai. Het is gescheiden door een lange brug die over een rivier loopt. Als het hoog water is, dan is het land dat naar de rivier ligt ook onder geloopen. De winkels zijn meestal in Noord Gundagai, dat is hier zo ongevier twintig minuten lopen, zo dat de fiets hier wel van pas komt.</p>\r\n\r\n<p>Het huisje waar we in komen te wonen is een noodwoningkje, maar het zal je nog wel meevallen want er is waterleiding binnen en ook elec. licht, en dat wil al heel wat zeggen hier, want ik zit hier bij de mensen &#39;s avonds nog bij een petroleum lamp, om dat het huis van de baas nog niet klaar is en we zo lang in een garage wonen.</p>\r\n\r\n<p>De school is hier vlakbij zo dat nog wel mee valt. Ons nieuwe home ligt langs de hoofdweg waar ik met de bus langs ben gekomen, maar het ligt er wel een zindje terug, zo dat naar verloop van tijd er een divinitief huis voor kan woorden gebouwd. Ik heb de goede kleren uit de koffer gehaald en zo goed mogelijk op de hangertjes gehangen. Het huisje heeft 6 kamertjes waarvan wij er dan 3 krijgen en het span dat nog moet trouwen de andere drie.</p>\r\n\r\n<p>De baas en zijn vrouw zijn Donderdag naar Sydney gegaan naar hun dochter en die komen Zondag weer terug en dan zoude de dochter ook mee uit het ziekenhuis komen, je weet wel die van dat ongeluk. Zodoende zal er dus dan gauw bruiloft hier wezen.</p>\r\n\r\n<p>De baas heeft me Vrijdag alvast 6 pond gegeven, want ik heb hem gesegd dat hij ook het kostgeld maar moet verseken. Nu heb ik Dinsdag bij mijn vertrek een briefje gekregen war op staat wat ik aan loon krijg. Ik verdien &pound;16/18/6 per week en daar gaat 15/3 belasting af en voor de huur nog &pound;1 pond. Zodat ik dan &pound;15/3/3 per week schoon geld overhoud dit is dan als we hier wonen. Voor levensmiddelen heeft men zo ongeveer 8-9 pond per week nodig, zodat we dus misschien nog wel wat zoden kunnen sparen.</p>\r\n\r\n<p>Nu heb ik een brief gehad van het kamp Bonegilla, dat ik van af 4 Sept 54 af in het kampben en datik voor 3 Oct &pound;21/4/6 moet betalen. Dat is vast niet in orde, want we zijn pas de 14 Sept in het kamp aangekomen en ik ben pas 29 Sept gaan werken. Ik zal het papier mee sturen en dan moet je er maar eens met juffr Huisin ga over spreken, die zal het wel opknappen, maar dan moet je er voor de middag naartoe gaan, want na de middag is ze meestal niet op haar kantoor.</p>\r\n\r\n<p>Nu beste schat ik hoop maar dat de kisten gauw annkomen en dat we weer gauw bij elkaar zijn en dan zal het best loslopen. We zullen nog aan heel wat dingen moeten wennen, maar ja we zullen maar hopen dat het lukken zal. Het werk zal wel loslopen, het huisje bouwen komt hier niet zo nauw. Ik zal nog een klein platte grondje van de ligging van de kammertjes van het huisje er bij doen zo dat je een beetje kunt voorstellen waar of je in terecht komt. En nu zal ik dan maar zo stilletje aan ophouden.</p>\r\n\r\n<p>Hoe is het met Corrie? Mist hij me niet, en met Leny en Riny? Luisteren ze nogal, en helpen ze je nogal mee? Ik hoop maar dat ze braaf zijn en dan komt alles voor elkaar. Is het bij jullie ook elke dag zo mooi weer, nu hier is het al lekker warm.</p>\r\n\r\n<p>En nu is het papier vol. Ontvang jullie allemaal de groeten een paar lekker pakkerdjes van je man en vader.</p>\r\n\r\n<p>Daag</p>\r\n</div>	<div>\r\n<p>Gundagai 2 Oct &#39;54<br />\r\nDear mama, Leny, Riny and Cor</p>\r\n\r\n<p>It is now Saturday afternoon and I have received your letter this afternoon. As I read from it, it is very quiet at night with you, now there is not much going on here either. But yes, we just have to get used to it and once you get here, we will get the best of it.</p>\r\n\r\n<p>You will probably have received my postcard. Otherwise things don&#39;t go that fast by mail. I am free today and this afternoon I only finished correspondence. So I wrote back to Zeegers and to Kobus how we are doing. But the letters do not go away until Tuesday because Monday is a kind of holiday here.</p>\r\n\r\n<p>And now I will write something about the town. It consists of two parts - North and South Gundagai, separated by a long bridge that runs over a river. If it is high water, land the river is also flooded. The shops are mostly in North Gundagai, which is about twenty minutes walk, so the bicycle will come in handy here.</p>\r\n\r\n<p>The house where we come to live in is a temporary home, but it will not be too bad because there is running water and also elec. light, and that means a lot here, because I sit here with the people in the evening by a petroleum lamp, because the boss&#39;s house is not ready yet and we are for the time being living in a garage.</p>\r\n\r\n<p>The school is close by so that it is not too bad. Our new home is along the main road that I came by bus, but it is a bit back, so that in due course a divinitive house can be built for it. I removed the good clothes from the suitcase and hung them on the hangers as well as possible. The cottage has 6 rooms of which we get 3 and the couple that still has to marry get the other three.</p>\r\n\r\n<p>The boss and his wife went to Sydney on Thursday to their daughter and they are coming back Sunday and the daughter would also come from the hospital, you know the one from that accident. So there will soon be a wedding here.</p>\r\n\r\n<p>The boss has already given me 6 pounds on Friday, because I told him that he should also recoup the board money. Now on Tuesday I have received a letter on my departure stating what I get as a salary. I earn &pound; 16/18/6 a week and 15/3 tax goes off there and &pound; 1 for the rent. So that I have &pound; 15/3/3 per week of clear, this is when we live here. For food, you need around 8-9 pounds a week, so that maybe we can save some money.</p>\r\n\r\n<p>Now I have received a letter from the Bonegilla camp, that I have to pay from 4 Sept 54 in camp and that I have to pay &pound; 21/4/6 for 3 Oct. That is probably not in order, because we have only arrived in the camp on Sept. 14 and I have only started working on Sept. 29. I will send the paper with you and then you should talk to Miss Huisin about it, she will fix it, but then you must go there before noon, because she is usually not in her office after noon.</p>\r\n\r\n<p>Now dear darling I hope that the boxes will arrive soon and that we will be together again soon and then it will be quite loose. We will still have to get used to a lot of things, but yes we will hope that it will work. The work will come loose, building the house is not that narrow here. I will add a small flat ground to the location of the little rooms of the house so that you can imagine a little bit about where you end up. And now I&#39;ll just stop quietly.</p>\r\n\r\n<p>How&#39;s Corrie? Doesn&#39;t he miss me, and with Leny and Riny? Do they listen a lot, and do they help you a lot? I just hope they are good and then everything will be done. Is it so nice weather with you every day, now it is nice and warm here.</p>\r\n\r\n<p>And now the paper is full. Receive greetings to all of you from your husband and father.</p>\r\n\r\n<p>Bye</p>\r\n</div>	<p><small><a href="http://raspi:8000/documents/1/IMG_20190627_0001.pdf">Letter from Commonwealth Immigration Office.</a></small></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><small>Text of the leter from the Commonwealth Department of Immigration, referred to in the letter...</small></p>\r\n\r\n<p><small>In your reply please quote: D.54.</small></p>\r\n\r\n<p><small>COMMONWEALTH OF AUATRALIA</small></p>\r\n\r\n<p><small>COMMONWEALTH DEPARTMENT OF IMMIGRATION<br />\r\nReception &amp; Trainig Centre<br />\r\nBONEGILLA. VICTORIA</small></p>\r\n\r\n<p><small>29th. Sptember, 1954.</small></p>\r\n\r\n<p><small>Mr. Hendrik, DEKKER,<br />\r\nc/o Mr. K. Tilburg,<br />\r\nLuke Street, SOUTH GUNDAGAI...N.S.W.</small></p>\r\n\r\n<p><small>Dear Sir,</small></p>\r\n\r\n<p><small>You are no doubt aware that from the date you commenced employment (4 /9 /1954), accomodation charges were raised against your dependents in this Centre.</small></p>\r\n\r\n<p><small>The amount of &pound; 21.4.6 is due up to 3/10/54, and this will continue to rise at the rate of &pound; 4.19.- per week thereafter.</small></p>\r\n\r\n<p><small>Regular payments must be made at least fortnightly, either by remitting the amount due to Collector of Public Moneys, C.I.C., Bonegilla, or by forwarding same to your depenants, who may pay personally at this office.</small></p>\r\n\r\n<p><small>Should payments not be forthcoming, this office will then have no option than to request your employers to deduct the amount from your earnings.</small></p>\r\n\r\n<p><small>Yours faithfully,</small></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><small>V.G. Awburn</small></p>\r\n\r\n<p><small>Collector of Public Moneys</small></p>	1954-10-02-letter-personal-letter-henk-dekker-to-nel-dekker	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
19	Letter - van Buren to Dekker 2	Letter - van Buren to Dekker 2	1954-12-17	<div>\r\n<p>Schoonhoven 17 Dec 1954</p>\r\n\r\n<p>Zuster en Zwager</p>\r\n\r\n<p>Vader heeft jullie brief ontvangen en vernomen hebben de dat het bij jullie goed gaat. Wij zijn blij dat jullie nu werk en een huis hebben en nogal gauw. Meestal duurt het veel langer een men werk heeft in je vak. En dat Leni en Rini naar school gaan is nog beter. Hoewel het Engels zal wel niet meevallen de eerste tijd.</p>\r\n\r\n<p>Hier gaat het ook goed. Wij zijn allen nog gezond en hopen van jullie het zelfde. Vader is geopereerd en ook al weer uit het ziekenhuis. Ze hebben een steen uit zijn blaas gehaald. Hij is nu bij ons. Hij is nu bij ons. Maandag 5 November is hij al drie weken thuis. En het gaat brij goed ja zelfs heel goed als je het bekijkt toen hij er daar toe ging of nu dan is hij heel wat opgeknapt. Arie is in de tijd om precies te zijn 20 October ge trouwd waar schijnlijk zul je wel en kaart van hun hebben ontvangen. Dus een is er al de deur uit. En als het goed gaat dan staan we over 8 of 10 jaar weer samen; zijn ze allen uitgevlogen je zou ook kunnen zegge de geschied de nog het haalt zich.??? Voor de rest is het hier nog niet verandert. En dat jullie nu tiuinieren dat had je zeker niet gedacht maar jullie hebt het voor jaar mee zoodat je nog een volle oogst kan hebben. En het verkopen van het brood kruidenierswaren en groenten zal wel anders georganizeerd weren dan hier zoo dat als je dan een stuk grond heb waar je zelf alles kan verbouwen dab kan je het eerst eens af kijken hoe het daar gaat.</p>\r\n\r\n<p>Ik eindigt. Arie Zijge en Kinderen.</p>\r\n</div>	<div>\r\n<p>Schoonhoven 17 Dec 1954</p>\r\n\r\n<p>Sister and Brother-in-law</p>\r\n\r\n<p>Father has received your letter and learned that it is going well with you. We are happy that you now have work and a house so soon. It usually takes much longer to get work in your profession. And that Leni and Rini go to school is even better. Although English will not be easy the first time.</p>\r\n\r\n<p>It is also going well here. We are all still healthy and hope the same of you. Father had an operation and again from the hospital. They have taken a stone from his bladder. He&#39;s with us now. Monday November 5th he has been home for three weeks. And it is going very well yes even very well if you look at it when he went there or now he has recovered a lot. Arie is in time to be exact, October 20 married where you probably will have received a card from them. So one is already out the door. And if all goes well, we will be together again in 8 or 10 years; have they all flown out you could also say the happened it still makes it. ??? For the rest it has not changed yet. And you certainly didn&#39;t think that you are gardening now, but you have it for years so that you can still have a full harvest. And selling bread, groceries and vegetables will be organized differently than here so that if you then have a piece of land where you can grow everything yourself, you can first see how things are going there.</p>\r\n\r\n<p>I finish. Arie Zijge and Children.</p>\r\n</div>		1954-12-17-letter-personal-letter-van-buren-to-dekker-2	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
14	Letter - Nel Dekker to Henk Dekker	Letter - Nel Dekker to Henk Dekker.	1954-10-03	<div>\r\n<p>Bonegilla 3 Oct 1954</p>\r\n\r\n<p>My dear man</p>\r\n\r\n<p>Laat ik je eerst een hartelijk danken voor je briefkaart, ik had hem Saterdag morgen on 12 uur pas. Als je deze brief krijgt, heb je de eerste met een brief van Kobus er in wel gehad, en zo als je niet ishier ook weer een brief van Kobus bij ingesloten. Ik vind het fijn voor je dat je bij aardige lui terecht ben gekomen en dathet werk best meevalt, hoewal il van een dag werken nog niet veel kan reggen. Maar wanneer je de brief van Kobus gelezen hebt, zal je wel gaan ... ... wat to doen, hij doet erg zijn best om je bij hem in Lismore to zien komen werken. Maar ja, we kan zomaar niet na een week werken weer weg gaan, hoe wel mij het best sou bevallen om een beetje bij familie to wonen. Hier is het eenzaam, wij blijven Dinsdag nog maar ... drie familie&#39;s over, maar van et een en wel Gisbergen ook deze week weg gaat naar Ballarat, dan blijven er nog oon fam de Range. Ik hoop dat ik ook eind van de week weg kan gaan, waneer de kisten er zijn stuur dan een telegrammetje, want een brief of briefkaart is 3 dagen onderweg. Zeg Henk, je zal nu wel beter eten krijgen als hier, het is gewoon hoploos un Cor eet zo weinig dat ik hem sheeds maar weer een bordje pap laat eten anders kryijgt hij niets naar binnen. Ik zal Kobus ook maar schrijven ... briefje ... tellen hoe het er bij staat, dan zal hij het volgende bericht van hem wel krijgen. Wij zijn vanmiddag nog eens naar het weir wezen wandelen, en hebben wel een ... weg gevonden en we kwamen aan de anderer kant van het weir uit. Er waren veel mensen, want het is prachtig weer, en ook waren er veel aan het zwemman, wij hadden niets mie genomen, does hebben we maar een beetje zitten kijken. In de zon blijven we al niet meer zitten, dat is te warem, we zoeken zoveel mogelijk de schaduw op. Ik benieuwd of je het niet te warm gehad heeft met de nieuwe overall aan want dat zijn wel dikke. Corrie heeft vandaag dikwijls naar je gevraagd of gezegde, ... gaan we naar Pappa toe, of wanneer hij ... aan zag komen daar komt pappa aan, maar verder gaat het goed. Nu ik eindig maar met de hartelijke groeten en kusjes van</p>\r\n\r\n<p>Corrie, Rini, Leni, en Nel</p>\r\n</div>	<div>\r\n<p>Bonegilla 3 Oct 1954</p>\r\n\r\n<p>My dear husband</p>\r\n\r\n<p>Let me first thank you very much for your postcard, I got it Saturday morning at noon. If you receive this letter, you may have received the first with letter from Kobus, and if you I have included a letter from Kobus. I think it&#39;s nice for you that you have ended up with nice people and that the work is not too bad, and that a day&#39;s work is still not a big deal. But when you&#39;ve read Kobus&#39;s letter, you&#39;ll probably ... ... do something [wonder what to do], he does his very best to see you come to work with him in Lismore. But yes, we can&#39;t just leave after a week of work, but I like the best thing about living with family. Here it is lonely, we will only have three families left on Tuesday, but from one and the other Gisbergen this week will also leave for Ballarat, then there will remain fam the Range. I hope I can also leave at the end of the week, when the crates are there, send a telegram, because a letter or postcard is takes 3 days. Say Henk, you will now get better food than here, it is just hopeless and Cor eats so little that I let him eat a plate of porridge otherwise he won&#39;t eat anything. I will also write to Kobus ... note ... counting how it looks, then he will get the following message from him. We went to the weir again this afternoon, and we did find a way and we came out on the other side of the weir. There were a lot of people, because the weather is beautiful, and there were also a lot of swimmers, we hadn&#39;t taken anything, so we just sat and watched. We are no longer sitting in the sun, that is too hot, we seek the shade as much as possible. I wonder if you have not been too hot with the new overall on because they are thick. Corrie has often asked for you today or said, when are we going to Dad, or when is Dad coming, but everything goes well. Now I end with the warm greetings and kisses from</p>\r\n\r\n<p>Corrie, Rini, Leni, en Nel</p>\r\n</div>	<p><small>Does this refer to the letter from Lismore 28-9-1954?</small></p>	1954-10-03-letter-personal-letter-nel-dekker-to-henk-dekker	n	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
15	Letter - Roodbol to Dekker 1	Letter from A Roodbol, Kon. Wilhelminaweg 195, Gouda, Holland to H Dekker in Gundagai	1954-10-31	<p>Gouda, Zond avon 31 Oct 54</p>\r\n\r\n<p>Beste Fam.</p>\r\n\r\n<p>Hier is dan mijn eerste brief uit Holland voor U. Is bij U alles picobello? Hier wel hoor. Ik vin U zo&#39;n hoop willen vragen. Maar als U me schrijft dan kom ik wel waar U woont of het daar mooi is wat voor werk Oom Henk doet ens. Ik vond het beroerd dat ik U niet getroffen heb in Schoonhoven toen we U kwamen groeten. We hebben het in de vac best naar ons zin gehad. Maar ik heb toch nog wel eens aan Limburg gedacht. We waren zo gewend naar U toe to gaan. We vonden het altijd een flink eind naar Limburg maar als ik denk hoe &#39;n eind of U nu weg uit dan is het maar een hippie(???). We hoorden dat U ons firch??? mooi vond. Ik hoop dat het een mooi plaatsje heeft bij U. Erstaan hier nog als eens stukken in de krant van emigranten. Maar als je het zo leest dan kom je tot de conclusie dat de 2 eerste faren het waarst wizen.??? Als die achter de rug zij schrijven ze dan kun je er staat op maken, je rooit(?) het of je rooit niet.(???) Er zitten nogal wat Gouwenaars in Asi(???) Als U er een zegen het vege lijf loopt dan zullen ze Roodbol wel kennen want die is hier berucht en beroemd. Wat het weer aangaat hoeft U nooit meer naar Holland terug to verlongen want dat is hier heel de zomer al naatje van de dam. Behalve toen ze vakantie hadden. Murrel hi(???). Verder gaat hier alles nog gewoon in Holland. Ze zien hier steeds maar vliegende schotels. Ik heb er nog geen gezien hoor. 1 Oct hebben we 6% loons verhoging gehad maar daar schiet je niets mee op. De melk woord duurder enz. We zijn nu weer busy voor kamers. Over een poosje heren we af het doorgat of niet. Als we trouwen hoort U er al licht van. Ik wou dat het maar waar wa voor de winter want dat vind ik toch zo hoopelose tijd. Laat licht en vroeg donker met levend begraven..... THE REST DIFFICULT TO DECIPHER</p>	<div>\r\n<p>Gouda, Sunday evening 31 Oct 54</p>\r\n\r\n<p>Dear Fam.</p>\r\n\r\n<p>Here is my first letter from Holland for you. Is everything picobello (spendid, outstanding) with you? Here it is &quot;picobello&quot;. I think you want to ask such a hope. But if you write to me I will get to where you live or whether it is beautiful there what work Uncle Henk does. I was sad that I didn&#39;t see you in Schoonhoven when we came to visit you. We had a good time in the vac. But I still thought about Limburg. We were so used to going to you. We always thought it was a long way to Limburg, but if I think about how far away you are, then it&#39;s just a short distance. We heard that you give us firch ??? liked it. I hope it has a nice place with you.&nbsp; Once again there are pieces in the newspaper of emigrants. But if you read it that way, you come to the conclusion that the first 2 fairs are the truth. If they are behind them they write then you can write on it, you either (?) It or you don&#39;t. (???) There are quite a few Gouwaars in Asi (???) If you are blessed with a blessing, then they will know Roodbol because it is notorious and famous here. As far as the weather is concerned, you never have to go back to Holland, because that has been here all summer long. Except when they were on vacation. Murrel hi (???). Everything else just goes here in Holland. They always see flying saucers here. I haven&#39;t seen one yet. On Oct. 1 we had a 6% wage increase but you don&#39;t get along with it. The milk is more expensive, etc. We are now busy again for rooms. In a while we will finish it or not. When we get married you will hear light about it. I wish it were true for the winter because I think that is so hopeless time. Leave light and early dark with live buried .....</p>\r\n</div>	<p><small>Handwriting difficult to decipher.</small></p>	1954-10-31-letter-personal-letter-roodbol-to-dekker-1	n	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
16	Letter - de Rooy to Dekker - 3	Letter from Kobus de Rooy to Henk Dekker.	1954-11-17	<p>Lismore 17 Nov, 1954</p>\r\n\r\n<p>Beste Nel en Hendrik</p>\r\n\r\n<p>We hebben nuu zo lang gewacht dat ik ken het niet langer meer uithouden. Toen ik indertijd naar jullie adres in Bonegilla geschreven heb heeft Nel m&#39;n brieven beantwoord en ze schrief dat ze mijn brieven naar jou doorgestuurd had en dat we van jou wel nader zonder horen wat of je zou doen. Dat was op 3 Oct en we hebben nog niks gehoord van Hendrikus. Waar blijf je j&ocirc;? Ben je al zo druk aan het geld verdienen dat je geen tijd meer heeft om je arme neef terug te schrijven? Nou had ik me nog wel zo uitgesloofd. Ik heb meop het arbeidsbureau maar niet meer laten zien. Eerst dachten we als maar &quot;er kan nog wel een brief komen&quot;, en toen het eenmaal 2 tot 3 weken aangelopen had zonder dat ik iets definitiefs van je gehoord had toen heb ik maar gedacht ze moeten maar net zo veel begrijpen als ik zelf begrijpen moet want ik kon echt niet goed begrijpen wat ik er van begrijpen moest. Maar ze zullen nou wel begrijpen dat je er niet op in gaat, dat is terminste wat ik er ook uit begrijpen heb. Maar alle gekheid op een stokje, Henk, je moet me toch eens shrijven wat er tuss hem gezeten heeft dat je me niet terug geschreven hebt.</p>\r\n\r\n<p>En dan doen we er zand overheen en ben ik erg benieuwd hoe het je hir gaat daar in Gundagai. Je zit halverwege tussen Wagga-Wagga en Canberra. Ik heb gehoord dat Wagga zo&#39;n mooi plaats is. En Gundagai wat is dat voor een plaats. Ook behoorlijk groot is s&#39;niet? Nou, ik hoop maar dat jullie gauw inburgeren. Dat is wel makkelijk dat je een Hollandse baas hebt getroffen. Heeft hij ook Australiers aan t&#39;werk? Laat die gemakkelijk had je niet verleiden van een spelletje met het Engels te maken, want dan cou je altijd gehandicapped zijn als je nog eens zou willen veranderen. Want er zijn maar weinig migranten die op de eerste plaats blijven hangen.</p>\r\n\r\n<p>Nu wat over ons. Wij zijn allemaal nog kun gezond en, voordat ik het vergiet, je moet beiden de hattelijke groeten hebben van Nelly(???) De bouwerij van ons nieuwe huis gaat niet door. Ik heb een huis gekocht voor een heel klein beetje geld. &pound;750 - met vloer bedekking, lampen en gordijnen,een nieuw gas fornuis en gas copper op de koop toe. Het huis is niet groot maar we kunnen het er net mee doen. Het staat midden in de stad, maar... inde vloed. Daardoor is het zo goedkoop. Er stond in Februarie met die hogevloed zeven foot water in. Maar we hebben het zisico maar genomen. Op hoop van zegen. Na 1 Dec. in ons adres 27 Victoria Street, Lismore.</p>\r\n\r\n<p>Wij zijn erg benieuwd on to horen hoe jullie eerste indsrukken van het leven en werken in Australie zijn en hopen gauw wat van jullie te vernemen.</p>\r\n\r\n<p>We zegen van Bartje</p>\r\n\r\n<p>Kobus</p>	<div>\r\n<p>Lismore 17 Nov, 1954</p>\r\n\r\n<p>Dear Nel and Hendrik</p>\r\n\r\n<p>We have now waited so long that I no longer know what to do. When I wrote to your address in Bonegilla at the time, Nel answered my letters and she wrote that she had forwarded my letters to you and that we will hear from you further without what or what you would do. That was on 3 Oct and we havn&#39;t yet heard from Hendrikus. Where are you? Are you already so busy making money that you no longer have time to write back to your poor cousin? Well, I still went that extra mile. I didn&#39;t show up at the job center anymore. At first we thought &quot;there might still be a letter&quot;, and once it had taken 2 to 3 weeks without I having heard anything definitive from you then I thought they should understand as much as I understand must because I really could not understand what I had to understand.??? But they will understand that you will not comment on that, that is what I understand. But joking aside, Henk, you have to write to me about what has been between him that you did not write me back.</p>\r\n\r\n<p>And then we put sand over it and I am very curious how you are doing there in Gundagai. You are halfway between Wagga-Wagga and Canberra. I heard that Wagga is such a beautiful place. And Gundagai, what kind of place is that? Also pretty big isn&#39;t it? Well, I just hope you integrate soon. It is easy that you have hit a Dutch boss. Does he also have Australians at work? Don&#39;t let that easy tempt you into a game with English, because then you will always be disabled if you want to change again.??? Because there are very few migrants who stay in the first place.</p>\r\n\r\n<p>Now what about us. We are all still healthy and, before I shed it, you must both have the sweetest regards from Nelly (???) The construction of our new house is canceled. I bought a house for a very small amount of money. &pound; 750 - with floor covering, lamps and curtains, a new gas stove and gas copper on the bargain. The house is not big but we can just do it with it. It&#39;s in the middle of the city, but ... in the flood. That is why it is so cheap. There was seven feet of water in it with that high tide in February. But we just took the risk. Hoping for the best. After Dec. 1 at our address 27 Victoria Street, Lismore.</p>\r\n\r\n<p>We are very curious to hear what your first impressions are of life and work in Australia and hope to hear from you soon.</p>\r\n\r\n<p>We bless Bartje</p>\r\n\r\n<p>Kobus</p>\r\n</div>		1954-11-17-letter-personal-letter-de-rooy-to-dekker-3	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
17	Letter - van Eijs to Dekker 1	Letter from Gerda van Eijs to Dekker family.	1954-11-25	<div>\r\n<p>Beste Allen</p>\r\n\r\n<p>Hier zijn dan eindelijk een paar woordjes van mij. Hoe gaat ermee nog alles goed ik hoop maar van wel en met Corrie natuurlijk ook.</p>\r\n\r\n<p>Toen julllie nog hier woonden en ik kwam buitern dan was er wel altijd eentje die een praatje met je maakte of als Corrie buiten was dan rende die al gauw naar s poortje en ging ik s openmaaken maar nou als je buiten komt zie je een paar ouwe grompatten die nog te beroerd zijn om je goedag to zeggen dat is eerlijk waar. En is Zondags s morgens verveel ik me dood nou heb ik en paar boeken gekregen van een meisje om to lezen nou valt it wel mee. Anders kon ik altijd met Corrie gaan wandelen maar je die tijd is voorlij jammer genoeg ik had aan in paar meisjes die U kenden de passfotos laten zien die vonden me erg leuk voorde die van Corrie was erig bij staat erop net zp als hij was.</p>\r\n\r\n<p>Eerst hoorde we altijd hoef niet naar bed maar nou niets anders dan gromen Mia Kerkhof heeft ook in baby een meisje. En de Familie Tebrink(?) heeft in zware botsing gehad met de auto s&#39; nachts om hallf een en nou is mevrouw zoo zwaam geword dat zie veertien dagen in bed moet blijven met een diepe snijwonde aan haar hoofd maar volgende week dan krijgen zie weer een nieuwe slee dan gat zie wel weer mee en is alle leed vergeten.(???) Op Atelier(?) krijgen we weer een gezellige Sint Nicolaas middag in Volkhuis(?) op de Lindenheuvel u weet mischien wel waar dat is. Ik ben nou ook de huishoudeureus dat is echt leuk en je leert er van alles zaals. Naaien, koken, opvoedkunde, Medische raad, Smaakontwikkeling, en Kinderverrongin dat is enig en we krijgen ook nog Gods diendst. Muziek en Gymnastiek dan lachs we ons oltijd ziek als je sommige meisjes niet die zin zo stijkje als een lat die school heet Maten Amabiles en ze worden............en met naaien hebben we met zijn drie&euml;n een machine dat is natuurlijk erg weinig maar als de nieuwe huishoud school geopend word krijgen we eidereen dus maar geduld hebben. Mij Moeder vraagt of ze dit jaar ook Zwarte Piet moet komen spelen als moet laat dan maar even weten dan komt ze even overwaarien. Bij Hope en de druif en overal is hij al aangekomen zo heeft al veel op t bord geseheven en hij mist Corrie met spelen en ook de meisjes. Meneer Dekker kom eens een keer op in Zondagmiddag naar t voetballen kijken t is nou niet mier Mauratsman Fortuna en de voetballersde Munck. Van het Hand wonen nou ook in Geleen tegenover de Fastoorvonkenstraat in die grote witte villa.</p>\r\n\r\n<p>Nou moet ik gaan eindigen want t stof rookt op met heel veel hartelijke groeten van ons allen maar vooralt meest van Gerde aan meneer ....</p>\r\n</div>	<div>\r\n<p>Dear everyone</p>\r\n\r\n<p>Here are finally a few words from me. How is everything still going well I hope but of course with Corrie as well.</p>\r\n\r\n<p>When you were still living here and I came outside then there was always one who chatted with you or if Corrie was outside then he quickly ran to the gate and I opened it but now when you come out you see a few old men grumbles that are still too bad to say good day, that is honestly true. And on Sunday morning I am bored to death but I have received a few books from a girl to read and it is not so bad. Otherwise I could always go for a walk with Corrie, but that time is unfortunately gone - I had to show the passport photos to some of the girls who knew you who liked me very much(???)</p>\r\n\r\n<p>At first we always heard no need to go to bed but now nothing but growls Mia Kerkhof also has a girl in her baby. And the Tebrink Family (?) Has had a serious collision with the car at night around one and a half, and now Mrs. has become so faint that she must stay in bed for fourteen days with a deep cut on her head, but next week then get see again a new sled then hole will see again and all sorrow has been forgotten.(???) At Atelier (?) We get another cozy Sint Nicolaas afternoon in Volkhuis (?) On Lindenheuvel, you may know where that is. I am now also the household keeper that is really nice and you learn everything about it. Sewing, cooking, pedagogy, medical advice, taste development, and child abuse are all that and we also get God&#39;s service. Music and Gymnastics then we laugh our sick time when some girls don&#39;t feel that way like a bar called school Sizes Amabiles and they become ............ and with sewing, the three of us have a machine, which of course is very little, but when the new household school is opened, we get patience. Me Mother asks if she should also come to play Zwarte Piet this year, if she has to let me know then she will come over. He has already arrived at Hope and the grape and everywhere, so much has already been said on the board and he misses Corrie playing and also the girls. Mr. Dekker, come on sometime in Sunday afternoon to watch football, it is not ant Mauratsman Fortuna and the football player Munck. Van Hand now also live in Geleen opposite the Fastoorvonkenstraat in that large white villa.</p>\r\n\r\n<p>Well I have to end because the dust smokes with a lot of warm greetings from all of us, but mostly from Gerde to sir ....</p>\r\n</div>	<div>\r\n<p><small>From: Gerda van Eijs Johannesstraat 16 Geleen. Limburg</small></p>\r\n\r\n<p><small>To: Fam. Dekker c/o Tilburg Luke St Gundagai</small></p>\r\n\r\n<p><small>(redirected from Block 14 Bonegilla)</small></p>\r\n</div>	1954-11-25-letter-personal-letter-van-eijs-to-dekker-1	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
18	Letter - van de Brink to Dekker 3	Letter van de Brink to Dekker - Heerlen 2 Dec 1954	1954-12-02	<div>\r\n<p>Heerlen 2-12-1954</p>\r\n\r\n<p>Beste Henk Nel en Kinderen</p>\r\n\r\n<p>Met deze komen wij jullie bedanken voor de gelukwensen en met Moeders verjaardag. Ze was vroeg genoeg de brief kwam maandag 22 aan. Het was een drukte verjaardag al waren jullie er niets. Arie en de Kinderen zijn 14 dagen hier geweest. Mia lag in het ziekenhuis en die kwam de 25ste er weer uit en is nog tot maandag hier gebleven om niet derek in de drukte to komen. Maar ze heeft zich heel goed gehouden dat hadden wij niet gedacht ze pakte derekmee aan en het loopen ging ook goed ze is blij dat ze het achter de rug heef. ??? Dat was voor ons een hele drukke met de kinderen ze zijn niet ondeugend maar zoo levendig en wild. Maar het is niet tegen gevallen ik begon er al heel aan te wennen. Anders is hier alles nog het zelfde alle maal gezond en dat is veel waard.</p>\r\n\r\n<p>Hendrik je laatste brief bracht ons niet veel nieuws je schrief heele stukken het zelfde als de voriger. Nu valt het niet mee om een brief vol to krijgen maar je schrief niets over je werk wat zoo aan het doen bent. En over Nel hoe af die het daar maak schreef je ook niets. En daar is Moeder juist nieuws gierig naar.</p>\r\n\r\n<p>Het is hier een weertje prachtig zo slecht als de zomer geweest is zoo mooi is de hersft alle dag some schein en dat in December. Wij hebben van de andere falilie ook brieven gehad en de maken het ook goed en ze vragen alls maal naar jullie. Uit Veenandaal kregen wij bericht dat de jongste zuster van omoe die was een jaar of 17 jonger als omoe en die was ook op de begravenis. Dat was een heel dametje pick zijn in de kleeren geen boerinmetje en praten die was nog zo goed bij. En nu is zo ook al dood ze was voor een paar dagen bij haar dochter in Amersfoort en een halve dag ziek geweest toen was het afgelopen. Wat kan dat toch gouw gaan in Augustus nog zoom woord en nu al onder de grond.</p>\r\n\r\n<p>Is het bij jullie ook zo&#39;n drukte met de Sinterklaas of doen ze daar niet aan hier zijn de winkels tot 9 uur open en een drukte veel Durbret en Belgian die komen hier kopen en hetis hier toch ook duur genoeg.</p>\r\n\r\n<p>Nu meer nieuws weet ik niet het jaar schreef al weer mooi op we krijgen nog veel zondagen maar daar verlang ik niets na ik heb zondagen genoeg. Nu verder van de heele fam de hartelijke groette en voor al van ons</p>\r\n\r\n<p>Moeder &amp; Tinus</p>\r\n</div>	<div>\r\n<p>Heerlen 2-12-1954</p>\r\n\r\n<p>Dear Henk Nel and Children</p>\r\n\r\n<p>With this we thank you for the congratulations and with Mother&#39;s birthday. She was early enough the letter arrived Monday 22. It was a busy birthday even though you were not here. Arie and the Children have been here for 14 days. Mia was in the hospital and she came out on the 25th and stayed here until Monday to avoid getting into the crowd. But she kept very well that we had not thought she tackled it and it went well she is happy that she has it.??? That was a very busy place for us with the children, they are not naughty but so lively and wild. But it did not disappoint I already got used to it. Otherwise everything here is the same all times healthy and that is worth a lot.</p>\r\n\r\n<p>Hendrik your last letter did not bring us much news, you wrote whole pieces the same as the previous one. Now it is not easy to get a letter full but you did not write anything about your work that is doing that way. And you didn&#39;t write anything about Nel how it works there either. And that is exactly what Mother is keen on.</p>\r\n\r\n<p>The weather here is beautiful as bad as summer has been so beautiful the fall is all day and that in December. We have also received letters from the other branch and they are also doing well and they are all asking about you all the time. We received a message from Veenandaal that the youngest sister of grandma who was about 17 years old as grandma and who was also at the funeral. That was quite a lady pick in clothes not a farmer&#39;s wife and talking that was so good at. And now even though she is dead she was with her daughter in Amersfoort for a few days and was sick for half a day when it was over. What can that go wrong in August, and now already underground.</p>\r\n\r\n<p>Is it also such a busy place with Sinterklaas or do they not do it here the shops are open until 9 am and a lot of Durbret and Belgian who come to buy here and it is also expensive enough here.</p>\r\n\r\n<p>Now more news I do not know the year wrote nicely on we still have many Sundays but I long for nothing after I have enough Sundays. Now further from the whole family the cordial greetings and for all of us</p>\r\n\r\n<p>Mother &amp; Tinus</p>\r\n</div>		1954-12-02-letter-personal-letter-van-de-brink-to-dekker-3	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
20	Letter - van de Brink to Dekker	Letter - van de Brink to Dekker	1954-12-24	<div>\r\n<p>Beste Henk en Nel en kinderen</p>\r\n\r\n<p>Met deze komen wij jullie een gelukkig en voorspoedig nieuwjaar toe wenschen. Ik hoop dat ik vroeg genoeg ben en anders is het jouw schuld wij kijken al dagen lang naar de post maar er komt niets.</p>\r\n\r\n<p>Hier is alles nog het oude en op het ogenblik slecht weer het heef hier een paar dagen gestormed en geregend dat je bang was in huis. Er zijn in Zeeland ook wel dijken door gebroken en hele polders onder water gelopen maar menschen levens heef het tot nu toe niet gekost. Ze hebben geleerd en waren al ge&euml;vacueerd eer het water kwam en eerst de menschen op zolder gebracht wat goed was ook want de huisen staan 1.20 onder water maar nu heef de wind af genoom en het gevaar is geweken.</p>\r\n\r\n<p>Met ons gaat het ook goed alleen Moeder is een beetje in de lappen mand die is zoo lustelooos en kort van adem en geen eet lust. Ze komt met ditt weer de deur niet uit. Want als je van Heerlen of komt moet ze een par keer zusten in de heuvelweg ze kan het bergje niet meer op. Als het niet verandert gaat ze na de feestdagen naar de dokter. If it doesn&#39;t change, she goes to the doctor after the holidays.</p>\r\n\r\n<p>Het is hier een drukte met de nieuwe kerk die word van nacht om 12 uur geopend met een macht mis en de tweede kerstdag word de pastoor in gehaald dus weer feest hebben jullie de kirsten al daar heb ik vorigen keer niet aan gedacht.</p>\r\n\r\n<p>Als je nog niet geschreven heb dan srchief maar goun terug en nu nog eens alle een gelukkig en voorspoedig nieuwe jaar. Het begint voor ons goed wij krygen een f35 meer pensioen van of de eerst menschen de haartlijke groette van alle en voor al vas</p>\r\n\r\n<p>Moeder &amp; Tinus</p>\r\n</div>	<div>\r\n<p>Heerlen 24.12.1954</p>\r\n\r\n<p>Dear Henk and Nel and children.</p>\r\n\r\n<p>With this we wish you a happy and prosperous New Year. I hope I am early enough and otherwise it is your fault we have been looking at the post for days but nothing is coming.</p>\r\n\r\n<p>Here everything is still the old and at the moment bad weather it has stormed here for a few days and it rained that you were scared at home. In Zeeland, dikes have also been broken and whole polders have flooded, but human lives have not cost it so far. They learned and were evacuated before the water came and first brought the people to the attic, which was good too, because the houses were 1.20 under water, but now the wind has stopped and the danger has passed.</p>\r\n\r\n<p>We are also doing fine, but Mother is a bit in the patchwork basket that is so listless and short of breath and does not eat. She never leaves the house again. Because if you come from Heerlen or she must sisters a few times in the hillside, she can no longer go up the mountain. If it doesn&#39;t change, she goes to the doctor after the holidays.</p>\r\n\r\n<p>It is a hustle and bustle with the new church that will be opened this night at 12 o&#39;clock with a power mass and the Boxing Day will be brought in to the pastor so again you have the kirsten party already I have not thought about that before.</p>\r\n\r\n<p>If you haven&#39;t written yet, please go back and now all happy and prosperous new year. It starts well for us we get a f35 more pension from or the first people the hairy greetings from all and for all</p>\r\n\r\n<p>Mother and Tinus</p>\r\n</div>	<div>\r\n<p><small>From: M v. d. Brink Kloosterkoolhof 121 Heerlen</small></p>\r\n\r\n<p><small>To: H Dekker Mount Street South Gundagai NSW</small></p>\r\n</div>	1954-12-24-letter-personal-letter-van-de-brink-to-dekker	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
21	Letter - Arie Dekker to Henk Dekker	Letter from Arie and Mia Dekker to Henk Dekker in Gundagai.	1954-12-29	<div>\r\n<p>Heerlen 29 Dec 1954</p>\r\n\r\n<p>Beste Henk Nel en kinderen.</p>\r\n\r\n<p>Eerst wil ik jullie bedanken voor de Kerst en nieuwjaars wenschen. En wil jullie ook het beste toewenschem voor 1955. Zoo is het alweer een tijdje geleden dat jullie vertrokken zijn. Hier is in die tijd niets verandert. Dat Mia een paar weken in het ziekenhuis heeft gelegen weten jullie al van Tinus he? Ik ben nog altijd op de Belse(sic) koel want wat zou ik anders moeten doen het is hier de laatste tijd zo&#39;n slecht weer iedere dag regen en hagelbuien. Er is hier een paar dagen zo&#39;n storm geweest net als en Februari 1953 dat ze het verlof van de militaren hebben ingetrokken die moesten dienst doen bij de dijken maar gelukkig is het nu goed afgelopen. Jullie heb het nogal getroffen hoor ik het, dat je niet zolang in dat kamp hoefde te wonen. Maar ik dacht dat jullie naar Perth zouden gaan, nu zitten jullie toch een heel andere kant uit h&egrave;. Maar ze zullen daar ook wel brood bakken niet? Tusschen twee haakjes let maar niet op de vouten die ik schrijf want ik schrijf bijna nooit maar je zult het toch wel kunnen lezen maar nu moet je me toch eens laten weten wat voor werk doet is dat in de bouw of ben je in een werkplaats te zitten gekome. En een pond hoeveel shilling of pence is dat. Wonen er nog meer Hollanders bij jullie in de buurt. Zoo hoor ik dat er daar z&#39;n mooi weer is he nu dan boffen jullie dan het je twee zomers achter elkaar h&egrave; hier is het nog te slecht om een hond uit te jagen.</p>\r\n</div>	<div>\r\n<p>Heerlen 29 Dec 1954</p>\r\n\r\n<p>Dear Henk Nel and children.</p>\r\n\r\n<p>First I want to thank you for the Christmas and New Year wishes. And also wish you the best wishes for 1955. So it has been a while since you left. You already know from Tinus that Mia has been in the hospital for a few weeks? I am still on the Belse (sic) cool because what else should I do, it is such a bad weather here every day rain and hail showers. There has been such a storm here for a few days just like February 1953 that they have withdrawn the leave of the military who had to secure the dikes, but fortunately it is now over and all good. I hear, that you did not have to live too long in that camp. But I thought you were going to Perth, now you are in a completely different direction, aren&#39;t you? But they will also bake bread there? Between two brackets pay attention not to the mistakes that I write because I almost never write but you will still be able to read it but now you must let me know what kind of work is that in construction or are you in a workshop sit down. And a pound of how much shilling or pence that is. Do more Dutch people live in your area? So I hear that there is good weather there, hey, then you are lucky the two summers in a row, hey, it is still too bad here to chase a dog.</p>\r\n</div>		1954-12-29-letter-personal-letter-arie-dekker-to-henk-dekker	p	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
22	Letter - van de Ruit to Dekker	\N	1955-07-28	<div>\r\n<p>From: Cor &amp; Hettie(?)</p>\r\n\r\n<p>Albany 28th July &lsquo;55</p>\r\n\r\n<p>We hebben jullie kaart ontvangen. Ja, we zitten nog steeds in Albany maar dat zal niet zo lang meer duren want wegaan de plaats uit. Hier is namelijk geen werk te vinden. Al zou je ook putjesschepper willen worden. Bovendien is het voor een migrant met fued(???) dat bij grote plaats blijft. We hebben nu geschreven op een paar advertenties om boer to worden. Schrik maar niet rieiks maar ik word boer. Ik krijgt hier &pound;15 + onze woning gratis vlees en melk op een fraan(???) of schapen farm. Kun jij dat verienen in de stad? Ik met en daarom maar wat eenzaamheid. We moeten toch eerst wat eenten weten te werken, anders kun je niets beginnen.</p>\r\n\r\n<p>Hoe is it anders met jullie? Al werken een huis riejks(???). Zy(???) bent vakman dus het werk zal wel meevallen. Maar een huis is zeker nu probleem. En die zijn hier genueg. Je hoeft maar een paar weken e wachten kun. ik luv mij wel eens van jullie(???). Zodat wij ons nieuw adres weten (dat duurt nog wel 3 weken) zullen we weer schrijven.</p>\r\n\r\n<p>Het beste hoor en de groeten van ons allen</p>\r\n\r\n<p>Cor &amp; Hettie(???)</p>\r\n</div>	<div>\r\n<p>Albany 28th July &lsquo;55</p>\r\n\r\n<p>Dear folks</p>\r\n\r\n<p>We have received your card. Yes, we are still in Albany, but it won&#39;t be that long because we leave the place. There is no work to be found here. Even if you also want to become a pit creator (grave digger? - CHD). In addition, it is for a migrant with fued (???) that stays at large location. We have now written on a few ads to become a farmer. Don&#39;t be frightened but I am becoming a farmer. I get $ 15 + our home here for free meat and milk on a fraan or sheep farm. Can you earn that in the city? Me with and therefore some loneliness. We first have to know what to do, otherwise you can&#39;t do anything.</p>\r\n\r\n<p>How are you different? A house works already (???). Zy (???) is a professional so the work will be better than expected. But a house is definitely a problem now. And they are happy here. You only have to wait a few weeks. I sometimes get away from you (???). We will write again so that we know our new address (which will take another 3 weeks).</p>\r\n\r\n<p>All the best and greetings from all of us</p>\r\n\r\n<p>Cor &amp; Hettie (???)</p>\r\n</div>	<div>\r\n<p><small>To: H Dekker</small></p>\r\n\r\n<p><small>Initially: Block 14 CIC Bonegilla</small></p>\r\n\r\n<p><small>Redirected to: Spring Flat Gundagai</small></p>\r\n</div>	1955-07-28-letter-personal-letter-van-de-ruit-to-dekker	c	2021-06-26 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
11	Letter - H Dekker to C Dekker	Letter from Henk Dekker in Gundagai to the rest of the family in Bonegilla Block 14, talking about his first day at work.	1954-09-30	<div>\r\n<p>Gundagai 29 Sep 1954</p>\r\n\r\n<p>Beste Nel, Leni, Rini en Cor</p>\r\n\r\n<p>Met deze wilde ik jullie laten weten dat ik Dinsdag goed ed wel ben aangekomen. Ik was om 1 uur gearriveerde. Da baas stond al op me to wachten. Het was een mooii rit met de bus. Om half elf heeft de bus een kwartier gestopen toen heb ik en sandwiches geeeten. Toen ik met mijn spullen bij de baas aankwam, heeft hij me onze toekomptige woning laten zien. Het is een huisje met 6 kammers 3 kammertjes kunnen wij kievvan hebben en de anderer drie daar komte scheenzoon van de baas in te wonen. Mijn kisten stonden er al in. Het zijn wel leuke kamertjes en een kamertje kan als keuken gebruikt worden, maar we zullen er dan misschien voor een fornuisje mooten vragen, alfdat ik was aan gekomen heb ik eerst bij debaas gaan eten en daarna ben ik met hem in de vrachtwagen de werken eens langs geweest. Nu die liggen nog al wat uit elkaar??? Ik heb er verder de hele avond met de mensen sitten praten en het zijn best aardige. Vandaag heb ik mijn eerste dag weer werken en it is me best mee gevallen. Het plaatsje is best aardig, wel wat bergachtig, maar dat sal wel wennen. Ik ben juist thuis gekomen en ben maar even gaan schrijven. Nu weten jullie teminste al wat over de gang wan zaken heir. Doe ook een briefje terug. Nu moet ik maar uitscheiden want we moeten gaan eten. Ontvang de beste groete van je man en vader.</p>\r\n\r\n<p>Ik moet vanavond de koffers leeg maken.</p>\r\n\r\n<p>Daag</p>\r\n</div>	<div>\r\n<p>Gundagai 29 Sep 1954</p>\r\n\r\n<p>Dear Nel, Leni, Rini and Cor</p>\r\n\r\n<p>With this I wanted to let you know that I have arrived well on Tuesday. I arrived at 1 o&#39;clock. The boss was already waiting for me. It was a nice trip with the bus. At half past ten the bus stopped for quarter of an hour, during which I ate some sandwiches. When I arrived with my things, the boss showed me our future home. It is a house with 6 rooms, we can have 3 rooms and the other three are for the son-in-law of the boss. My cases/boxes were already in the house. The rooms are nice an one room could be used as a kitchen, but we may have to ask for a stove, but once I arrived I first went to dinner with the boss and then I went to work with him in the truck. Now they are already somewhat apart??? I have chatted with people all evening and they are pretty nice. Today I have my first day back to work and it is pretty crazy. Today I have my first day of work again and it was better than expected. The town is quite nice, a bit mountainous, but it will take some getting used to. I just got home and just started writing. Now you know at least a little bit about how things are going here. Also send a letter back. Now I have to stop because we have to eat. With best regards from your husband and father.</p>\r\n\r\n<p>I have to unpack the suitcases tonight.</p>\r\n\r\n<p>Bye</p>\r\n</div>		1954-09-30-letter-personal-letter-h-dekker-to-c-dekker	c	2021-06-27 10:00:00+10	1	3	2021-06-29 12:34:40.912826+10
\.


--
-- TOC entry 3192 (class 0 OID 18210)
-- Dependencies: 230
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	Dekker	dekker
2	de Rooy	de-rooy
3	Bonegilla	bonegilla
4	Hendrik Dekker	hendrik-dekker
5	Corenelia Dekker	corenelia-dekker
6	van de Brink	van-de-brink
7	Henk Dekker	henk-dekker
8	van de Ruit	van-de-ruit
9	Cornelia Dekker	cornelia-dekker
\.


--
-- TOC entry 3194 (class 0 OID 18222)
-- Dependencies: 232
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	8	1
2	1	8	2
3	11	8	3
4	11	8	4
6	20	8	1
7	20	8	6
8	22	8	8
9	22	8	7
10	11	8	9
\.


--
-- TOC entry 3190 (class 0 OID 18189)
-- Dependencies: 228
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: deksiteuser
--

COPY public.users_profile (id, phone, avatar, date_created, user_id) FROM stdin;
1	\N	profile.png	2021-06-25 08:42:45.325121+10	1
\.


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);


--
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 3223 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);


--
-- TOC entry 3224 (class 0 OID 0)
-- Dependencies: 220
-- Name: docs_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.docs_category_id_seq', 4, true);


--
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 224
-- Name: docs_docimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.docs_docimage_id_seq', 53, true);


--
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 222
-- Name: docs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.docs_document_id_seq', 22, true);


--
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 229
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 9, true);


--
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 231
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 10, true);


--
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 227
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deksiteuser
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 1, true);


--
-- TOC entry 2952 (class 2606 OID 18126)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2957 (class 2606 OID 18053)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2960 (class 2606 OID 18016)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2954 (class 2606 OID 18006)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2947 (class 2606 OID 18044)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2949 (class 2606 OID 17998)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2968 (class 2606 OID 18034)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2971 (class 2606 OID 18068)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2962 (class 2606 OID 18024)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2974 (class 2606 OID 18042)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2977 (class 2606 OID 18082)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2965 (class 2606 OID 18120)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2980 (class 2606 OID 18106)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 17990)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2944 (class 2606 OID 17988)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2940 (class 2606 OID 17980)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3001 (class 2606 OID 18184)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2983 (class 2606 OID 18135)
-- Name: docs_category docs_category_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_category
    ADD CONSTRAINT docs_category_pkey PRIMARY KEY (id);


--
-- TOC entry 2998 (class 2606 OID 18154)
-- Name: docs_docimage docs_docimage_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_docimage
    ADD CONSTRAINT docs_docimage_pkey PRIMARY KEY (id);


--
-- TOC entry 2989 (class 2606 OID 18146)
-- Name: docs_document docs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_document
    ADD CONSTRAINT docs_document_pkey PRIMARY KEY (id);


--
-- TOC entry 2992 (class 2606 OID 18255)
-- Name: docs_document docs_document_slug_e6081eae_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_document
    ADD CONSTRAINT docs_document_slug_e6081eae_uniq UNIQUE (slug);


--
-- TOC entry 2995 (class 2606 OID 18314)
-- Name: docs_document docs_document_title_e556bd17_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_document
    ADD CONSTRAINT docs_document_title_e556bd17_uniq UNIQUE (title);


--
-- TOC entry 3009 (class 2606 OID 18217)
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- TOC entry 3011 (class 2606 OID 18215)
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3014 (class 2606 OID 18219)
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- TOC entry 3017 (class 2606 OID 18245)
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- TOC entry 3021 (class 2606 OID 18227)
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- TOC entry 3004 (class 2606 OID 18194)
-- Name: users_profile users_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 18196)
-- Name: users_profile users_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2950 (class 1259 OID 18127)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2955 (class 1259 OID 18064)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2958 (class 1259 OID 18065)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2945 (class 1259 OID 18050)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2966 (class 1259 OID 18080)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2969 (class 1259 OID 18079)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2972 (class 1259 OID 18094)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2975 (class 1259 OID 18093)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2963 (class 1259 OID 18121)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2978 (class 1259 OID 18117)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2981 (class 1259 OID 18118)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2999 (class 1259 OID 18186)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3002 (class 1259 OID 18185)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2984 (class 1259 OID 18155)
-- Name: docs_category_slug_881c9068; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_category_slug_881c9068 ON public.docs_category USING btree (slug);


--
-- TOC entry 2985 (class 1259 OID 18156)
-- Name: docs_category_slug_881c9068_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_category_slug_881c9068_like ON public.docs_category USING btree (slug varchar_pattern_ops);


--
-- TOC entry 2996 (class 1259 OID 18176)
-- Name: docs_docimage_doc_id_3e383589; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_docimage_doc_id_3e383589 ON public.docs_docimage USING btree (doc_id);


--
-- TOC entry 2986 (class 1259 OID 18169)
-- Name: docs_document_author_id_e677aec5; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_document_author_id_e677aec5 ON public.docs_document USING btree (author_id);


--
-- TOC entry 2987 (class 1259 OID 18170)
-- Name: docs_document_category_id_c1ca1577; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_document_category_id_c1ca1577 ON public.docs_document USING btree (category_id);


--
-- TOC entry 2990 (class 1259 OID 18256)
-- Name: docs_document_slug_e6081eae_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_document_slug_e6081eae_like ON public.docs_document USING btree (slug varchar_pattern_ops);


--
-- TOC entry 2993 (class 1259 OID 18315)
-- Name: docs_document_title_e556bd17_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX docs_document_title_e556bd17_like ON public.docs_document USING btree (title varchar_pattern_ops);


--
-- TOC entry 3007 (class 1259 OID 18228)
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- TOC entry 3012 (class 1259 OID 18229)
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3015 (class 1259 OID 18241)
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- TOC entry 3018 (class 1259 OID 18243)
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- TOC entry 3019 (class 1259 OID 18240)
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- TOC entry 3022 (class 1259 OID 18242)
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: deksiteuser
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- TOC entry 3025 (class 2606 OID 18059)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3024 (class 2606 OID 18054)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3023 (class 2606 OID 18045)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3027 (class 2606 OID 18074)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3026 (class 2606 OID 18069)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3029 (class 2606 OID 18088)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3028 (class 2606 OID 18083)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3030 (class 2606 OID 18107)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3031 (class 2606 OID 18112)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3034 (class 2606 OID 18171)
-- Name: docs_docimage docs_docimage_doc_id_3e383589_fk_docs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_docimage
    ADD CONSTRAINT docs_docimage_doc_id_3e383589_fk_docs_document_id FOREIGN KEY (doc_id) REFERENCES public.docs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3032 (class 2606 OID 18157)
-- Name: docs_document docs_document_author_id_e677aec5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_document
    ADD CONSTRAINT docs_document_author_id_e677aec5_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3033 (class 2606 OID 18162)
-- Name: docs_document docs_document_category_id_c1ca1577_fk_docs_category_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.docs_document
    ADD CONSTRAINT docs_document_category_id_c1ca1577_fk_docs_category_id FOREIGN KEY (category_id) REFERENCES public.docs_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3036 (class 2606 OID 18230)
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3037 (class 2606 OID 18235)
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3035 (class 2606 OID 18197)
-- Name: users_profile users_profile_user_id_2112e78d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: deksiteuser
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-09-30 15:40:33 AEST

--
-- PostgreSQL database dump complete
--

