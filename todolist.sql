PGDMP      $                }            todolist    17.2    17.2 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            !           1262    16388    todolist    DATABASE     }   CREATE DATABASE todolist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Cameroon.1252';
    DROP DATABASE todolist;
                     postgres    false            �            1259    16390    tache    TABLE     �   CREATE TABLE public.tache (
    id bigint NOT NULL,
    description character varying(255),
    statut smallint,
    titre character varying(255),
    CONSTRAINT tache_statut_check CHECK (((statut >= 0) AND (statut <= 2)))
);
    DROP TABLE public.tache;
       public         heap r       postgres    false            �            1259    16389    tache_id_seq    SEQUENCE     �   ALTER TABLE public.tache ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tache_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218                      0    16390    tache 
   TABLE DATA           ?   COPY public.tache (id, description, statut, titre) FROM stdin;
    public               postgres    false    218   �       "           0    0    tache_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tache_id_seq', 1, true);
          public               postgres    false    217            �           2606    16397    tache tache_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tache
    ADD CONSTRAINT tache_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tache DROP CONSTRAINT tache_pkey;
       public                 postgres    false    218               %   x�3�LI-N.�,(���3�4�,�,)J5����� �]     