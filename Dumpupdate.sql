PGDMP                         x            Recipe    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Recipe    DATABASE     l   CREATE DATABASE "Recipe" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Recipe";
                postgres    false            �            1259    16420    login_history    TABLE     �   CREATE TABLE "public"."login_history" (
    "login_id" integer NOT NULL,
    "user_id" integer,
    "login_date" timestamp with time zone DEFAULT "now"() NOT NULL
);
 %   DROP TABLE "public"."login_history";
       public         heap    postgres    false            �            1259    16418    login_history_login_id_seq    SEQUENCE     �   CREATE SEQUENCE "public"."login_history_login_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "public"."login_history_login_id_seq";
       public          postgres    false    203            �           0    0    login_history_login_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "public"."login_history_login_id_seq" OWNED BY "public"."login_history"."login_id";
          public          postgres    false    202            �            1259    16397    users    TABLE     �   CREATE TABLE "public"."users" (
    "user_id" integer NOT NULL,
    "name" character varying(20) NOT NULL,
    "email" character varying(50) NOT NULL,
    "password" character varying(120) NOT NULL
);
    DROP TABLE "public"."users";
       public         heap    postgres    false            �            1259    16395    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE "public"."users_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE "public"."users_user_id_seq";
       public          postgres    false    201            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "public"."users_user_id_seq" OWNED BY "public"."users"."user_id";
          public          postgres    false    200            )           2604    16423    login_history login_id    DEFAULT     �   ALTER TABLE ONLY "public"."login_history" ALTER COLUMN "login_id" SET DEFAULT "nextval"('"public"."login_history_login_id_seq"'::"regclass");
 K   ALTER TABLE "public"."login_history" ALTER COLUMN "login_id" DROP DEFAULT;
       public          postgres    false    203    202    203            (           2604    16400    users user_id    DEFAULT     |   ALTER TABLE ONLY "public"."users" ALTER COLUMN "user_id" SET DEFAULT "nextval"('"public"."users_user_id_seq"'::"regclass");
 B   ALTER TABLE "public"."users" ALTER COLUMN "user_id" DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    16420    login_history 
   TABLE DATA                 public          postgres    false    203   �       �          0    16397    users 
   TABLE DATA                 public          postgres    false    201          �           0    0    login_history_login_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"public"."login_history_login_id_seq"', 1, true);
          public          postgres    false    202            �           0    0    users_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"public"."users_user_id_seq"', 1, true);
          public          postgres    false    200            .           2606    16426     login_history login_history_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY "public"."login_history"
    ADD CONSTRAINT "login_history_pkey" PRIMARY KEY ("login_id");
 P   ALTER TABLE ONLY "public"."login_history" DROP CONSTRAINT "login_history_pkey";
       public            postgres    false    203            ,           2606    16402    users users_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("user_id");
 @   ALTER TABLE ONLY "public"."users" DROP CONSTRAINT "users_pkey";
       public            postgres    false    201            /           2606    16427 (   login_history login_history_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."login_history"
    ADD CONSTRAINT "login_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("user_id");
 X   ALTER TABLE ONLY "public"."login_history" DROP CONSTRAINT "login_history_user_id_fkey";
       public          postgres    false    203    201    2860            �   t   x���v
Q���WP*(M��LV�S��O�̋��,.�/�TRЀ
d�(�((��A��ĒT%M�0G�P�`C R7202�54�50S02�24�26�36�00�50U״��� <3!�      �   �   x�=�M�0 ��bAM�C�LF	j�S�SW��[b��c:=?x��Q�b��碭Kh��S�!P����IG�Ҏԭ�H8_VAdn������f%�_�V��8��)B�:�ɛB�Ly��}p�o-"N�!�^�b�z�O�����߾���}�aR��$I_��8�     