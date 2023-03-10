PGDMP                          {            auto    11.18    11.18 #    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            .           1262    16727    auto    DATABASE     ?   CREATE DATABASE auto WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE auto;
             postgres    false            ?            1259    16733    body    TABLE     _   CREATE TABLE public.body (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.body;
       public         postgres    false            ?            1259    16781    body_id_seq    SEQUENCE     ?   ALTER TABLE public.body ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.body_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    197            ?            1259    16728    brand    TABLE     ?   CREATE TABLE public.brand (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "country " character varying(50) NOT NULL
);
    DROP TABLE public.brand;
       public         postgres    false            ?            1259    16779    brand_id_seq    SEQUENCE     ?   ALTER TABLE public.brand ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    196            ?            1259    16738    car    TABLE     ?   CREATE TABLE public.car (
    id integer NOT NULL,
    fk_brand_id integer NOT NULL,
    fk_body_id integer NOT NULL,
    power integer NOT NULL,
    fk_transmission_id integer NOT NULL,
    fk_color_id integer NOT NULL,
    year integer NOT NULL
);
    DROP TABLE public.car;
       public         postgres    false            ?            1259    16783    car_ year_seq    SEQUENCE     ?   ALTER TABLE public.car ALTER COLUMN year ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."car_ year_seq"
    START WITH 1900
    INCREMENT BY 1
    MINVALUE 1900
    MAXVALUE 2050
    CACHE 1
);
            public       postgres    false    198            ?            1259    16789 
   car_id_seq    SEQUENCE     ?   ALTER TABLE public.car ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    198            ?            1259    16743    color    TABLE     `   CREATE TABLE public.color (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.color;
       public         postgres    false            ?            1259    16775    color_id_seq    SEQUENCE     ?   ALTER TABLE public.color ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    199            ?            1259    16748    transmission    TABLE     g   CREATE TABLE public.transmission (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
     DROP TABLE public.transmission;
       public         postgres    false            ?            1259    16777    transmission_id_seq    SEQUENCE     ?   ALTER TABLE public.transmission ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.transmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    200                      0    16733    body 
   TABLE DATA               (   COPY public.body (id, name) FROM stdin;
    public       postgres    false    197   ?$                 0    16728    brand 
   TABLE DATA               5   COPY public.brand (id, name, "country ") FROM stdin;
    public       postgres    false    196   %                  0    16738    car 
   TABLE DATA               h   COPY public.car (id, fk_brand_id, fk_body_id, power, fk_transmission_id, fk_color_id, year) FROM stdin;
    public       postgres    false    198   ?%       !          0    16743    color 
   TABLE DATA               )   COPY public.color (id, name) FROM stdin;
    public       postgres    false    199   $&       "          0    16748    transmission 
   TABLE DATA               0   COPY public.transmission (id, name) FROM stdin;
    public       postgres    false    200   ?&       /           0    0    body_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.body_id_seq', 6, true);
            public       postgres    false    204            0           0    0    brand_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brand_id_seq', 12, true);
            public       postgres    false    203            1           0    0    car_ year_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."car_ year_seq"', 1900, false);
            public       postgres    false    205            2           0    0 
   car_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.car_id_seq', 4, true);
            public       postgres    false    206            3           0    0    color_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.color_id_seq', 9, true);
            public       postgres    false    201            4           0    0    transmission_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transmission_id_seq', 4, true);
            public       postgres    false    202            ?
           2606    16737    body body_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.body DROP CONSTRAINT body_pkey;
       public         postgres    false    197            ?
           2606    16732    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public         postgres    false    196            ?
           2606    16742    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public         postgres    false    198            ?
           2606    16747    color color_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.color DROP CONSTRAINT color_pkey;
       public         postgres    false    199            ?
           2606    16752    transmission transmission_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transmission
    ADD CONSTRAINT transmission_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transmission DROP CONSTRAINT transmission_pkey;
       public         postgres    false    200            ?
           2606    16758    car car_fk_body_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_fk_body_id_fkey FOREIGN KEY (fk_body_id) REFERENCES public.body(id) NOT VALID;
 A   ALTER TABLE ONLY public.car DROP CONSTRAINT car_fk_body_id_fkey;
       public       postgres    false    197    2714    198            ?
           2606    16753    car car_fk_brand_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_fk_brand_id_fkey FOREIGN KEY (fk_brand_id) REFERENCES public.brand(id) NOT VALID;
 B   ALTER TABLE ONLY public.car DROP CONSTRAINT car_fk_brand_id_fkey;
       public       postgres    false    2712    196    198            ?
           2606    16768    car car_fk_color_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_fk_color_id_fkey FOREIGN KEY (fk_color_id) REFERENCES public.color(id) NOT VALID;
 B   ALTER TABLE ONLY public.car DROP CONSTRAINT car_fk_color_id_fkey;
       public       postgres    false    2718    198    199            ?
           2606    16763    car car_fk_transmission_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_fk_transmission_id_fkey FOREIGN KEY (fk_transmission_id) REFERENCES public.transmission(id) NOT VALID;
 I   ALTER TABLE ONLY public.car DROP CONSTRAINT car_fk_transmission_id_fkey;
       public       postgres    false    200    198    2720               ^   x???@@E???b$~V??!???2/$???ȳ=?Kg?????Ë?=2?:?? w\(?fn?|4h0??(]ݴ?'s?I??fD? ? ?B6?         ?   x?3??I?(-漰????.콰?b??1??o8????^l??????	?ciJ&??)?ObJ"???]l??3?t?H-???0?m*??e?锚W??Z?i??Ginnj煅V\??e???\Z???*Cΰ???|L톆??E???X??8}S??SSR?u??c?????? i+?)          A   x???	 1?o戱??]n?9?0(Oh,؆??Jl?ҳ???946?*??R18???i?=$??7      !   v   x?5???P???0HP
t?Sh??A??G?<!?????(?;N????z???????5??W??d?,???~?B<?(
??????ӂ?v??
r??9?ꟸh??3? ?[?      "   _   x?]??	?0Dϻ?~ʱ?(?GųK?1?I?9??i?1??+???x???f\6?!-?v????Z??????i'8xtx???#?b?b???~?JJ?     