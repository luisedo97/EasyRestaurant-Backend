PGDMP     #        	            w            easy-restaurant    11.1    11.1     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            +           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "easy-restaurant";
             postgres    false            �            1259    33202 	   ingredent    TABLE     �   CREATE TABLE public.ingredent (
    ingredent_id integer NOT NULL,
    ingredent_name character varying NOT NULL,
    ingredent_exist boolean DEFAULT true NOT NULL
);
    DROP TABLE public.ingredent;
       public         postgres    false            �            1259    33200    ingredent_ingredent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ingredent_ingredent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ingredent_ingredent_id_seq;
       public       postgres    false    197            ,           0    0    ingredent_ingredent_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ingredent_ingredent_id_seq OWNED BY public.ingredent.ingredent_id;
            public       postgres    false    196            �
           2604    33205    ingredent ingredent_id    DEFAULT     �   ALTER TABLE ONLY public.ingredent ALTER COLUMN ingredent_id SET DEFAULT nextval('public.ingredent_ingredent_id_seq'::regclass);
 E   ALTER TABLE public.ingredent ALTER COLUMN ingredent_id DROP DEFAULT;
       public       postgres    false    196    197    197            %          0    33202 	   ingredent 
   TABLE DATA               R   COPY public.ingredent (ingredent_id, ingredent_name, ingredent_exist) FROM stdin;
    public       postgres    false    197   7       -           0    0    ingredent_ingredent_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ingredent_ingredent_id_seq', 1, false);
            public       postgres    false    196            �
           2606    33211    ingredent ingredent_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ingredent
    ADD CONSTRAINT ingredent_id PRIMARY KEY (ingredent_id);
 @   ALTER TABLE ONLY public.ingredent DROP CONSTRAINT ingredent_id;
       public         postgres    false    197            %   f   x�3�t��/ʬ��,�2������A���9�%�@�gXbf^fNN"�c����X�ϙ�e�\����ZR�	�0��MM,2��SS�A:-9KJ�=... �A�     