PGDMP     "    #    	            w            easy-restaurant    11.1    11.1     *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            -           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "easy-restaurant";
             postgres    false            �            1259    33266    bill    TABLE     k  CREATE TABLE public.bill (
    bill_id integer NOT NULL,
    bill_mount numeric DEFAULT 0 NOT NULL,
    user_id integer NOT NULL,
    bill_creatin_time timestamp without time zone NOT NULL,
    bill_facture_number integer NOT NULL,
    bill_name_client character varying,
    bill_lastname_client character varying,
    bill_pay boolean DEFAULT false NOT NULL
);
    DROP TABLE public.bill;
       public         postgres    false            �            1259    33264    bill_bill_id_seq    SEQUENCE     y   CREATE SEQUENCE public.bill_bill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bill_bill_id_seq;
       public       postgres    false    210            .           0    0    bill_bill_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bill_bill_id_seq OWNED BY public.bill.bill_id;
            public       postgres    false    209            �
           2604    33269    bill bill_id    DEFAULT     l   ALTER TABLE ONLY public.bill ALTER COLUMN bill_id SET DEFAULT nextval('public.bill_bill_id_seq'::regclass);
 ;   ALTER TABLE public.bill ALTER COLUMN bill_id DROP DEFAULT;
       public       postgres    false    210    209    210            '          0    33266    bill 
   TABLE DATA               �   COPY public.bill (bill_id, bill_mount, user_id, bill_creatin_time, bill_facture_number, bill_name_client, bill_lastname_client, bill_pay) FROM stdin;
    public       postgres    false    210   �       /           0    0    bill_bill_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bill_bill_id_seq', 1, false);
            public       postgres    false    209            �
           2606    33276    bill bill_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_id PRIMARY KEY (bill_id);
 6   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_id;
       public         postgres    false    210            �
           2606    33315    bill users_bill_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT users_bill_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 <   ALTER TABLE ONLY public.bill DROP CONSTRAINT users_bill_fk;
       public       postgres    false    210            '   l   x�3�41�4�420��50�50Q04�20�25�370�40�;%���q���g��s�qr��5�`�dl T�Y��X�X��a«�Ԁӫ4'3�ӱ,3'�%F��� �I"y     