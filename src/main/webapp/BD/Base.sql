PGDMP       4                |            bd_productos    16.2    16.2 *    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16431    bd_productos    DATABASE     �   CREATE DATABASE bd_productos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE bd_productos;
                postgres    false            �            1259    16433    tb_categoria    TABLE     \   CREATE TABLE public.tb_categoria (
    id_cat integer NOT NULL,
    descripcion_cat text
);
     DROP TABLE public.tb_categoria;
       public         heap    postgres    false            �            1259    16432    tb_categoria_id_cat_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_categoria_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_categoria_id_cat_seq;
       public          postgres    false    216            �           0    0    tb_categoria_id_cat_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_categoria_id_cat_seq OWNED BY public.tb_categoria.id_cat;
          public          postgres    false    215            �            1259    16482    tb_estadocivil    TABLE     ^   CREATE TABLE public.tb_estadocivil (
    id_est integer NOT NULL,
    descripcion_est text
);
 "   DROP TABLE public.tb_estadocivil;
       public         heap    postgres    false            �            1259    16481    tb_estadocivil_id_est_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_estadocivil_id_est_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_estadocivil_id_est_seq;
       public          postgres    false    222            �           0    0    tb_estadocivil_id_est_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_estadocivil_id_est_seq OWNED BY public.tb_estadocivil.id_est;
          public          postgres    false    221            �            1259    16461 	   tb_perfil    TABLE     Y   CREATE TABLE public.tb_perfil (
    id_per integer NOT NULL,
    descripcion_per text
);
    DROP TABLE public.tb_perfil;
       public         heap    postgres    false            �            1259    16460    tb_perfil_id_per_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_perfil_id_per_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_perfil_id_per_seq;
       public          postgres    false    220            �           0    0    tb_perfil_id_per_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_perfil_id_per_seq OWNED BY public.tb_perfil.id_per;
          public          postgres    false    219            �            1259    16442    tb_producto    TABLE     �   CREATE TABLE public.tb_producto (
    id_pr integer NOT NULL,
    id_cat integer,
    nombre_pr text,
    cantidad_pr integer,
    precio_pr double precision,
    foto_pr bytea
);
    DROP TABLE public.tb_producto;
       public         heap    postgres    false            �            1259    16441    tb_producto_id_pr_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_producto_id_pr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tb_producto_id_pr_seq;
       public          postgres    false    218            �           0    0    tb_producto_id_pr_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tb_producto_id_pr_seq OWNED BY public.tb_producto.id_pr;
          public          postgres    false    217            �            1259    16491 
   tb_usuario    TABLE     �   CREATE TABLE public.tb_usuario (
    id_us integer NOT NULL,
    id_per integer,
    id_est integer,
    nombre_us text,
    cedula_us text,
    correo_us text,
    clave_us text
);
    DROP TABLE public.tb_usuario;
       public         heap    postgres    false            �            1259    16490    tb_usuario_id_us_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_usuario_id_us_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_usuario_id_us_seq;
       public          postgres    false    224            �           0    0    tb_usuario_id_us_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_usuario_id_us_seq OWNED BY public.tb_usuario.id_us;
          public          postgres    false    223            .           2604    16436    tb_categoria id_cat    DEFAULT     z   ALTER TABLE ONLY public.tb_categoria ALTER COLUMN id_cat SET DEFAULT nextval('public.tb_categoria_id_cat_seq'::regclass);
 B   ALTER TABLE public.tb_categoria ALTER COLUMN id_cat DROP DEFAULT;
       public          postgres    false    216    215    216            1           2604    16485    tb_estadocivil id_est    DEFAULT     ~   ALTER TABLE ONLY public.tb_estadocivil ALTER COLUMN id_est SET DEFAULT nextval('public.tb_estadocivil_id_est_seq'::regclass);
 D   ALTER TABLE public.tb_estadocivil ALTER COLUMN id_est DROP DEFAULT;
       public          postgres    false    221    222    222            0           2604    16464    tb_perfil id_per    DEFAULT     t   ALTER TABLE ONLY public.tb_perfil ALTER COLUMN id_per SET DEFAULT nextval('public.tb_perfil_id_per_seq'::regclass);
 ?   ALTER TABLE public.tb_perfil ALTER COLUMN id_per DROP DEFAULT;
       public          postgres    false    219    220    220            /           2604    16445    tb_producto id_pr    DEFAULT     v   ALTER TABLE ONLY public.tb_producto ALTER COLUMN id_pr SET DEFAULT nextval('public.tb_producto_id_pr_seq'::regclass);
 @   ALTER TABLE public.tb_producto ALTER COLUMN id_pr DROP DEFAULT;
       public          postgres    false    218    217    218            2           2604    16494    tb_usuario id_us    DEFAULT     t   ALTER TABLE ONLY public.tb_usuario ALTER COLUMN id_us SET DEFAULT nextval('public.tb_usuario_id_us_seq'::regclass);
 ?   ALTER TABLE public.tb_usuario ALTER COLUMN id_us DROP DEFAULT;
       public          postgres    false    223    224    224            �          0    16433    tb_categoria 
   TABLE DATA                 public          postgres    false    216   J,       �          0    16482    tb_estadocivil 
   TABLE DATA                 public          postgres    false    222   �,       �          0    16461 	   tb_perfil 
   TABLE DATA                 public          postgres    false    220   �-       �          0    16442    tb_producto 
   TABLE DATA                 public          postgres    false    218   .       �          0    16491 
   tb_usuario 
   TABLE DATA                 public          postgres    false    224   /       �           0    0    tb_categoria_id_cat_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_categoria_id_cat_seq', 1, false);
          public          postgres    false    215            �           0    0    tb_estadocivil_id_est_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_estadocivil_id_est_seq', 1, false);
          public          postgres    false    221            �           0    0    tb_perfil_id_per_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_perfil_id_per_seq', 1, false);
          public          postgres    false    219            �           0    0    tb_producto_id_pr_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_producto_id_pr_seq', 8, true);
          public          postgres    false    217            �           0    0    tb_usuario_id_us_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_usuario_id_us_seq', 12, true);
          public          postgres    false    223            4           2606    16440    tb_categoria id_cat 
   CONSTRAINT     U   ALTER TABLE ONLY public.tb_categoria
    ADD CONSTRAINT id_cat PRIMARY KEY (id_cat);
 =   ALTER TABLE ONLY public.tb_categoria DROP CONSTRAINT id_cat;
       public            postgres    false    216            :           2606    16489    tb_estadocivil id_est 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_estadocivil
    ADD CONSTRAINT id_est PRIMARY KEY (id_est);
 ?   ALTER TABLE ONLY public.tb_estadocivil DROP CONSTRAINT id_est;
       public            postgres    false    222            8           2606    16466    tb_perfil id_per 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_perfil
    ADD CONSTRAINT id_per PRIMARY KEY (id_per);
 :   ALTER TABLE ONLY public.tb_perfil DROP CONSTRAINT id_per;
       public            postgres    false    220            6           2606    16449    tb_producto id_pr 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT id_pr PRIMARY KEY (id_pr);
 ;   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT id_pr;
       public            postgres    false    218            <           2606    16498    tb_usuario id_us 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT id_us PRIMARY KEY (id_us);
 :   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT id_us;
       public            postgres    false    224            =           2606    16450    tb_producto id_cat    FK CONSTRAINT     {   ALTER TABLE ONLY public.tb_producto
    ADD CONSTRAINT id_cat FOREIGN KEY (id_cat) REFERENCES public.tb_categoria(id_cat);
 <   ALTER TABLE ONLY public.tb_producto DROP CONSTRAINT id_cat;
       public          postgres    false    216    218    4660            >           2606    16504    tb_usuario id_est    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT id_est FOREIGN KEY (id_est) REFERENCES public.tb_estadocivil(id_est) NOT VALID;
 ;   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT id_est;
       public          postgres    false    224    222    4666            ?           2606    16499    tb_usuario id_per    FK CONSTRAINT     w   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT id_per FOREIGN KEY (id_per) REFERENCES public.tb_perfil(id_per);
 ;   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT id_per;
       public          postgres    false    220    4664    224            �   �   x��̿
�0��=Oq[sP��ٜ;�BS]%M=�$�������7��h�i3�WH����P��w��1�ͫT+m>s�����r,覆J7h_1P����d+d��x7���)~\�ً��R̅6A��kq      �   �   x����
�0�}���T�B����u��-�Q�I���+��,g`�{Ѿ����e��!ɏ�i�^�J�{�A��.
�ۋ
�G7��c��6�����x�D�7�*�z&��cF�B�訆e0��+���~��N�/:���� ߀�z      �   t   x���v
Q���W((M��L�+I�/H-J��Q��L1uRR���2�3��@�
a�>���
�:
�)��y��%E�)�E��\���i4�9'35�$�
�MK�KI�:�� uhO      �   �   x���AO�0��>Ż�JcQ�	#������F�t���Wf"A���M_�e������굄4/7к�Qb��[kM���6hhs��<	�Qռ�o�ʜ�w���n�mW�"4µ;8�<q�I7�3�;Q5�)�x�X0ȷY6�ҿ������P�QD�Y<�(�z���hx�M�k�Ik���i��y���]I�Z"rq��Tȯa���~uSr��P���FKxQRxG�cK.A�	3�F�      �   �  x�͕Mo�0�����c���a��m�e�R`i{h�H�ʒA���_?���/���|)�W��p��z�����:�JFU��v5��p�r�����]�U![dLmIR^k�B�L�5^��5<m���#\�C�CHC���[����^�x����t�d��Kkr%E���d�-N����l�^̋�ٓ��������7��j.D�dϮ����Mɛ���i��[W"�b�G�jy�t?�*��9m���}��OG���29�Fl���
]�ʛ>������>�t$m����X�k�q%U����B<кR����aE����2��/=w�^�(MD�d/��r�Y���<�GnМj�'�^�|ʟǼ;�i����� �N�49��46���+v���u� �Y+��SҊ1�AI�ix,\�q	�-���5�EW)��MX����g����t�     