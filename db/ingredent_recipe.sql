PGDMP              
            w            Restaurant DB    11.1    11.1 	    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            *           1262    42644    Restaurant DB    DATABASE     �   CREATE DATABASE "Restaurant DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "Restaurant DB";
             postgres    false            �            1259    42695    ingredent_recipe    TABLE     �   CREATE TABLE public.ingredent_recipe (
    recipe_id integer NOT NULL,
    ingredent_id integer NOT NULL,
    ingredent_mount character varying
);
 $   DROP TABLE public.ingredent_recipe;
       public         postgres    false            $          0    42695    ingredent_recipe 
   TABLE DATA               T   COPY public.ingredent_recipe (recipe_id, ingredent_id, ingredent_mount) FROM stdin;
    public       postgres    false    206   n
       �
           2606    42702 $   ingredent_recipe ingredent_recipe_id 
   CONSTRAINT     w   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT ingredent_recipe_id PRIMARY KEY (recipe_id, ingredent_id);
 N   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT ingredent_recipe_id;
       public         postgres    false    206    206            �
           2606    42733 .   ingredent_recipe ingredent_ingredent_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT ingredent_ingredent_recipe_fk FOREIGN KEY (ingredent_id) REFERENCES public.ingredent(ingredent_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT ingredent_ingredent_recipe_fk;
       public       postgres    false    206            �
           2606    42758 +   ingredent_recipe recipe_ingredent_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT recipe_ingredent_recipe_fk FOREIGN KEY (recipe_id) REFERENCES public.recipe(recipe_id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT recipe_ingredent_recipe_fk;
       public       postgres    false    206            $   6   x�3�4�45H�2��&P�J�Ais(m�-����ac�03a���qqq +�     