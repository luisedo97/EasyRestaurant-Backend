PGDMP             	            w            easy-restaurant-v2    11.1    11.1     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            +           1262    42263    easy-restaurant-v2    DATABASE     �   CREATE DATABASE "easy-restaurant-v2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 $   DROP DATABASE "easy-restaurant-v2";
             postgres    false            �            1259    42305    recipe    TABLE     7  CREATE TABLE public.recipe (
    recipe_id integer NOT NULL,
    recipe_text character varying(500),
    recipe_url character varying(256),
    recipe_title character varying NOT NULL,
    recipe_time_waiting character varying NOT NULL,
    recipe_price integer NOT NULL,
    type_recipe_id integer NOT NULL
);
    DROP TABLE public.recipe;
       public         postgres    false            �            1259    42303    recipe_recipe_id_seq    SEQUENCE     }   CREATE SEQUENCE public.recipe_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.recipe_recipe_id_seq;
       public       postgres    false    205            ,           0    0    recipe_recipe_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.recipe_recipe_id_seq OWNED BY public.recipe.recipe_id;
            public       postgres    false    204            �
           2604    42308    recipe recipe_id    DEFAULT     t   ALTER TABLE ONLY public.recipe ALTER COLUMN recipe_id SET DEFAULT nextval('public.recipe_recipe_id_seq'::regclass);
 ?   ALTER TABLE public.recipe ALTER COLUMN recipe_id DROP DEFAULT;
       public       postgres    false    204    205    205            %          0    42305    recipe 
   TABLE DATA               �   COPY public.recipe (recipe_id, recipe_text, recipe_url, recipe_title, recipe_time_waiting, recipe_price, type_recipe_id) FROM stdin;
    public       postgres    false    205          -           0    0    recipe_recipe_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.recipe_recipe_id_seq', 1, false);
            public       postgres    false    204            �
           2606    42313    recipe recipe_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_id PRIMARY KEY (recipe_id);
 :   ALTER TABLE ONLY public.recipe DROP CONSTRAINT recipe_id;
       public         postgres    false    205            �
           2606    42367    recipe type_recipe_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT type_recipe_recipe_fk FOREIGN KEY (type_recipe_id) REFERENCES public.type_recipe(type_recipe_id);
 F   ALTER TABLE ONLY public.recipe DROP CONSTRAINT type_recipe_recipe_fk;
       public       postgres    false    205            %      x������ � �     