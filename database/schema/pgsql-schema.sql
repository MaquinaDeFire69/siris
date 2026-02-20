--
-- PostgreSQL database dump
--

\restrict B0iqtSmC2yjsoKnLoDV3V0IsEQvzXTtPumgMzkmoVHzdOU90ah67WtJ2cvT71kE

-- Dumped from database version 15.15 (Debian 15.15-0+deb12u1)
-- Dumped by pg_dump version 15.15

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
-- Name: accesos_apis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accesos_apis (
    id integer NOT NULL,
    instituciones_id integer,
    client_id character varying(255),
    client_secret character varying(255),
    user_api character varying(255),
    password_api character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: accesos_apis_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.accesos_apis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: accesos_apis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.accesos_apis_id_seq OWNED BY public.accesos_apis.id;


--
-- Name: acuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acuses (
    id integer NOT NULL,
    institucion_id integer NOT NULL,
    periodo_id integer NOT NULL,
    descripcion character varying(255),
    validacion_acuse character varying(255),
    cantidad_registros integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: acuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.acuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.acuses_id_seq OWNED BY public.acuses.id;


--
-- Name: instituciones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instituciones (
    id integer NOT NULL,
    ente_publico_s3 integer,
    nombre character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: instituciones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.instituciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: instituciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.instituciones_id_seq OWNED BY public.instituciones.id;


--
-- Name: modulos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.modulos (
    id integer NOT NULL,
    nombre character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: modulos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.modulos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: modulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.modulos_id_seq OWNED BY public.modulos.id;


--
-- Name: opciones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opciones (
    id integer NOT NULL,
    modulo_id integer NOT NULL,
    nombre character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: opciones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.opciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: opciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.opciones_id_seq OWNED BY public.opciones.id;


--
-- Name: periodos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.periodos (
    id integer NOT NULL,
    descripcion character varying(255),
    fecha_inicial date,
    fecha_final date,
    es_activo boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: periodos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.periodos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: periodos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.periodos_id_seq OWNED BY public.periodos.id;


--
-- Name: personas_fisicas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.personas_fisicas (
    id integer NOT NULL,
    institucion_id integer NOT NULL,
    id_referencia_s3 integer,
    ente_publico_s3 integer,
    fecha date,
    expediente character varying(255),
    nombre character varying(255),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    curp character varying(255),
    rfc character varying(255),
    sexo character varying(50),
    nombre_normatividad character varying(255),
    articulo character varying(255),
    fraccion character varying(255),
    fecha_resolucion_firme date,
    fecha_notificacion_firme date,
    inhabilitacion_anios integer,
    inhabilitacion_meses integer,
    inhabilitacion_dias integer,
    inhabilitacion_inicio date,
    inhabilitacion_final date,
    falta_cometida character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: personas_fisicas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.personas_fisicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personas_fisicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.personas_fisicas_id_seq OWNED BY public.personas_fisicas.id;


--
-- Name: personas_morales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.personas_morales (
    id integer NOT NULL,
    institucion_id integer NOT NULL,
    id_referencia_s3 integer,
    ente_publico_s3 integer,
    fecha date,
    expediente character varying(255),
    nombre_representante character varying(255),
    primer_apellido_representante character varying(255),
    segundo_apellido_representante character varying(255),
    curp_representante character varying(255),
    rfc_representante character varying(255),
    nombre_razon_social character varying(255),
    rfc character varying(255),
    objeto_social character varying(255),
    nombre_normatividad character varying(255),
    articulo character varying(255),
    fraccion character varying(255),
    fecha_resolucion_firme date,
    fecha_notificacion_firme date,
    inhabilitacion_anios integer,
    inhabilitacion_meses integer,
    inhabilitacion_dias integer,
    inhabilitacion_inicio date,
    inhabilitacion_final date,
    falta_cometida character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: personas_morales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.personas_morales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personas_morales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.personas_morales_id_seq OWNED BY public.personas_morales.id;


--
-- Name: sanciones_fisicas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sanciones_fisicas (
    id integer NOT NULL,
    persona_fisica_id integer NOT NULL,
    nombre character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: sanciones_fisicas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sanciones_fisicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanciones_fisicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sanciones_fisicas_id_seq OWNED BY public.sanciones_fisicas.id;


--
-- Name: sanciones_morales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sanciones_morales (
    id integer NOT NULL,
    persona_moral_id integer NOT NULL,
    nombre character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: sanciones_morales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sanciones_morales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanciones_morales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sanciones_morales_id_seq OWNED BY public.sanciones_morales.id;


--
-- Name: sanciones_servidores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sanciones_servidores (
    id integer NOT NULL,
    servidor_publico_id integer NOT NULL,
    nombre character varying(255),
    tipo_falta boolean,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: sanciones_servidores_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sanciones_servidores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sanciones_servidores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sanciones_servidores_id_seq OWNED BY public.sanciones_servidores.id;


--
-- Name: servidores_publicos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.servidores_publicos (
    id integer NOT NULL,
    institucion_id integer NOT NULL,
    id_referencia_s3 integer,
    ente_publico_s3 integer,
    fecha date,
    expediente character varying(255),
    nombre character varying(255),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    curp character varying(255),
    rfc character varying(255),
    sexo character varying(50),
    nombre_normatividad character varying(255),
    articulo character varying(255),
    fraccion character varying(255),
    fecha_resolucion_firme date,
    fecha_notificacion_firme date,
    inhabilitacion_anios integer,
    inhabilitacion_meses integer,
    inhabilitacion_dias integer,
    inhabilitacion_inicio date,
    inhabilitacion_final date,
    falta_cometida character varying(255),
    tipo_falta boolean,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: servidores_publicos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.servidores_publicos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: servidores_publicos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.servidores_publicos_id_seq OWNED BY public.servidores_publicos.id;


--
-- Name: user_modulo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_modulo (
    user_id integer NOT NULL,
    modulo_id integer NOT NULL
);


--
-- Name: user_opcion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_opcion (
    user_id integer NOT NULL,
    opcion_id integer NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    institucion_id integer,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    es_activo boolean DEFAULT true,
    tipo boolean,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accesos_apis id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accesos_apis ALTER COLUMN id SET DEFAULT nextval('public.accesos_apis_id_seq'::regclass);


--
-- Name: acuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acuses ALTER COLUMN id SET DEFAULT nextval('public.acuses_id_seq'::regclass);


--
-- Name: instituciones id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instituciones ALTER COLUMN id SET DEFAULT nextval('public.instituciones_id_seq'::regclass);


--
-- Name: modulos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modulos ALTER COLUMN id SET DEFAULT nextval('public.modulos_id_seq'::regclass);


--
-- Name: opciones id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opciones ALTER COLUMN id SET DEFAULT nextval('public.opciones_id_seq'::regclass);


--
-- Name: periodos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.periodos ALTER COLUMN id SET DEFAULT nextval('public.periodos_id_seq'::regclass);


--
-- Name: personas_fisicas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas_fisicas ALTER COLUMN id SET DEFAULT nextval('public.personas_fisicas_id_seq'::regclass);


--
-- Name: personas_morales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas_morales ALTER COLUMN id SET DEFAULT nextval('public.personas_morales_id_seq'::regclass);


--
-- Name: sanciones_fisicas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_fisicas ALTER COLUMN id SET DEFAULT nextval('public.sanciones_fisicas_id_seq'::regclass);


--
-- Name: sanciones_morales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_morales ALTER COLUMN id SET DEFAULT nextval('public.sanciones_morales_id_seq'::regclass);


--
-- Name: sanciones_servidores id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_servidores ALTER COLUMN id SET DEFAULT nextval('public.sanciones_servidores_id_seq'::regclass);


--
-- Name: servidores_publicos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.servidores_publicos ALTER COLUMN id SET DEFAULT nextval('public.servidores_publicos_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: accesos_apis accesos_apis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accesos_apis
    ADD CONSTRAINT accesos_apis_pkey PRIMARY KEY (id);


--
-- Name: acuses acuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acuses
    ADD CONSTRAINT acuses_pkey PRIMARY KEY (id);


--
-- Name: instituciones instituciones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instituciones
    ADD CONSTRAINT instituciones_pkey PRIMARY KEY (id);


--
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);


--
-- Name: opciones opciones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opciones
    ADD CONSTRAINT opciones_pkey PRIMARY KEY (id);


--
-- Name: periodos periodos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.periodos
    ADD CONSTRAINT periodos_pkey PRIMARY KEY (id);


--
-- Name: personas_fisicas personas_fisicas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas_fisicas
    ADD CONSTRAINT personas_fisicas_pkey PRIMARY KEY (id);


--
-- Name: personas_morales personas_morales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas_morales
    ADD CONSTRAINT personas_morales_pkey PRIMARY KEY (id);


--
-- Name: sanciones_fisicas sanciones_fisicas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_fisicas
    ADD CONSTRAINT sanciones_fisicas_pkey PRIMARY KEY (id);


--
-- Name: sanciones_morales sanciones_morales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_morales
    ADD CONSTRAINT sanciones_morales_pkey PRIMARY KEY (id);


--
-- Name: sanciones_servidores sanciones_servidores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_servidores
    ADD CONSTRAINT sanciones_servidores_pkey PRIMARY KEY (id);


--
-- Name: servidores_publicos servidores_publicos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.servidores_publicos
    ADD CONSTRAINT servidores_publicos_pkey PRIMARY KEY (id);


--
-- Name: user_modulo user_modulo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_modulo
    ADD CONSTRAINT user_modulo_pkey PRIMARY KEY (user_id, modulo_id);


--
-- Name: user_opcion user_opcion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_opcion
    ADD CONSTRAINT user_opcion_pkey PRIMARY KEY (user_id, opcion_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: acuses fk_acuses_institucion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acuses
    ADD CONSTRAINT fk_acuses_institucion FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id) ON DELETE RESTRICT;


--
-- Name: acuses fk_acuses_periodo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acuses
    ADD CONSTRAINT fk_acuses_periodo FOREIGN KEY (periodo_id) REFERENCES public.periodos(id) ON DELETE RESTRICT;


--
-- Name: accesos_apis fk_api_institucion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accesos_apis
    ADD CONSTRAINT fk_api_institucion FOREIGN KEY (instituciones_id) REFERENCES public.instituciones(id) ON DELETE SET NULL;


--
-- Name: personas_fisicas fk_fisicas_institucion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas_fisicas
    ADD CONSTRAINT fk_fisicas_institucion FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id) ON DELETE RESTRICT;


--
-- Name: personas_morales fk_morales_institucion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas_morales
    ADD CONSTRAINT fk_morales_institucion FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id) ON DELETE RESTRICT;


--
-- Name: opciones fk_opcion_modulo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opciones
    ADD CONSTRAINT fk_opcion_modulo FOREIGN KEY (modulo_id) REFERENCES public.modulos(id) ON DELETE CASCADE;


--
-- Name: sanciones_fisicas fk_sancion_fisica; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_fisicas
    ADD CONSTRAINT fk_sancion_fisica FOREIGN KEY (persona_fisica_id) REFERENCES public.personas_fisicas(id) ON DELETE CASCADE;


--
-- Name: sanciones_morales fk_sancion_moral; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_morales
    ADD CONSTRAINT fk_sancion_moral FOREIGN KEY (persona_moral_id) REFERENCES public.personas_morales(id) ON DELETE CASCADE;


--
-- Name: sanciones_servidores fk_sancion_servidor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sanciones_servidores
    ADD CONSTRAINT fk_sancion_servidor FOREIGN KEY (servidor_publico_id) REFERENCES public.servidores_publicos(id) ON DELETE CASCADE;


--
-- Name: servidores_publicos fk_servidores_institucion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.servidores_publicos
    ADD CONSTRAINT fk_servidores_institucion FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id) ON DELETE RESTRICT;


--
-- Name: user_modulo fk_user_modulo_modulo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_modulo
    ADD CONSTRAINT fk_user_modulo_modulo FOREIGN KEY (modulo_id) REFERENCES public.modulos(id) ON DELETE CASCADE;


--
-- Name: user_modulo fk_user_modulo_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_modulo
    ADD CONSTRAINT fk_user_modulo_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_opcion fk_user_opcion_opcion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_opcion
    ADD CONSTRAINT fk_user_opcion_opcion FOREIGN KEY (opcion_id) REFERENCES public.opciones(id) ON DELETE CASCADE;


--
-- Name: user_opcion fk_user_opcion_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_opcion
    ADD CONSTRAINT fk_user_opcion_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users fk_users_institucion; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_institucion FOREIGN KEY (institucion_id) REFERENCES public.instituciones(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict B0iqtSmC2yjsoKnLoDV3V0IsEQvzXTtPumgMzkmoVHzdOU90ah67WtJ2cvT71kE

