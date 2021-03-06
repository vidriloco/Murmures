PGDMP          +            
    t            mex_tiempo_development    9.5.3    9.5.3 ?    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    39300    mex_tiempo_development    DATABASE     �   CREATE DATABASE mex_tiempo_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 &   DROP DATABASE mex_tiempo_development;
          
   spalatinje    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    7            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    7                        3079    12623    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                        3079    39301    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                  false    7            �           0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                       false    2            �            1259    42042    ar_internal_metadata    TABLE     �   CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public      
   spalatinje    false    7            �            1259    42441    articles    TABLE       CREATE TABLE articles (
    id integer NOT NULL,
    title character varying,
    content text,
    user_id integer,
    reference_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.articles;
       public      
   spalatinje    false    7            �            1259    42439    articles_id_seq    SEQUENCE     q   CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public    
   spalatinje    false    206    7            �           0    0    articles_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE articles_id_seq OWNED BY articles.id;
            public    
   spalatinje    false    205            �            1259    42430 
   categories    TABLE       CREATE TABLE categories (
    id integer NOT NULL,
    title character varying,
    description character varying,
    kind character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying
);
    DROP TABLE public.categories;
       public      
   spalatinje    false    7            �            1259    42428    categories_id_seq    SEQUENCE     s   CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public    
   spalatinje    false    204    7            �           0    0    categories_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE categories_id_seq OWNED BY categories.id;
            public    
   spalatinje    false    203            �            1259    42406    pictures    TABLE     �  CREATE TABLE pictures (
    id integer NOT NULL,
    title character varying,
    year integer,
    photo_taken_date date,
    description text,
    user_id integer,
    location point,
    url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    disposition_on_landing_page character varying,
    published character varying
);
    DROP TABLE public.pictures;
       public      
   spalatinje    false    7            �            1259    42404    pictures_id_seq    SEQUENCE     q   CREATE SEQUENCE pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pictures_id_seq;
       public    
   spalatinje    false    7    200            �           0    0    pictures_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE pictures_id_seq OWNED BY pictures.id;
            public    
   spalatinje    false    199            �            1259    42501    promoted_categories    TABLE     �   CREATE TABLE promoted_categories (
    id integer NOT NULL,
    category_id integer,
    "order" integer,
    visible boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 '   DROP TABLE public.promoted_categories;
       public      
   spalatinje    false    7            �            1259    42499    promoted_categories_id_seq    SEQUENCE     |   CREATE SEQUENCE promoted_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.promoted_categories_id_seq;
       public    
   spalatinje    false    7    210            �           0    0    promoted_categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE promoted_categories_id_seq OWNED BY promoted_categories.id;
            public    
   spalatinje    false    209            �            1259    42034    schema_migrations    TABLE     K   CREATE TABLE schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public      
   spalatinje    false    7            �            1259    42417    tags    TABLE     �   CREATE TABLE tags (
    id integer NOT NULL,
    category_id integer,
    taggable_type character varying,
    taggable_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.tags;
       public      
   spalatinje    false    7            �            1259    42415    tags_id_seq    SEQUENCE     m   CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public    
   spalatinje    false    202    7            �           0    0    tags_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE tags_id_seq OWNED BY tags.id;
            public    
   spalatinje    false    201            �            1259    42452    users    TABLE     �  CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public      
   spalatinje    false    7            �            1259    42450    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public    
   spalatinje    false    208    7            �           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public    
   spalatinje    false    207                       2604    42444    id    DEFAULT     \   ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public    
   spalatinje    false    205    206    206                       2604    42433    id    DEFAULT     `   ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public    
   spalatinje    false    204    203    204                       2604    42409    id    DEFAULT     \   ALTER TABLE ONLY pictures ALTER COLUMN id SET DEFAULT nextval('pictures_id_seq'::regclass);
 :   ALTER TABLE public.pictures ALTER COLUMN id DROP DEFAULT;
       public    
   spalatinje    false    200    199    200                       2604    42504    id    DEFAULT     r   ALTER TABLE ONLY promoted_categories ALTER COLUMN id SET DEFAULT nextval('promoted_categories_id_seq'::regclass);
 E   ALTER TABLE public.promoted_categories ALTER COLUMN id DROP DEFAULT;
       public    
   spalatinje    false    209    210    210                       2604    42420    id    DEFAULT     T   ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public    
   spalatinje    false    202    201    202                       2604    42455    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public    
   spalatinje    false    207    208    208            �          0    42042    ar_internal_metadata 
   TABLE DATA               K   COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public    
   spalatinje    false    198   tE       �          0    42441    articles 
   TABLE DATA               _   COPY articles (id, title, content, user_id, reference_url, created_at, updated_at) FROM stdin;
    public    
   spalatinje    false    206   �E       �           0    0    articles_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('articles_id_seq', 1, false);
            public    
   spalatinje    false    205            �          0    42430 
   categories 
   TABLE DATA               Y   COPY categories (id, title, description, kind, created_at, updated_at, slug) FROM stdin;
    public    
   spalatinje    false    204   �E       �           0    0    categories_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('categories_id_seq', 6, true);
            public    
   spalatinje    false    203            �          0    42406    pictures 
   TABLE DATA               �   COPY pictures (id, title, year, photo_taken_date, description, user_id, location, url, created_at, updated_at, disposition_on_landing_page, published) FROM stdin;
    public    
   spalatinje    false    200   G       �           0    0    pictures_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('pictures_id_seq', 6, true);
            public    
   spalatinje    false    199            �          0    42501    promoted_categories 
   TABLE DATA               a   COPY promoted_categories (id, category_id, "order", visible, created_at, updated_at) FROM stdin;
    public    
   spalatinje    false    210   �M       �           0    0    promoted_categories_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('promoted_categories_id_seq', 4, true);
            public    
   spalatinje    false    209            �          0    42034    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public    
   spalatinje    false    197   LN                 0    39591    spatial_ref_sys 
   TABLE DATA               "   COPY spatial_ref_sys  FROM stdin;
    public    
   spalatinje    false    183   �N       �          0    42417    tags 
   TABLE DATA               \   COPY tags (id, category_id, taggable_type, taggable_id, created_at, updated_at) FROM stdin;
    public    
   spalatinje    false    202   �N       �           0    0    tags_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('tags_id_seq', 15, true);
            public    
   spalatinje    false    201            �          0    42452    users 
   TABLE DATA               �   COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
    public    
   spalatinje    false    208   vO       �           0    0    users_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('users_id_seq', 1, false);
            public    
   spalatinje    false    207                       2606    42049    ar_internal_metadata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public      
   spalatinje    false    198    198            )           2606    42449    articles_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public      
   spalatinje    false    206    206            '           2606    42438    categories_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public      
   spalatinje    false    204    204            !           2606    42414    pictures_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY pictures
    ADD CONSTRAINT pictures_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pictures DROP CONSTRAINT pictures_pkey;
       public      
   spalatinje    false    200    200            /           2606    42506    promoted_categories_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY promoted_categories
    ADD CONSTRAINT promoted_categories_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.promoted_categories DROP CONSTRAINT promoted_categories_pkey;
       public      
   spalatinje    false    210    210                       2606    42041    schema_migrations_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public      
   spalatinje    false    197    197            %           2606    42425 	   tags_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public      
   spalatinje    false    202    202            -           2606    42463 
   users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public      
   spalatinje    false    208    208            "           1259    42426    index_tags_on_category_id    INDEX     J   CREATE INDEX index_tags_on_category_id ON tags USING btree (category_id);
 -   DROP INDEX public.index_tags_on_category_id;
       public      
   spalatinje    false    202            #           1259    42427 +   index_tags_on_taggable_type_and_taggable_id    INDEX     k   CREATE INDEX index_tags_on_taggable_type_and_taggable_id ON tags USING btree (taggable_type, taggable_id);
 ?   DROP INDEX public.index_tags_on_taggable_type_and_taggable_id;
       public      
   spalatinje    false    202    202            *           1259    42464    index_users_on_email    INDEX     G   CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public      
   spalatinje    false    208            +           1259    42465 #   index_users_on_reset_password_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public      
   spalatinje    false    208            �   ?   x�K�+�,���M�+�LI-K��/ ���tu���L���M��M���Hq��qqq ��D      �      x������ � �      �   (  x�u��n�0�g�)�$�:�6s�ݺ0��(�з��Hᤀ&�����i���S�I$����>&�<�S��˷(K�e!q��R�/g:�����v��(�m��D�Q?~� �,$k���#�V�f���@M^U�a;�h讌]���}K���i���[�I�Jh��w���W0�'	Q�h0<� �R1DˮK��$�E��v���m�X���Ry��,j�=FjM^9ؾ�����P�V:�w��R�S�cc�p\]�M���}uX���t]Z+�6�ح�L%�CwwM�?%��<Y��      �   �  x��VM��6>;���a?��,�"E:(3ӤM�)�IZ�P��%��,z)i��m�{�a�[��c}Hk2��4h�]�d�����x�bv�mlKjKZC^v��[��ʙ�J�Ӝ�9c�o;C?�M0�Ὁs��Ź�-�-1�`1�`�oLo���m|����'�l?=p]?��T��s7�z1Z�����Í���	�|�+W�%�ck�.��Γ���I�w��Z\>%ӭ`7��wN�&�^�*�L.�=�p}��#��k{�?#{�L3������}knLzu�����<���d����M�*F��'s�3�x��(�>�þ_.=�h�G��n`s��}�5������@�|�T�J�T�(��e!$���j%d�u�
�9+)U\�U�]�7����d��5S��;y^UZT�i(gL�Fj�o?�LR�\�XN�cB�%�˂g����G��|I�%Y�
���GW[|�6���pV��t$Qj��"�湌z�{b�`k��%�(�og�����"h��HW��<�1�1;�{WX���Ρ���j�ǡ}-y�ޠ���.����Ӫ_xWy[m�k�FW���q�i���n�z��w/_Q� �Ң���d*0\a��x�?:-i.E��������
�WL�,g%x�A���f�4Pg��E]��\�����Y%-�蟟���G��r)T�D�M?=��<�$2/�Gr>C�M�<9�le�pVe�F��ya68&����W}Bj����L��Țn�)�;�8�'1\�-��_���7��\���}�7����:�4���.ܕ�Np'� ����!�q��y�����r��9�\*���R�DQ�b�y��f��=Py���YU�F��̬s	�+eu���2v�X�l�i�w���Y�3�
=.�&��s��#�LL��5O��g�t���&	�Ƅם5�Z��*#�-iBjh=�Z�s��r��0���]�%_���KO�0�����yC�ώ[q����NS���v�馝��U��	]/m5������p;���)�����%�~���%�����6�p��L��t�Ƈ`�݇��h�b���qm���Γ��qع���?P���p��ɀ��L�j���G	���'��J��d���.Ԋ�������x�6�\55U����hG��RY���(�zb�E�zD9���ĦKU����*)Ȉ�x��GN�م��3�n��&[�ǽa�����=H��tJ�Գ7`��<i[���w/���OH|ܷ��ُ�nʘ̇�"���@�C?Y�q�^4�f���ΧM�j���oA�쳈�\�<߿�r�}�rBŒɥ`���|G��"�Z�������u���zCf�be:��z��躉���
?ŀ����D3g�F��x�j�����OJ�Gp��`S�K�mHo� �~Ơ��G����Մ
�a�1a�p���6���� ?Zwmw�M��v�=&Ô�lכ"K��\�.�!�Ѥ��
:�B�I�hTWX2��Y���@uL����:��ʄ�O�b�m��RL�b�xm�=��M[�ќ2���3�Wm�L!�OΓ��P�Bl�)}F������S��F��i����Q��
	�(�'�e	ӇyS���nr� �Ji��U�WRl��ٙz�_<�D�%����J���Am�)��l�����rg��?dO�<�X���      �   k   x�}��	�PDѵT���_z�%e���Cx��p��ʒ�ȩzHM�pSf��B�k�prv�$�O�c6T嬶!t�g�2���%e�7�<��I�l��"D� @�.�      �   C   x�Mʱ�@Cўa"�p�����]Dc��_`��iڤ�>��cP��v�C��T?%p��{����>��            x������ � �      �   �   x���1�0E��� ��O�4>`C��OY�R��EzO/���������-/*���,�ḁ�i ���s�Y͊���T�7�Z��i&��4ٿ �a$�.Rfa�B��{$(��HݛDh_��M9B��M�f&?��b�ڵ�,�n��f�D�2G���6@r�"�-�o�      �      x������ � �     