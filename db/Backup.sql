PGDMP                         w            easy-restaurant    11.1    11.1 G    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            e           1262    33199    easy-restaurant    DATABASE     �   CREATE DATABASE "easy-restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
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
       public       postgres    false    210            f           0    0    bill_bill_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bill_bill_id_seq OWNED BY public.bill.bill_id;
            public       postgres    false    209            �            1259    33202 	   ingredent    TABLE     �   CREATE TABLE public.ingredent (
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
       public       postgres    false    197            g           0    0    ingredent_ingredent_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ingredent_ingredent_id_seq OWNED BY public.ingredent.ingredent_id;
            public       postgres    false    196            �            1259    33250    ingredent_recipe    TABLE     �   CREATE TABLE public.ingredent_recipe (
    recipe_id integer NOT NULL,
    ingredent_id integer NOT NULL,
    ingredent_measure character varying
);
 $   DROP TABLE public.ingredent_recipe;
       public         postgres    false            �            1259    33279    plate    TABLE     {   CREATE TABLE public.plate (
    plate_id integer NOT NULL,
    bill_id integer NOT NULL,
    recipe_id integer NOT NULL
);
    DROP TABLE public.plate;
       public         postgres    false            �            1259    33277    plate_plate_id_seq    SEQUENCE     {   CREATE SEQUENCE public.plate_plate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.plate_plate_id_seq;
       public       postgres    false    212            h           0    0    plate_plate_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.plate_plate_id_seq OWNED BY public.plate.plate_id;
            public       postgres    false    211            �            1259    33241    recipe    TABLE     7  CREATE TABLE public.recipe (
    recipe_id integer NOT NULL,
    recipe_text character varying(500),
    recipe_url character varying(256),
    recipe_title character varying NOT NULL,
    recipe_time_waiting character varying NOT NULL,
    recipe_price integer NOT NULL,
    type_recipe_id integer NOT NULL
);
    DROP TABLE public.recipe;
       public         postgres    false            �            1259    33239    recipe_recipe_id_seq    SEQUENCE     }   CREATE SEQUENCE public.recipe_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.recipe_recipe_id_seq;
       public       postgres    false    205            i           0    0    recipe_recipe_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.recipe_recipe_id_seq OWNED BY public.recipe.recipe_id;
            public       postgres    false    204            �            1259    33214    type_general_recipe    TABLE     �   CREATE TABLE public.type_general_recipe (
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
       public       postgres    false    199            j           0    0 .   type_general_recipe_type_recipe_general_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.type_general_recipe_type_recipe_general_id_seq OWNED BY public.type_general_recipe.type_recipe_general_id;
            public       postgres    false    198            �            1259    33233    type_recipe    TABLE     �   CREATE TABLE public.type_recipe (
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
       public       postgres    false    203            k           0    0     type_recipe_type_recipe_id_seq_1    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.type_recipe_type_recipe_id_seq_1 OWNED BY public.type_recipe.type_recipe_id;
            public       postgres    false    202            �            1259    33225 
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
       public       postgres    false    201            l           0    0    type_users_type_users_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.type_users_type_users_id_seq OWNED BY public.type_users.type_users_id;
            public       postgres    false    200            �            1259    33257    users    TABLE     {  CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_username character varying(20) NOT NULL,
    user_password character varying(60) NOT NULL,
    user_name character varying(40) NOT NULL,
    user_lastname character varying(50) NOT NULL,
    user_creation_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    type_users_id integer NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    33255    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    208            m           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    207            �
           2604    33269    bill bill_id    DEFAULT     l   ALTER TABLE ONLY public.bill ALTER COLUMN bill_id SET DEFAULT nextval('public.bill_bill_id_seq'::regclass);
 ;   ALTER TABLE public.bill ALTER COLUMN bill_id DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    33205    ingredent ingredent_id    DEFAULT     �   ALTER TABLE ONLY public.ingredent ALTER COLUMN ingredent_id SET DEFAULT nextval('public.ingredent_ingredent_id_seq'::regclass);
 E   ALTER TABLE public.ingredent ALTER COLUMN ingredent_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    33282    plate plate_id    DEFAULT     p   ALTER TABLE ONLY public.plate ALTER COLUMN plate_id SET DEFAULT nextval('public.plate_plate_id_seq'::regclass);
 =   ALTER TABLE public.plate ALTER COLUMN plate_id DROP DEFAULT;
       public       postgres    false    212    211    212            �
           2604    33244    recipe recipe_id    DEFAULT     t   ALTER TABLE ONLY public.recipe ALTER COLUMN recipe_id SET DEFAULT nextval('public.recipe_recipe_id_seq'::regclass);
 ?   ALTER TABLE public.recipe ALTER COLUMN recipe_id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    33217 *   type_general_recipe type_recipe_general_id    DEFAULT     �   ALTER TABLE ONLY public.type_general_recipe ALTER COLUMN type_recipe_general_id SET DEFAULT nextval('public.type_general_recipe_type_recipe_general_id_seq'::regclass);
 Y   ALTER TABLE public.type_general_recipe ALTER COLUMN type_recipe_general_id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    33236    type_recipe type_recipe_id    DEFAULT     �   ALTER TABLE ONLY public.type_recipe ALTER COLUMN type_recipe_id SET DEFAULT nextval('public.type_recipe_type_recipe_id_seq_1'::regclass);
 I   ALTER TABLE public.type_recipe ALTER COLUMN type_recipe_id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    33228    type_users type_users_id    DEFAULT     �   ALTER TABLE ONLY public.type_users ALTER COLUMN type_users_id SET DEFAULT nextval('public.type_users_type_users_id_seq'::regclass);
 G   ALTER TABLE public.type_users ALTER COLUMN type_users_id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    33260    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    208    207    208            ]          0    33266    bill 
   TABLE DATA               �   COPY public.bill (bill_id, bill_mount, user_id, bill_creatin_time, bill_facture_number, bill_name_client, bill_lastname_client, bill_pay) FROM stdin;
    public       postgres    false    210   pT       P          0    33202 	   ingredent 
   TABLE DATA               R   COPY public.ingredent (ingredent_id, ingredent_name, ingredent_exist) FROM stdin;
    public       postgres    false    197   �T       Y          0    33250    ingredent_recipe 
   TABLE DATA               V   COPY public.ingredent_recipe (recipe_id, ingredent_id, ingredent_measure) FROM stdin;
    public       postgres    false    206   �T       _          0    33279    plate 
   TABLE DATA               =   COPY public.plate (plate_id, bill_id, recipe_id) FROM stdin;
    public       postgres    false    212   OU       X          0    33241    recipe 
   TABLE DATA               �   COPY public.recipe (recipe_id, recipe_text, recipe_url, recipe_title, recipe_time_waiting, recipe_price, type_recipe_id) FROM stdin;
    public       postgres    false    205   lU       R          0    33214    type_general_recipe 
   TABLE DATA               f   COPY public.type_general_recipe (type_recipe_general_id, type_recipe_general_description) FROM stdin;
    public       postgres    false    199   LV       V          0    33233    type_recipe 
   TABLE DATA               f   COPY public.type_recipe (type_recipe_id, type_recipe_description, type_recipe_general_id) FROM stdin;
    public       postgres    false    203   V       T          0    33225 
   type_users 
   TABLE DATA               K   COPY public.type_users (type_users_id, type_users_description) FROM stdin;
    public       postgres    false    201   �V       [          0    33257    users 
   TABLE DATA               �   COPY public.users (user_id, user_username, user_password, user_name, user_lastname, user_creation_time, type_users_id) FROM stdin;
    public       postgres    false    208   �V       n           0    0    bill_bill_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bill_bill_id_seq', 1, false);
            public       postgres    false    209            o           0    0    ingredent_ingredent_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ingredent_ingredent_id_seq', 1, false);
            public       postgres    false    196            p           0    0    plate_plate_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.plate_plate_id_seq', 1, false);
            public       postgres    false    211            q           0    0    recipe_recipe_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.recipe_recipe_id_seq', 1, true);
            public       postgres    false    204            r           0    0 .   type_general_recipe_type_recipe_general_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.type_general_recipe_type_recipe_general_id_seq', 1, false);
            public       postgres    false    198            s           0    0     type_recipe_type_recipe_id_seq_1    SEQUENCE SET     O   SELECT pg_catalog.setval('public.type_recipe_type_recipe_id_seq_1', 1, false);
            public       postgres    false    202            t           0    0    type_users_type_users_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.type_users_type_users_id_seq', 1, false);
            public       postgres    false    200            u           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);
            public       postgres    false    207            �
           2606    33276    bill bill_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_id PRIMARY KEY (bill_id);
 6   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_id;
       public         postgres    false    210            �
           2606    33211    ingredent ingredent_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ingredent
    ADD CONSTRAINT ingredent_id PRIMARY KEY (ingredent_id);
 @   ALTER TABLE ONLY public.ingredent DROP CONSTRAINT ingredent_id;
       public         postgres    false    197            �
           2606    33254 $   ingredent_recipe ingredent_recipe_id 
   CONSTRAINT     w   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT ingredent_recipe_id PRIMARY KEY (recipe_id, ingredent_id);
 N   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT ingredent_recipe_id;
       public         postgres    false    206    206            �
           2606    33284    plate plate_id 
   CONSTRAINT     R   ALTER TABLE ONLY public.plate
    ADD CONSTRAINT plate_id PRIMARY KEY (plate_id);
 8   ALTER TABLE ONLY public.plate DROP CONSTRAINT plate_id;
       public         postgres    false    212            �
           2606    33249    recipe recipe_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_id PRIMARY KEY (recipe_id);
 :   ALTER TABLE ONLY public.recipe DROP CONSTRAINT recipe_id;
       public         postgres    false    205            �
           2606    33222 *   type_general_recipe type_general_recipe_id 
   CONSTRAINT     |   ALTER TABLE ONLY public.type_general_recipe
    ADD CONSTRAINT type_general_recipe_id PRIMARY KEY (type_recipe_general_id);
 T   ALTER TABLE ONLY public.type_general_recipe DROP CONSTRAINT type_general_recipe_id;
       public         postgres    false    199            �
           2606    33238    type_recipe type_recipe_id 
   CONSTRAINT     d   ALTER TABLE ONLY public.type_recipe
    ADD CONSTRAINT type_recipe_id PRIMARY KEY (type_recipe_id);
 D   ALTER TABLE ONLY public.type_recipe DROP CONSTRAINT type_recipe_id;
       public         postgres    false    203            �
           2606    33230    type_users type_users_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.type_users
    ADD CONSTRAINT type_users_id PRIMARY KEY (type_users_id);
 B   ALTER TABLE ONLY public.type_users DROP CONSTRAINT type_users_id;
       public         postgres    false    201            �
           2606    33263    users users_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id;
       public         postgres    false    208            �
           2606    33320    plate bill_plate_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.plate
    ADD CONSTRAINT bill_plate_fk FOREIGN KEY (bill_id) REFERENCES public.bill(bill_id);
 =   ALTER TABLE ONLY public.plate DROP CONSTRAINT bill_plate_fk;
       public       postgres    false    2763    212    210            �
           2606    33285 .   ingredent_recipe ingredent_ingredent_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT ingredent_ingredent_recipe_fk FOREIGN KEY (ingredent_id) REFERENCES public.ingredent(ingredent_id);
 X   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT ingredent_ingredent_recipe_fk;
       public       postgres    false    206    197    2749            �
           2606    33310 +   ingredent_recipe recipe_ingredent_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingredent_recipe
    ADD CONSTRAINT recipe_ingredent_recipe_fk FOREIGN KEY (recipe_id) REFERENCES public.recipe(recipe_id);
 U   ALTER TABLE ONLY public.ingredent_recipe DROP CONSTRAINT recipe_ingredent_recipe_fk;
       public       postgres    false    206    2757    205            �
           2606    33305    plate recipe_plate_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.plate
    ADD CONSTRAINT recipe_plate_fk FOREIGN KEY (recipe_id) REFERENCES public.recipe(recipe_id);
 ?   ALTER TABLE ONLY public.plate DROP CONSTRAINT recipe_plate_fk;
       public       postgres    false    2757    212    205            �
           2606    33290 .   type_recipe type_general_recipe_type_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_recipe
    ADD CONSTRAINT type_general_recipe_type_recipe_fk FOREIGN KEY (type_recipe_general_id) REFERENCES public.type_general_recipe(type_recipe_general_id);
 X   ALTER TABLE ONLY public.type_recipe DROP CONSTRAINT type_general_recipe_type_recipe_fk;
       public       postgres    false    203    199    2751            �
           2606    33300    recipe type_recipe_recipe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT type_recipe_recipe_fk FOREIGN KEY (type_recipe_id) REFERENCES public.type_recipe(type_recipe_id);
 F   ALTER TABLE ONLY public.recipe DROP CONSTRAINT type_recipe_recipe_fk;
       public       postgres    false    2755    203    205            �
           2606    33295    users type_user_users_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT type_user_users_fk FOREIGN KEY (type_users_id) REFERENCES public.type_users(type_users_id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT type_user_users_fk;
       public       postgres    false    208    201    2753            �
           2606    33315    bill users_bill_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT users_bill_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 <   ALTER TABLE ONLY public.bill DROP CONSTRAINT users_bill_fk;
       public       postgres    false    208    210    2761            ]      x������ � �      P   \   x��;
�@��0�{kAP�l�Dw!�T��l7�SA􉟂a��$jӺ���[�+��K��d
;�0�t6�~400�C�1��5C��YV      Y   F   x�=���@�b�
*`n�34CN����F�"����:�ڼ)o�\D�3K*�.�5�n��=��9����z      _      x������ � �      X   �   x�e�An� E��)� U8��"%�lF6H�� 'JO_�iT�K���>3�(e)K��4�qr��%�p�Xƣ������j����g�_�JK�D_�1:�	]��q!�Z�^���g���YQ�}1�	���MLT��;)A�>Y�OL3ݬ����e����F�<QfL�ۯ�/�=߂I懪꺺]#�U~g}*���j���{rj�      R   #   x�3��/.)J-�2�t��-M-��/����� v��      V   *   x�3��/*I,�4�2�H,1���̢�̜0/F��� ��
�      T      x�3�t�O��K�2�tN�J����� <��      [   |   x�3��)�,NMɷ4�T1JT14P�0�OϷp�p��*�Mw�(���3���I�)q)�*�Ȩ�+β4t�,/�	�u����X�X���id`h�k`D
�FV�V�Fz�Ɩ朆\1z\\\ {!r     