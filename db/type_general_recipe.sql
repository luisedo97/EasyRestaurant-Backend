PGDMP     !    6                w            easy-restaurant    11.1    11.1     '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            *           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "easy-restaurant";
             postgres    false            �            1259    33214    type_general_recipe    TABLE     �   CREATE TABLE public.type_general_recipe (
    type_recipe_general_id integer NOT NULL,
    type_recipe_general_description character varying NOT NULL
);
 '   DROP TABLE public.type_general_recipe;
       public         postgres    false            �            1259    33212 .   type_general_recipe_type_recipe_general_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_general_recipe_type_recipe_general_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.type_general_recipe_type_recipe_general_id_seq;
       public       postgres    false    199            +           0    0 .   type_general_recipe_type_recipe_general_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.type_general_recipe_type_recipe_general_id_seq OWNED BY public.type_general_recipe.type_recipe_general_id;
            public       postgres    false    198            �
           2604    33217 *   type_general_recipe type_recipe_general_id    DEFAULT     �   ALTER TABLE ONLY public.type_general_recipe ALTER COLUMN type_recipe_general_id SET DEFAULT nextval('public.type_general_recipe_type_recipe_general_id_seq'::regclass);
 Y   ALTER TABLE public.type_general_recipe ALTER COLUMN type_recipe_general_id DROP DEFAULT;
       public       postgres    false    199    198    199            $          0    33214    type_general_recipe 
   TABLE DATA               f   COPY public.type_general_recipe (type_recipe_general_id, type_recipe_general_description) FROM stdin;
    public       postgres    false    199   �       ,           0    0 .   type_general_recipe_type_recipe_general_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.type_general_recipe_type_recipe_general_id_seq', 1, false);
            public       postgres    false    198            �
           2606    33222 *   type_general_recipe type_general_recipe_id 
   CONSTRAINT     |   ALTER TABLE ONLY public.type_general_recipe
    ADD CONSTRAINT type_general_recipe_id PRIMARY KEY (type_recipe_general_id);
 T   ALTER TABLE ONLY public.type_general_recipe DROP CONSTRAINT type_general_recipe_id;
       public         postgres    false    199            $   #   x�3��/.)J-�2�t��-M-��/����� v��     