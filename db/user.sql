PGDMP         ;                w            easy-restaurant-v2    11.1    11.1     )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ,           1262    42263    easy-restaurant-v2    DATABASE     �   CREATE DATABASE "easy-restaurant-v2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 $   DROP DATABASE "easy-restaurant-v2";
             postgres    false            �            1259    42324    users    TABLE     {  CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_username character varying(20) NOT NULL,
    user_password character varying(60) NOT NULL,
    user_name character varying(40) NOT NULL,
    user_lastname character varying(50) NOT NULL,
    user_creation_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    type_users_id integer NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    42322    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    208            -           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    207            �
           2604    42327    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    208    207    208            &          0    42324    users 
   TABLE DATA               �   COPY public.users (user_id, user_username, user_password, user_name, user_lastname, user_creation_time, type_users_id) FROM stdin;
    public       postgres    false    208          .           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
            public       postgres    false    207            �
           2606    42330    users users_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id;
       public         postgres    false    208            �
           2606    42362    users type_user_users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT type_user_users_fk FOREIGN KEY (type_users_id) REFERENCES public.type_users(type_users_id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT type_user_users_fk;
       public       postgres    false    208            &      x������ � �     