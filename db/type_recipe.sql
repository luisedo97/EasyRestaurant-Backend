PGDMP     ;    5                w            easy-restaurant    11.1    11.1     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            +           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "easy-restaurant";
             postgres    false            �            1259    33233    type_recipe    TABLE     �   CREATE TABLE public.type_recipe (
    type_recipe_id integer NOT NULL,
    type_recipe_description character varying(25) NOT NULL,
    type_recipe_general_id integer NOT NULL
);
    DROP TABLE public.type_recipe;
       public         postgres    false            �            1259    33231     type_recipe_type_recipe_id_seq_1    SEQUENCE     �   CREATE SEQUENCE public.type_recipe_type_recipe_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.type_recipe_type_recipe_id_seq_1;
       public       postgres    false    203            ,           0    0     type_recipe_type_recipe_id_seq_1    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.type_recipe_type_recipe_id_seq_1 OWNED BY public.type_recipe.type_recipe_id;
            public       postgres    false    202            �
           2604    33236    type_recipe type_recipe_id    DEFAULT     �   ALTER TABLE ONLY public.type_recipe ALTER COLUMN type_recipe_id SET DEFAULT nextval('public.type_recipe_type_recipe_id_seq_1'::regclass);
 I   ALTER TABLE public.type_recipe ALTER COLUMN type_recipe_id DROP DEFAULT;
       public       postgres    false    203    202    203            %          0    33233    type_recipe 
   TABLE DATA               f   COPY public.type_recipe (type_recipe_id, type_recipe_description, type_recipe_general_id) FROM stdin;
    public       postgres    false    203   s       -           0    0     type_recipe_type_recipe_id_seq_1    SEQUENCE SET     O   SELECT pg_catalog.setval('public.type_recipe_type_recipe_id_seq_1', 1, false);
            public       postgres    false    202            �
           2606    33238    type_recipe type_recipe_id 
   CONSTRAINT     d   ALTER TABLE ONLY public.type_recipe
    ADD CONSTRAINT type_recipe_id PRIMARY KEY (type_recipe_id);
 D   ALTER TABLE ONLY public.type_recipe DROP CONSTRAINT type_recipe_id;
       public         postgres    false    203            �
           2606    33290 .   type_recipe type_general_recipe_type_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_recipe
    ADD CONSTRAINT type_general_recipe_type_recipe_fk FOREIGN KEY (type_recipe_general_id) REFERENCES public.type_general_recipe(type_recipe_general_id);
 X   ALTER TABLE ONLY public.type_recipe DROP CONSTRAINT type_general_recipe_type_recipe_fk;
       public       postgres    false    203            %   *   x�3��/*I,�4�2�H,1���̢�̜0/F��� ��
�     