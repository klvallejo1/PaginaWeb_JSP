PGDMP  '    
                 |            bd_productos    16.2    16.2 *               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16429    bd_productos    DATABASE        CREATE DATABASE bd_productos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE bd_productos;
                postgres    false            �            1259    16431    tb_categoria    TABLE     \   CREATE TABLE public.tb_categoria (
    id_cat integer NOT NULL,
    descripcion_cat text
);
     DROP TABLE public.tb_categoria;
       public         heap    postgres    false            �            1259    16430    tb_categoria_id_cat_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_categoria_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_categoria_id_cat_seq;
       public          postgres    false    216                       0    0    tb_categoria_id_cat_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_categoria_id_cat_seq OWNED BY public.tb_categoria.id_cat;
          public          postgres    false    215            �            1259    16463    tb_estadocivil    TABLE     ^   CREATE TABLE public.tb_estadocivil (
    id_est integer NOT NULL,
    descripcion_est text
);
 "   DROP TABLE public.tb_estadocivil;
       public         heap    postgres    false            �            1259    16462    tb_estadocivil_id_est_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_estadocivil_id_est_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_estadocivil_id_est_seq;
       public          postgres    false    222                       0    0    tb_estadocivil_id_est_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_estadocivil_id_est_seq OWNED BY public.tb_estadocivil.id_est;
          public          postgres    false    221            �            1259    16454 	   tb_perfil    TABLE     Y   CREATE TABLE public.tb_perfil (
    id_per integer NOT NULL,
    descripcion_per text
);
    DROP TABLE public.tb_perfil;
       public         heap    postgres    false            �            1259    16453    tb_perfil_id_per_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_perfil_id_per_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_perfil_id_per_seq;
       public          postgres    false    220                       0    0    tb_perfil_id_per_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_perfil_id_per_seq OWNED BY public.tb_perfil.id_per;
          public          postgres    false    219            �            1259    16440    tb_producto    TABLE     �   CREATE TABLE public.tb_producto (
    id_pr integer NOT NULL,
    id_cat integer,
    nombre_pr text,
    cantidad_pr integer,
    precio_pr double precision,
    foto_pr bytea
);
    DROP TABLE public.tb_producto;
       public         heap    postgres    false            �            1259    16439    tb_producto_id_pr_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_producto_id_pr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tb_producto_id_pr_seq;
       public          postgres    false    218                       0    0    tb_producto_id_pr_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tb_producto_id_pr_seq OWNED BY public.tb_producto.id_pr;
          public          postgres    false    217            �            1259    16497 
   tb_usuario    TABLE     �   CREATE TABLE public.tb_usuario (
    id_us integer NOT NULL,
    id_per integer,
    id_est integer,
    nombre_us text NOT NULL,
    cedula_us text NOT NULL,
    correo_us text,
    clave_us text
);
    DROP TABLE public.tb_usuario;
       public         heap    postgres    false            �            1259    16496    tb_usuario_id_us_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_usuario_id_us_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_usuario_id_us_seq;
       public          postgres    false    224                       0    0    tb_usuario_id_us_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_usuario_id_us_seq OWNED BY public.tb_usuario.id_us;
          public          postgres    false    223            d           2604    16434    tb_categoria id_cat    DEFAULT     z   ALTER TABLE ONLY public.tb_categoria ALTER COLUMN id_cat SET DEFAULT nextval('public.tb_categoria_id_cat_seq'::regclass);
 B   ALTER TABLE public.tb_categoria ALTER COLUMN id_cat DROP DEFAULT;
       public          postgres    false    216    215    216            g           2604    16466    tb_estadocivil id_est    DEFAULT     ~   ALTER TABLE ONLY public.tb_estadocivil ALTER COLUMN id_est SET DEFAULT nextval('public.tb_estadocivil_id_est_seq'::regclass);
 D   ALTER TABLE public.tb_estadocivil ALTER COLUMN id_est DROP DEFAULT;
       public          postgres    false    221    222    222            f           2604    16457    tb_perfil id_per    DEFAULT     t   ALTER TABLE ONLY public.tb_perfil ALTER COLUMN id_per SET DEFAULT nextval('public.tb_perfil_id_per_seq'::regclass);
 ?   ALTER TABLE public.tb_perfil ALTER COLUMN id_per DROP DEFAULT;
       public          postgres    false    220    219    220            e           2604    16443    tb_producto id_pr    DEFAULT     v   ALTER TABLE ONLY public.tb_producto ALTER COLUMN id_pr SET DEFAULT nextval('public.tb_producto_id_pr_seq'::regclass);
 @   ALTER TABLE public.tb_producto ALTER COLUMN id_pr DROP DEFAULT;
       public          postgres    false    217    218    218            h           2604    16500    tb_usuario id_us    DEFAULT     t   ALTER TABLE ONLY public.tb_usuario ALTER COLUMN id_us SET DEFAULT nextval('public.tb_usuario_id_us_seq'::regclass);
 ?   ALTER TABLE public.tb_usuario ALTER COLUMN id_us DROP DEFAULT;
       public          postgres    false    223    224    224                      0    16431    tb_categoria 
   TABLE DATA           ?   COPY public.tb_categoria (id_cat, descripcion_cat) FROM stdin;
    public          postgres    false    216   .                 0    16463    tb_estadocivil 
   TABLE DATA           A   COPY public.tb_estadocivil (id_est, descripcion_est) FROM stdin;
    public          postgres    false    222   g.       
          0    16454 	   tb_perfil 
   TABLE DATA           <   COPY public.tb_perfil (id_per, descripcion_per) FROM stdin;
    public          postgres    false    220   �.                 0    16440    tb_producto 
   TABLE DATA           `   COPY public.tb_producto (id_pr, id_cat, nombre_pr, cantidad_pr, precio_pr, foto_pr) FROM stdin;
    public          postgres    false    218   /                 0    16497 
   tb_usuario 
   TABLE DATA           f   COPY public.tb_usuario (id_us, id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) FROM stdin;
    public          postgres    false    224   �/                  0    0    tb_categoria_id_cat_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_categoria_id_cat_seq', 1, false);
          public          postgres    false    215                       0    0    tb_estadocivil_id_est_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_estadocivil_id_est_seq', 1, false);
          public          postgres    false    221                       0    0    tb_perfil_id_per_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_perfil_id_per_seq', 1, false);
          public          postgres    false    219                       0    0    tb_producto_id_pr_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_producto_id_pr_seq', 4, true);
          public          postgres    false    217                       0    0    tb_usuario_id_us_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tb_usuario_id_us_seq', 9, true);
          public          postgres    false    223            j           2606    16438    tb_categoria id_cat 
   CONSTRAINT     U   ALTER TABLE ONLY public.tb_categoria
    ADD CONSTRAINT id_cat PRIMARY KEY (id_cat);
 =   ALTER TABLE ONLY public.tb_categoria DROP CONSTRAINT id_cat;
       public            postgres    false    216            l           2606    16447    tb_producto id_pr 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT id_pr PRIMARY KEY (id_pr);
 ;   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT id_pr;
       public            postgres    false    218            r           2606    16504    tb_usuario id_us 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT id_us PRIMARY KEY (id_us);
 :   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT id_us;
       public            postgres    false    224            p           2606    16468 "   tb_estadocivil tb_estadocivil_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tb_estadocivil
    ADD CONSTRAINT tb_estadocivil_pkey PRIMARY KEY (id_est);
 L   ALTER TABLE ONLY public.tb_estadocivil DROP CONSTRAINT tb_estadocivil_pkey;
       public            postgres    false    222            n           2606    16461    tb_perfil tb_perfil_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_perfil
    ADD CONSTRAINT tb_perfil_pkey PRIMARY KEY (id_per);
 B   ALTER TABLE ONLY public.tb_perfil DROP CONSTRAINT tb_perfil_pkey;
       public            postgres    false    220            s           2606    16448    tb_producto id_cat    FK CONSTRAINT     {   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT id_cat FOREIGN KEY (id_cat) REFERENCES public.tb_categoria(id_cat);
 <   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT id_cat;
       public          postgres    false    218    216    4714            t           2606    16510    tb_usuario id_est    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT id_est FOREIGN KEY (id_est) REFERENCES public.tb_estadocivil(id_est) NOT VALID;
 ;   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT id_est;
       public          postgres    false    224    4720    222            u           2606    16505    tb_usuario id_per    FK CONSTRAINT     w   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT id_per FOREIGN KEY (id_per) REFERENCES public.tb_perfil(id_per);
 ;   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT id_per;
       public          postgres    false    4718    224    220               =   x�3��0����K��2��0�N���95�5��s�S�L85L4]R�JR��b���� ���         K   x�3���)I-��2�t�,�/J�LL��2�����S��L*J�2�tN,	�qz楤�e�e9��a��@:F��� 7��      
   0   x�3�tL����,.)JL�/�2�t��L�+I�2�K�KI	��qqq &��         �   x�]α�0����HhA�������E	��b�5����0�����K�p�/��顲�¢3�����4��"$p$݌>fH��N(f�Q�GZ�s��Px�~֑ ��IxC��!��RM�f�s��S�Yܓ1��w��5���0�9G��oڑ]`5�e(��ԊF�         �   x�]��� F��S�$��5��1qr�B�FQ
Mj;�������rr>$�.GL���\H�c[!T�]G�e�N�G\c���p#�����n�O�L3ð0�C�t[�
N%G���%�c�A��4��a�v�nW���d�ȫ�k[*~��<��ԁB�vBp     