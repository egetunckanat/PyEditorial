--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: constance_config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.constance_config (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value text
);


--
-- Name: constance_config_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.constance_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: constance_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.constance_config_id_seq OWNED BY public.constance_config.id;


--
-- Name: content_blog; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_blog (
    id integer NOT NULL,
    title character varying(256) NOT NULL,
    slug character varying(256) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    publish boolean NOT NULL,
    content text NOT NULL
);


--
-- Name: content_blog_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_blog_category (
    id integer NOT NULL,
    blog_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


--
-- Name: content_blog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_blog_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_blog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_blog_category_id_seq OWNED BY public.content_blog_category.id;


--
-- Name: content_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_blog_id_seq OWNED BY public.content_blog.id;


--
-- Name: content_blogcategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_blogcategory (
    id integer NOT NULL,
    title character varying(256) NOT NULL
);


--
-- Name: content_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_blogcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_blogcategory_id_seq OWNED BY public.content_blogcategory.id;


--
-- Name: content_podcast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_podcast (
    id integer NOT NULL,
    title character varying(256) NOT NULL,
    slug character varying(256) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    publish boolean NOT NULL,
    audio character varying(100) NOT NULL,
    content text NOT NULL
);


--
-- Name: content_podcast_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_podcast_category (
    id integer NOT NULL,
    podcast_id integer NOT NULL,
    podcastcategory_id integer NOT NULL
);


--
-- Name: content_podcast_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_podcast_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_podcast_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_podcast_category_id_seq OWNED BY public.content_podcast_category.id;


--
-- Name: content_podcast_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_podcast_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_podcast_id_seq OWNED BY public.content_podcast.id;


--
-- Name: content_podcastcategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_podcastcategory (
    id integer NOT NULL,
    title character varying(256) NOT NULL
);


--
-- Name: content_podcastcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_podcastcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_podcastcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_podcastcategory_id_seq OWNED BY public.content_podcastcategory.id;


--
-- Name: content_skill; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_skill (
    id integer NOT NULL,
    title character varying(256) NOT NULL,
    description text NOT NULL,
    icon character varying(30) NOT NULL
);


--
-- Name: content_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_skill_id_seq OWNED BY public.content_skill.id;


--
-- Name: content_videocast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_videocast (
    id integer NOT NULL,
    title character varying(256) NOT NULL,
    slug character varying(256) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    publish boolean NOT NULL,
    video character varying(256) NOT NULL,
    content text NOT NULL
);


--
-- Name: content_videocast_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_videocast_category (
    id integer NOT NULL,
    videocast_id integer NOT NULL,
    videocastcategory_id integer NOT NULL
);


--
-- Name: content_videocast_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_videocast_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_videocast_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_videocast_category_id_seq OWNED BY public.content_videocast_category.id;


--
-- Name: content_videocast_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_videocast_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_videocast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_videocast_id_seq OWNED BY public.content_videocast.id;


--
-- Name: content_videocastcategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.content_videocastcategory (
    id integer NOT NULL,
    title character varying(256) NOT NULL
);


--
-- Name: content_videocastcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.content_videocastcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: content_videocastcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.content_videocastcategory_id_seq OWNED BY public.content_videocastcategory.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: constance_config id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config ALTER COLUMN id SET DEFAULT nextval('public.constance_config_id_seq'::regclass);


--
-- Name: content_blog id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog ALTER COLUMN id SET DEFAULT nextval('public.content_blog_id_seq'::regclass);


--
-- Name: content_blog_category id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog_category ALTER COLUMN id SET DEFAULT nextval('public.content_blog_category_id_seq'::regclass);


--
-- Name: content_blogcategory id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blogcategory ALTER COLUMN id SET DEFAULT nextval('public.content_blogcategory_id_seq'::regclass);


--
-- Name: content_podcast id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast ALTER COLUMN id SET DEFAULT nextval('public.content_podcast_id_seq'::regclass);


--
-- Name: content_podcast_category id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast_category ALTER COLUMN id SET DEFAULT nextval('public.content_podcast_category_id_seq'::regclass);


--
-- Name: content_podcastcategory id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcastcategory ALTER COLUMN id SET DEFAULT nextval('public.content_podcastcategory_id_seq'::regclass);


--
-- Name: content_skill id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_skill ALTER COLUMN id SET DEFAULT nextval('public.content_skill_id_seq'::regclass);


--
-- Name: content_videocast id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast ALTER COLUMN id SET DEFAULT nextval('public.content_videocast_id_seq'::regclass);


--
-- Name: content_videocast_category id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast_category ALTER COLUMN id SET DEFAULT nextval('public.content_videocast_category_id_seq'::regclass);


--
-- Name: content_videocastcategory id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocastcategory ALTER COLUMN id SET DEFAULT nextval('public.content_videocastcategory_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can change config	2	change_config
6	Can view config	2	view_config
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can view permission	3	view_permission
11	Can add group	4	add_group
12	Can change group	4	change_group
13	Can delete group	4	delete_group
14	Can view group	4	view_group
15	Can add user	5	add_user
16	Can change user	5	change_user
17	Can delete user	5	delete_user
18	Can view user	5	view_user
19	Can add content type	6	add_contenttype
20	Can change content type	6	change_contenttype
21	Can delete content type	6	delete_contenttype
22	Can view content type	6	view_contenttype
23	Can add session	7	add_session
24	Can change session	7	change_session
25	Can delete session	7	delete_session
26	Can view session	7	view_session
27	Can add constance	8	add_constance
28	Can change constance	8	change_constance
29	Can delete constance	8	delete_constance
30	Can view constance	8	view_constance
31	Can add Blog Category	9	add_blogcategory
32	Can change Blog Category	9	change_blogcategory
33	Can delete Blog Category	9	delete_blogcategory
34	Can view Blog Category	9	view_blogcategory
35	Can add Blog	10	add_blog
36	Can change Blog	10	change_blog
37	Can delete Blog	10	delete_blog
38	Can view Blog	10	view_blog
39	Can add Video Cast Category	11	add_videocastcategory
40	Can change Video Cast Category	11	change_videocastcategory
41	Can delete Video Cast Category	11	delete_videocastcategory
42	Can view Video Cast Category	11	view_videocastcategory
43	Can add Video Cast	12	add_videocast
44	Can change Video Cast	12	change_videocast
45	Can delete Video Cast	12	delete_videocast
46	Can view Video Cast	12	view_videocast
47	Can add Podcast Category	13	add_podcastcategory
48	Can change Podcast Category	13	change_podcastcategory
49	Can delete Podcast Category	13	delete_podcastcategory
50	Can view Podcast Category	13	view_podcastcategory
51	Can add Podcast	14	add_podcast
52	Can change Podcast	14	change_podcast
53	Can delete Podcast	14	delete_podcast
54	Can view Podcast	14	view_podcast
55	Can add Skill	15	add_skill
56	Can change Skill	15	change_skill
57	Can delete Skill	15	delete_skill
58	Can view Skill	15	view_skill
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: constance_config; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.constance_config (id, key, value) FROM stdin;
1	SITE_TITLE	gAJYBwAAAE15IEJsb2dxAC4=
2	SITE_DESCRIPTION	gAJYEAAAAEJsb2cgRGVzY3JpcHRpb25xAC4=
3	SITE_FAVICON	gAJYEwAAAGRlZmF1bHRfZmF2aWNvbi5wbmdxAC4=
4	SOCIAL_NETWORKS_TWITTER_URL	gAJYAQAAACNxAC4=
5	SOCIAL_NETWORKS_FACEBOOK_URL	gAJYAQAAACNxAC4=
6	SOCIAL_NETWORKS_SNAPCHAT_URL	gAJYAQAAACNxAC4=
7	SOCIAL_NETWORKS_INSTAGRAM_URL	gAJYAQAAACNxAC4=
8	SOCIAL_NETWORKS_MEDIUM_URL	gAJYAQAAACNxAC4=
9	SOCIAL_NETWORKS_TELEGRAM_URL	gAJYAQAAACNxAC4=
10	SOCIAL_NETWORKS_GITHUB_URL	gAJYAQAAACNxAC4=
11	SOCIAL_NETWORKS_GITLAB_URL	gAJYAQAAACNxAC4=
12	GET_IN_TOUCH_ACTIVE	gAJYAwAAAHllc3EALg==
13	GET_IN_TOUCH_INFO	gAJYewAAAExvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQsIHNlZCBkbyBlaXVzbW9kIHRlbXBvciBpbmNpZGlkdW50IHV0IGxhYm9yZSBldCBkb2xvcmUgbWFnbmEgYWxpcXVhLnEALg==
14	GET_IN_TOUCH_EMAIL_ADDRESS	gAJYGAAAAGluZm9ybWF0aW9uQHVudGl0bGVkLnRsZHEALg==
15	GET_IN_TOUCH_PHONE	gAJYDgAAACgwMDApIDAwMC0wMDAwcQAu
16	GET_IN_TOUCH_ADDRESS	gAJYNwAAADEyMzQgU29tZXdoZXJlIFJvYWQgIzgyNTQ8YnIgLz5OYXNodmlsbGUsIFROIDAwMDAwLTAwMDBxAC4=
\.


--
-- Data for Name: content_blog; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_blog (id, title, slug, thumbnail, publish, content) FROM stdin;
\.


--
-- Data for Name: content_blog_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_blog_category (id, blog_id, blogcategory_id) FROM stdin;
\.


--
-- Data for Name: content_blogcategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_blogcategory (id, title) FROM stdin;
\.


--
-- Data for Name: content_podcast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_podcast (id, title, slug, thumbnail, publish, audio, content) FROM stdin;
\.


--
-- Data for Name: content_podcast_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_podcast_category (id, podcast_id, podcastcategory_id) FROM stdin;
\.


--
-- Data for Name: content_podcastcategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_podcastcategory (id, title) FROM stdin;
\.


--
-- Data for Name: content_skill; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_skill (id, title, description, icon) FROM stdin;
\.


--
-- Data for Name: content_videocast; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_videocast (id, title, slug, thumbnail, publish, video, content) FROM stdin;
\.


--
-- Data for Name: content_videocast_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_videocast_category (id, videocast_id, videocastcategory_id) FROM stdin;
\.


--
-- Data for Name: content_videocastcategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.content_videocastcategory (id, title) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	constance	config
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	database	constance
9	content	blogcategory
10	content	blog
11	content	videocastcategory
12	content	videocast
13	content	podcastcategory
14	content	podcast
15	content	skill
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-09 20:27:22.521163+00
2	auth	0001_initial	2022-04-09 20:27:22.654296+00
3	admin	0001_initial	2022-04-09 20:27:22.863098+00
4	admin	0002_logentry_remove_auto_add	2022-04-09 20:27:22.891922+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-09 20:27:22.89683+00
6	contenttypes	0002_remove_content_type_name	2022-04-09 20:27:22.914197+00
7	auth	0002_alter_permission_name_max_length	2022-04-09 20:27:22.919217+00
8	auth	0003_alter_user_email_max_length	2022-04-09 20:27:22.924839+00
9	auth	0004_alter_user_username_opts	2022-04-09 20:27:22.929395+00
10	auth	0005_alter_user_last_login_null	2022-04-09 20:27:22.935621+00
11	auth	0006_require_contenttypes_0002	2022-04-09 20:27:22.938234+00
12	auth	0007_alter_validators_add_error_messages	2022-04-09 20:27:22.942613+00
13	auth	0008_alter_user_username_max_length	2022-04-09 20:27:22.972298+00
14	auth	0009_alter_user_last_name_max_length	2022-04-09 20:27:22.97797+00
15	auth	0010_alter_group_name_max_length	2022-04-09 20:27:22.985136+00
16	auth	0011_update_proxy_permissions	2022-04-09 20:27:22.992811+00
17	auth	0012_alter_user_first_name_max_length	2022-04-09 20:27:22.99731+00
18	database	0001_initial	2022-04-09 20:27:23.038784+00
19	database	0002_auto_20190129_2304	2022-04-09 20:27:23.050226+00
20	sessions	0001_initial	2022-04-09 20:27:23.075274+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 58, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: constance_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.constance_config_id_seq', 16, true);


--
-- Name: content_blog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_blog_category_id_seq', 1, false);


--
-- Name: content_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_blog_id_seq', 1, false);


--
-- Name: content_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_blogcategory_id_seq', 1, false);


--
-- Name: content_podcast_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_podcast_category_id_seq', 1, false);


--
-- Name: content_podcast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_podcast_id_seq', 1, false);


--
-- Name: content_podcastcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_podcastcategory_id_seq', 1, false);


--
-- Name: content_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_skill_id_seq', 1, false);


--
-- Name: content_videocast_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_videocast_category_id_seq', 1, false);


--
-- Name: content_videocast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_videocast_id_seq', 1, false);


--
-- Name: content_videocastcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.content_videocastcategory_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: constance_config constance_config_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config
    ADD CONSTRAINT constance_config_key_key UNIQUE (key);


--
-- Name: constance_config constance_config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.constance_config
    ADD CONSTRAINT constance_config_pkey PRIMARY KEY (id);


--
-- Name: content_blog_category content_blog_category_blog_id_blogcategory_id_4ba4ca10_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog_category
    ADD CONSTRAINT content_blog_category_blog_id_blogcategory_id_4ba4ca10_uniq UNIQUE (blog_id, blogcategory_id);


--
-- Name: content_blog_category content_blog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog_category
    ADD CONSTRAINT content_blog_category_pkey PRIMARY KEY (id);


--
-- Name: content_blog content_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog
    ADD CONSTRAINT content_blog_pkey PRIMARY KEY (id);


--
-- Name: content_blog content_blog_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog
    ADD CONSTRAINT content_blog_slug_key UNIQUE (slug);


--
-- Name: content_blog content_blog_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog
    ADD CONSTRAINT content_blog_title_key UNIQUE (title);


--
-- Name: content_blogcategory content_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blogcategory
    ADD CONSTRAINT content_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: content_blogcategory content_blogcategory_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blogcategory
    ADD CONSTRAINT content_blogcategory_title_key UNIQUE (title);


--
-- Name: content_podcast_category content_podcast_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast_category
    ADD CONSTRAINT content_podcast_category_pkey PRIMARY KEY (id);


--
-- Name: content_podcast_category content_podcast_category_podcast_id_podcastcatego_818d5abf_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast_category
    ADD CONSTRAINT content_podcast_category_podcast_id_podcastcatego_818d5abf_uniq UNIQUE (podcast_id, podcastcategory_id);


--
-- Name: content_podcast content_podcast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast
    ADD CONSTRAINT content_podcast_pkey PRIMARY KEY (id);


--
-- Name: content_podcast content_podcast_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast
    ADD CONSTRAINT content_podcast_slug_key UNIQUE (slug);


--
-- Name: content_podcast content_podcast_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast
    ADD CONSTRAINT content_podcast_title_key UNIQUE (title);


--
-- Name: content_podcastcategory content_podcastcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcastcategory
    ADD CONSTRAINT content_podcastcategory_pkey PRIMARY KEY (id);


--
-- Name: content_podcastcategory content_podcastcategory_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcastcategory
    ADD CONSTRAINT content_podcastcategory_title_key UNIQUE (title);


--
-- Name: content_skill content_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_skill
    ADD CONSTRAINT content_skill_pkey PRIMARY KEY (id);


--
-- Name: content_skill content_skill_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_skill
    ADD CONSTRAINT content_skill_title_key UNIQUE (title);


--
-- Name: content_videocast_category content_videocast_catego_videocast_id_videocastca_34f81137_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast_category
    ADD CONSTRAINT content_videocast_catego_videocast_id_videocastca_34f81137_uniq UNIQUE (videocast_id, videocastcategory_id);


--
-- Name: content_videocast_category content_videocast_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast_category
    ADD CONSTRAINT content_videocast_category_pkey PRIMARY KEY (id);


--
-- Name: content_videocast content_videocast_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast
    ADD CONSTRAINT content_videocast_pkey PRIMARY KEY (id);


--
-- Name: content_videocast content_videocast_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast
    ADD CONSTRAINT content_videocast_slug_key UNIQUE (slug);


--
-- Name: content_videocast content_videocast_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast
    ADD CONSTRAINT content_videocast_title_key UNIQUE (title);


--
-- Name: content_videocastcategory content_videocastcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocastcategory
    ADD CONSTRAINT content_videocastcategory_pkey PRIMARY KEY (id);


--
-- Name: content_videocastcategory content_videocastcategory_title_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocastcategory
    ADD CONSTRAINT content_videocastcategory_title_key UNIQUE (title);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: constance_config_key_baef3136_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX constance_config_key_baef3136_like ON public.constance_config USING btree (key varchar_pattern_ops);


--
-- Name: content_blog_category_blog_id_f13d641b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_blog_category_blog_id_f13d641b ON public.content_blog_category USING btree (blog_id);


--
-- Name: content_blog_category_blogcategory_id_a83f1e35; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_blog_category_blogcategory_id_a83f1e35 ON public.content_blog_category USING btree (blogcategory_id);


--
-- Name: content_blog_slug_e8fda612_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_blog_slug_e8fda612_like ON public.content_blog USING btree (slug varchar_pattern_ops);


--
-- Name: content_blog_title_a4ae65de_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_blog_title_a4ae65de_like ON public.content_blog USING btree (title varchar_pattern_ops);


--
-- Name: content_blogcategory_title_5a6ead72_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_blogcategory_title_5a6ead72_like ON public.content_blogcategory USING btree (title varchar_pattern_ops);


--
-- Name: content_podcast_category_podcast_id_f98e30f4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_podcast_category_podcast_id_f98e30f4 ON public.content_podcast_category USING btree (podcast_id);


--
-- Name: content_podcast_category_podcastcategory_id_a8168c70; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_podcast_category_podcastcategory_id_a8168c70 ON public.content_podcast_category USING btree (podcastcategory_id);


--
-- Name: content_podcast_slug_d2cd8d3b_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_podcast_slug_d2cd8d3b_like ON public.content_podcast USING btree (slug varchar_pattern_ops);


--
-- Name: content_podcast_title_fae08a27_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_podcast_title_fae08a27_like ON public.content_podcast USING btree (title varchar_pattern_ops);


--
-- Name: content_podcastcategory_title_e1f8c431_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_podcastcategory_title_e1f8c431_like ON public.content_podcastcategory USING btree (title varchar_pattern_ops);


--
-- Name: content_skill_title_c2dd0020_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_skill_title_c2dd0020_like ON public.content_skill USING btree (title varchar_pattern_ops);


--
-- Name: content_videocast_category_videocast_id_e0501f3b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_videocast_category_videocast_id_e0501f3b ON public.content_videocast_category USING btree (videocast_id);


--
-- Name: content_videocast_category_videocastcategory_id_ee22d71f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_videocast_category_videocastcategory_id_ee22d71f ON public.content_videocast_category USING btree (videocastcategory_id);


--
-- Name: content_videocast_slug_e884cda8_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_videocast_slug_e884cda8_like ON public.content_videocast USING btree (slug varchar_pattern_ops);


--
-- Name: content_videocast_title_a5980163_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_videocast_title_a5980163_like ON public.content_videocast USING btree (title varchar_pattern_ops);


--
-- Name: content_videocastcategory_title_1cda410c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX content_videocastcategory_title_1cda410c_like ON public.content_videocastcategory USING btree (title varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_blog_category content_blog_categor_blogcategory_id_a83f1e35_fk_content_b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog_category
    ADD CONSTRAINT content_blog_categor_blogcategory_id_a83f1e35_fk_content_b FOREIGN KEY (blogcategory_id) REFERENCES public.content_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_blog_category content_blog_category_blog_id_f13d641b_fk_content_blog_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_blog_category
    ADD CONSTRAINT content_blog_category_blog_id_f13d641b_fk_content_blog_id FOREIGN KEY (blog_id) REFERENCES public.content_blog(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_podcast_category content_podcast_cate_podcast_id_f98e30f4_fk_content_p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast_category
    ADD CONSTRAINT content_podcast_cate_podcast_id_f98e30f4_fk_content_p FOREIGN KEY (podcast_id) REFERENCES public.content_podcast(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_podcast_category content_podcast_cate_podcastcategory_id_a8168c70_fk_content_p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_podcast_category
    ADD CONSTRAINT content_podcast_cate_podcastcategory_id_a8168c70_fk_content_p FOREIGN KEY (podcastcategory_id) REFERENCES public.content_podcastcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_videocast_category content_videocast_ca_videocast_id_e0501f3b_fk_content_v; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast_category
    ADD CONSTRAINT content_videocast_ca_videocast_id_e0501f3b_fk_content_v FOREIGN KEY (videocast_id) REFERENCES public.content_videocast(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_videocast_category content_videocast_ca_videocastcategory_id_ee22d71f_fk_content_v; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.content_videocast_category
    ADD CONSTRAINT content_videocast_ca_videocastcategory_id_ee22d71f_fk_content_v FOREIGN KEY (videocastcategory_id) REFERENCES public.content_videocastcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

