PGDMP     "    5                w            easy-restaurant    11.1    11.1     '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            *           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "easy-restaurant";
             postgres    false            �            1259    33225 
   type_users    TABLE     �   CREATE TABLE public.type_users (
    type_users_id integer NOT NULL,
    type_users_description character varying(25) NOT NULL
);
    DROP TABLE public.type_users;
       public         postgres    false            �            1259    33223    type_users_type_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_users_type_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.type_users_type_users_id_seq;
       public       postgres    false    201            +           0    0    type_users_type_users_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.type_users_type_users_id_seq OWNED BY public.type_users.type_users_id;
            public       postgres    false    200            �
           2604    33228    type_users type_users_id    DEFAULT     �   ALTER TABLE ONLY public.type_users ALTER COLUMN type_users_id SET DEFAULT nextval('public.type_users_type_users_id_seq'::regclass);
 G   ALTER TABLE public.type_users ALTER COLUMN type_users_id DROP DEFAULT;
       public       postgres    false    200    201    201            $          0    33225 
   type_users 
   TABLE DATA               K   COPY public.type_users (type_users_id, type_users_description) FROM stdin;
    public       postgres    false    201   -       ,           0    0    type_users_type_users_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.type_users_type_users_id_seq', 1, false);
            public       postgres    false    200            �
           2606    33230    type_users type_users_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.type_users
    ADD CONSTRAINT type_users_id PRIMARY KEY (type_users_id);
 B   ALTER TABLE ONLY public.type_users DROP CONSTRAINT type_users_id;
       public         postgres    false    201            $      x�3�t�O��K�2�tN�J����� <��     