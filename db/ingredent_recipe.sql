PGDMP     9        	            w            easy-restaurant    11.1    11.1 	    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            *           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "easy-restaurant";
             postgres    false            �            1259    33250    ingredent_recipe    TABLE     �   CREATE TABLE public.ingredent_recipe (
    recipe_id integer NOT NULL,
    ingredent_id integer NOT NULL,
    ingredent_measure character varying
);
 $   DROP TABLE public.ingredent_recipe;
       public         postgres    false            $          0    33250    ingredent_recipe 
   TABLE DATA               V   COPY public.ingredent_recipe (recipe_id, ingredent_id, ingredent_measure) FROM stdin;
    public       postgres    false    206   2
       �
           2606    33254 $   ingredent_recipe ingredent_recipe_id 
   CONSTRAINT     w   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT ingredent_recipe_id PRIMARY KEY (recipe_id, ingredent_id);
 N   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT ingredent_recipe_id;
       public         postgres    false    206    206            �
           2606    33285 .   ingredent_recipe ingredent_ingredent_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT ingredent_ingredent_recipe_fk FOREIGN KEY (ingredent_id) REFERENCES public.ingredent(ingredent_id);
 X   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT ingredent_ingredent_recipe_fk;
       public       postgres    false    206            �
           2606    33310 +   ingredent_recipe recipe_ingredent_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT recipe_ingredent_recipe_fk FOREIGN KEY (recipe_id) REFERENCES public.recipe(recipe_id);
 U   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT recipe_ingredent_recipe_fk;
       public       postgres    false    206            $   V   x�=���0ߢ�T��0q�K�|���H�W'�n0H�� ��I�j�Iggj�7]A]9�=uh�:���3k�w��1     