PGDMP     /    
                x            hotswap %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) a   W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Z           1262    16384    hotswap    DATABASE     y   CREATE DATABASE hotswap WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE hotswap;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            [           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13043    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            \           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16571    atendimento_atendimento    TABLE     �  CREATE TABLE public.atendimento_atendimento (
    id integer NOT NULL,
    problema character varying(455) NOT NULL,
    solucao character varying(455) NOT NULL,
    status character varying(1) NOT NULL,
    setor character varying(50) NOT NULL,
    solicitante character varying(50) NOT NULL,
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    loja_id integer NOT NULL,
    user_id integer NOT NULL,
    user_finaliza_id integer
);
 +   DROP TABLE public.atendimento_atendimento;
       public         root    false    3            �            1259    16569    atendimento_atendimento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atendimento_atendimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.atendimento_atendimento_id_seq;
       public       root    false    3    221            ]           0    0    atendimento_atendimento_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.atendimento_atendimento_id_seq OWNED BY public.atendimento_atendimento.id;
            public       root    false    220            �            1259    16417 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         root    false    3            �            1259    16415    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       root    false    3    203            ^           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       root    false    202            �            1259    16427    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         root    false    3            �            1259    16425    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       root    false    205    3            _           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       root    false    204            �            1259    16409    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         root    false    3            �            1259    16407    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       root    false    201    3            `           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       root    false    200            �            1259    16435 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         root    false    3            �            1259    16445    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         root    false    3            �            1259    16443    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       root    false    3    209            a           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       root    false    208            �            1259    16433    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       root    false    207    3            b           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       root    false    206            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         root    false    3            �            1259    16451 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       root    false    211    3            c           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       root    false    210            �            1259    16874    base_centraltelefonica    TABLE     G  CREATE TABLE public.base_centraltelefonica (
    id integer NOT NULL,
    modelo character varying(50) NOT NULL,
    end_ip character varying(20) NOT NULL,
    qtd_ramais integer NOT NULL,
    qtd_ramais_utilizados integer NOT NULL,
    dt_ult_preventiva date,
    obs character varying(400),
    filial_id integer NOT NULL
);
 *   DROP TABLE public.base_centraltelefonica;
       public         root    false    3            �            1259    16872    base_centraltelefonica_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_centraltelefonica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.base_centraltelefonica_id_seq;
       public       root    false    248    3            d           0    0    base_centraltelefonica_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.base_centraltelefonica_id_seq OWNED BY public.base_centraltelefonica.id;
            public       root    false    247            �            1259    16818    base_circuitodados    TABLE     a  CREATE TABLE public.base_circuitodados (
    id integer NOT NULL,
    nome_filial character varying(20) NOT NULL,
    cod_filial character varying(20),
    faixa_ip character varying(20),
    produto character varying(20) NOT NULL,
    circuito character varying(20) NOT NULL,
    roteador character varying(20),
    velocidade character varying(10)
);
 &   DROP TABLE public.base_circuitodados;
       public         root    false    3            �            1259    16816    base_circuitodados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_circuitodados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.base_circuitodados_id_seq;
       public       root    false    240    3            e           0    0    base_circuitodados_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.base_circuitodados_id_seq OWNED BY public.base_circuitodados.id;
            public       root    false    239            �            1259    16826    base_circuitovoz    TABLE     S  CREATE TABLE public.base_circuitovoz (
    id integer NOT NULL,
    regiao_filial character varying(20) NOT NULL,
    operadora character varying(100) NOT NULL,
    designacao character varying(200) NOT NULL,
    servico_equipamento character varying(200),
    tel_abrir_chamado character varying(30),
    op_urla character varying(50)
);
 $   DROP TABLE public.base_circuitovoz;
       public         root    false    3            �            1259    16824    base_circuitovoz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_circuitovoz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.base_circuitovoz_id_seq;
       public       root    false    242    3            f           0    0    base_circuitovoz_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.base_circuitovoz_id_seq OWNED BY public.base_circuitovoz.id;
            public       root    false    241            �            1259    16834    base_datainauguracao    TABLE     �   CREATE TABLE public.base_datainauguracao (
    id integer NOT NULL,
    cod_filial integer NOT NULL,
    loja character varying(20) NOT NULL,
    inauguracao character varying(20) NOT NULL
);
 (   DROP TABLE public.base_datainauguracao;
       public         root    false    3            �            1259    16832    base_datainauguracao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_datainauguracao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.base_datainauguracao_id_seq;
       public       root    false    244    3            g           0    0    base_datainauguracao_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.base_datainauguracao_id_seq OWNED BY public.base_datainauguracao.id;
            public       root    false    243            �            1259    17391    base_ferias    TABLE     E  CREATE TABLE public.base_ferias (
    id integer NOT NULL,
    colaborador character varying(50) NOT NULL,
    mes integer NOT NULL,
    ano integer NOT NULL,
    inicio date NOT NULL,
    termino date NOT NULL,
    dias integer NOT NULL,
    decimo_terceiro character varying(20) NOT NULL,
    filial_id integer NOT NULL
);
    DROP TABLE public.base_ferias;
       public         root    false    3            �            1259    17389    base_ferias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_ferias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.base_ferias_id_seq;
       public       root    false    254    3            h           0    0    base_ferias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.base_ferias_id_seq OWNED BY public.base_ferias.id;
            public       root    false    253            �            1259    16888    base_historicoincidente    TABLE     �   CREATE TABLE public.base_historicoincidente (
    id integer NOT NULL,
    incidente character varying(400) NOT NULL,
    data timestamp with time zone NOT NULL,
    filial_id integer NOT NULL
);
 +   DROP TABLE public.base_historicoincidente;
       public         root    false    3            �            1259    16886    base_historicoincidente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_historicoincidente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.base_historicoincidente_id_seq;
       public       root    false    3    250            i           0    0    base_historicoincidente_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.base_historicoincidente_id_seq OWNED BY public.base_historicoincidente.id;
            public       root    false    249            �            1259    17383    base_ipfixo    TABLE     5  CREATE TABLE public.base_ipfixo (
    id integer NOT NULL,
    ip_interno character varying(25) NOT NULL,
    porta_interna integer NOT NULL,
    ip_externo character varying(25) NOT NULL,
    porta_externa integer NOT NULL,
    status_online character varying(20) NOT NULL,
    filial_id integer NOT NULL
);
    DROP TABLE public.base_ipfixo;
       public         root    false    3            �            1259    17381    base_ipfixo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_ipfixo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.base_ipfixo_id_seq;
       public       root    false    3    252            j           0    0    base_ipfixo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.base_ipfixo_id_seq OWNED BY public.base_ipfixo.id;
            public       root    false    251            �            1259    16846    base_testdatainauguracao    TABLE     �   CREATE TABLE public.base_testdatainauguracao (
    id integer NOT NULL,
    cod_filial integer NOT NULL,
    loja character varying(20) NOT NULL,
    inauguracao character varying(20) NOT NULL
);
 ,   DROP TABLE public.base_testdatainauguracao;
       public         root    false    3            �            1259    16844    base_testdatainauguracao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_testdatainauguracao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.base_testdatainauguracao_id_seq;
       public       root    false    246    3            k           0    0    base_testdatainauguracao_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.base_testdatainauguracao_id_seq OWNED BY public.base_testdatainauguracao.id;
            public       root    false    245            �            1259    16609    chamado_chamado    TABLE       CREATE TABLE public.chamado_chamado (
    id integer NOT NULL,
    chamado integer NOT NULL,
    modelo character varying(50) NOT NULL,
    serial character varying(100) NOT NULL,
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    quantidade integer NOT NULL,
    defeito character varying(200) NOT NULL,
    valor numeric(7,2) NOT NULL,
    status character varying(1) NOT NULL,
    loja_id integer NOT NULL,
    user_id integer NOT NULL,
    dt_finalizado date
);
 #   DROP TABLE public.chamado_chamado;
       public         root    false    3            �            1259    16607    chamado_chamado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chamado_chamado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.chamado_chamado_id_seq;
       public       root    false    223    3            l           0    0    chamado_chamado_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chamado_chamado_id_seq OWNED BY public.chamado_chamado.id;
            public       root    false    222            �            1259    16692    compras_compras    TABLE     {  CREATE TABLE public.compras_compras (
    id integer NOT NULL,
    num_pedido integer,
    dt_vencimento date,
    obs character varying(455),
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    equipamento_id integer NOT NULL,
    filial_id integer NOT NULL,
    fornecedor_id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.compras_compras;
       public         root    false    3            �            1259    16690    compras_compras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_compras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.compras_compras_id_seq;
       public       root    false    231    3            m           0    0    compras_compras_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.compras_compras_id_seq OWNED BY public.compras_compras.id;
            public       root    false    230                        1259    17417    compras_manutencao_mensal    TABLE     �  CREATE TABLE public.compras_manutencao_mensal (
    id integer NOT NULL,
    dt_entrega character varying(30) NOT NULL,
    conta integer,
    descricao text,
    valor double precision NOT NULL,
    nf integer NOT NULL,
    ordem integer NOT NULL,
    vencimento date NOT NULL,
    status character varying(20) NOT NULL,
    dt_aquisicao_equipamento date,
    dt_ultima_manutencao date,
    filial_id integer NOT NULL,
    fornecedor_id integer NOT NULL
);
 -   DROP TABLE public.compras_manutencao_mensal;
       public         root    false    3            �            1259    17415     compras_manutencao_mensal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_manutencao_mensal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.compras_manutencao_mensal_id_seq;
       public       root    false    256    3            n           0    0     compras_manutencao_mensal_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.compras_manutencao_mensal_id_seq OWNED BY public.compras_manutencao_mensal.id;
            public       root    false    255            �            1259    16537    core_fornecedor    TABLE     �  CREATE TABLE public.core_fornecedor (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    numero integer,
    razao_social character varying(70) NOT NULL,
    cnpj character varying(50) NOT NULL,
    rua character varying(50) NOT NULL,
    num_rua integer NOT NULL,
    bairro character varying(50) NOT NULL,
    cep character varying(50) NOT NULL,
    cidade character varying(50) NOT NULL
);
 #   DROP TABLE public.core_fornecedor;
       public         root    false    3            �            1259    16535    core_fornecedor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_fornecedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.core_fornecedor_id_seq;
       public       root    false    215    3            o           0    0    core_fornecedor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.core_fornecedor_id_seq OWNED BY public.core_fornecedor.id;
            public       root    false    214            �            1259    16545 
   core_lojas    TABLE     o  CREATE TABLE public.core_lojas (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    numero integer NOT NULL,
    cnpj character varying(20) NOT NULL,
    rua character varying(50) NOT NULL,
    num_rua integer NOT NULL,
    bairro character varying(50) NOT NULL,
    cep character varying(20) NOT NULL,
    cidade character varying(50) NOT NULL
);
    DROP TABLE public.core_lojas;
       public         root    false    3            �            1259    16543    core_lojas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_lojas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_lojas_id_seq;
       public       root    false    217    3            p           0    0    core_lojas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_lojas_id_seq OWNED BY public.core_lojas.id;
            public       root    false    216            �            1259    16553    core_profile    TABLE     �   CREATE TABLE public.core_profile (
    id integer NOT NULL,
    bio text NOT NULL,
    location character varying(30) NOT NULL,
    birth_date date,
    user_id integer NOT NULL,
    grupo character varying(20) NOT NULL
);
     DROP TABLE public.core_profile;
       public         root    false    3            �            1259    16551    core_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_profile_id_seq;
       public       root    false    219    3            q           0    0    core_profile_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_profile_id_seq OWNED BY public.core_profile.id;
            public       root    false    218            �            1259    16513    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         root    false    3            �            1259    16511    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       root    false    213    3            r           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       root    false    212            �            1259    16399    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         root    false    3            �            1259    16397    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       root    false    199    3            s           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       root    false    198            �            1259    16388    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         root    false    3            �            1259    16386    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       root    false    197    3            t           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       root    false    196            �            1259    16759    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         root    false    3            �            1259    16629    envios_enviobh    TABLE     v  CREATE TABLE public.envios_enviobh (
    id integer NOT NULL,
    num_nota character varying(10),
    num_ficha_transf character varying(10),
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    filial_destino_id integer NOT NULL,
    filial_origem_id integer NOT NULL,
    user_id integer,
    recebido boolean NOT NULL
);
 "   DROP TABLE public.envios_enviobh;
       public         root    false    3            �            1259    16627    envios_enviobh_id_seq    SEQUENCE     �   CREATE SEQUENCE public.envios_enviobh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.envios_enviobh_id_seq;
       public       root    false    3    225            u           0    0    envios_enviobh_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.envios_enviobh_id_seq OWNED BY public.envios_enviobh.id;
            public       root    false    224                       1259    17454    envios_recebimento    TABLE     �   CREATE TABLE public.envios_recebimento (
    id integer NOT NULL,
    create_at timestamp with time zone NOT NULL,
    envio_id integer NOT NULL,
    user_id integer NOT NULL
);
 &   DROP TABLE public.envios_recebimento;
       public         root    false    3                       1259    17452    envios_recebimento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.envios_recebimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.envios_recebimento_id_seq;
       public       root    false    258    3            v           0    0    envios_recebimento_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.envios_recebimento_id_seq OWNED BY public.envios_recebimento.id;
            public       root    false    257                       1259    17486    estoque_categoriahd    TABLE     l   CREATE TABLE public.estoque_categoriahd (
    id integer NOT NULL,
    hd character varying(50) NOT NULL
);
 '   DROP TABLE public.estoque_categoriahd;
       public         root    false    3                       1259    17484    estoque_categoriahd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_categoriahd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.estoque_categoriahd_id_seq;
       public       root    false    260    3            w           0    0    estoque_categoriahd_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.estoque_categoriahd_id_seq OWNED BY public.estoque_categoriahd.id;
            public       root    false    259                       1259    17494    estoque_categoriamemoria    TABLE     v   CREATE TABLE public.estoque_categoriamemoria (
    id integer NOT NULL,
    memoria character varying(50) NOT NULL
);
 ,   DROP TABLE public.estoque_categoriamemoria;
       public         root    false    3                       1259    17492    estoque_categoriamemoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_categoriamemoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estoque_categoriamemoria_id_seq;
       public       root    false    3    262            x           0    0    estoque_categoriamemoria_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estoque_categoriamemoria_id_seq OWNED BY public.estoque_categoriamemoria.id;
            public       root    false    261                       1259    17502    estoque_categoriaprocessador    TABLE     ~   CREATE TABLE public.estoque_categoriaprocessador (
    id integer NOT NULL,
    processador character varying(50) NOT NULL
);
 0   DROP TABLE public.estoque_categoriaprocessador;
       public         root    false    3                       1259    17500 #   estoque_categoriaprocessador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_categoriaprocessador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.estoque_categoriaprocessador_id_seq;
       public       root    false    264    3            y           0    0 #   estoque_categoriaprocessador_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.estoque_categoriaprocessador_id_seq OWNED BY public.estoque_categoriaprocessador.id;
            public       root    false    263            
           1259    17510    estoque_categoriaso    TABLE     l   CREATE TABLE public.estoque_categoriaso (
    id integer NOT NULL,
    so character varying(50) NOT NULL
);
 '   DROP TABLE public.estoque_categoriaso;
       public         root    false    3            	           1259    17508    estoque_categoriaso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_categoriaso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.estoque_categoriaso_id_seq;
       public       root    false    3    266            z           0    0    estoque_categoriaso_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.estoque_categoriaso_id_seq OWNED BY public.estoque_categoriaso.id;
            public       root    false    265            �            1259    16655    estoque_equipamento    TABLE     H  CREATE TABLE public.estoque_equipamento (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    modelo character varying(50) NOT NULL,
    serial character varying(100) NOT NULL,
    patrimonio character varying(100) NOT NULL,
    backup boolean NOT NULL,
    setor character varying(50) NOT NULL,
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    qtd integer NOT NULL,
    obs text NOT NULL,
    loja_id integer NOT NULL,
    hd_id integer,
    memoria_id integer,
    processador_id integer,
    so_id integer
);
 '   DROP TABLE public.estoque_equipamento;
       public         root    false    3            �            1259    16653    estoque_equipamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_equipamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.estoque_equipamento_id_seq;
       public       root    false    227    3            {           0    0    estoque_equipamento_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.estoque_equipamento_id_seq OWNED BY public.estoque_equipamento.id;
            public       root    false    226            �            1259    16666    estoque_movimento    TABLE     8  CREATE TABLE public.estoque_movimento (
    id integer NOT NULL,
    quantidade integer NOT NULL,
    defeito character varying(200) NOT NULL,
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    envio_id integer NOT NULL,
    equipamento_id integer NOT NULL
);
 %   DROP TABLE public.estoque_movimento;
       public         root    false    3            �            1259    16664    estoque_movimento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estoque_movimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.estoque_movimento_id_seq;
       public       root    false    229    3            |           0    0    estoque_movimento_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.estoque_movimento_id_seq OWNED BY public.estoque_movimento.id;
            public       root    false    228            �            1259    16735    msg_group_msg    TABLE     �   CREATE TABLE public.msg_group_msg (
    id integer NOT NULL,
    grupo character varying(20) NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.msg_group_msg;
       public         root    false    3            �            1259    16733    msg_group_msg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.msg_group_msg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.msg_group_msg_id_seq;
       public       root    false    3    235            }           0    0    msg_group_msg_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.msg_group_msg_id_seq OWNED BY public.msg_group_msg.id;
            public       root    false    234            �            1259    16724    msg_msg    TABLE     �  CREATE TABLE public.msg_msg (
    id integer NOT NULL,
    assunto character varying(50) NOT NULL,
    mensagem text NOT NULL,
    grupo character varying(20) NOT NULL,
    importancia character varying(50) NOT NULL,
    geral boolean NOT NULL,
    lida boolean NOT NULL,
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    dest_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.msg_msg;
       public         root    false    3            �            1259    16722    msg_msg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.msg_msg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.msg_msg_id_seq;
       public       root    false    3    233            ~           0    0    msg_msg_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.msg_msg_id_seq OWNED BY public.msg_msg.id;
            public       root    false    232            �            1259    16771    transf_transferencia    TABLE     G  CREATE TABLE public.transf_transferencia (
    id integer NOT NULL,
    obs character varying(300) NOT NULL,
    qtd integer NOT NULL,
    create_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    destino_id integer NOT NULL,
    equipamento_id integer NOT NULL,
    user_id integer
);
 (   DROP TABLE public.transf_transferencia;
       public         root    false    3            �            1259    16769    transf_transferencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transf_transferencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.transf_transferencia_id_seq;
       public       root    false    238    3                       0    0    transf_transferencia_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.transf_transferencia_id_seq OWNED BY public.transf_transferencia.id;
            public       root    false    237            �           2604    16574    atendimento_atendimento id    DEFAULT     �   ALTER TABLE ONLY public.atendimento_atendimento ALTER COLUMN id SET DEFAULT nextval('public.atendimento_atendimento_id_seq'::regclass);
 I   ALTER TABLE public.atendimento_atendimento ALTER COLUMN id DROP DEFAULT;
       public       root    false    221    220    221            �           2604    16420    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       root    false    202    203    203            �           2604    16430    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    204    205    205            �           2604    16412    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       root    false    200    201    201            �           2604    16438    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       root    false    207    206    207            �           2604    16448    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       root    false    209    208    209            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    211    210    211            �           2604    16877    base_centraltelefonica id    DEFAULT     �   ALTER TABLE ONLY public.base_centraltelefonica ALTER COLUMN id SET DEFAULT nextval('public.base_centraltelefonica_id_seq'::regclass);
 H   ALTER TABLE public.base_centraltelefonica ALTER COLUMN id DROP DEFAULT;
       public       root    false    248    247    248            �           2604    16821    base_circuitodados id    DEFAULT     ~   ALTER TABLE ONLY public.base_circuitodados ALTER COLUMN id SET DEFAULT nextval('public.base_circuitodados_id_seq'::regclass);
 D   ALTER TABLE public.base_circuitodados ALTER COLUMN id DROP DEFAULT;
       public       root    false    240    239    240            �           2604    16829    base_circuitovoz id    DEFAULT     z   ALTER TABLE ONLY public.base_circuitovoz ALTER COLUMN id SET DEFAULT nextval('public.base_circuitovoz_id_seq'::regclass);
 B   ALTER TABLE public.base_circuitovoz ALTER COLUMN id DROP DEFAULT;
       public       root    false    242    241    242            �           2604    16837    base_datainauguracao id    DEFAULT     �   ALTER TABLE ONLY public.base_datainauguracao ALTER COLUMN id SET DEFAULT nextval('public.base_datainauguracao_id_seq'::regclass);
 F   ALTER TABLE public.base_datainauguracao ALTER COLUMN id DROP DEFAULT;
       public       root    false    244    243    244            �           2604    17394    base_ferias id    DEFAULT     p   ALTER TABLE ONLY public.base_ferias ALTER COLUMN id SET DEFAULT nextval('public.base_ferias_id_seq'::regclass);
 =   ALTER TABLE public.base_ferias ALTER COLUMN id DROP DEFAULT;
       public       root    false    253    254    254            �           2604    16891    base_historicoincidente id    DEFAULT     �   ALTER TABLE ONLY public.base_historicoincidente ALTER COLUMN id SET DEFAULT nextval('public.base_historicoincidente_id_seq'::regclass);
 I   ALTER TABLE public.base_historicoincidente ALTER COLUMN id DROP DEFAULT;
       public       root    false    250    249    250            �           2604    17386    base_ipfixo id    DEFAULT     p   ALTER TABLE ONLY public.base_ipfixo ALTER COLUMN id SET DEFAULT nextval('public.base_ipfixo_id_seq'::regclass);
 =   ALTER TABLE public.base_ipfixo ALTER COLUMN id DROP DEFAULT;
       public       root    false    251    252    252            �           2604    16849    base_testdatainauguracao id    DEFAULT     �   ALTER TABLE ONLY public.base_testdatainauguracao ALTER COLUMN id SET DEFAULT nextval('public.base_testdatainauguracao_id_seq'::regclass);
 J   ALTER TABLE public.base_testdatainauguracao ALTER COLUMN id DROP DEFAULT;
       public       root    false    245    246    246            �           2604    16612    chamado_chamado id    DEFAULT     x   ALTER TABLE ONLY public.chamado_chamado ALTER COLUMN id SET DEFAULT nextval('public.chamado_chamado_id_seq'::regclass);
 A   ALTER TABLE public.chamado_chamado ALTER COLUMN id DROP DEFAULT;
       public       root    false    223    222    223            �           2604    16695    compras_compras id    DEFAULT     x   ALTER TABLE ONLY public.compras_compras ALTER COLUMN id SET DEFAULT nextval('public.compras_compras_id_seq'::regclass);
 A   ALTER TABLE public.compras_compras ALTER COLUMN id DROP DEFAULT;
       public       root    false    231    230    231            �           2604    17420    compras_manutencao_mensal id    DEFAULT     �   ALTER TABLE ONLY public.compras_manutencao_mensal ALTER COLUMN id SET DEFAULT nextval('public.compras_manutencao_mensal_id_seq'::regclass);
 K   ALTER TABLE public.compras_manutencao_mensal ALTER COLUMN id DROP DEFAULT;
       public       root    false    256    255    256            �           2604    16540    core_fornecedor id    DEFAULT     x   ALTER TABLE ONLY public.core_fornecedor ALTER COLUMN id SET DEFAULT nextval('public.core_fornecedor_id_seq'::regclass);
 A   ALTER TABLE public.core_fornecedor ALTER COLUMN id DROP DEFAULT;
       public       root    false    214    215    215            �           2604    16548    core_lojas id    DEFAULT     n   ALTER TABLE ONLY public.core_lojas ALTER COLUMN id SET DEFAULT nextval('public.core_lojas_id_seq'::regclass);
 <   ALTER TABLE public.core_lojas ALTER COLUMN id DROP DEFAULT;
       public       root    false    216    217    217            �           2604    16556    core_profile id    DEFAULT     r   ALTER TABLE ONLY public.core_profile ALTER COLUMN id SET DEFAULT nextval('public.core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public       root    false    218    219    219            �           2604    16516    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       root    false    213    212    213            �           2604    16402    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       root    false    198    199    199            �           2604    16391    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       root    false    197    196    197            �           2604    16632    envios_enviobh id    DEFAULT     v   ALTER TABLE ONLY public.envios_enviobh ALTER COLUMN id SET DEFAULT nextval('public.envios_enviobh_id_seq'::regclass);
 @   ALTER TABLE public.envios_enviobh ALTER COLUMN id DROP DEFAULT;
       public       root    false    225    224    225            �           2604    17457    envios_recebimento id    DEFAULT     ~   ALTER TABLE ONLY public.envios_recebimento ALTER COLUMN id SET DEFAULT nextval('public.envios_recebimento_id_seq'::regclass);
 D   ALTER TABLE public.envios_recebimento ALTER COLUMN id DROP DEFAULT;
       public       root    false    258    257    258            �           2604    17489    estoque_categoriahd id    DEFAULT     �   ALTER TABLE ONLY public.estoque_categoriahd ALTER COLUMN id SET DEFAULT nextval('public.estoque_categoriahd_id_seq'::regclass);
 E   ALTER TABLE public.estoque_categoriahd ALTER COLUMN id DROP DEFAULT;
       public       root    false    259    260    260            �           2604    17497    estoque_categoriamemoria id    DEFAULT     �   ALTER TABLE ONLY public.estoque_categoriamemoria ALTER COLUMN id SET DEFAULT nextval('public.estoque_categoriamemoria_id_seq'::regclass);
 J   ALTER TABLE public.estoque_categoriamemoria ALTER COLUMN id DROP DEFAULT;
       public       root    false    261    262    262            �           2604    17505    estoque_categoriaprocessador id    DEFAULT     �   ALTER TABLE ONLY public.estoque_categoriaprocessador ALTER COLUMN id SET DEFAULT nextval('public.estoque_categoriaprocessador_id_seq'::regclass);
 N   ALTER TABLE public.estoque_categoriaprocessador ALTER COLUMN id DROP DEFAULT;
       public       root    false    263    264    264            �           2604    17513    estoque_categoriaso id    DEFAULT     �   ALTER TABLE ONLY public.estoque_categoriaso ALTER COLUMN id SET DEFAULT nextval('public.estoque_categoriaso_id_seq'::regclass);
 E   ALTER TABLE public.estoque_categoriaso ALTER COLUMN id DROP DEFAULT;
       public       root    false    265    266    266            �           2604    16658    estoque_equipamento id    DEFAULT     �   ALTER TABLE ONLY public.estoque_equipamento ALTER COLUMN id SET DEFAULT nextval('public.estoque_equipamento_id_seq'::regclass);
 E   ALTER TABLE public.estoque_equipamento ALTER COLUMN id DROP DEFAULT;
       public       root    false    226    227    227            �           2604    16669    estoque_movimento id    DEFAULT     |   ALTER TABLE ONLY public.estoque_movimento ALTER COLUMN id SET DEFAULT nextval('public.estoque_movimento_id_seq'::regclass);
 C   ALTER TABLE public.estoque_movimento ALTER COLUMN id DROP DEFAULT;
       public       root    false    229    228    229            �           2604    16738    msg_group_msg id    DEFAULT     t   ALTER TABLE ONLY public.msg_group_msg ALTER COLUMN id SET DEFAULT nextval('public.msg_group_msg_id_seq'::regclass);
 ?   ALTER TABLE public.msg_group_msg ALTER COLUMN id DROP DEFAULT;
       public       root    false    235    234    235            �           2604    16727 
   msg_msg id    DEFAULT     h   ALTER TABLE ONLY public.msg_msg ALTER COLUMN id SET DEFAULT nextval('public.msg_msg_id_seq'::regclass);
 9   ALTER TABLE public.msg_msg ALTER COLUMN id DROP DEFAULT;
       public       root    false    232    233    233            �           2604    16774    transf_transferencia id    DEFAULT     �   ALTER TABLE ONLY public.transf_transferencia ALTER COLUMN id SET DEFAULT nextval('public.transf_transferencia_id_seq'::regclass);
 F   ALTER TABLE public.transf_transferencia ALTER COLUMN id DROP DEFAULT;
       public       root    false    238    237    238            '          0    16571    atendimento_atendimento 
   TABLE DATA               �   COPY public.atendimento_atendimento (id, problema, solucao, status, setor, solicitante, create_at, updated_at, loja_id, user_id, user_finaliza_id) FROM stdin;
    public       root    false    221   F�                0    16417 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       root    false    203   �                0    16427    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       root    false    205   4�                0    16409    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       root    false    201   Q�                0    16435 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       root    false    207   �                0    16445    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       root    false    209   �                0    16453    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       root    false    211   �      B          0    16874    base_centraltelefonica 
   TABLE DATA               �   COPY public.base_centraltelefonica (id, modelo, end_ip, qtd_ramais, qtd_ramais_utilizados, dt_ult_preventiva, obs, filial_id) FROM stdin;
    public       root    false    248         :          0    16818    base_circuitodados 
   TABLE DATA               |   COPY public.base_circuitodados (id, nome_filial, cod_filial, faixa_ip, produto, circuito, roteador, velocidade) FROM stdin;
    public       root    false    240   +      <          0    16826    base_circuitovoz 
   TABLE DATA               �   COPY public.base_circuitovoz (id, regiao_filial, operadora, designacao, servico_equipamento, tel_abrir_chamado, op_urla) FROM stdin;
    public       root    false    242   \      >          0    16834    base_datainauguracao 
   TABLE DATA               Q   COPY public.base_datainauguracao (id, cod_filial, loja, inauguracao) FROM stdin;
    public       root    false    244   q      H          0    17391    base_ferias 
   TABLE DATA               s   COPY public.base_ferias (id, colaborador, mes, ano, inicio, termino, dias, decimo_terceiro, filial_id) FROM stdin;
    public       root    false    254   �      D          0    16888    base_historicoincidente 
   TABLE DATA               Q   COPY public.base_historicoincidente (id, incidente, data, filial_id) FROM stdin;
    public       root    false    250   �      F          0    17383    base_ipfixo 
   TABLE DATA               y   COPY public.base_ipfixo (id, ip_interno, porta_interna, ip_externo, porta_externa, status_online, filial_id) FROM stdin;
    public       root    false    252   s      @          0    16846    base_testdatainauguracao 
   TABLE DATA               U   COPY public.base_testdatainauguracao (id, cod_filial, loja, inauguracao) FROM stdin;
    public       root    false    246   �      )          0    16609    chamado_chamado 
   TABLE DATA               �   COPY public.chamado_chamado (id, chamado, modelo, serial, create_at, updated_at, quantidade, defeito, valor, status, loja_id, user_id, dt_finalizado) FROM stdin;
    public       root    false    223   �      1          0    16692    compras_compras 
   TABLE DATA               �   COPY public.compras_compras (id, num_pedido, dt_vencimento, obs, create_at, updated_at, equipamento_id, filial_id, fornecedor_id, user_id) FROM stdin;
    public       root    false    231   �)      J          0    17417    compras_manutencao_mensal 
   TABLE DATA               �   COPY public.compras_manutencao_mensal (id, dt_entrega, conta, descricao, valor, nf, ordem, vencimento, status, dt_aquisicao_equipamento, dt_ultima_manutencao, filial_id, fornecedor_id) FROM stdin;
    public       root    false    256   *      !          0    16537    core_fornecedor 
   TABLE DATA               r   COPY public.core_fornecedor (id, name, numero, razao_social, cnpj, rua, num_rua, bairro, cep, cidade) FROM stdin;
    public       root    false    215   {*      #          0    16545 
   core_lojas 
   TABLE DATA               _   COPY public.core_lojas (id, name, numero, cnpj, rua, num_rua, bairro, cep, cidade) FROM stdin;
    public       root    false    217   +      %          0    16553    core_profile 
   TABLE DATA               U   COPY public.core_profile (id, bio, location, birth_date, user_id, grupo) FROM stdin;
    public       root    false    219   �/                0    16513    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       root    false    213   50                0    16399    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       root    false    199   JC                0    16388    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       root    false    197   �D      6          0    16759    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       root    false    236   �H      +          0    16629    envios_enviobh 
   TABLE DATA               �   COPY public.envios_enviobh (id, num_nota, num_ficha_transf, create_at, updated_at, filial_destino_id, filial_origem_id, user_id, recebido) FROM stdin;
    public       root    false    225   ��      L          0    17454    envios_recebimento 
   TABLE DATA               N   COPY public.envios_recebimento (id, create_at, envio_id, user_id) FROM stdin;
    public       root    false    258   ��      N          0    17486    estoque_categoriahd 
   TABLE DATA               5   COPY public.estoque_categoriahd (id, hd) FROM stdin;
    public       root    false    260   ˋ      P          0    17494    estoque_categoriamemoria 
   TABLE DATA               ?   COPY public.estoque_categoriamemoria (id, memoria) FROM stdin;
    public       root    false    262   �      R          0    17502    estoque_categoriaprocessador 
   TABLE DATA               G   COPY public.estoque_categoriaprocessador (id, processador) FROM stdin;
    public       root    false    264   �      T          0    17510    estoque_categoriaso 
   TABLE DATA               5   COPY public.estoque_categoriaso (id, so) FROM stdin;
    public       root    false    266   "�      -          0    16655    estoque_equipamento 
   TABLE DATA               �   COPY public.estoque_equipamento (id, name, modelo, serial, patrimonio, backup, setor, create_at, updated_at, qtd, obs, loja_id, hd_id, memoria_id, processador_id, so_id) FROM stdin;
    public       root    false    227   ?�      /          0    16666    estoque_movimento 
   TABLE DATA               u   COPY public.estoque_movimento (id, quantidade, defeito, create_at, updated_at, envio_id, equipamento_id) FROM stdin;
    public       root    false    229   ��      5          0    16735    msg_group_msg 
   TABLE DATA               ;   COPY public.msg_group_msg (id, grupo, user_id) FROM stdin;
    public       root    false    235   M�      3          0    16724    msg_msg 
   TABLE DATA               �   COPY public.msg_msg (id, assunto, mensagem, grupo, importancia, geral, lida, create_at, updated_at, dest_id, user_id) FROM stdin;
    public       root    false    233   ��      8          0    16771    transf_transferencia 
   TABLE DATA               x   COPY public.transf_transferencia (id, obs, qtd, create_at, updated_at, destino_id, equipamento_id, user_id) FROM stdin;
    public       root    false    238   w�      �           0    0    atendimento_atendimento_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.atendimento_atendimento_id_seq', 1828, true);
            public       root    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
            public       root    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       root    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);
            public       root    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);
            public       root    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 17, true);
            public       root    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 132, true);
            public       root    false    210            �           0    0    base_centraltelefonica_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.base_centraltelefonica_id_seq', 1, false);
            public       root    false    247            �           0    0    base_circuitodados_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.base_circuitodados_id_seq', 44, true);
            public       root    false    239            �           0    0    base_circuitovoz_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.base_circuitovoz_id_seq', 61, true);
            public       root    false    241            �           0    0    base_datainauguracao_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.base_datainauguracao_id_seq', 27, true);
            public       root    false    243            �           0    0    base_ferias_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.base_ferias_id_seq', 28, true);
            public       root    false    253            �           0    0    base_historicoincidente_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.base_historicoincidente_id_seq', 7, true);
            public       root    false    249            �           0    0    base_ipfixo_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.base_ipfixo_id_seq', 24, true);
            public       root    false    251            �           0    0    base_testdatainauguracao_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.base_testdatainauguracao_id_seq', 1, false);
            public       root    false    245            �           0    0    chamado_chamado_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chamado_chamado_id_seq', 85, true);
            public       root    false    222            �           0    0    compras_compras_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.compras_compras_id_seq', 1, false);
            public       root    false    230            �           0    0     compras_manutencao_mensal_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.compras_manutencao_mensal_id_seq', 1, true);
            public       root    false    255            �           0    0    core_fornecedor_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.core_fornecedor_id_seq', 1, true);
            public       root    false    214            �           0    0    core_lojas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_lojas_id_seq', 61, true);
            public       root    false    216            �           0    0    core_profile_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_profile_id_seq', 14, true);
            public       root    false    218            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 282, true);
            public       root    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 33, true);
            public       root    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 48, true);
            public       root    false    196            �           0    0    envios_enviobh_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.envios_enviobh_id_seq', 70, true);
            public       root    false    224            �           0    0    envios_recebimento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.envios_recebimento_id_seq', 52, true);
            public       root    false    257            �           0    0    estoque_categoriahd_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.estoque_categoriahd_id_seq', 1, false);
            public       root    false    259            �           0    0    estoque_categoriamemoria_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.estoque_categoriamemoria_id_seq', 1, false);
            public       root    false    261            �           0    0 #   estoque_categoriaprocessador_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.estoque_categoriaprocessador_id_seq', 1, false);
            public       root    false    263            �           0    0    estoque_categoriaso_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.estoque_categoriaso_id_seq', 1, false);
            public       root    false    265            �           0    0    estoque_equipamento_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.estoque_equipamento_id_seq', 8049, true);
            public       root    false    226            �           0    0    estoque_movimento_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.estoque_movimento_id_seq', 84, true);
            public       root    false    228            �           0    0    msg_group_msg_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.msg_group_msg_id_seq', 16, true);
            public       root    false    234            �           0    0    msg_msg_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.msg_msg_id_seq', 68, true);
            public       root    false    232            �           0    0    transf_transferencia_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transf_transferencia_id_seq', 6, true);
            public       root    false    237                       2606    16579 4   atendimento_atendimento atendimento_atendimento_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.atendimento_atendimento
    ADD CONSTRAINT atendimento_atendimento_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.atendimento_atendimento DROP CONSTRAINT atendimento_atendimento_pkey;
       public         root    false    221            �           2606    16605    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         root    false    203            �           2606    16479 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         root    false    205    205            �           2606    16432 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         root    false    205            �           2606    16422    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         root    false    203            �           2606    16465 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         root    false    201    201            �           2606    16414 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         root    false    201                       2606    16450 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         root    false    209                       2606    16494 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         root    false    209    209            �           2606    16440    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         root    false    207                       2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         root    false    211            
           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         root    false    211    211            �           2606    16599     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         root    false    207            P           2606    16879 2   base_centraltelefonica base_centraltelefonica_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.base_centraltelefonica
    ADD CONSTRAINT base_centraltelefonica_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.base_centraltelefonica DROP CONSTRAINT base_centraltelefonica_pkey;
       public         root    false    248            G           2606    16823 *   base_circuitodados base_circuitodados_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.base_circuitodados
    ADD CONSTRAINT base_circuitodados_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.base_circuitodados DROP CONSTRAINT base_circuitodados_pkey;
       public         root    false    240            I           2606    16831 &   base_circuitovoz base_circuitovoz_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.base_circuitovoz
    ADD CONSTRAINT base_circuitovoz_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.base_circuitovoz DROP CONSTRAINT base_circuitovoz_pkey;
       public         root    false    242            K           2606    16839 .   base_datainauguracao base_datainauguracao_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.base_datainauguracao
    ADD CONSTRAINT base_datainauguracao_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.base_datainauguracao DROP CONSTRAINT base_datainauguracao_pkey;
       public         root    false    244            Y           2606    17396    base_ferias base_ferias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.base_ferias
    ADD CONSTRAINT base_ferias_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.base_ferias DROP CONSTRAINT base_ferias_pkey;
       public         root    false    254            S           2606    16893 4   base_historicoincidente base_historicoincidente_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.base_historicoincidente
    ADD CONSTRAINT base_historicoincidente_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.base_historicoincidente DROP CONSTRAINT base_historicoincidente_pkey;
       public         root    false    250            V           2606    17388    base_ipfixo base_ipfixo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.base_ipfixo
    ADD CONSTRAINT base_ipfixo_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.base_ipfixo DROP CONSTRAINT base_ipfixo_pkey;
       public         root    false    252            M           2606    16851 6   base_testdatainauguracao base_testdatainauguracao_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.base_testdatainauguracao
    ADD CONSTRAINT base_testdatainauguracao_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.base_testdatainauguracao DROP CONSTRAINT base_testdatainauguracao_pkey;
       public         root    false    246                       2606    16614 $   chamado_chamado chamado_chamado_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.chamado_chamado
    ADD CONSTRAINT chamado_chamado_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.chamado_chamado DROP CONSTRAINT chamado_chamado_pkey;
       public         root    false    223            4           2606    16697 $   compras_compras compras_compras_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.compras_compras
    ADD CONSTRAINT compras_compras_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.compras_compras DROP CONSTRAINT compras_compras_pkey;
       public         root    false    231            ]           2606    17425 8   compras_manutencao_mensal compras_manutencao_mensal_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.compras_manutencao_mensal
    ADD CONSTRAINT compras_manutencao_mensal_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.compras_manutencao_mensal DROP CONSTRAINT compras_manutencao_mensal_pkey;
       public         root    false    256                       2606    16542 $   core_fornecedor core_fornecedor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.core_fornecedor
    ADD CONSTRAINT core_fornecedor_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.core_fornecedor DROP CONSTRAINT core_fornecedor_pkey;
       public         root    false    215                       2606    16550    core_lojas core_lojas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_lojas
    ADD CONSTRAINT core_lojas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_lojas DROP CONSTRAINT core_lojas_pkey;
       public         root    false    217                       2606    16561    core_profile core_profile_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_pkey;
       public         root    false    219                       2606    16563 %   core_profile core_profile_user_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_key;
       public         root    false    219                       2606    16522 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         root    false    213            �           2606    16406 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         root    false    199    199            �           2606    16404 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         root    false    199            �           2606    16396 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         root    false    197            ?           2606    16766 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         root    false    236            #           2606    16634 "   envios_enviobh envios_enviobh_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.envios_enviobh
    ADD CONSTRAINT envios_enviobh_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.envios_enviobh DROP CONSTRAINT envios_enviobh_pkey;
       public         root    false    225            `           2606    17459 *   envios_recebimento envios_recebimento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.envios_recebimento
    ADD CONSTRAINT envios_recebimento_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.envios_recebimento DROP CONSTRAINT envios_recebimento_pkey;
       public         root    false    258            c           2606    17491 ,   estoque_categoriahd estoque_categoriahd_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.estoque_categoriahd
    ADD CONSTRAINT estoque_categoriahd_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.estoque_categoriahd DROP CONSTRAINT estoque_categoriahd_pkey;
       public         root    false    260            e           2606    17499 6   estoque_categoriamemoria estoque_categoriamemoria_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.estoque_categoriamemoria
    ADD CONSTRAINT estoque_categoriamemoria_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.estoque_categoriamemoria DROP CONSTRAINT estoque_categoriamemoria_pkey;
       public         root    false    262            g           2606    17507 >   estoque_categoriaprocessador estoque_categoriaprocessador_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.estoque_categoriaprocessador
    ADD CONSTRAINT estoque_categoriaprocessador_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.estoque_categoriaprocessador DROP CONSTRAINT estoque_categoriaprocessador_pkey;
       public         root    false    264            i           2606    17515 ,   estoque_categoriaso estoque_categoriaso_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.estoque_categoriaso
    ADD CONSTRAINT estoque_categoriaso_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.estoque_categoriaso DROP CONSTRAINT estoque_categoriaso_pkey;
       public         root    false    266            )           2606    16663 ,   estoque_equipamento estoque_equipamento_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.estoque_equipamento
    ADD CONSTRAINT estoque_equipamento_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.estoque_equipamento DROP CONSTRAINT estoque_equipamento_pkey;
       public         root    false    227            /           2606    16671 (   estoque_movimento estoque_movimento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.estoque_movimento
    ADD CONSTRAINT estoque_movimento_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.estoque_movimento DROP CONSTRAINT estoque_movimento_pkey;
       public         root    false    229            ;           2606    16740     msg_group_msg msg_group_msg_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.msg_group_msg
    ADD CONSTRAINT msg_group_msg_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.msg_group_msg DROP CONSTRAINT msg_group_msg_pkey;
       public         root    false    235            8           2606    16732    msg_msg msg_msg_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.msg_msg
    ADD CONSTRAINT msg_msg_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.msg_msg DROP CONSTRAINT msg_msg_pkey;
       public         root    false    233            D           2606    16776 .   transf_transferencia transf_transferencia_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.transf_transferencia
    ADD CONSTRAINT transf_transferencia_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.transf_transferencia DROP CONSTRAINT transf_transferencia_pkey;
       public         root    false    238                       1259    16595 (   atendimento_atendimento_loja_id_e75b82e8    INDEX     o   CREATE INDEX atendimento_atendimento_loja_id_e75b82e8 ON public.atendimento_atendimento USING btree (loja_id);
 <   DROP INDEX public.atendimento_atendimento_loja_id_e75b82e8;
       public         root    false    221                       1259    16597 1   atendimento_atendimento_user_finaliza_id_34bd5573    INDEX     �   CREATE INDEX atendimento_atendimento_user_finaliza_id_34bd5573 ON public.atendimento_atendimento USING btree (user_finaliza_id);
 E   DROP INDEX public.atendimento_atendimento_user_finaliza_id_34bd5573;
       public         root    false    221                       1259    16596 (   atendimento_atendimento_user_id_9b54a2e7    INDEX     o   CREATE INDEX atendimento_atendimento_user_id_9b54a2e7 ON public.atendimento_atendimento USING btree (user_id);
 <   DROP INDEX public.atendimento_atendimento_user_id_9b54a2e7;
       public         root    false    221            �           1259    16606    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         root    false    203            �           1259    16480 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         root    false    205            �           1259    16481 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         root    false    205            �           1259    16466 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         root    false    201            �           1259    16496 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         root    false    209                       1259    16495 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         root    false    209                       1259    16510 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         root    false    211                       1259    16509 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         root    false    211            �           1259    16600     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         root    false    207            N           1259    16885 )   base_centraltelefonica_filial_id_9b88313e    INDEX     q   CREATE INDEX base_centraltelefonica_filial_id_9b88313e ON public.base_centraltelefonica USING btree (filial_id);
 =   DROP INDEX public.base_centraltelefonica_filial_id_9b88313e;
       public         root    false    248            W           1259    17408    base_ferias_filial_id_ad20d9a9    INDEX     [   CREATE INDEX base_ferias_filial_id_ad20d9a9 ON public.base_ferias USING btree (filial_id);
 2   DROP INDEX public.base_ferias_filial_id_ad20d9a9;
       public         root    false    254            Q           1259    16899 *   base_historicoincidente_filial_id_17c9033b    INDEX     s   CREATE INDEX base_historicoincidente_filial_id_17c9033b ON public.base_historicoincidente USING btree (filial_id);
 >   DROP INDEX public.base_historicoincidente_filial_id_17c9033b;
       public         root    false    250            T           1259    17402    base_ipfixo_filial_id_3107257e    INDEX     [   CREATE INDEX base_ipfixo_filial_id_3107257e ON public.base_ipfixo USING btree (filial_id);
 2   DROP INDEX public.base_ipfixo_filial_id_3107257e;
       public         root    false    252                       1259    16625     chamado_chamado_loja_id_f18be067    INDEX     _   CREATE INDEX chamado_chamado_loja_id_f18be067 ON public.chamado_chamado USING btree (loja_id);
 4   DROP INDEX public.chamado_chamado_loja_id_f18be067;
       public         root    false    223                       1259    16626     chamado_chamado_user_id_a8331c1a    INDEX     _   CREATE INDEX chamado_chamado_user_id_a8331c1a ON public.chamado_chamado USING btree (user_id);
 4   DROP INDEX public.chamado_chamado_user_id_a8331c1a;
       public         root    false    223            0           1259    16718 '   compras_compras_equipamento_id_fb871cf4    INDEX     m   CREATE INDEX compras_compras_equipamento_id_fb871cf4 ON public.compras_compras USING btree (equipamento_id);
 ;   DROP INDEX public.compras_compras_equipamento_id_fb871cf4;
       public         root    false    231            1           1259    16719 "   compras_compras_filial_id_2b245154    INDEX     c   CREATE INDEX compras_compras_filial_id_2b245154 ON public.compras_compras USING btree (filial_id);
 6   DROP INDEX public.compras_compras_filial_id_2b245154;
       public         root    false    231            2           1259    16720 &   compras_compras_fornecedor_id_cd95e969    INDEX     k   CREATE INDEX compras_compras_fornecedor_id_cd95e969 ON public.compras_compras USING btree (fornecedor_id);
 :   DROP INDEX public.compras_compras_fornecedor_id_cd95e969;
       public         root    false    231            5           1259    16721     compras_compras_user_id_9d7cfa1c    INDEX     _   CREATE INDEX compras_compras_user_id_9d7cfa1c ON public.compras_compras USING btree (user_id);
 4   DROP INDEX public.compras_compras_user_id_9d7cfa1c;
       public         root    false    231            Z           1259    17436 ,   compras_manutencao_mensal_filial_id_20b7499c    INDEX     w   CREATE INDEX compras_manutencao_mensal_filial_id_20b7499c ON public.compras_manutencao_mensal USING btree (filial_id);
 @   DROP INDEX public.compras_manutencao_mensal_filial_id_20b7499c;
       public         root    false    256            [           1259    17437 0   compras_manutencao_mensal_fornecedor_id_623020b9    INDEX        CREATE INDEX compras_manutencao_mensal_fornecedor_id_623020b9 ON public.compras_manutencao_mensal USING btree (fornecedor_id);
 D   DROP INDEX public.compras_manutencao_mensal_fornecedor_id_623020b9;
       public         root    false    256                       1259    16533 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         root    false    213                       1259    16534 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         root    false    213            =           1259    16768 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         root    false    236            @           1259    16767 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         root    false    236                        1259    16650 )   envios_enviobh_filial_destino_id_99a69ae7    INDEX     q   CREATE INDEX envios_enviobh_filial_destino_id_99a69ae7 ON public.envios_enviobh USING btree (filial_destino_id);
 =   DROP INDEX public.envios_enviobh_filial_destino_id_99a69ae7;
       public         root    false    225            !           1259    16651 (   envios_enviobh_filial_origem_id_4cfafbdd    INDEX     o   CREATE INDEX envios_enviobh_filial_origem_id_4cfafbdd ON public.envios_enviobh USING btree (filial_origem_id);
 <   DROP INDEX public.envios_enviobh_filial_origem_id_4cfafbdd;
       public         root    false    225            $           1259    16652    envios_enviobh_user_id_d731b809    INDEX     ]   CREATE INDEX envios_enviobh_user_id_d731b809 ON public.envios_enviobh USING btree (user_id);
 3   DROP INDEX public.envios_enviobh_user_id_d731b809;
       public         root    false    225            ^           1259    17470 $   envios_recebimento_envio_id_fb248d07    INDEX     g   CREATE INDEX envios_recebimento_envio_id_fb248d07 ON public.envios_recebimento USING btree (envio_id);
 8   DROP INDEX public.envios_recebimento_envio_id_fb248d07;
       public         root    false    258            a           1259    17471 #   envios_recebimento_user_id_359b5610    INDEX     e   CREATE INDEX envios_recebimento_user_id_359b5610 ON public.envios_recebimento USING btree (user_id);
 7   DROP INDEX public.envios_recebimento_user_id_359b5610;
       public         root    false    258            %           1259    17516 "   estoque_equipamento_hd_id_ebe7f08b    INDEX     c   CREATE INDEX estoque_equipamento_hd_id_ebe7f08b ON public.estoque_equipamento USING btree (hd_id);
 6   DROP INDEX public.estoque_equipamento_hd_id_ebe7f08b;
       public         root    false    227            &           1259    16677 $   estoque_equipamento_loja_id_49112658    INDEX     g   CREATE INDEX estoque_equipamento_loja_id_49112658 ON public.estoque_equipamento USING btree (loja_id);
 8   DROP INDEX public.estoque_equipamento_loja_id_49112658;
       public         root    false    227            '           1259    17522 '   estoque_equipamento_memoria_id_98a713aa    INDEX     m   CREATE INDEX estoque_equipamento_memoria_id_98a713aa ON public.estoque_equipamento USING btree (memoria_id);
 ;   DROP INDEX public.estoque_equipamento_memoria_id_98a713aa;
       public         root    false    227            *           1259    17528 +   estoque_equipamento_processador_id_e9647368    INDEX     u   CREATE INDEX estoque_equipamento_processador_id_e9647368 ON public.estoque_equipamento USING btree (processador_id);
 ?   DROP INDEX public.estoque_equipamento_processador_id_e9647368;
       public         root    false    227            +           1259    17534 "   estoque_equipamento_so_id_5aa020a4    INDEX     c   CREATE INDEX estoque_equipamento_so_id_5aa020a4 ON public.estoque_equipamento USING btree (so_id);
 6   DROP INDEX public.estoque_equipamento_so_id_5aa020a4;
       public         root    false    227            ,           1259    16688 #   estoque_movimento_envio_id_46923d77    INDEX     e   CREATE INDEX estoque_movimento_envio_id_46923d77 ON public.estoque_movimento USING btree (envio_id);
 7   DROP INDEX public.estoque_movimento_envio_id_46923d77;
       public         root    false    229            -           1259    16689 )   estoque_movimento_equipamento_id_43550a4b    INDEX     q   CREATE INDEX estoque_movimento_equipamento_id_43550a4b ON public.estoque_movimento USING btree (equipamento_id);
 =   DROP INDEX public.estoque_movimento_equipamento_id_43550a4b;
       public         root    false    229            <           1259    16758    msg_group_msg_user_id_c11432b2    INDEX     [   CREATE INDEX msg_group_msg_user_id_c11432b2 ON public.msg_group_msg USING btree (user_id);
 2   DROP INDEX public.msg_group_msg_user_id_c11432b2;
       public         root    false    235            6           1259    16751    msg_msg_dest_id_c545f922    INDEX     O   CREATE INDEX msg_msg_dest_id_c545f922 ON public.msg_msg USING btree (dest_id);
 ,   DROP INDEX public.msg_msg_dest_id_c545f922;
       public         root    false    233            9           1259    16752    msg_msg_user_id_b870448b    INDEX     O   CREATE INDEX msg_msg_user_id_b870448b ON public.msg_msg USING btree (user_id);
 ,   DROP INDEX public.msg_msg_user_id_b870448b;
       public         root    false    233            A           1259    16792 (   transf_transferencia_destino_id_45caca15    INDEX     o   CREATE INDEX transf_transferencia_destino_id_45caca15 ON public.transf_transferencia USING btree (destino_id);
 <   DROP INDEX public.transf_transferencia_destino_id_45caca15;
       public         root    false    238            B           1259    16793 ,   transf_transferencia_equipamento_id_5cd22831    INDEX     w   CREATE INDEX transf_transferencia_equipamento_id_5cd22831 ON public.transf_transferencia USING btree (equipamento_id);
 @   DROP INDEX public.transf_transferencia_equipamento_id_5cd22831;
       public         root    false    238            E           1259    16794 %   transf_transferencia_user_id_7c120f64    INDEX     i   CREATE INDEX transf_transferencia_user_id_7c120f64 ON public.transf_transferencia USING btree (user_id);
 9   DROP INDEX public.transf_transferencia_user_id_7c120f64;
       public         root    false    238            v           2606    16590 S   atendimento_atendimento atendimento_atendime_user_finaliza_id_34bd5573_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendimento_atendimento
    ADD CONSTRAINT atendimento_atendime_user_finaliza_id_34bd5573_fk_auth_user FOREIGN KEY (user_finaliza_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.atendimento_atendimento DROP CONSTRAINT atendimento_atendime_user_finaliza_id_34bd5573_fk_auth_user;
       public       root    false    3067    221    207            t           2606    16580 Q   atendimento_atendimento atendimento_atendimento_loja_id_e75b82e8_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendimento_atendimento
    ADD CONSTRAINT atendimento_atendimento_loja_id_e75b82e8_fk_core_lojas_id FOREIGN KEY (loja_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.atendimento_atendimento DROP CONSTRAINT atendimento_atendimento_loja_id_e75b82e8_fk_core_lojas_id;
       public       root    false    217    221    3090            u           2606    16585 P   atendimento_atendimento atendimento_atendimento_user_id_9b54a2e7_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.atendimento_atendimento
    ADD CONSTRAINT atendimento_atendimento_user_id_9b54a2e7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.atendimento_atendimento DROP CONSTRAINT atendimento_atendimento_user_id_9b54a2e7_fk_auth_user_id;
       public       root    false    207    3067    221            l           2606    16473 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       root    false    201    205    3054            k           2606    16468 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       root    false    3059    205    203            j           2606    16459 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       root    false    199    201    3049            n           2606    16488 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       root    false    203    209    3059            m           2606    16483 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       root    false    207    3067    209            p           2606    16502 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       root    false    3054    201    211            o           2606    16497 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       root    false    207    211    3067            �           2606    16880 Q   base_centraltelefonica base_centraltelefonica_filial_id_9b88313e_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_centraltelefonica
    ADD CONSTRAINT base_centraltelefonica_filial_id_9b88313e_fk_core_lojas_id FOREIGN KEY (filial_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.base_centraltelefonica DROP CONSTRAINT base_centraltelefonica_filial_id_9b88313e_fk_core_lojas_id;
       public       root    false    3090    217    248            �           2606    17403 ;   base_ferias base_ferias_filial_id_ad20d9a9_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_ferias
    ADD CONSTRAINT base_ferias_filial_id_ad20d9a9_fk_core_lojas_id FOREIGN KEY (filial_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.base_ferias DROP CONSTRAINT base_ferias_filial_id_ad20d9a9_fk_core_lojas_id;
       public       root    false    3090    254    217            �           2606    16894 S   base_historicoincidente base_historicoincidente_filial_id_17c9033b_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_historicoincidente
    ADD CONSTRAINT base_historicoincidente_filial_id_17c9033b_fk_core_lojas_id FOREIGN KEY (filial_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.base_historicoincidente DROP CONSTRAINT base_historicoincidente_filial_id_17c9033b_fk_core_lojas_id;
       public       root    false    3090    250    217            �           2606    17397 ;   base_ipfixo base_ipfixo_filial_id_3107257e_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.base_ipfixo
    ADD CONSTRAINT base_ipfixo_filial_id_3107257e_fk_core_lojas_id FOREIGN KEY (filial_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.base_ipfixo DROP CONSTRAINT base_ipfixo_filial_id_3107257e_fk_core_lojas_id;
       public       root    false    217    3090    252            w           2606    16615 A   chamado_chamado chamado_chamado_loja_id_f18be067_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chamado_chamado
    ADD CONSTRAINT chamado_chamado_loja_id_f18be067_fk_core_lojas_id FOREIGN KEY (loja_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.chamado_chamado DROP CONSTRAINT chamado_chamado_loja_id_f18be067_fk_core_lojas_id;
       public       root    false    223    217    3090            x           2606    16620 @   chamado_chamado chamado_chamado_user_id_a8331c1a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chamado_chamado
    ADD CONSTRAINT chamado_chamado_user_id_a8331c1a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.chamado_chamado DROP CONSTRAINT chamado_chamado_user_id_a8331c1a_fk_auth_user_id;
       public       root    false    3067    207    223            �           2606    16698 D   compras_compras compras_compras_equipamento_id_fb871cf4_fk_estoque_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_compras
    ADD CONSTRAINT compras_compras_equipamento_id_fb871cf4_fk_estoque_e FOREIGN KEY (equipamento_id) REFERENCES public.estoque_equipamento(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.compras_compras DROP CONSTRAINT compras_compras_equipamento_id_fb871cf4_fk_estoque_e;
       public       root    false    3113    231    227            �           2606    16703 C   compras_compras compras_compras_filial_id_2b245154_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_compras
    ADD CONSTRAINT compras_compras_filial_id_2b245154_fk_core_lojas_id FOREIGN KEY (filial_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.compras_compras DROP CONSTRAINT compras_compras_filial_id_2b245154_fk_core_lojas_id;
       public       root    false    231    3090    217            �           2606    16708 L   compras_compras compras_compras_fornecedor_id_cd95e969_fk_core_fornecedor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_compras
    ADD CONSTRAINT compras_compras_fornecedor_id_cd95e969_fk_core_fornecedor_id FOREIGN KEY (fornecedor_id) REFERENCES public.core_fornecedor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.compras_compras DROP CONSTRAINT compras_compras_fornecedor_id_cd95e969_fk_core_fornecedor_id;
       public       root    false    231    3088    215            �           2606    16713 @   compras_compras compras_compras_user_id_9d7cfa1c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_compras
    ADD CONSTRAINT compras_compras_user_id_9d7cfa1c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.compras_compras DROP CONSTRAINT compras_compras_user_id_9d7cfa1c_fk_auth_user_id;
       public       root    false    3067    207    231            �           2606    17431 R   compras_manutencao_mensal compras_manutencao_m_fornecedor_id_623020b9_fk_core_forn    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_manutencao_mensal
    ADD CONSTRAINT compras_manutencao_m_fornecedor_id_623020b9_fk_core_forn FOREIGN KEY (fornecedor_id) REFERENCES public.core_fornecedor(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.compras_manutencao_mensal DROP CONSTRAINT compras_manutencao_m_fornecedor_id_623020b9_fk_core_forn;
       public       root    false    3088    215    256            �           2606    17426 W   compras_manutencao_mensal compras_manutencao_mensal_filial_id_20b7499c_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras_manutencao_mensal
    ADD CONSTRAINT compras_manutencao_mensal_filial_id_20b7499c_fk_core_lojas_id FOREIGN KEY (filial_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.compras_manutencao_mensal DROP CONSTRAINT compras_manutencao_mensal_filial_id_20b7499c_fk_core_lojas_id;
       public       root    false    3090    256    217            s           2606    16564 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public       root    false    207    219    3067            q           2606    16523 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       root    false    199    213    3049            r           2606    16528 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       root    false    207    3067    213            y           2606    16635 I   envios_enviobh envios_enviobh_filial_destino_id_99a69ae7_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.envios_enviobh
    ADD CONSTRAINT envios_enviobh_filial_destino_id_99a69ae7_fk_core_lojas_id FOREIGN KEY (filial_destino_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.envios_enviobh DROP CONSTRAINT envios_enviobh_filial_destino_id_99a69ae7_fk_core_lojas_id;
       public       root    false    225    217    3090            z           2606    16640 H   envios_enviobh envios_enviobh_filial_origem_id_4cfafbdd_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.envios_enviobh
    ADD CONSTRAINT envios_enviobh_filial_origem_id_4cfafbdd_fk_core_lojas_id FOREIGN KEY (filial_origem_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.envios_enviobh DROP CONSTRAINT envios_enviobh_filial_origem_id_4cfafbdd_fk_core_lojas_id;
       public       root    false    3090    225    217            {           2606    16645 >   envios_enviobh envios_enviobh_user_id_d731b809_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.envios_enviobh
    ADD CONSTRAINT envios_enviobh_user_id_d731b809_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.envios_enviobh DROP CONSTRAINT envios_enviobh_user_id_d731b809_fk_auth_user_id;
       public       root    false    225    3067    207            �           2606    17460 L   envios_recebimento envios_recebimento_envio_id_fb248d07_fk_envios_enviobh_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.envios_recebimento
    ADD CONSTRAINT envios_recebimento_envio_id_fb248d07_fk_envios_enviobh_id FOREIGN KEY (envio_id) REFERENCES public.envios_enviobh(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.envios_recebimento DROP CONSTRAINT envios_recebimento_envio_id_fb248d07_fk_envios_enviobh_id;
       public       root    false    3107    258    225            �           2606    17465 F   envios_recebimento envios_recebimento_user_id_359b5610_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.envios_recebimento
    ADD CONSTRAINT envios_recebimento_user_id_359b5610_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.envios_recebimento DROP CONSTRAINT envios_recebimento_user_id_359b5610_fk_auth_user_id;
       public       root    false    258    3067    207            }           2606    17517 P   estoque_equipamento estoque_equipamento_hd_id_ebe7f08b_fk_estoque_categoriahd_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_equipamento
    ADD CONSTRAINT estoque_equipamento_hd_id_ebe7f08b_fk_estoque_categoriahd_id FOREIGN KEY (hd_id) REFERENCES public.estoque_categoriahd(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.estoque_equipamento DROP CONSTRAINT estoque_equipamento_hd_id_ebe7f08b_fk_estoque_categoriahd_id;
       public       root    false    260    3171    227            |           2606    16672 I   estoque_equipamento estoque_equipamento_loja_id_49112658_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_equipamento
    ADD CONSTRAINT estoque_equipamento_loja_id_49112658_fk_core_lojas_id FOREIGN KEY (loja_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.estoque_equipamento DROP CONSTRAINT estoque_equipamento_loja_id_49112658_fk_core_lojas_id;
       public       root    false    3090    217    227            ~           2606    17523 H   estoque_equipamento estoque_equipamento_memoria_id_98a713aa_fk_estoque_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_equipamento
    ADD CONSTRAINT estoque_equipamento_memoria_id_98a713aa_fk_estoque_c FOREIGN KEY (memoria_id) REFERENCES public.estoque_categoriamemoria(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.estoque_equipamento DROP CONSTRAINT estoque_equipamento_memoria_id_98a713aa_fk_estoque_c;
       public       root    false    3173    227    262                       2606    17529 L   estoque_equipamento estoque_equipamento_processador_id_e9647368_fk_estoque_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_equipamento
    ADD CONSTRAINT estoque_equipamento_processador_id_e9647368_fk_estoque_c FOREIGN KEY (processador_id) REFERENCES public.estoque_categoriaprocessador(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.estoque_equipamento DROP CONSTRAINT estoque_equipamento_processador_id_e9647368_fk_estoque_c;
       public       root    false    227    264    3175            �           2606    17535 P   estoque_equipamento estoque_equipamento_so_id_5aa020a4_fk_estoque_categoriaso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_equipamento
    ADD CONSTRAINT estoque_equipamento_so_id_5aa020a4_fk_estoque_categoriaso_id FOREIGN KEY (so_id) REFERENCES public.estoque_categoriaso(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.estoque_equipamento DROP CONSTRAINT estoque_equipamento_so_id_5aa020a4_fk_estoque_categoriaso_id;
       public       root    false    3177    227    266            �           2606    16678 J   estoque_movimento estoque_movimento_envio_id_46923d77_fk_envios_enviobh_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_movimento
    ADD CONSTRAINT estoque_movimento_envio_id_46923d77_fk_envios_enviobh_id FOREIGN KEY (envio_id) REFERENCES public.envios_enviobh(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.estoque_movimento DROP CONSTRAINT estoque_movimento_envio_id_46923d77_fk_envios_enviobh_id;
       public       root    false    3107    225    229            �           2606    16683 H   estoque_movimento estoque_movimento_equipamento_id_43550a4b_fk_estoque_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque_movimento
    ADD CONSTRAINT estoque_movimento_equipamento_id_43550a4b_fk_estoque_e FOREIGN KEY (equipamento_id) REFERENCES public.estoque_equipamento(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.estoque_movimento DROP CONSTRAINT estoque_movimento_equipamento_id_43550a4b_fk_estoque_e;
       public       root    false    227    3113    229            �           2606    16753 <   msg_group_msg msg_group_msg_user_id_c11432b2_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.msg_group_msg
    ADD CONSTRAINT msg_group_msg_user_id_c11432b2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.msg_group_msg DROP CONSTRAINT msg_group_msg_user_id_c11432b2_fk_auth_user_id;
       public       root    false    207    235    3067            �           2606    16741 0   msg_msg msg_msg_dest_id_c545f922_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.msg_msg
    ADD CONSTRAINT msg_msg_dest_id_c545f922_fk_auth_user_id FOREIGN KEY (dest_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.msg_msg DROP CONSTRAINT msg_msg_dest_id_c545f922_fk_auth_user_id;
       public       root    false    3067    233    207            �           2606    16746 0   msg_msg msg_msg_user_id_b870448b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.msg_msg
    ADD CONSTRAINT msg_msg_user_id_b870448b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.msg_msg DROP CONSTRAINT msg_msg_user_id_b870448b_fk_auth_user_id;
       public       root    false    233    207    3067            �           2606    16777 N   transf_transferencia transf_transferencia_destino_id_45caca15_fk_core_lojas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.transf_transferencia
    ADD CONSTRAINT transf_transferencia_destino_id_45caca15_fk_core_lojas_id FOREIGN KEY (destino_id) REFERENCES public.core_lojas(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.transf_transferencia DROP CONSTRAINT transf_transferencia_destino_id_45caca15_fk_core_lojas_id;
       public       root    false    3090    217    238            �           2606    16782 N   transf_transferencia transf_transferencia_equipamento_id_5cd22831_fk_estoque_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.transf_transferencia
    ADD CONSTRAINT transf_transferencia_equipamento_id_5cd22831_fk_estoque_e FOREIGN KEY (equipamento_id) REFERENCES public.estoque_equipamento(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.transf_transferencia DROP CONSTRAINT transf_transferencia_equipamento_id_5cd22831_fk_estoque_e;
       public       root    false    238    227    3113            �           2606    16787 J   transf_transferencia transf_transferencia_user_id_7c120f64_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.transf_transferencia
    ADD CONSTRAINT transf_transferencia_user_id_7c120f64_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.transf_transferencia DROP CONSTRAINT transf_transferencia_user_id_7c120f64_fk_auth_user_id;
       public       root    false    238    207    3067            '      x���r$�u&�>����$%���h4f��@X �I6Gc2G��p�=���6�^b�lj��QfZQ�p)�I?ɜ�wG"i-��f$Y���=<�����;�	��u�}��庩��z2���z]u^�=֫f�z�w_w�AO�mۧj�Ox��j�����MN��7so6=��t2[W�USM� ,��0J�09�"��_��a9Mqz�~XDؔO�I��0��]�z˪�XM����n<���^7�z=����I<�=��.�|h*۲�v��z۪���cW�}5��f�,��ʫ�Ͳz�|���j6M�v�tU����ӭ�(���O���4�y(`�`�^\zվ�%;i��6ծZU�~Sy��~�o��w\��Ыj�<a�|v�f=?�Y\������Z&o����z�n�Covylv)
���(M�Ҟ��ã4;Js��B��t��(,Eg�����u�i�UЕvrU���;�����`�f�v�}�� �N�q�9�5h����GQ � ~�[�;ܷ�pͶ�;^�U�{�{û:x۶;oe��S��Z���]�~/?Q�A��>�[���N齰 p�6��]�	OVW��a��չ,���G:ލ���Q��Q�Y�n�A�IN.�������䲂-���w������Xu���pv|�-�M��v_{[�AA�v׮j��_{Ww���1\^�g�'���l��������Ύ�흤~T��fʏ��(H�8��'��E�䬽o��n˶����w�~yEcYt(��\����]��J����d׮�ރ�u- �-�V%>��`6=;��*\M�>�p:�:� �B�����(ɏ��O��x�ۀ���	n����wu�ÿ�Q���K�E�����'3[�C_{��	����]´�;�����V�}��W�}����Z\OϜQ�GqpF~>dy�GaқׇƘL��I�����j	Vv8-U����������亅�]�z�:5�[�Upn�<T|��{�׏���v0���;w, 
?OKw0n�&���٪SJ��W�����������e���;�«�܎O]W�:&�H�W�z���d $�5ȅ��껇j��z��և��YF7r�ң �̏�hd�H2�Ab���C!��۞�+� �O�O5��\���>o����:M��dc��M�7[��k�����b	Q��9i`�6�:�/f0�w���dS1r�@�� D{Z�˩	F�Q&�o^����������j��4��(t� ����31w�������\���Ȝ.�E�� ��(6�H�?���Q�I6�EX�7x�Xͨ�q�?��%^MQ<P���T�H��J]�T$���k�^A�oX�^�Ad�5=H~y�A7M����xׁ�1u���G��q�D��@r.�&]���A����a��a���	e�������n"?(�Ѽ�?=��k�G�i��|p��;�L�z�"H�C��R���Os)�+?;�i�H'��O���@c��<�߁�NN@E��"`���'��j�/�P�Y\�Lߞ��O�瓛��o�����(]1��~���i�dc��U?/������.����XuU1�����.�(��$,]���~�,]���H��Y�������M����ʃ��Ʀ�n1�]�E�� �w�n��k�����a����ƥ�]ѵ8�>jZ�'P�AoH��f��4�Q���"���P"Bk��%�-�{�C�J���=����ɬ�=�����}��rqu3?�9������+�9����@� }B�s������e4��4@ c}9��J���<��^ַ�V��#?cqS�]Nf597�`�[V1W� ��p��ʢ��Bjm�1тݵ]���m���%�Tm�}a(�%N@��@'��O�T�I89�����������oa�h���<04��hm\�ä%s���o�Y�u��
�i��U���VSF��$��y�ё�Y���U7�4��c� g��O�0��Z(rYع��M�S�J��բ~��&��x��V{s��O��	t-��v�j]N�\�	}�v��IEc�m貈�TY��OЉc\����ߕW���v�CKA����~�V�L���g��~�d��^� P��$��:���!�#��7:�|�%<h��K��	�����
����W,>��V?������a{�҇ҳˆ~���(����r��1�B�u�ؾBZ�4D�;n�I�,k���j�^��?�ڿ��%p���9`V��I���y���-E�rĞw��XN�?/ڟƢ%�_<n������Ob���e#nf��=*I9�h�f�	��B�7�+PwB�������"&��O>�]s�,)j��W�lmڧFy�WO��n��a�=�STg��u�d���#�Z��M���8���O�m�I�J�o�j���
G�%GĀ�L<ޯ���α{��$b��|HՑ7��Zx����+�|���:��ނa(�z�2�{3?�1k�;LS�oF�N|�ǂ?�]�9h�a�pl%���~'#S0�r�M�[X��ƍ��՟�w�4r��V?���Dl��y +�4:ث5F�Z�["
q8#[�r�Q���kP��m�!���A�qؔ����j]�j������uK���Z������&�N>V��J(:����'W�oN'SX�mӚVZ ?\��!.]oà��O��$�2��F�=���Q�$��noǓn.�/���kߛ��2o�0"�64���[0��`j�o��C6��"���1L�����m�%��BQݦ�\a;��t�������5d�V�ңb��e�>Ds��5:
��G�`u�&F:9ޓS�o��7Mߋ���50�;��tjޠ��D�'s�K��")�I�=)9H7	���ëb�����d~v���Ż���rhm��J����M�I��5��G��ăʅ��e$�n�=�Jb�뺃Q��1?;M:�kܲ�`̐�ٰ����K�6_t��ި�=!�����������N �ˡ�����Y]1���������y,膬UT����
���]���%LF�a�8���#o�a�����/5*	z��}lW �q�>�7����uUm�m��ZRb�>OO��}xi�0�z[�=�ÿL�C�v�G �����F!5Q+����Z7HU��������q��?���,p�{�ִ|��u�������o"X`�ő�}��΂����ؚ3p@臊��K8��c�]Մ4����71(��4������1K��9p�܋� ;JK�$f)��'k���D7p5X�ѝR#�ⵏ)��*� +F���\�X�
���~�_��<���������?oa�!��+�3��A y���o�_z䌇_�/��~�Ɇ�豌����4���	Pi$g�
w�B����
Z�=v����y�J�䏁r�U� �i�r����X�sm%�X���|�'��#��@�4���y�Of����ytU���[����wZ�k��sx��4��߁!�*e|��S9��DVM���7��Q��"+�zz6]L櫾�:� ��d��N��Y1���o�@��3a�_�~7Y�z�D�Jz�-<ۂ.$�%SA�q�6�Fl�X�����AB:��y���0��N�T9c�+/��"	��`�¹��[=+?7j4�x���0��K�.qE�d +�&vq����k���� Ǘ:AW�Y2P|�&v��ɾ�� �M0�]�J<��!�G��=��@����z��jzW���e�_WoN�]�t/F�=H!j���f�މy<9Ղoc_L�AC,k�~�߂����:�A��kl���K/���;��w5�"VPȫT�����c��n;9��Ӌ�7`����u�x�v�C�J-	L�D]bp9O��F3B���\?�nhM�=����GGH�[�y48�N�<�7��l�G3D����M�
��2uCK�ZCR�nQ�Z}���M�-��m�ݦpO����.�J�7�N��cp�O���}˳{��s
Cj��؍�=F�D%���� q�6��jq�>
y2��{B��#L��a[��5�qt    2��)�A�xTh*zH�����݂�@�B���##��Y������{�R��o�A�b��?}o"�j�<0 v>&����V��_��:�yj����8�?I7��ħ��aK���R���ks�2�<��w(�)d�܂泪V�OkV����.�^|����|�|��"ԅ�$����-�_���o1pJ�M����'M�X����m�I'�5�WP|ɇ+�i���-���޴��a���!�Nt!��OF
���*��f�UJ�\���2	�%�?a"�;kU/�溹�����K�_���� 0{�M���v�k��]��@�d��a��(&l8���@�,"P����E���(���m��d?.-C�p)�yqrX��!��'"Ʌ�L2ӡ��`��`��'7�bh��b�I ���0�0�K#�'���>#�el<\�M��6∐��\���UVQB�6��@�ay�YE�������j?�Rq��@� 5k2[[H9���y����Ǡ[Qh��H(�JJzϺ�� ���t�#vZ��*e3�-�5�|�'��w�"t��u�[B0�C�n�����j��(y ?rq2X���6�e_H���(�)B0�"�:|�N.��	08�$�JA�R�|!���d��X�4g�d�r�IFU�|�kHU�U�q��:���t�!h�~P����If�3�\RJ'�R��j돪���*�����x17Be�YHҫ$���S��`v�HS�q�fz�l��v62�o�dY��m�!�lذ8��"��W1������`�<��� g�Bw��;R$v`I���-HwPf1��Jw�N�jkX�Gqz� �֋(�j���q�:g�SD���媚J
�'��\��L���LA^>5�u}�v;��$��q]}kҡ]�)�����ǚ�*�ck���3$��wϿ���L4mL�r������(�~����8M��2�� �B��O|�x�nN/D�e#=bl�v{��̼�����Un�W��Ο9`ς�f��q;�M�X}�;�������X:$���aH��y82x���9@�8�b�bZ�3	����o>�_�AM�=�SQp��+T&\Zd����[#k�'���u���&���T�������*��mn��Gw�
V`F�c��-�U�]�OuoM[���s�3�41����|e��͞�'�}�r�	��#n�B��'gA�C�#�I��pkɏ`��`���b&�0U[##|ŉ6��^M߽��p_��t�@�Tʢb\>��U�����f������+Z���$悇����.�J9O�J�-���ꖃ1���u2]ӝ>qxݕ�
3����b4�c�����ʦB�Jn����c��YJ���@�	��V7ӳBA�����c���X=JЙ�v�j����
*t���J���������(ş-ˁ"�6q�T�t���D�Ġ�O��2�%k����ރ[(P��a��q��}��7����6��K#�����~�	nc�JE��K)W�X�ڣT����WV�� ����Q�\߃&�H��V�r�������r ��ܴ��ؚt0x~m8�T�2�8�N�ML)�c:�Z)6���}ג��niFu	�|K0F�u+�۾����Qi��W�GV��y0uPM`�������'���}p�~v:����jK��3t���&���A(����l%��|	=�l�tC��#��]-0��
do�t$��'�v����+�,oh��7f�t� 3���Rw���"�?ij�{�غ�y�	�?�Y����F�=s�#�����5#�k4W�0�k�������G�vSouj(�����A��������r1�X�^l�ϝ���s���J�nmX)_�#�A�i��H�&��f��V�8�<%�kU���.c6��kZ���إ���g�����&��;P�>=���b�A����Z��	$ʆ��!��̀�n3k��R��z�H�}������f�Ϧ���������j��OB����6eb�#@���v]�D�l��Q[�Eu /0�:�qJݔ��������`�%����@�]e��V�W���@��Z�����?3<�G`b�pQ�z���~�Y&+:�RӋ�D���=s��<�+�|�	������'uŶ��(�u���1�4�C�)��k�+�o�����XZF��w���߱C���?`b�������_f�;�ư�Pj�GV"���q�T��(y�����|�iA�3�We�˷�`�A�.�{Wmnqs�~� �U[��{X��5 OBT ����i��$��8$��DՉ>���G+�����T_�ǑE�V^�[J�QTD|��H�B�i���N1x���e8��I�I�F�Ⱦ��fAb���q�o@��H�<Ew����e���M�@8�kI�"D��#�{�y@�ۊp�����}2�Ny�����l�ər�a�"̋��y	��D$� ��v��k�]�m��T��s;�i�p��4�R�;;�x�;zu���w���Ӌ�w=}<=;�����w���Ǔ_�/�q�D�k_���e	
���f���` �R���� �1�0�1"�d��E^$�ؽ��R	��)[����7��9z��9v0ʇ�B컵�1v�X�z#�H�2w���po�ڇ8�Co����?�_{����c�dq�s}r�{�xAW���?�'��6}��5��z_�sƈ�zt�1(�K=ᴢ�_��W���������}'Nɂ$��U�;��@�V}�Ξ/.��x~���)�6���=�.�a��.Ϧ�)���췷��7�7����Q��7��.��tiZ�]�t��\G�Q�dB����i���۪c���-�?�MH�>^�]Frﾫ6�����S�Ƙ�R�)����V
�ޡ�6����G�qjj�HB��mE�����dO-���G�A�.CZR��K95m�!�	y2L���,������u����Z�`�u׮�I�KkkF�)�D��#��6�Q���5��8 <����$!�g""�*��bj�۬�� �6�.!�?���X�{�)$KG��6.Ɨ~��/ޡk�%t�
���d�9�00�~�2�x~qzv��p& -P�K�؝ ���ΰ��Նs(��)}�G�07?�F78��B���t�b�����X~lt1b�U��A��~�$z_N��1�ҐA��T�h�f<����є'�G��q���N/�&�����ln�<���0u���&���`r��Y��Xq�%b�d4����@V[�Ϲ���Y(��mH�$Mr���'P�r +4������=j�d�+�L�*�iD(��rObS-�'�q�]��D��x�2΅U�j<"�K�~���]�|z5��-��H#$s,*ݠI�S���dQ����B��!����)h�ز�ma�Q��0����Nc��ǩ{��&�ֱ�ۋc��+Рi�$�g��qH9��,l��X{��d��»lư��ܜ^,<PHÜ^�������2+����9��E;�w�v�"8J-�;���5:0�}��݁0�eR���jcL�#d��ٟL��ª�dm\|"{��H���fhL�.��^�3M�K���y/�Ű��K���K8ж:o_��1G+z�o�b��G�{w�``�Gv�g�)��'�ڞdo����UO����Ύq�[aH��<��NF��qz`k&j+wI�[�2�����6[(�\,�ٺ�V��t���|��$�u�֠EN�­$�"���!�� u�6[��@������8�R�d`����_|�L0�l��ۇ
qmDa�ln۝rl�Wo�j���X�&۟@?�/�H�S8�^e��I�!y��!���TY�2)����G�b�<y�����~_u+�Z�_Z�C6�@ҭ
K&��l�P�3I	A��8pd��mXj�3�d��4@'z"�,QI�t]`���7�|����&>g�d�_���4�c�c`�a��H�c�h��r��$a�0��4�\����0@��?��I�a;�N�oO��    rF�8�����TSi/�auppt'D��:䌁nI��� )���exPV{*C`�0�)���i<q� ��t���$�)q,=h;+ʬ*�Ƕ�E��I��uS0���Ԯuj��&�dvl��v�����s�ަOz�e��
��������k@<�ۚ����_�?L�@��v`>�����7f����+�i��C���~.UCM0ܢ�NZr�P\EY��8qK�`(�<�s��Q�B_hZSy�]+e\4��FR��U�1$�>h~�7��5�cз�k��F�^�)P���g�U4�A�X�6q
1)+�M��x�
X"��8l�;��f�_S��}u[�� <=��s5�ҭ��H/v����rdaTr�h>�V�%�8C��J�)f��@	��s�0J+h&0�L��)���0|�9Et e4�W>k��Z0��%���ݰJ�U���84�����p���e�-�ڻ;r��E
�����k��[�Q��Ր�.�8%�+z�Ia� �n�V�~#i���&	�up9�����v,�e`�r�*��B����R�xG��b�81;��5Ef�쒮�M��14���5�����N�`��
�P��M<Nb[	$_�..�*#V��!2^�%�a��z��e�����������>zլn�Ȯ���tSL#
�<3��$���=
�0<�b;�U���y����s�iW���m��E��Ww��t"��'͘'�UK���t�R��������8R;ҭ,onc�3S�[{dt�+�zTY1�q�	�7xf��Wz�����I�7�a��w-�	;��~K�	N��3'���0f�c"�`�&����p����L��~o�>��W7\>�*��&� v+h?�c���$���g�<G %�(s��6��L''���F|]D��"vz�#L�~���lC���4��(����v�����	�~`~]�̑� ���[�����Ւ��2�U��nNa�����vj�H��Ďq#���������wSࢲ~8g��/N*1���e>�Ũ�9S�4I�I`��0@:,Õ��A���I&��3�ĺGa7�@���ח<�����0B�ھ����c(���bD�1��%��ʡct����j�ނ�a��7}�)	�@L��FYp�� �I�Ǖ;�Y}��R��aX��J�I�2I19�I4%���7C�ӭ7��7W��~�SП��iA���ӟN�*�`�Yy�F�����dW����\�uC�Ei�Z�,�g���K{�n�I��ok�q�0��$���A;,-e)����������c&��w��|��=1qYm*�Iسi0�V�2��� jb:8�	Τ�}I�a�/���Oq'r���!�����C9ې>�ؽ_˟�����/z��	�l�����j�X��X�~����C��O
�,}A>���q�i՘Sfnu�@�A�G堷n��m�^6D��T�
��g��P:D���Y',U���#?+��?Ő=X6a�g��J���_�Z�â[Kh8#�˫���Hc�6��p�b��$
+
�s*ӁW���q����+��FW�� �o��OT��&�������3$�ؐ�&1�T�u=2�{���FR�����q������n$ް�L�|�I��]��v���[ϡ$�e�� �  R��A�e��c8��T�Pgi�A�p�r��\��)4EU��u����6�� go�z1�w5>
��3���i�]-Lw��)g�ȵ<`�;A�f�$7���d�G���e�No�k��nJP[C�bP#�)U2A�����1YOˏ��Ip�F@'F՝Y�Z6��X��o%ʩjS�A�խߜ�˳_���{����V��j5�8�xQmڧ�]=�cj�U�}�C h�=���1~n�a���R�p����v#��I�XE��P�{h}D�]ߊz��}�:A9�\&��$�RLf"��P���D�����ܠ�vA�+��o�m�X2VL�vg��b���=L�xA?�P�89gU�C�j�9!s�E�ߌ������)r�#A���%���n�8o�)Bo_�	݈�hp����dz�~��ɜG�镧��w����.���ه��Ͽ{���4bo����ܻ����9�����NW�G����������;;������c�%��+�-b�</�@'Go7l ����A�}���L����!�j��O�KI#�/�����B*W�g'G�R9�K"�i�'�p*I�,�l��J��F���^O�N�M		:�^O=�� �0SS�����W0�S��������h&�2�|1Z�f�I�*������fX�c��zũ
g�v�dL#-���]�x�!��X�w�M#h}�W�	���s���A����R[U�f�5�T�/4�㉦\z�3?-U�%��x�����c��68�t�[2�߈�>��;�
Sfu����sК�2N33�S��R�����	�p��t����N���a��)C�(���yC{W��h�'&ni��P���N��Y��� �H���d��*�n��������S�Ƚ&�\�	�n����4�}��hV~J5�V9���Z���|�~��;|@��O�l�p2�l)�p��v�8���^�Jh8�A� �b���Qp�HM߉�
�X;�B���\1)����6�bmru8�5	2�AY%�����g��>Ű18�k���,c�#����i?<�H�V�_�9�BW��;b����(�G�"e���!�J.��� �=�n	�I���|J/鐛a���49:�r&���'!(�����+�m�n�Y><G���->��'FC��;,�!��;~?_b�Î��K�� |��I�D���N}�uJ	�)4��ȋ%�%6&��3a�$V�Ҟ�-�p��/�"%�Y���3��c�L��DD�l��I��AH@��S,!��t���Q�ddέ�$��u��=z-�n���=�DhS0	�agN/�\��D����)����|-/C�!"�ӊ���P�n�ܣ*c-c$��ҟ�́_c��Ϫ	,aI�dI�	ՌF=� f(�� d2m�[*�AFA��� >{���LH��W�O�șG�3�
~(�D$�p��e���d�#�ô� 򈨯�Ћ'��EhSEpk�c�!ߚ�	*�m׮%�qG9k�A��PG�~߬���������5���"�3*8x7{xr�5~�L	b��խ(2�'�D��$�ąS�T��2��)&D~�Q0q���ra*�/	�<�<X�O���ޣE��u�^���D�~�`�]�`@�~G�7�<�K���L��B?��k�s|�#�S��E0�k4��s��X�)ˊ���&>�y,IXR���;�%]�\յ[���:E�e����l]J/6u�0<�l��ED��K
#�b��D��A��"q�9h�L'���R*�]!(��N*�(�G�峂�a�}]�N�j�)�]��:�6	Hn�)�6_�����v�@�j��o�<McSxdc�8�`A��I�=ܛ��n-�U㏏�R��7��8R{�$@Syngk�nU�n�ɠ9+��&���Z��G6�nLsa�L/N�gv���D��>p�;M��V���܂\��\17�``�Q�����{����1nY�J/�o��_���׭�����T��XT�ٚ�&��K�DE��ձUjI ;h�2�0xLQ*�3���K	5O�84eam���䈓xά��V0��������0d* �5I���M~c�9Ę��Ϫ+)���W t�b8
�2=��+�
]�@���$���,v���R��_-�Ɂ%ޱ�D�J�ߵ�1����T4-#�Nf�GA�҄��F��(1Ǵ��?�	҇θ��`n�s��U�"D��[V:���[ר�Sf	� �+�̷��TK"�ϸ����EћL*��j�n*�c)��H�anS,�,+��)R�a0��╗��YW��G���ݍ�6	ž����1�Н������ɜ>�s�4��������C�N��^����ԏ�V0WL�/;礦����J�h��9����vH��j    �qx� yU�p#xJd��0���$:�
����;�ơ��m#	�Ӭ��P��B�3e�L�� ���I� �'�W+N#��
�t6]t�'k�ٶ�d^B�S���P���NN6�G�����7�*Gl0�����֝�KIvܩ�T%0k��OS��V(�A����ag�M�Р��d^/���52�!��"����C�Ca�@�X�����TM �ƽ��y|��)���=������ǹv��4HG��Q'3�6�:*O��D>��+��8%̰��+qX!�c)�kVpҙ�[�Hزz��.W�ƹ�b���������u{�}uy�]�Y�_]�v7"<~��b_N?�NM��)|���s���7u0�#M���Z��DI�
�����Q ���+�	���8|�;[y�8��}s�Z�y�����8�����i����� �sۮ����{�鸉�C�&��lܴ�ݎ�����H��chn%*��)�F\�����+F2�5̅��P���꣠|�ۚ����`���-��v4B���C����%���TҦ��/#��˸��W�xJі�b��A��2�;�@ݵ$����M�gN��w��"Vʢ��$Oٽ�������./��k�X�Dө�i�L�<��	�
����|_Tx���������F����ո�`��x/��R�b�23���W��q��<2�*�
��w�ss�!��7S�,+�h �/� �Q�5���@ڝc�q����?njf�d���3��r�'���h|�#�?fڔ�4�y��	�l���2{uKmiO�
'u�e�P�WM�tt�8��$���$:���tN7)k��"�"��r����=�=��f���K��ϣ��bBF8�TR/���9���9��=f���?,Yy^o��B��[��Q,�ê�U�U�l��È�<��Vz�$�kD����o8�1$�HP��˩�@,��GA�0ODv2
>�u�cv_��	��ʫe�O�/��T�s }'u�� �ٓLQ�}�3�-������gV��	h*���D�Y&`eiBA�dlT��y�/�u�k�p. c7��x�+�s̚KEo�u���SM��z?��CT����"��pc��j3'k�fo�^��x��52���T;�jґ7�{7Ǆ��o�8sq�&�#�t��.L$�,,�K����pJ���$^�6���)e�igq=�'2$t[o�;���6���jL3�'3�ǹ!d��w-�tN+:������X�+��"Ѐ��0D��h�$��t�m�"�|u��_d����*��Q�]�1T�DU2��3��&��`��m%��V�<�IP�hP���[4�4\�xG�Mn<�<���:���>��w��/I�^���Uxv8���A�Lt���8Ve��j�[p�u�5�$�Y��݅KѬ-�0�I��T�yREfV��\r�ύ�e����V{��zh�)w��w�7uo��A���Y���qP]\V���Zx�hc�,P��cLR(\+,G��{v��X�Z$��t�����h��*<ہ,D�GD����D�?*��3�5���EY�T^�Zyk��m�\�L�қʼ���R(Ƚ���_hML�����(@e�దM���+�NV��<f(�ت�E˺�~��P�Nd�{\/IC��yx��%o,R�����G8
$�NJT+��i���`��;���&KPֻ��R{1�ս����snw,|&�Y�h��!F�J���e��}s"0��E>_j�I9��]�Ǝ �Y��hkl�[�UBd�b����J��i��ի��TFQ��nDխ�2"ꏻ�ް�b���hǿ�"^���L��j=�s���l������S�Ia�8r/I����0 ��QIt���"���-����{�L��ī���˳���;�O�p/|+�>���r���C7�� fL�����2�Px��Hl}}*�zeD�k�;�8�_�6U��%hc"��b;_4Ŵ�R����`�>��Rl_J~^�!D�g��g3��J���U��������(���TŷIs`w���I$F�O�^�	Tt�`�m`���(Ի2
��fQ����e��!��0����i��s�)�1�(����yi��P}
to]^����5k��!}��z̨�l:�QB��������$�Mb�P_]
��'�?VbJ;�n�n�~ ��/?1_3�y���,I�X�D��IzO�v�At�WQ��7���	�⺪G�$�z��Ak�K����"�i�� �+0m�lO雠�ҕ�Il)�B'�Vi���Gy$�6��v&>�bU�-@�ŪA�?�Z�-ޤ���f���a,/V��1�z$]�I��P��/� q�׌�I؍ �� V��y<�in��s6� t��Goҡw��y�o�����T��SGŽ�j|2<_4��sR�6�g���]]��*��߶���J��P�X�ί˲�Lt�}���횆͉n��EIX �*��Ϧ+�*����?�g�q�g�%�u�	� J��Y�lK�g��4�.������fq����$����{�j�`2�S����c�^g��=�~т��޵X0��w����㟫,1A��}��U�v��G0�?�Xd�"�)�Cq9�5.�����y��Cuv�8��T&(
M� ��|��߂M�p�jr:�X� 
Bp��sʴ���u���HT��Fr"���]u�m���!��\-�t�fHc?Nb��,�B,`������fn�7� '�;	H�$J�ceI���0~���#96�xXD�4�$�]�!�F9:j�"6|4Q(�"9fV6�.
��Z 5�+Q!��[��j��r��R�(�OU���4���W��.�BYP���ty��8���Ŵ�6N����a�Ҝ���
�:�jYYeO���в��6��d�$��2U�y��E��9�jt���$�_��`�%8�k
�Y��Eb+t�P%\�^հⓨn"�o�Z�w#��g�ܭP���V+Dޮ$�����k�y8�8}���!#�JYhV�E�����Ȁ��@li���$�#�m�7�WS8�o�����N�G(MK�V�D0~�S\��.FD��������ԟ�σl82�I�,sPY5lH#�ӳA�ѝ��C�Mm?�~G���8V�>��H��]�H�@V�(��=��4J��띟��UJ����|��5����(??�t�&N^I%�r��]�ˠI�k.r��[y�DBw�+�~@	�@Q`\=�����'h/84�ag8��@P4Z9m�3�D�u�_���M#���ѱ�������U�3�?����?~�W��&atƎ�͎���3	SO�������v�ٙ��t-���C!2E˵#�ҥ5C=�І��9��<h�~#�.���Tb����qƏ�x��8�6	�|�8X�I.�ު���㕬ʽtF"��ܵ�x�Ѫ!����1���p��ݽn�A���HЌ")5��~2E��� S#�Y����bV�\�ż�v/�͚��:�㑦Xğ���b�T���͂��0�3Q�k�%nuol��٘��)��Z�~k
7R�Ab_��x
s�i�	�T�0���7�_Y�K@�:BAY3�&
�0LUE��AZ��|_s���ra���d�ɉҎ]O�H�`]Ez]�A�H<� *ѿN�o!;��~��f*���%/޿;�^˕�ÜvF�YMA�S�[Kj�$Vl�qVGz�l�G䀬;}4��8��LX�!F�,ꃊtڕM,;,��!H�@�R�U����C;�o��0+�TA����V"�c��7R�������x��4�4�$̆��j�d�{��@'������_�w U��4Q�R�αZ�A�yr<{%.LP�%Tk<��3��K�TS'�J/2g�$�T�m�)�
s����]3�R���ϱ&�9���5��G*/�c87x��W�/"S$���������l�.��7X����X���ЙҦ��$/�̙��G8�p�*z�3U'���O��iYE�((l���HQ~��^q[D����d    ��2�/45t51��՟\��c�U�C�!H-�,���0J����zG"/N��i��,��bz�!kH"#�o�-���QB�C�a$B�6eŹ��V��q⒢D�c,��$P��L��!H���_F��]	Z������ڙ���P��ݓ��HČ��t�׀	��(���H~7��^�]Ԣ�*x�ټL�$衠�����4�D�hboٚ+ךRS������ݦ[)�Mυ.ͨ��Q9��}Wa��G�P���|1ؼ���ʑr�RJZYq�$:����X'��5��7�r
z��� '?_�sâQ��e��BJ����w�CiB�v=�w��!����h���D��
>��å�k7t�������?b(P����r����P��h<ce��xs�{S8@[x�9�S��L����j~6wD���^��|AIGȻ$�\ˤT��@�����X��))�f):��PK=E_��`��T)Xia�_���΄dZ�lo1R�-WQ�����5�^��!�wy�:��~�����gLE3�,�IP�b�<��t�>�6���p}¢-@�מ!�#�E�j�iU�Y�k�T���KDA6�gV�-Wyo�*#��Iú��\�Μ�K��^���K�Z��=NJ-� "0��Od;��HA��܍�T����֐~qO~f��5�ސ�iFpϤ�閬"�)K-����2���?���a'~9ŘC���M�蔾��MQS�Uݾ�(�6�V�.E�қl,�oZ5��i��pn�+��uF�8��$��Fo-��SWcC0~s��r�CWxE�zk�y������b�3�0���#M��O%�IP>s��(p�q����CV�A�Z�6�2I�;[�g�j��㊜�(��k�G�`�N���İ֑JPU�tL��,��2�i1pM�J��(��[J$�}����_�2]�Ғ[TV$L%-M'g
w��lz�J�L��B��.9�iQ��3�7{�f������Q� AYRr�����]� ��Y@��c3H��܀)0��(s�pF�A�N<x�D�����2�cw��k#�])a4U��y;8i���ψY�&���.��WXX��ǥrø��:�*99I�g\A]l�,�LƻU����M�D�R�#���ߌ>����7�-�H>��1�$��mDNq�R�| ���Zx6b.?��ġ�,�,�|�\�Cf �S�\ϯo�Ŋ�WR6���p��Lʓ�)�l^��&��HQ>� x`:�CE
LoP�=��WO�8�`�|��\�v�s�;�MV��	_Tf�Q_5\�靽�����^�Ͻ�Ň��1\=�
���˹i���bd�����Y��ǉ��F�
Y���ܝZF!�����S�c��/�L���+߭�.*�D��a�rvL96v���~l���yE�*n��=d��-����&��z��,�� �2�ǩ��t�<���H�W5C��J��:J|�Q12�%#�da���JK�2ýM#Y�~�p��_L)��o�$z��@\�s�uB�K��E�g#��RP""`Lݫ�m�K-�B�G�Q(�QM?��P�$�ɭN8��ѭ��f5f�cS�����T�s��Q_�+G���8<>��Q��褐�bFp��Z��s,f��z!�"�%�_0�C�'�a�%i�"������_����c;��|���-�n��<�oY�����Z�T�l�y�KSu��v3��Τ�M*���d�!�p�Ш�;��&%F��{��o�p9;]\ ��s�Ǭ����&�]Q��������?�JL����!��0b�]@E�R�	-�ۚrZ6��GifV�B�9V�#�9MD����]�a�Z����@R�o�z�T�α�]�C|)�,,�R���+&'*K�BEi�
��v�QK���zW����IC���`�ɗ�!��|]�g�[*_h����3�]�a�B*{�(��P���1�fp+]�f}1��F%Φ�c� .�DͣL��L'�+6B1�Ep�1��s2?��cC�\u`�>	M��X/�"��}�DC�+e�GG�K6�g��H�A65S�B�a��ʏ�20�i��k�;�N8�/3�_g(/�h����k�P���*�r
�U:��_-9�l0����ΎJ�	Ǚ���H�f�2I�03�nyj�i��\��p�X���֡y0�T0�=�����:�����=�h�G�[ ���������!�������&	��:^�I���Ȕ�Tή���	���]���۶ݙ��?��pzvn 'w0R���ʵ�Òέ��O�m��!kY��ĵnd�e���-���ߏ��y�t#I)�������!/&�a]Qɒ�j��;fjzz��Uݺ,� ����m�z"uH�^)2;�����t�X��ˉ��K6<o���
�Wc�dS3ݨ��2��ET�(y��n����\B�g����S�5�a1}�n+񒾯��S�S=��
��
m��ߑg �c�<Vi�����߂"�6�r˴e9��5:\�9#ll��i*y:�p�K?���n⤧�9��S�I)���<<O D�׫���fҨ{UIqa�jz�&
:��NQ�=P�?~"���ok���¿�j�HD��g����X,U��]���'���{A���p!P�c�NŨ�{1T�o��Z��?a1R�6���"���c#MB�/"���J&�,#$��ʨʅ���k�8�ȸ���{O��m�v����+1���4	��P���y�\�fU���3�ɸp�*�nrRA����ϝ�$Q����q������W�Ԝ�RQ�&���XB5�y'�Fv�}���O����L��]��j�3s�R�ݳM�7���2lYUn��=$9{� ���6w/C��$N�bl�ek�0E�*<f�+ 2ṁ�|/��W�]�O���A�'cR���0?੒`c��[��(q��*�����8q�Dr����|;.x�u��� D�o8-�e���]
��$��_%��7�^��]1պ̫B��;��e"P�_�$COo�'���՗"�
0u͝���L;�ұk�C���D��2I����P���\����C�*BЁm��Fy��/��M��A]9�п:���jq��VV���TL��Q�`���\�
��DCB�P���E���b�FY��_W�/��S�3R����$�x�Q���8E��~�����Nk��n8�F�
T(Ŏ�`�%tYp�_&����m{
a���+�o�"�) `c ��,�����zhk��r��dc��IY�q�r-ꗾ����fS�%i�AP2��`�K(����C&r5,�$3����үNl_5�B�|@x̊�Z��V�(ף��	Fc8f �w��V��W��d�/U`� ;)*Y�uA��R+����Sr�{~}����H��2�cwo[���BU';����f?�	�Vp�����++;{䋯� "�{�y���7[���%�	yw�oUj.'�#���="A����O,k�R��̄�|S_�C}{����Ɗ�6p�)H�4�j-�a�f�Ć�d��S��R�v��5�m�G����aŶy�Z1nT��?��}��� ��{���_�F|)]M�˕�W*$6F�(t[��p���PSW=�\I��?�����Z�^,ΐ|���zal+�n+���5x�&Uο���fz�}Wߎ]Irψe��}��j��Nu�6-~㩡(�����é���#��q�Ev��mM�C�b�@g��4�P}�l�w�Ƙ.��ઌ�� OGE�'�P��k�+Q�9d��Cv�52P�q�*�;�HPU7��/�q�C��t�;�3�LFmU�&h�l��\\�GI��j��%d����56��@H)9�ǵPL��f�].�0ofݰ/ȏ�Dȋ_�e4�D�5N�!��@�D/�5�!�9W>��w-�ݵ�����E?��i%#�T�f�7���Ro�=7/>`��{�r��/fӫ��;�@Y��!��1�Y��cwR��,�B6^�U�5�Q ן�1�9Y���� ��_��m�n^��7b�ݤ6q�t���Z��DL>4    �ިIn�����>�4Pw��W�=�LCcI�DtB�*7ƧON�Ҝ��� �a�ukT��Z0j��:�gu�a2����2X�#�Rg���":�4��j#�|���pb���
��'�ѭ[�2/d{��d���h��z'�x"�����(<���f�`!�F��&2�`/lȰ�[�� ꈊkle��}ϛڇB �O��4��|O|r,>��Q�D���E�V�;F��4x��0p�$�y����7�p����o���?���1^�F~.���y�ׇ�̏b* �fY6��[Wu��ӡ�Oq��q�S-��L<�/�F%{��\a}�)�q��|eTaص����ф˖R��NT��ˈD��r��T��y0ѵ�a��L��x���$C�r�Jr�A[8;C���x�.%tY��ʷ~�{���x�^IG%[�Xnf'�
<�5�ӤLJ��8�G�p�⛤Nv�o�dSp�I����-��~Y,����{]��u�����$��"�l4�1)��b�a`�ߎ�b"v8q���A\���X	��`��6�N�.H*A��M�3���c���h����Y¼���`�t�k�XOi��%��)~p��ǝt�$�U/G��j͌lʸD<����qj�79Pf�Ψ�6p *vU�LQP�[~߬dE)�f��~-d$�3cF�Ԟ�[���b��'cQ88<��Y5��þ��/(^��������@��ls�ܞ����-|� \���~+x"`��*�Nۧ���(���Т	�� t�<s�2sX/���<
��(#Y�!6� �ɉ��T�Vo��Ćr2;������.�d,Gv� �Ębh.��nM>�8��g+���㒘��o9?F���+(��Ns�7�<	�Z̽IR[^������zL�k�p��}6�����<'*�U�{=����Ưu��z�H�|�G�X

����߸r����_?�k�Ns5��3��߷c���u�5��/�,/��.��B����H���m��7�L�.V&�(���'K�+��+w/��$L2З��ԭ�9�p�ĭE� {u�$k���Jr,�A��~��gK�`2[�F將f��f�=L&�2���1G��r��\�K')����f��P�'<���4�|0�O��h�a�u�2c�1 п*�bQ�;N�<rCVc��`��B��V	�5W`����:��t���&O��J����Iy�d��uZ�|i����(`k	���s[q�q�TCA�[U�A\Ϙ^p�TF<�!�Y��c	E��wF�'�ЁR��׶�&�7�clL6�g�7����P�͜�2��t 3s��Dx�"����H��YU�fq�8u�7=�"k��N1��Ʀ�*�o�j�A����h��qi����(�z9���F�"�@A���+,0$���b�ᴖ�9�����H�,U�Nl5�5�|���.�ą����e`�Qb+��*�)��E����3̊��%�v�����:5IhSj~L_��y�W�-�'>KP��F��	2���^����-�S�%Ȏ��֨�e��R"u�=QNkld��q&3K�޺�W3�B#�t �7L]����œzx����_��z��L�X`3��8K23rڎc��Df�`����E�,Q�=�?�����k��=0#
1p���LAaL�������J��THeF-�q��T�f�*}?�OѲA» 4�O^+Pq^�&�4u��Nkl����h�o�A�J�iLUVˢ�t���>��\�oQ��7�1���{X_�Ȗ<�N�J$��s��{�3^�c�(
lBh�U���_�� {�u�4�(m�� -�1@��Z^W�
L���+1��l�Ey��h�#v'�i�'/��X��č^���{3v%ł[,��F�ǺQS�:��()�#�`����AF�������I�O�l�*�L���y��r_w�{��Qz%fj�6�y_����u,�c��
�GD�jͭ�N:^��x<:2���{H��8e����q3�� �1&X�����F񹭦����^S^�7���m��� �C�I���I�k����~l#�?�!����J�_$���1ѷN���@d\���J�((��v�=�?���ϕsL>�:W�i�U	�TS��ޔ�V��i[5�c�iZ	T9?��ϸ9q�b��� �%gy�r�L�0tn�52
	�I�5mCՖ�r���靂�x��"=k��
^Y����9���G��c78�Ydn���f�-|U=I�4.uW��&�͂)�����50�Amdla��������(9�8tA�a��{沨h�R67��U�6-NQ*�k���eW#E�J�d@��4a��F��qQly��`"���9�:(/&f~cKE[��AK�"
����#}${��:��Y��ST$��ۇa+�U[�����A?>p+�d�Y��lX���כ��*�-v�-����r>�Wf<k{���d+Y7�����%�*���,r'���I��!��+�L�z׊�fY�r׈2N�~����7Ha�)v,�F�my�;���)K��L�����t���O;0��Y���jIʨ�A��}p�(���o���B��L���2β~��lq�]-�"��;�^ݜ^\{׋����jՋ�����hsǷ�0[��#���LѦeq%���)�����Z��f�tL7�QU�V3?��֮�ö��y��a�����]�i�6�iQ�4��(��#G@�h7��%��T�@@��U]B#ZD�s����pA ,������5�0�x���U*���a��&�ѱ�tAUY����N�G�y��քpu�m�<I#L��|����L����is9�>u�+��Q���i�}�A��� )�td�B�H��EO�����ف�
v�� pX]AD����%�1~�5��NE���ԃ�L#+�� $��;�VPb����i	����'���,-�?Bj���amI�.�0�H`�~��W��FiE&��ַ`n�\�tudT;��}!|w�Ji��=wd�v�T�&�(�L2�D�J
�3+�\�В��l���8�Ҹ\3U,����f�c���|,�}�m�� ?��X\$���$suW���<�/���P�X^~�0��J��"#����5]N��*I��J���g������������4��qO�Όr�q/j�0n�ܲ�7g��7W��N��QJ�h��B���*@��9Ux(��2'�ɨ�ԏ�,�c�|@�=�@c��3�N�iv�W'�¸g"4d/>މ�I:�=(�p5W5�:pE��KZb�
���7�1c�:�Iʕɍ$S�CW�'�*��E�����{#<�/2�K]sK��(�%�Y	�~�m=����Q,O��2g��(СӚ%�LH�K������p�8^%�{"��+�!Y���x'��Er?R�+˪'W}��&��oYx�;�C�b�I��<��YKm6$�J..��Z:�N=X߉G�ȕ_�&�{�s�fq�����-���׋+K�7Cs+�������+�3ʌ�����V.Ft���ܹ@��&�(�OR� �=Jci�E]�kj�]!J���r/�½��|�����"Hr*��W�qޅ�����J� ���J��L��_�
��zl�����a��Z�,C��l�:Ħà�Nǳ��y�Yӿr�{�_75�Q�ʱ�:Ư�$,r��c��9z`T:6t�8dO)y*�1��K�g�M�٤��ZۮH�
'Sl0�ךx|%m+�w ;�n��������!z"���0�Uz�+�k�ؐ����i�o螴�>L�E`%�ڮ;B�&͌9i����������5��Y�W�5Kò$~��AT��3�����
i���;ӛ����'D��X�H�P�v�a�m#�U��z��4ss(�$��������a޺>�F�t ��[��"Qh��	��!��Qo��je��"8e���2a�Ũ� Mڢaau�+X���"����ZS�b3NsR?�zf��*��V�ݗS0
�f�O��Jd��E�x�8:���d�KG�"�>Ұ�0�5
M7mZ�w�%t�$^'���(    ��T���g{���WN<^�e�Y�Pٗ�����I~����ʂ8�[fkb��@:�0)Z��T��q�;�N\;�Ilbп+�kȑWS�k!m���&�51]�Y�z��Q�p��L|��S���	��'�(����V,?�Lh&��/��q5;��R&@�ʢZ��u�_�ߛ�g�C�/��9Kn���Z��(�b��u�I���;:�پ���B6 ^���Tq�Ls6u�,M�\eyD�������&�*Ϫ/�{�n�V�{k쟅��2�r��i>�O�R�}82�~W�.��L��W]������ח梄���� �NR�Ӛ��%z�t�@����d4I�d��5���Q3X���xl�p�$�D�n���?��\S֛L&p��������>�����),&}c����	ꔼ4��cg6c��}�,r2����:�P^�7�qh��Qʧ��,�a��#�:O�b�jM̈q�$����,|���7���t�s�s)��q����0��cAӫ��p���5$��V��"�}�~��r:�\�%�$$�{^���/��d�����A,]jR1��EA�}{�5s�TvJ���-�:����2�4i|`%������?���1�ɥHE�䁁8A<�57o�<�*�v�*45�sE#�>/ȳPl����)�g���^ !5�w�S��Z��nHG��0 m����2��W\�ͬ�4Zq�CV�40Y7d�-��W���(!���:i�<�m�4+�gl��1lw�^)
 ���9;�3�Iz�ɩ[z�t�x�%��(|s꿊�g��-�<��Z�L��(���7��J��9�!;_���J���>͓�" �)��@�
��M4�k�!�n� .�p�]b;�G�2���-�~7��"��C�l�S`����_����9k!�Z��`1�n���i�yj^'+
�,�X����p�̛���Õ`LѺ�K���-~��A����� ��Kj����Tk)�nu�|z���������b�������A��l5y�ܾ����?��s���N�!��3(G�ҒA��.�����J�DVy��0Q)y�F��+�g%7��NpFW@`���?yE��W{���\3�~���%���73ԍL-NoP��$~��t~K:�Σ�Ä��38�2�J��I"��P�`����R����Q�����(ƂpAx�Ȫ5�RHՌVL�T�@��4b#rB�ٱ2h՞�?��
�w$8�W�T3r[-Ds�/8P�B�Ic��qhUZ�T���B�(#Ӿ&�R7n��m���Us�[R�e,kaTco��ϙ�
a��0h�Y��!�H�����6�o��,�Pb2{�yQ�-�S.k�gx�d+"}$�4�M�X��v"�ˮ1v�Z@�9������L�,+���;��������~_�k�v �OeEb�
�,]V:���㙘G�l�ϙΞs�8>�"�NT�y�\�D? fcˏ���C�U�B6di)
��ߏR�.d��bJ|cZ��# �}_�����2�y63�z[��MT���!3�ww(��Η�@/��* �=*"�V�`{���"�lKM�������?(zb��7*��^!���>J.~܄�&[���"�N[g���Ib?)��A��VvS2�B\�R���(���,o��#|>�)��w�BG!� >�jZ�K%j�E:�J�լ.ZF�2��#�J��ǭ�R�DE!#���8��֨�+� $�d�FI�;�f����Rj3�gaX�f�Jr����A��uD�"C���ܭ����Z� 	F��&�p��2$N[a��J���r�8;>`������@��}k%b<�f>=^\yg�_c��ĝ- �&�_~u�
��`ݝm(x����έ����$� ߼����R^[R�� �57�Yi{���}�2�W���D-���N����Wxi�+t@����'Ϧ5�_ta�O���q[f��1B�A��"�F�����T��_���[�P!�E��5Y؝�W^�|c�C�N��Jl��ۚ��ˢ�j��uN��������l>�F��\Az%�]�*��S.L��t�x���\�sǃ�?�AS�GF�ZK�SH�"����8x�t�&y���,`$�.-�z�%�$#��s�A��9"�Ah��%�52�H�2�ؓQ���5��
�a�J{m�;��3�R;�$��c�*Z8e��$�0B/p����F1q�߯eڊBJ��9*�"�x�\�@x�5��tدkG��*^@�A�M����f0�(̌|�b78os�cw�?�6�K
(w��]�<r�麍��?���L�,��|@�]iV�[ɪ�Q�xpl�1#E���y	rzV�\ɬ��a/�	ng�aӢ0�Xl-�'�".YE�S��l)�h�̠�v�Ezs��"�O�����ߙ^�קq���ʮG
J��3�ɨ�$J':CYf�2��f���>V$x���&���\L�&�N��/���L�\T�UK- �p(��#j8^f���],/�c,7�J'������(34�Ţ��C�|?l��X�N����Z{���Ғ�%0ڝ����� r[$��+��R�e�"닻v�J&;
�����µǗ��֙#�7�L��'���巑$�<��
��T����
,S�"���J�Q=��+��$]M��y[�a������S5P���>�����af��;��nvf�P]F:�an�=~���J�py�ʁ�d��.%&s���]�hբ�U�B6Xom\����mp�VW8邤�T�BQc�-������T����n¶]���8�;��2.�C�ߞ�Z�߉�� NG]��>�f�
�M�lF-ɔ=��6w�?"=4�a������G���PW��6�>��>�<�u!�t~Ѹz3&mّ{r\Ѯ�F�Ql.C�NKqj�`������P�ԥk;¹�Ie
D�bՎ�f��ɚkMTD[�:h+���B�`w5S��'�8��>,yG�_��"����nuP�t��1��&���eXĉ��O�����E��	NV�`MFm��Ə��+�m\8�K:���� +��H�'9��2 J��an8e
w{�եA�q��kk��Z.���(�^m�Ԟ��WRT��j�S�Ȯf�.���s��cG����p�H�^����R���MI�����m����,E��{��i��F��3�S{w�ߤ��,�ܿ��q��e^�h�t�6�1F�Pw�=x��pʩ����n�C�|߭�sJj�Pg�Ug�`~��"��;=t�hs�\ڍ��5"��80��_{.���[{u��ܫScOAg���xFYR�i/G�'s�6s��7��FM CN"���7X�h��<�㎠���{�L�����aL\A@M ��`FׅZJQUd8D�i���w��2�t,KT�.Ų���@�$��;��|JU���
^ Fm�,ʜ����4�έ�
���۲L>u��l�g˺+YPWY���CxPMTv�!�q�/TA��v��V�ҳ��u�xK�7HEX}_�D�3\x���B]�@7��=y�� q�щ�U[�9$��)�G�Z�a1d$�/�5W`��&l�i��K�@��x{�8k�]+O�V!�Z\�"۰�d�M|g�'��(J�bd���ڑ	,&�+���ےDq�#Q0�X����_ў�n�7�?N/�ݨ�� $U@��'5�^� ��~ْ����4ƙ^[�s���5ɲ�c�� R���߶Kx3�V^1�e69X��QE��:&���Z��U�Q�ܙA��Bړ���jt���A��z�/lF��!���a-MJ��L+(/Dd��%��j���X�p��Cx���2�A�+�"�.|����n��w����g�)��b�g����
X��6�w]	�[����-E�.���̩�t#�Y��,������tz�x �6�5c���=�L��?>���j0�"�F�����
�7x)�*!���ݗ+`~�V�����]͂����?����;p��?ݝ_�?���t�J(*�9X�Gu��W1Ǣ���#o��hTº�@Q��4�M�vm4�$Ѕ����`2����e�;�u����m
��<-�\�Ъlr�Bݘ�=��^{#    �󒴑e�{jzj��Pa��f��:�szV���D��d�����}���X� ?%�J&p��Q2��d�7���� g��o�g��P�Q�:q4���?tS�ik��:�i�j�l�v��kg����WO+��,!�w%ˋZvZ����nf�������RSZŐ�����C;x	��{[�LmP*BeX�Ieݺ�%+x��#�k]��~�*�a��sY�6R#Eߖu���:�"�����VE��gWﮯί������;?O� h�y���S�O��"3&Ιz�3�M6��z��D�ۙ��.��-b���\8�d�b�C�V
�똑#�VC=4�r�2�K_�.Ͱb�V��I��m'n�,'�>ȏx�v�k/�d���+*Ѕ��Jo�sG9���z˔�Og�@.�}�/�~�������cMQ��I��Ưv���~���B�����0�e!o�PX��P.Yy~�t+��J�n/�3
#��o�L[˜R��̬��z��h*'h%�!�)ɼ�$�S���$bl���ʽ�{��<�)y��I�P!��SP�LI9Z�n�~�P�x��#H&��A����������Ü�L����c����U�e�;-k��[F��eb\��Qɸ�[bL�߯��P8@�~Zu��	@��w��$T|h'��;�\�v),�B*q�F�Gk��\�V)�-�MF�`������	I= . �PKa�7���u'$:r�]y�V�lx����0WoH-��S>��U�%,�d�� �
o�BMiɍ�p}�w�GsRr����ˑS֣L	�I��+QR�B;���*�D�N� �����|������4�r�q�����;��k�������9nG+�˒X��zn~�$�E!��_��"Q ��M�j�5���u���c���܀@��������j�AQ�0X�M���F��P0��@�SM��[��Cj�:j��Ҹ,��1q��?�e�n����{��"�'q12��n!�Ⱦ��p�-�Ԁ�D+Dl���q< B���H~�]�3�Et?(��kS�3Z��hA_6zn/���������u6OT�2x���W����TV����M���@���A�����2�����B���@�&�Bg��4a���Q�;+�=�'��b��f��TE�x�L��~����Mt�<�=�1mOΜ�yqF6��J%!Q芒R>ί��@R�pHt
��Q*��,�"8���dIyX8���(�Ԣ U���_��&1G/����r���FM�Z#f��'�k���MׄD�N�4��?<hj�1�6�Ԍ"��[��~I&#T��J���7FMN�^��aԵ�b�� }��!T��;J�V�S9gs�'6�.�SD�(H*��J6��kF���g��_I*@l���� U� �����(G���	u6���@�7�w9,fuR�wL�����l��ŕn$J(r�v�o1��j
i�o��Hy\;	4�xܭ�����~1%sO (5Vz5�5�v�{.̘MA�t�|��~��Mr͍��z�u���&3��R��)NDKk�P��Z-` ��br#���-� �Q�5=�!9�|��Ir��W��L�����A�4)â��[m�Lf��4ڇ��GhwAZ�������=�ǖ���W�ˉ�9�Y����N��hq� z�N���M��ɧvAȺ=�].�m�����T��p��_oY���a0�4cG#��ϲ���ǧ��� ��:=�mj���g~R�.�UOF���v�/D�E�i��~OV�I�ea����~?P�-g�N.O�FCd��r�<�6���j\�Ռ�_�7��왡��($ћF�Ǯ����]�y���/RE�	 j�<��r4.�����$�4�����Ⱦ?�&�a�>�R�������Ӹ�P��Q3��'4�+����9@ޡ��3�ݸp X$��V�!����� �n>�TK-~�9G�̪���Y�
v�0N��
?����Ĵ�4 U�a��j�jٲPd��ȵ|EI��(��V���>?���N�WB�w�C�V�D�Y=Ѝ;�>Hʬ��A

��i%�<���{�3x�G�!E]�[��VC@��� ��u�kUj�HGN��2�I/�ɠ�=s�؀]����+�q�$ɾq߇҆�&�����v�$�͵��TRk٣/N�*{.R����*�+W���(�f88Qq�F�a��Ĩ��uZ4I0@����`ǲ�#&��t���?\�[�0��<�Jՙ�9"A'IM.],�U�:�55�ВB��n��z��V��y�p�}ldZ�'�D@������W��J�;�B���gu�O����qu�n����+���g*����h�`W<�,"�Ŷ����h��E;-�
�m
nG�^f�A�r�կ-��@���<E�xy�3{3ہ�AX0�ӼH��5�Y,/7v��#UU�/wA��Ĵ�#��S�����}tVޟ��[��fVy�f�t�9��:��r�Z�h��kIlűn��~*o&�.o�o��} ���7E��͓���$xs��H]V���~�"��
����7܎�2rj�����i�sIc9�@/ ����%���'BbY:R ����2���*e�� )U�c9�fQVx�D z�g��n�Vui�B£������G����Z����}R_x�6=AJ4����'�ˤp�o�2�b�,Ӛ$>�qBF���juy"�8��K�?�k�يP��k���M�A��J�'�铆�A}䫸���d���e�)N_,U�����vT�+�˜������jjށm���@���ێjg��"ߺ��#y�?6*|��ahme��H�P7��%��Vq� Co4O��U���*GQMn��I"G: >j�����aG(���P�,;N�~Vˢ��щ"�Jxi60���P%aU��
�e�g��v�(�[�M�Ȼ��x�e�����t���ޕ5�|���<�����T9a��������.`��BTbX!C�J=�9Z��,`]i�dλ�.�^\5�hL_�DoX[���%��V�Kx�\��)V%�__=�0��C�l�M�%t�􂆗7�9���kI������U��RRg4�E><�<��D�jw��Y�6=lb�j��!
��!Br���F����f�c�&�s@nJ�����n�(���c��������Z'�J�u�����{uvrho�뻅.�Z��sԯ%�[���������2���fyoY�	~��"f4M�Š�2�'7�ڙ�F��H@f����{�"�V��t�>.����#kdQ�N��MS��39�w���:��/�"��/XIS䵪�4�������R�11�ɘ3� ���N^ݯ�b��AgcC��Y��q����N7�m����w?�_�����,�����
���sw��"}�t~~v�����}��wOW;5�5�2��󔖬̗�Zk��sna��o��4u�E�����P٢�ը �M��T��� �H�'�S�e[P'khn�*jo����| ��רM
ߍ�`ܵ���i�cK�r_l��O���������Yp�aQ�#+��(t �k��ٱ���v?�*��8aG�j�X��M�"�eG��� �����"]���n��f碙����-��������U�(����A.[���Wj�Q�ɛ�M/h�=[a�5?9Q��0۳�J��s���;M��!���۳�Ft��hU����E�	a .-�~��'͐F"7��4t.Jr.�����gww����hUEi2vf4������j�K�\�'@�N�]e�/�r�q�
�bR���O �v��'ą�/�V|%�FLB���j�>F����zݪ_B4�k�/�pK���Z�bT��*�.�bx��h����j���������Brx{)����GZ��`ǜ��¤��x���T���jrӯ\��������6��Ԧ�Я��ċ+��|r�9��W�Z\�*`����V�(��н��x?�:���q�6�۷��Ĩ��7��z�Щ����5�C�M���Y�x���    ��HK��jO����
Exݲ�.��8y�Dq����:�6��{�T�=.(u	�����؎�L��«�~fyw<m{�8H �R;*���2"�y}	�(Dy���J$�� ��g]�yY=�ƥ�'�L�&ۥ��[�/VE'Si�DD#��67��up��*�<��7Z�6g�j����C}��Ą�z��d��Z*�T��ȇ�y�e.�%�Bk��� =~��F^���ZP��j��$15h��
�f���X�<Yǯ�9qrQ���m6�����
�'�ыS<�^'1�.à֖&��(^Pz�����PUb�ˊh��G�`���uN�,HuH76��7�������S����@w��UC���֑z\O���+ȥH0B�'~��X0���������+Q�,��հ�j�6@C��ݠ�X��#�9.�'�V�Ȣ����S���L��������������M�]�X�هS;:��SR�铦pn��c	�c/ljV$ʬ:��]�᠄VQ�#��Q��H��<��5�S��k�8�G�u4���Ց��{)�4�?5���&�Z^�V�ܻgPs��
��|qo��i����H>�;؛�kH-�%�~��03�e{�8Hg	h���q�ΨV��kH�b�έ�x�Gu+�j�� ʹ3KU��Q���W�Ɨƶ��F8�>��-��o��$��o��M�٩�s��7����k6��qR��(���Q�ߔB��A8��Q��q��)$��qC���m�����D�Y��|�����wy�31I{A��2�mF+Ӕw:*�fU�B�
N}�� S�9c颟�9�b9�dJn^ I�X�3ݨ{Z���9�5��	;#uH=��u��<IUx�{�
�hi�UWj߼8���J�=�~��O0����/�`���9�=���L��
$G�YhV�̗*Ji�X� ,���U�w��� ��C�y�j�� ���ޜ\ݼ}1���HmEY���3J� �Zq�O��;+�h&�Ε�!���Z��n��(�`*eL��4�8���8� �T&qX�=�8�Ke��������`Q��uΰ�N�R@��b�>�?x�u����$da�'.`=N�F&+�"�y�a邬��EW��(4�\�UfV�}q�,�;�����ڬV�xX>��XΙo���v��hD��@���"�K_�nM�r�q�\��ae�B��O!%�: ���Ag���p8��Z
�0	m��3\�%i����(�
PMN�:T'OM0	���!E������X$Y���z�݃CZ��-�՝���)��gF-1���0r�z(���:�.n�*����>3��ɧn���XO���Ց�57�F�����j�v�Q����v�B�ր����8�p@6�!nW�}�6 f. ��;(��hT� ��d&���fΈ9icD >��<�n���#]��u���!���Y���d��a�Y(�``�J�!��xl��wF���e�Nj���&�d�T��e�_3S�t)�ᚌQfi�4`������o~ M�$
�� N�w�<�8����ɝZaq�hի�B���-b������V�Y[�,2�鸷�[���{p����>���6	�]�6�8^4B��s��~�^Y0�^]�C�t�鱾e�'�d}׮׭F�G1�C�K´��z�a�%�$$*�6ɸgU���K��`E�zH��ۅV�t(T�w~�,T�P]"~�|@�)�Z��ԙ�w��f����H����d^��w)���Y���"G�tm�F[�L%�],�?ZW��^%,;J7R���� ��?*ܱfl�R�2��6r4�G����P��E��S�=U�I��QmE�Ua�i��y�8$,�%nj��A��~^��b�w�I�B�sZ%��W��e�����[�j�N-v�����;�A\V�{w�e�J���,�� t,��UV�X��#��{t}i~�=���Lwo>P/Y&�[|0�Q�VY>���t�%- �c�25g{AJ��QDRR� +3���e�?��T�A�]�qť$���!po"h$2�@e��*�����o�����o��.�q����٩35iȖ�����=o�-V���9�s�-w�����&i&�>Y�<(3�e��S�3�m03�����E&��B�*l 泆{�����/�`�~RA����j���*�U9L9�Smv�Ɲs7�z�C7��}�o�׉F% YRV#wA�VQ*��@���oM�]������[��9~�1\סl�
����+�i�.L�s�˃nd�՛��WZ��ի��E^���I�T(ĂIQ'�c����Y`�
�:4f�rg���V��v�c-U�ajRŅ���<�Y�%<J"Id�0�1�K�t����x�6�eu�MJ�턔M���6��t��I���d��%��k_��*��2Z�W�ŞQ�r�'3�7!�����Ig��τ��l>����;s:�4�K+D���`� h2�r�(��@���:��H�5?�̾W�t��d�6�Q���46U] <����mH�'G*�&Ԍࣂz��?/���MGN �Z���7K��t& ���2�X���q�ĤM�nW(���_B�.���Q������I����)&�0�%��t�$@&��:K��~V�ε��vҟX*�T�ZH�
���l�N���d��fvz;�~�OL���: ߫��vTg{,-RYh~߬��^(�P{i������l�~���դj�Y!��.������sA*�*���G����.�/��'׻�*����F��z,���/}v�0�~ږ���Y�-���ۈo��)��ʡ�)T%$��	��?<3��x��f����&t^Uy��wO��B��Yg�W��z��
���$��� ������ڴ;&R��5Y�v����� ��/�߭�GNo�����Ѱ��~Vv�e�*��ʒ$O��
�J4��2��VY&�i���&3E���B�l�������Ӊ��o�6$�`������HD��hYd�	�w&�qT�@��Yj�w��z��|]m�@�o��'�g��,Я�F��<��'�����3���|�%�O����8zw�=(L���~M¸N����!X��X��*�91��"�m'�xƾ��zѦ�E�g�Xc��"gmb����u$t�%� ��a|��{`�����R���VR��e�O�Zw�k�ZV�cy	z�}�Bt	��@UK{��M�� /�N������ߞ���s�M� gLk��q��.���j	olUg��G�wO��aM���Z;����Ȣ��a#����������?s��,A�{��h),0�:���b�F5�ŏ+���Vئ�v|5`�ǘ3�^
Ö���-�چ�{���<�頸VY� �(5(��>��#sٲ��v���r��h��ď�i�X��@o�~���Z�}:W��c�d���q,+�A6��� p�'1A["����b���+g�A}]��:��Ŀ69Z%�)Փ���a*��5��5�f������=��l�����s����@�����%i�N5�.l���KB�Gk�ae�G�?%���i�a�����j3x[��r�:��6hWfa���<v�T4U�h�WA�3��vO��PU��H.M֚����r��m6�(_N�]n�B�%�((՘��;t7��7�e:W�(�M��L �C���aD�$��pW��}fR���fN�{��yZ����X����v�L�]�|�# �(f#*��ʍN>I�α
��d�,�����ip�f����\��dx�ɅzS�\�q�!+����Rʡu�=7�PW
eﭝ�Z)mxw~��;�԰�P{��=H#A�.��t���tu~���tm��Ĕ��,=�N����_*,�;��X{2%`��%[^d�=_�v�
��ʀK�l�^wh��l�^�R]$�Z���a�:���~5u���-��#L�x�Rr���~J���a_&EUzN%��`��(�K�)h�J&�n���ab��*G��ъ�n����jY�����6g�Zܮ>`u�m�.	�    bX�8.�4Պ
�/�c�����U���UX�̜Z�u���:B�WW��@��й�)h��M� ��/�r4�(�a�Q��׈᠙WZxUjؾ�{��[+���?���F️ė�}��_��.?�����#�4b�pl���F��=�1m��Hef�IAUB@�B��Ewl�8N�#�K�+�e�5�80�������uQe��:��&���[D�NPlNK�Kڝ�����.v88)�A#����̣F{�����ͼ�S�-���y������
Sa��i�E�=����:���3]P��*KE}/����s��X޵�c�M�5����
Y�T�J�Լ�Av��"X�#5���,h���"�%���Y�i�:�Xr��r�(�H�3e�M.��~)�&�^e	��$���2?uF�R^e)�.�5�kx�h�"��`����֨1��h�kK��V^+a���w<�4JJ!��K��jr�_R�����k�G�������6��,����,�Mz|;�jX!�(�b�C�U�S�I*(���t-�t~�b$N�����U��~c	6Z���4I�������1/x��[ԓ9)zl5�P_�X���:�x4/� !�eI^�@�-������ŝ���@yTO��'a:Y�D�vsMq�C����rג����%���.Mp ��:Axc��7@�Q��p�4�5��Ub�^X��f�0Д�*."�0�&�
3��!G��xNf?�{F0�+I�7m���#�:JaV*���e���KTZ24s��Sl3�W�U�� Ku@xY�����ʈl^�U�L�b�9vFK瞻��-�w5�#�R�>��_�\T����I�7�"\�D�ܑ�i!��O�Բ�F����$���թ���햭U�f�6���v[G����;��^���|[P�����[��ܜq���DO�/ň�-ZY�퉙���f9�%F��wNv��~���q���-ցP�읝�V��m �RC![��
>��m�Mǉ"cj�O��Q/�'],�5�^�`������G"�0GHY��^w;a�=�ͣ"&5�$�O^X����n�^n$r}'��,����Z:��3��n�/x�?vC+�Zt��|=������Vy����)���S�C5��,��9�I�{�%}f;
���唚�"��:E!L*]e�?�B�Ƨ�c������1KC��tr��9xv����3C͡OT�T�sg̭�r�T���#�᷎͓���ʹ�>�O��UO`�؟?�R�#EP�'�2�D�4r��@&Y=��J�`�#m�[��E���8~7N���c��QZ�/v�O�����恜 W~��(,8��p�%Z�j-RHC*B&6H�7*4'��:�*�b����)�j�#/,�')��Z24��K�!kWl4r�{�h6�ֺ�zu������;X��ak�m�h�T!|"_+SAw��z�K��i?M���Kv�#O��P�����ڃ�z�ɺ�<$~���u���K�v�5���9�[���EtbH�=�)�`�����*>��L����V��+]���~b�R��g��޴�#H΢(�8	��Tr�Ty-k�FN5�E43]�ʀ�zb�18�b������m����)r������2
d�L�]2ObI�������p�$��t����r �� �\��_�S��ԯ��a��\�?q\p��*��B�tDNXH��8������M�Je��Q��|M*�� �V��HÉ_�٠^�y����ݶ���1�	���w��.�^�������!�Q\�0��)�=���	��Z�x���~d�)5����ʦ?-	����2�2�#��O��LD���[
���~� �\�	�7*x�y���d;�P�ٟ�
��g5i�L��j����2�����4HHS��C���%�Ηm*Y�
?O���^�î��:Rp��5�K�"j�픐����D�Bȯ�_��P�3Y5��b4�x4Oʉ�ެ����VmIKQI���,�� k��4�ȍ?	7`Ymf�)5����"~�$W�3��r�X$�O������2�:�g�q\�EZ����?���V�3'���u U�9L����~�a�QM��6���'�_FF��э�g���]�͞����z�"XDN�	nm��E�=����w糫y��"1Pq�ʷ�x����s�	�o�H�AJH��ӶGKY�;��:�f�bz@��n��Q��:D�����N;�5؃� �Z�P�7�Ԓ��n�K�r���eQx�Dw��KQ@M��I'֡���+`�,��s+ �մ�'��y"��^���K�s���gЦ��AT$FQLLc�M0X.���O��=� >�5���k2?UMЯ�j�m��듛�o�Z�� ���9���w�q0ǍN���ef
޳��$���&n<]m�����*(��li����J���Sa�'}cWͨ
'��;��n��h�����ؘ���;�QFz��O�I
)���U)fȬR�s��(���f񤮀#�ms
�]k�6p����t7O�C��c�X��$qӿ�m��*���J|��{�Y�@�$��-�Mes,M'��c�Td�P����I����H���g�e����V�<�l�q'��b�f?0����ݨ����T�-z(}� �]�����}4�u���òʊ��8�є��Z9n���Q��m�>����L
1�����dА��v2R��J/�%I��5�0`�&�|*}���Պ�d�i�~�xDBSn�w�!��Y�;�mF�*$o�%a�Du�n�h&:u"�T�֐�h��9�ڟ�2 �DQH���}zN��������K�A�6o�gUZx�Kg��E�2�:��`��{,F��D�chZ]/�4�Y����<�RrX<&l��h��p��T��G�Oi�%��|�P�]��Q���R��陰4�?R	t�Y�za����v�]^��=��N�#�Z���<��Z�&*x*��,���p�T��?^��[i�4y�&[�Rz��%���@&�UZ)t�-��(��B)�+�Lv���J@Zc$���3�͚&e�qؽQ*z��=��/��t� S��k$md��W�8��]�\�U����&�:
�r���zq�4^B��F�U!/!�'R��n�C�".<B�U�W�Y3�2�mi�h���M��O���-uA�z������y9!y��4�n�<6���a�@�G1h�f�J��±�ș�� �I$e��A�8�-H��O�,��uV�&��.]K�;꾣�tm�>,��0N��*��-3����9[y��w����w�P3��N/�e��df�؈ݤh�$	�ipk8�0�c[uD���ϯf��\����2��c|�4/�j�p�hI�D�ϳ�7g��/(Lə4����Y�]�N>wI�k ~�% ݬ.�4��Ig4Zu[^�պ�
�B7�h�]���tL	n)[�1U��[=�ƕlA3u�pҘ#�(�w�l������+t-������I�T8IG/��I]��VA�5T�˒��� ��ｍ<��z0Ӭu!�+�J��j��R��{Y���Do>B���H1܀5Q<�҄�x�����V]�_��М���Ց��| �!�T�sG�2)Փ�/��:=��$<�<b���.f��Beˢ�V/�`�G9�����.�%8�� 9�kk����YI�b�����,�H�O˄�s��z�p���U�E+�>z��,��Bn���S�V��^sAP�z) �,�#?qF���<��p�Lp���	A#e�u�^͈�Վ%TM�Q�}�#��Ė1�47��8��5�k�%���(o��3
P���S�Y�	q:dl�\J�<jPʹc�����c����W?V�(�4��2��h�����N<�qo�ZY�Ž:3�F5��7��΋����K�(�?��jrbD�מ"���gĚ�8�i�^C9�Gd���3�V�!c�Z{��M�s�B�6��%�6gqB�b
�Ij0K��ka��Pi>Y����c	�����+�ȶDIo���z �yʠ$��Q�5	��)���    1����40s��Y#0�-�/і?�9=:���fj�o��8{r<ܴz��5I�pH�����-a� ���C��a�,�?���#��Hopm�x(�}�C�B�<(" �eѠt(G	�U��W�~��Ye$�D�:e�N`T��n��ߞϮ��G��$3�o�DD�ֹ���0��N��khVڔ%߬��_���mz�r����1v0&8o]��K�J�����������Ҩ�,=�iڗ��$��*�Ky���j	SLl�Z-^.o�Ҧ��v_6y8�ӊ�h�z6��@�mq�� b�^]���t���Ox�����}@��~����g��ʣ����76�f@��b�:Q�(�i��.��jw�8:O�)�V
�=�=y��EGVK��2;����A������8@�aO'C�!�8��Ə3�F��	��L��	�Ae)d�D�r�ظ6�	pދ�5:��eQFU:r�z4�$(!�'�cf�]�C`�A2��X2�<n�#P�(��Io�P`�c
9�d:w������kC��8�$��ҿ69�K�٨`�����_Y�EHmT�H���h�PO���u{�C��ˍ(�ji͠����7w�	�:{�c���^�%�əC�B�)�{��{$����ظ	<GVz�kY����)]�����1x��n�͎�����,��W�sH ��f��d��MbL�J�B�	?��R'TR����r�aDk>��ȝe	�8h-U���& �.�=�U�3'C,S�E��\O�rq^Ǥ���Ԅ�%�Y��8>����U��$��ߊ��`���@z�%�ΝlF����9c��ĬO�s$��ܭ羣�N6n���i�Gq��ϼL�٩P�J�J6m�$| JNxT]cx	K~u?��WC���4'���%���a�!W�]�j'��V9�T�%�=��n�j��q<9�Rc,5�����H{�U�ߓe�-ׅ��^����:��=�G!cpk��fiU��P`��&���F�0�	[g�N���f,T*B���m6�e�Oo�i	�N����桚]�����FY^[�.�<��0,VLk;�Ә�`�o��C����U=���%ở���S���@&�`�<�H��v�ʷ<&3s֖���S�WH��E=d��f ��H������Բ����6�Sq%r�\99�#s�*�=�F���8YI�2�W���*�N%�Q���c�I�2�y�qA͚�+J�]���ފ��(η����Xɂ�^�R��$�ĸ�J3u+�:ю��J�	��$,��ҕ��ބ�,�*�~�T`H:;oi�� �cĬ`�GԻ���laG��eE�B�Œ~�蘮�k]>�����i ZZ-ۀ\�%��52���-|[��_t~p�芶���e7�%���!�ј^���hUqI�;m���8��4cS�&�gBCu����+��YY4fd6��Eu��2R(�ɝh�������䠞9ۨ�v�	��p2��΁6ޝ�}�d���p�ޖ��Z�YY�2��}2[ӭ%�7��zJ,T?¥X(�R�NU�IY����q����|D�i�3�q�O�ؘ���vè���Ϟf@��Bi�Ѽ�zb���W(z��J��*9�ʪT��m ��>t�� ; �
'���T��_�6�&BQM�8ΩQzhT�s��"MN�UE�ҕO9UK�#z.�6�\ �-8�U���}l��%)��*S���!��Ź��qV�aB]��wN��::����^�o>ٗ�hnqX�hyĭR��<n�� +�xX�MYm� �,H3����[�l�9��*���nS�� �B*�\�C��;�:���=Tl\�^>���.l�����wד���pĚ�*��dp~r4�(Vk�ʱ���wG��%�(=�G.�*�!��5Op8�
�����L�J�h)<��"�\×@B}�˪i�\s	'�-ZC���+�tM�ADAѦ���ɨS67��ݥH��=m�@�����T��!�%3���mս�"I˃J��\��fUyQ���4�Y	�5�"��NX
!�Z�Wv\�-rE���+�p�1���*�w̫z����k(G���:�3��$�vE4�L�� R��,#.D��Z2�@�@��SR�/5K���{���9�F-F;�����5����-�9��U���s��v4�tL��g!���]�� �KEĪ ,ܠ��%�L�C�$��Dxu+@
12�6��rơ7cF'8�V�!G~Q�Mr1�ˈ`G=���f�
k�q�c�oy0p�k�`�"J����En�a�츜�_u(@��r�j�A���WxsG�$��2B�Z`V�!��o:1���%�-�����guƿ>�h�����g�q�Q(���lð��Z��s��j�޾������Zaz��E�n�0�Ʒ1βu��9�..��vv{~6;���?���yw:��� ʓ��F��L���4d;��̼@���|Ybdz��֋�_4���6�U 
l��}~:C��N����Q!�-�&����N[��cүV���y����BetPe�A�!2��ׇH�	��c���2��s.<$���6�,ϥ��n�x�2}2Y'I4��5a�f�2�}�$x\�ii���r� �p��K_b�F+�풪dM|�+G`��;�,�����7޾���0~�!L�W��g@Y`��w(0 ��j�,b+�EҌ4��dk��W+2X�)��������
�/���,�鹈J���{	����z2p_����+O��-���y���
�Ɬ0�1|0c���E ǊKDp��#Jû�=f�Z���E7@ N�Q�Jp�4��A�w#�	�lPZ���I��!��-l�O�s{��E!��<�o�-E�./S�{9v:��*��A`�����>����z`[K6�����wȳӗ�qYK�J8r�������`,�?�B���y}9�=9�]��h���S`�9RS���$��@\��ʼ���*y����LSDI���P�� �y?y��]_�]{���mFY9n�hEAgtU��~����Vl���nMs���9Wg.�s���N�d�5�)H�8�b�v��,�M��J�e�p���(H�2y���K��%�ٯ~��}�= fzb̪G��ޞ
�T������5O�^���g��L�q�@�D7�(~�$����{��lU��)�� �����E6���Ft �z��:�h��b.u�KxKA���X=�ػ$g��4��p|@��U��
d� �s5����o)C3�ɘ�	�����)�0����r�S4�����Y���oK�<�8.�<�4;Zf�!�s��iy���4-���fG�R޴j��P����Xp/��p,e!�a��_��vY�C���Uw }!�#w��Ϡ�`��)><k�m���HO�J{���c�rd����8���E4\c��BX�4Z��b�G�c�5�F,&��X���`;r��N���:��`z�ɪ:A�Q:k���w�.��2`�%�u�~`�k$��ݜ-W�^�sV�"N���9��1�S+�1_�q(�f����y�Y�_s{Pl	o9y<t�q(�Ԫ�����d�W����T+Zp�U"���%�I��,�NJ��Qb&��:Q3�IG�\�2���v�6��������'	�EQ�1��l�U4��<N�t/jj��޽e�8�e>�mu7p�<�V���R���j>��|Y�ey�2�
��y]��r0\6���{��t��f@;upi�� _e�` �`(
E����:��z9���$����΍��L �"�m�J?ƒ�y$E��׍��-��8���)��"G�a��0V��,�y��TF\o��n�Q�h5�u�]��%���ܼ��``�����n�h۽X3�0����!iiP��c�t���ZS�1�w�H-�����I��Fǁ�?H A��~�Zi���
Q܉0"+�8��<�
�%�Ӝ�:�y.I6ѶI�sZq���Y.y%���z�M�7!ɂ�'�Dy�+�X(�s���9�ʲH�4��9WaT!֭:��Zx'Š;nyQ=���ghu��I���q�    �t��Qo�4�H����8������Ɋ���4�|5~9�%ba��\
Z�e&�T�ދ�aE��Ӷo>�I5������{1g��`;�;W�V�c��C
�����2;�#x4��L��u>y��2H~4Z�7q�w����z�`�"�j�0r�2q��1��r?�¢H#��Aɬu�V�!ПCG��Z���;IP`�*�3�~�G��`N|�]��4��r��i�T�˂����-f�w���Ik�HEЍF}���j?��kP�~fI]�N�ZN�ҹ�1���HMp`��H���a%W�#�a$� �ù*�t�`��p\�w�=9�`V���˸���ȇXm�5�`�ȗcC�O�2�TwN�#�Np�+y�-�޲PńN畺ha-�L�P��xջ��6���N�}*��x5A44_q��\���:����mX;����,Ba�H /;���,� ,�K��1-Z5_Z<�&��셤�Hu�E`��į�~���A���x	8FP��8kĻ,s~���h�K�X�*B���h���&����;	�o6،[m����^i5��ˤ�"�V^j-�d8̚��p�]�V|�Zƃ)ꌖ�j�NZ�:�eL[vcc��j��R�Ѵ�/����mcN�eO-ے��l	J�Xg7dL�4۵���ҷ�Й;q�+ {A�U2�e���hik>E�}�-?pc�.J��F���������?�__A�Ŀ����J]У˿d;�&�V�m��%��pK��S��߶���k"�^@X@����8$�V}�(�6�ݗ��^@���i9r��h-J�*C�5�e��_+j����J�yprjߞ�?��=��O*�n�;{~w'A(L��C��^�Lsy����}#�94�S�c6�"�w�-������R!üꁞ�S��`R�|�.���̯'7:s+J��G�ɠ���)�K"J,H�<5��[�IoS�#^���@��ERP|�t7շ?��䔿ϫ='{�g��Y�]����'��|#��fQ�*�(��)��㤜X���d���Y���Z���N1��G�J'I\�В7JAD6�S�߿*�d�EZ�t�y�[w>bB��XSZ�_�����.��)
f�q�D��*�Ŀ�rTZ�Q�����H�]���$����vU
Ռ'cK*�9�-�+F�>5��8U1����L���N�<l��ɑ��*�r��T�Y�E����\��ĭ�Aɂ�`HO�����c�Р���!�ʨL��������E��x���q�i��#�-�kd�gX���g�����o/f8�7#'z4��;w
��*��IT��E�B�R�#C�HK�蝚�	�E�NCq�j!�$�<`_�1Ǚ�*��ٹd�*���
���R��,�c8�C�^4���v�Q8������i9�X�,O�xx�s�oEI�Q�1C5�"�&7j� �.*��?6r��x� �եE��#�sp{豠�	TP�G�5��7����F~*i9��l�i�� d��n����W!)������3�]���K��j���Z\�v֠>��:G�)j�Ȯ�{����L�Y� �5�ګ翴�lj~}��9�p�a����$_a�x�?�=�T�|�s��vT=cVF��@��E��Y�Y�JqV`��q�dWxV���S)�|�W?��	��"/=� Eι
X��^��0AP��;�@���?ʿl���^�*��1Z�iB4���Z�ǘ��LԹ�f�j ��@��'��=�Y���:@Ľ�*ę
����k���qJF77g�*y��U�u�٠"�����IA��{���:��8����L1���E�ު��@�H/h�=4B �@r�C�Z�7����F��I�'#�?����sӷ_ݦ��g����Q�Y�I����%��f�gY��z�Fɏj�2�uD�u�$��j��޵��E���QQ��Vdk�H��n�r&JȺq�&9����bI�P��R0�H���D���0W���\��"�0DM�jR��]����Ul��?��b����-%9I]��Ŗ�L�V��[�'�h��	6��aK�Ki��JC��Nc��3�Y�<�7Z<yףA�0O&��Q�.���r���w�K(�BS�=�? ��<���@�y�鄕��� ��u,2Z0!�>��V�v^�A=��o'��d��htE���,�����皅�,��ZvD���Mj�'z��{�%��$z��u���������`�{מ�G�
�N/�A�fuTeu��R��1��f}Ԯ������Rn�	��`h��m����$�C�~S��t���Q���z�
�}3�� '�A_.; 깺l��g��e(���2F��$��mL��R��1APE��I�b�ǁ�%��ع�����q}�ܾW����D�>Гc�>�����4X�$/��U��G�#=��� �A�@tٝf�B�;XUԞ�$ߨѯ�Õ��A�NV�0��vN�:#�a1�Ӂ������
�L!� ��U�
�v�|�JA�]n�1BA/8�z�1��"6��7��B�7���ʋ k$�L��J���"�y�d����0̦@P��L�l?��N�r�|E��懇�(i�o��$��l�V�Q���V�9t���ʺ��@�/�Nxxr�ˋ��&�B��2`>j��)��Z1[�D�r*{�D��П����R�|�z$O\��}{~q~:;�O�=�^u�U`��Vj9�^u�]�^�yol��wpu������d�ё�KU������s������i�o�	m�Ge���P�}������<�m���W|\���-��G!h��W�G� �������V���7Ғp-�ͯO/�ԙQ2��S����N=����뻩�������#f��~�Jⵑ�<�����h�1�E���`�n�8�Åp.T&�H�Dof���uZ}$P/��,u���������hq~�I��8+B`��#�ˎRSJO��W��S����������j>Ř^mn仦��w��Ƌ��Xm7��+����.-��i2�=�q�������>�J"&�*�F
EA:+K?VGE�Lxyd`:t���e�E��AF��#*,�~ݯ'jr��'�ؕ�N�2Gj_i70EC�`�G����ԛ�iLmbb���zY�g�"�3�s��:!1bM���i 7�1EA���d��g&�m�9���"�A�9A���d����� ��T�W�E���-�-,�H�ēk�ת�>�^���ȠV�h��V}o�9:T����x�|�2�9
Y��[��7G��J�����mpJWHP_�m�Dx?�x9���m���a�~�%ী�5�j��~�^�J�����Cn�h��?��E?u�2Qy��C����~؏��V�$���L�eP܆��N����Q���J�){�@'�c��/4T��~b�YFc6�>Q^�T�7Bs�D-L�����%�9{N�������f��l��PfˣBC\�hD������w�Ҵ�r(�W���=��o��'�lvLn��Ъ�hQ]B����r@(�&�%*����e�N/��U���ٓ$
�ͪL�"�={�Q�G☷�3��U3Hh9T�]��v�����g"�	�Xm�8}߯�0����]�[����@�aRg�8�x��� ��)i�'U��{��ľ:3{�xW~k'?%�x�6Zx-�M���Q����AAJ�&��ä6���֦¦�٭ �Wk��>��B�T:/=v?om28�'�d�q��a���Ҵ,��A�ݢ��6�$��޸��1(P|8��67���Z�`���9v4�H �=��٬z' ��ﲲ��
��Q�љ��I�y��h�Y�g�XX��ٞ�d�͏�2�����2����C�X�š�6:�s�Z��7�k�V|��\e�(:ĺ�~Z~_KI1�][HP�`t���Q%��?����(�]b�ŵ9��(���EO���o38�����<�"�Ҽ�G^6;�;���N�H�E�G=����(s�����\��7��n/K-�ȼ���\���1�2�;�l�� �lm
[�W�ȼ���LJ�G�f���Z'���;I��㬴�#_��\3rI��j�5�    �7$3I�L��9n�J��_+�g�>VPs�4^2�d����(I����e��V����y#��_/�]��h�j@�VE�6!�U�U/TV��|��b%;'|ҹ� aU�e�\��"����)���eVz�zhJ������Ka�<�kQS�=�4��b�&~,'G3�d�kȢɿ�F�o7��Wsv[O�����g�K#i�r��.�'�0�|<�?Z�f���+��47���ƆC���"~����QY�"БW̎V��% ͂�l(��N�Ճ��U.��P[��C^�����	v.�P�N�T�&*�!����v���N)�����pwA]��Q�}k3��������T� �ﰪ�"�F���R����3hRt:�dң���C�jSo���)�l]D�b(���(�Ƒl�����J����ŸA��u`�Vw�8�M��������-�y�v~X�����A0!I�ः'�ͪ�g��_��o�p�5�!��)J��S�j�?9�0q^U#�0ևy�@e��hZ���$�.tǻ����)��K��<Y?�i�g�@�+ø���h�}�a�u)�I!�~�#��1���@�f�٥늩ު^���kx������8�}�/�`�%��dv57�?\ߞ�_}7Ng�o����~`v�!Uq�V��xQۘ@��~�b-�_���\�7tG��#�]�U�ݲ]�'�u����-PE���ނ��{�3��?��7�Ȫ��t$�O7쵂�,�moࠠfq޸�!���X��3�]Ҽ�j����q��t�bƠ��H\�b��ߢ���O� �80�r��H�	���ϟ�^��䕂a�����>W �"�ڸ���� �Kup�3�7�M�a�E��g�F���}��r�%8�o�X�,�b���;.�"�ꔪ��j��dɛK^b=Ş��7Ie���������t��  �����j��y��/'+G��^�s�F&�#�߹�~6������I��x��sx���-a�����i��E�NX���@\��i���J5oD(�Y��}F%F�j�i��o@w|�[�����7�dO Haf��am*&�g�i�'�'뢞ܜ��{w}#i�;�d"�E.�ls�s\Td�ow�E�F�# ��c�3���汄��Ӝ�#�Ā�׊�����oWOT�1e�tC�����z�uP��'�Ң��ϴZ�#�aCr�b!xĔ����︖|�-ԫך�����Q�Չ������0����Ižz���&*��"��Dy=ȯ�hEr��Su�e,�R���	��]�IB�kb����刺��s;a�lS�@�d.�d�Xκ.E"e�I���<�!�*nբ��P���Γ16d�G=��kj)қC�C�T-V$�8�9Z���#������FE�΁�G���c���١^WT�%��U�����O7A��,�봴}N����� O��r��f���,D��^tK��s�ǧ�G���u��}hve���iAp�fNq#�"����{�8\)s�M@9�w��9�8w*S"��I�|�������Fd<J-X�ߨV����jz�"
%e;��­C�2f�ד�Óu�=s���7��a7Ɉ$�Z��t}O.�BlE�z�Y�I����h��\��슘�L�OS���DҠ��꼘ĩJx]�-�����0~Z�[�D1��2��ȼ��;�(&t�K5���Z��#�Xy���w-�U�=�݌F�N ��o���GM�0wO7�G�I��Ë�������ĵ��6�X�����,Ҷ�\rV�V�`�[���w)嵂��ם% � ґWa��N46������w�i��̎�D����b_L���@ ������Obu�uq�*L������x&�W ���-��~��2���B�Ѿ��0P�ne����C.��% -��Hz���xw��P)���nC��	'}����C�=.�b�?jwhg_�qU*P�v ����P1���K�]�F���*\���oԞx�~���7��� �R��;c�� 'N��_��h���x�S�Li�C V5�v"A�ᛣ�y[�J��: �(���ѱ������a��!nH�-�/	��Ҭ��3F�F	�aw>���WZ̤|_�GVW�h7�Ra;�B�\����|?u���[#�4�3��:����}�J��=GjU�e��e�ڏT,�e }
�]����:-#�vZ5��wu�� ��uQ&9��t�B����<���=��T�CM�/�,�L�p4_.�`-�o|=�A��OB=ȼR�9�� {u�$:�l1��G���Y0��ԍ�&}^BM$��x�P�* �����b*HW*�ā^v��LLd:��Gw�8ꝋ�(J�����Pd�ա�_���u�_�F~�����F3N�?�"ɚ\��$��$L��n�-�l������nR	�rd�$ڎ�������_r�����4˳�����[��e5���e ���n���͈�B�d�T��c5��H;����6ɽ�����i�n)1+�����E��(
�<��J�d�Ⱌ���G��J��ت1k�"��Y�I�ÀK��P0��N��TS�|Ψ�]��vԩ�r�j��Ӡ�;e�N���}\}t%5���NXI��G��`�F3I�(��DtDL���:�Ѡ�(�*J�\�bOh�!��wX�&��w痳[�e8�Jxi�_����j���>�,W�r\{0�m����Y��0A���*���;GǾA�2k2�hv��P=�.� ��$��e���h%t�2�\Cw��[Wk�����J�d��tp$����~P���mj�Ix�n���Tzћ�V��b��A�3���@G�>��Z�pb���/9�Ixi!�/w?�\ߪ9�.<YRٔ3\1"�Ӯ ^���]ziW�%�-�(��a&w" u,[��S?$\�{u�=���HH����y~�:��9������k��ٺ�СL9���n8�]yM�0MTĖ�%}�Dߘ��UQ4'}n�������up~u7�=�.�ߟS����P�{�0��X��p]oN��$�:6G�K7� ǩ�8���_���NP����c�y��ۦ{�YK�F+ ��
w���.��c�&���8�wp��*��s�(Ř�mT����b�S���;`� g@���%�'ݮ۶,v	�"�!jt�95�m\w{x��:b��aEL�"��Ѱ4N���O@ٹ>�[S1t�����F)#�Ss���&j< E͜~�Y����)��r��y2�k:�������Z9*4�U�Z9xTr��_dN���X,mI�o����A;�Joti�S���3M���lt=�3�1�v����{�G��%���r���a7xD��]�^�P�Z���{��D0� ��H���^�7 �c����N�T�ĳ�$B�a�Qa�e���-���2��<��QN���-�3ܐ��`���\P���O	b8�K��k�p� ��Ͻ��e	�R8v���1���~������zɒ��G����A�f2X��F����d�j���g�"Ñ,��tp �Df�0����wX<�T���k%�u���ދ�%��A5��>�:@%!�n����`&�:Ā��h����Y<U����� ׆cw��ۻc�(P�L�<DA �<��|��f���Y�Z�Mi��H#�� !�E+�!��Yp3���_ԛ�6E�{�ToT�/)��y1�����8yGZ<�z0�_�����;��_~C����.o���艢U:����A2�P�i��c�ʋ+�^X����Nb_+�͖Y��e�	RSrT.Os�Q��׍��*�F:t�Y̻��?�f��3���~��S!�5����	� �5O��	�,Eho���;T�+�~π�\�ʵ��~g=��ϯfR�n\�>,eR�����Z��Ո��a:�_�Jb��s�@KMLmP� ʺ�� O(΃��ԕDa�C"��:��� �
��0 T�cR'���V	��_q��|+h�0е�-n � �}�I9  m�f}�    }�����<S����$-YY��h.�<U�V� �X����<m;�mk��|2� �z���n��N2�A�k�LGdH����D-��˦�.:������������4�8��\hPI�% {ˤ���eH&@uVY�V|z�'�|��)�Ǿ��EZ����Nˊw��6���S4�	4�� sO�)�! /Qa-�<Q�G�;���ʟ�� z�u�g
E2ܸcj��K����E9�� �x�X�T���@I�_����R8��	�k��޵} :�{���N�NJ���PjW��1�=6��'Q�w�s`5�x����3�����(J�(J��ǳk(���/��ͻ��w�s�@����17���{͵�����#�ZG��J"^����[#���:��og���%�l�e���N�v5��Z��/�~RL�Tv��u���Q�6BjCT��慔
0-(�QH�G��������g�*�r���Qɋ��*�X���a`O�DS��f�S�v�	���^�p�H���E��rTz5u59�.�Hڴ2�P�=�Z,N�{am`�� �	 ���?� ��\j�D��	����.N��d1�  -3�'\���ǈ��f��%\sTUu�?sg4���¢T�%��&.�"���+o��:x4�c�aS��z!L���� �W�H�0N���,��@�Ճ�k����h�d���B>N�4�� .�ȃHe�%��޸Mjl�+2E��=� �fu������O�����\�-�<6�e�`��*�'��]j�\��|�[�L�����F%��Z5��������5��[�s[b,Ga��DO���R���g���EZ=R��}x�\7RK��L�]�YT�����Q��HH��N$��`L���ծ�:!���E�����p�KT�GE��+_�9�s(�W�-Rw�Y_e�<~j����Jxʴ��r�:Q�z��a��}��WÕN�R_�\�A�q� Z�~/D ��Uk?�ݪ�9�,Xӫ�������6��{첞/�!v�0�s�DЋ������������q�\H��L�أ*y�\�Տ�����]Pb� k��?���9�hL�aWk��7�' *waV�u�G"b4�X-7�ӫM}���\����?�DKIӕ��ܵ��lGO*+t(ع��\��+�Q�MMߥ����b�pro�ٽ��tzE�j�T���;a�V?L��z�o�:��!���?���?ߓ���L	A:Xh%���I�*{��@���]��b��f�r��pP�a �}�t|��B\P��hmu�\�?y�_��D{GGIXGU���(��UZ%p����-��p��d���RxA��u*y�6����L����t�29��B�ZDq\���qF)װ]�:8Z�
�l�d��t�;Kn�)�k�.�(��z70F�����L��x|��n��ҏ)�W��L��8,z�\/�n�`�{ v��{��$�\�+?n��G��O[8�ҡ��8���3N�Rr�a�k*S,�rZ�-W;��.7����t�T��A=\;+ǡr�!4عbv��yኀ�$(�R��:�Y�v$����yG�anv���B�<�4ĩt�G�f�C1���V�c3!	էOÇ2k�a�6�5т ��~v{1������X&q]z�_o42�E�����%ԛ)�_l��u?B�ͥ@��u���T.x�R�~�'�߬���܈�b�-R)Ҥ(l4_�8���$�I�� k�8[?�"��NE�����(���&1J<�5sA�`Nv!L�����S0jW
&�"͟h���cm�}`4�*�&Ƅ��j9�����OrE����'�%����C�;�Ѝ|�P�M$�3�`ŀs��e�_�nܝ_�/��1��"�Q�*o*�A']�j	!ڍT^	s+�8��VXW7�pO��/�ʑ��q�-����۪ʆ2"P���>	ƨ���Ҭ?Z�Bt���
�����Q�'P���F�
�5tRtE��q/�L::9�ʰi��q]���/���^�[s�R��N���w��y6��?��8��{��F�,Kp��
�ZtE����~�GjN�=I'٤�geI��	#� ����^����g�#�����r�'�%����W�$#����]U��
T��q�|�}<���`E��RH\��}����4.�ǣ8�pz����	>��fW��RV��������������������:�����ܸ,�Q4�Z3���f9ooB����v����i�deQL<D�f���ǅ8����#�O3����j3XY�4���KQ5�A�ϳ�㓣ӫA�9�(r��I�L
,o���xi��-�Q��a�����?bAY;�3{|颦-QӪ�bQ��1��)ގ�x%�D���e�j�pk9��ҵ4��F�I�ʑBʈ��D���t)�vQond�c~8V�8:ts:Iq�ټ<��=�go��	(�:UV���֌5+x�uV�шI� L�@X��W�)��*�X��D���+]�'c����:������`#+qZ0WWƋT��H���Q^��ë]��/�d������L[H�ߜ��@��c[Aݑ+�8����ePA�b(q�e�`cV��[�IT�.�.Q��H�}���/v-�~_���hqk��K����8u6 W�]��]8#Vv�Oeׁ^A��i���͘��\����+��o��1�>��fĄ���Y�߫&�s��o�%t߬m���,���n;��<S��b�� r����W
C�+=�5�3�����0���O>hg��C`(1@sd���V��(n���A:�:�4@Wx>Dai��% ��ڻ~lX�(���� �ᝧ�u�&3�gb{|����1'�)0��SƉ��ܤ(h�>�}�"�����t��4�7�X򊼓<ƛ:O�x�/�
Zju�eF�xM������)�1q��6�
:��+�U��t�����������w٪���]N���-|=��Z=W�����tfptlX�Z���A�DTa֜ڸ��P��a� �QD��D�~q}��5��#�i�֑o�����4�8�s�V.A`W��	�	6=�yM����n�����:���sxz��b�8��h*�:g��o�=�����y�.N^z�Xn#K8�a'�t$Om���~����pw,P|�
�=	̉g:��@�y���~�tŦ���y ��n^�d�Ԭ�C���%�r��oۦ�	��o�q�[!�;��E|�Lq�8��a�)���֭.)�61��<��|p�`k� %ɼE�;oK��A{��*�$ ��p6�l�&��g��/ ِ�aBj���<� 3� �Ξ~�-��F�2L +�PN+�L�c1��I��I(�q���>�	e��FS+!����K�;�58\{��i�����]昻����D�!�����_v"�j��kĐP�.J�̏h�bw�g}�U� �x!C#��Y�U!�N�F�h=W�$���w�)8vK��k�W�
�M���(k>�M6v����Y���i1�"8=��L�,
w���Ok�"�$}��w�{0��\k�0�|Ĥ�Y"���9Q�(!��m '��!�rNK���I�ӟ�	>S�A�"x�{�6�U��QL���
.�e����=�d4��#}����o�"�$&���z��u�Qh����锒�9$���$<�`�n-�j~�AZ�bkqN�LJ#�Z�}����f����|�5�b9�p���C���rqX�7�n�nA�H���MO	��O`& wK5��uk�9�4�G���}y�i�o����^B��Ȝ��Z�w�7��81W9	1S�Ib=ܱZ�ۖgV���?���WU��P��ʁ�)[k�`T&&���ֺ����gP�	��j`3��8�R2.�a7fq�5l��f�A>X�L7)q�Ng]!����m��[�"��*�gT<觿��K7���y�uTy0tr���(+�ʠ��pMr�JX�<AǑ�{q4�)��4��f�
��[,�_�il���D�z&�Z��e�5�Y���h]L,ȆQ    _�ĥ�ؼ�n��T��޵�_�4د%T�ƾ0m����b��Fij���!����V�U�cO3dC�"��sH�eQ\��L}�I)�q@�)����F�t���s��:��@3��
Z��h��= �S&���%y8��o�{@p���$�"0���^]���j%xE��()+/뵲��+*u=�F�����c{�������C�F=x��zK׀�j1"�!s������nn�
���qLe�!9&E>�<1���i�㨔�x���k8O�o�'{������TG 㬊 y�� � e3��ޗ�,+*�prնb@�N
"���QKdubj�*�7ބa ������%F��	�#��T�@�>���p͎*�K`Í2�#N
��+���	sqPx;Erʌsq��I�U�ߖT'\���X��Y�Z�C�
a[Pp48"d+�T��{�FS���To�g��*�*tH�3� }� CeC�.KM�%U�u]�@�a��!W������O'�sj>��ڄ��J���eG���M+� ,�xr��H�@ևZ�\�?`�6Բ�W��"*[Y7.*Ҩ'J����~����y�9�4]��_w��r�=�Wj>�ݜ�!ɮ��Hh��ܷǽ:���F/����������s�n�Kc����6`'�\��&��������w���LC��J�E�Rф�h�B�$�Q!	�����D4����s�p����(�0m�h@�������"{-V]/��#��@�3��NS"a����zw��&�6J���?O݃~m�A�5p��O��ȑ�)H�5�E�9����f�����c2T@�
pS� �ߑ�k�Zi֠ot>��*c��^���g:�O�~��t��K��m'�'c�-�b%��);<��2�
����
�W�-Z�n�	*�#�+q�6D3Tl�x��~����$X��u�����2HU�,�l�g�ZV�?D����kt�刵�_��Q��9A_��A�X��]���*���,A|��4v�7ufe�)[S�?���@9����[��UӃ�/j�DG�he�A�XiG��К�f~����v�3�h/j!���c��yH-�t�E�zvc�LX�uU_4�(�0�������VlJ�z%�}��M��#m�,�yg�m�S�����v���ǫӣ��ΐTe���m[����4�
����C�#ݹpr�r���,!�ۗ��N��Es��o!�,^�d�G@�J`�JY8Yi�Q�N��G�����,Gd ��l]��?n��1���'QC�0����.���<D}*�u�e�^m���$�ڰ�5H�H��5���̳D���y�>�!.pl�nC�����;�qº�� ��i�����3��i�86O�<���[+f�C�E��-6�$�/ ��{�Ӳ ���F�OK�=����] ���@�h:��
�+B��"O/Uͼ֠3���? d��bl_���ݞ���Z�2F5��$�"��ݔ��cP���G��
/E}����|���c�!��R�h��df��'X�u(F�'�sG\��K���J���;��$N�2�'O�&�7{��?{4?���4��dt��5�b��&+&��)G���G?��.Px�m�("H0��j��>\�(�� *V��갬�ȳ4�V�w��2+'gLk���^/L]Sl¡�f��Y��7��9[�xurzNJH���e�m	(�)ãH��#a�ZN��%��i�n����6+���������f$�!��[i�9p�s�օI�8 ���Q��Y cj8XڴoM����f��M�o��h��6��)��U�0�N�3W�Vl7cZ$���@Wc
3�8��U#�ԝ$?����x�&�jb�]i$i�Bxu��+A���]�B4�xz�J��&�i,*<ʬ����~���'ip>�P��:y?��F�M�^5��tC�Z,��c���knHeD����C��4P] |��1�+��b��#��ب�M�A�i\���DA�A]ɛM6$��Jm���ZDi�,Ցјּ/"/܌Ʋ�,��ϔt��"'����ˎ�e
��Ӈ�d�Z�i��*��ʼ�����W��	o����hn����R��qq�����L�h�Ro�z8^+s�\�I5yA�����N'�鲲�ez��đ
λ�?��&���M��e����oѾ�r���`����n�؎��j�*xĩ�EЂ\.& �p_-�N/�\?��	�X��S��e�P���"=ʿ���2������j���S�X�����`+��]��u&�S��,Ͻɹ=��&o����.`)�_M��Gɔ�S��..D%aQr���i�U�ˡ��Rg�B&��sмD<@[�5؀��1�wT6��'��U�R?��Cޜ����$��zk��u�#�X�K4@������
���˅C���V��\}����T��'�����O���2�:�E4yh7sK�Hc��Φ�j�IN~��00G�A-�5J���|�7�@�D��;������Y;����ǘ4�l��C�8_���`R�<�_��	�n�Aڊҭ�ӷ�7P��V���kM��g��Z�<�A���0�>M�}zip�jS���g�ƹ�^��ͤ��<�J��N�"�8����6ph�m��i���j�S��S��7�AV
P���'���O��y��{K$�?/굺�I���ƥ�"F�o�U���b���o���´���O��f�^_��e\�iCOKD��IWȣH':UǊ��!�P;�+���N�.�:���8:��f�ZTmY�>֚kNS�qc-3��/���W�G�fC�a���Q�Q{���c�0f�h�l(e��9!��:��{���RS���̎a�|)���L�mi��S��٪y�x�y%�4;YG(���Vz�+E�l�]�k0x���P��,��S~w.����jn��ԿI�[s��پ����:��������Ȭ��+���8)j_~io�u-u|��;7�L��Tm� Ӿo�SgJ���J���)����i����֬�q�������}-H-�����D(����ۀQ��)`��NW��9t����+�Z�}s��e�I����R���3/�_�H#�L�7���L�E�h����;~X� .�Ĉ@����(H/Q]#IB@�V2�{P����'c9�^��Vep {j$� �a'�J��>��W&�e�#����l$�I\r��`	X7���	z�/.O�?�&g���̾T\�8̲<�X���L�zO��WY�o(j��&/1x���C����������9�,� ����#[���-V�6`�Su�(�%��@���eQ�������,�hr�*3�h9��$�7*?��n�Y����2��m���۪��n���)�1��M�h3����Ք� ����ɧ<�̡~</ʸ����i��(���VK�³����ӟ|�#K�FK��m���#�i�wcb	��&#�4�Z���ic�!���¸?p���`|��P�������&fhaB�12���c�uq�Z��&���xArh�$_��@O4O����y�+'�$+M�5rH�Vq�WUCV=�*�f�=Y`�6�7֚x\��d�*�b��C�K���]�!|k�����C��'�A�����a�7!p�s���e����⭱���A�W�2i!S�)Ap��D�5��T	�>����!��)F{���]��SK�Qzy5� rHL$q���V���e�����O"EUi�&׾V9,��I����G�/.!<E���c�0.e���{pծ��1Y�3�,�-��~kLtJ�w̿�wF��n%��$�`}w���ϳ��l�~�(l`���J�{wg=ǰ�j�&��\�@.҂N,��/�Z �"��"��PN����t�3�o��(/G�SӪuKCRdyQ֟��,X8�}=��-�V��c�&�{��ᠬr�֓; ������ļ�鷋-��x����L".@��x¼��ڱ��ք��/YR�QM��xo@tQ���>�a�;>������5��    ���K��2Fm{������I	zY"���5� \N��-�ā)��"v��
��r���`��Y��C5Ґ������#�Q�2�ږ\YAE�^S�O<�K��o����@J�m!'3U��G��W'ǧ�k��ga��b����c�[��!����5���<"�ij�X1+�sB�U���b����. ٪r�ުh�Mc1�ȗ�x�8V����k<�-E�9c9�q�XD��$��}4C�+Q��y�0(����40��QmơB�2���_K.��]��������u~�H e����u����H���8u��j YXU\��tZk7Z%��Jy�9
#)׎�S?�H%���r�C����ȕ��/�O/�}�8*���i,݀E����A���{��5�@{��^m+��	#V#��#�HR݉ 1��q�-�1�"�-e�c��rej74�X��@�B$�Ln�:�d]��X�e
�4�ӟ�mL<��@�ʩ*Y:�����ڇD뎕��.lmw�*�ml��z6��+	�Ryȃ-[�T\�U>9�x����{,���#=�r��p�u��CTN�r�;�B��$V��1pa�M��V�)�@�8��K����S]DY2X��5����\,��-���s�KT{�����c�PڏV�Ns�aTgQ9x��5���XO�:e��$%�${p��Y*���'̃���sAzr	^һӣ���v)_A
�����"Q����ˈ�RSl���:�%���0#im���T�4��l�v"����NV �UUQ>`p��\#n2�u,غ�T�.���T��Dӏh���8p��d�Se|��6�z�0�s�X�{Ҡ�۪]���-��a�VM���F~�V�&�g��L����%u���,[�hW��䚔
x)@�r2n���)0�唁�ľ5�pu@o��S�}�)��`�V��%�NdEs�a$x�8B���d+�f��7dE����o}_}�\�v���g,��k�AF[��:�D����老�����:2gk(��=P�0�fV�������5�uC"����lQ�ES��.p�.�G��%�+p�o�'��<dedc��\ڨsO�V
8p �C�k;bv�B�}� ��+fO�i��~�G��*7�h�����40�HZ����a�J(�wb�	V=�U@�V7r�饿C�VA��:��hl9�V���9-l���7:� �tuNi���ϐJ���e~#��{
t�����W7�e9��q���ܶ�2qP�6�'IFঽ��MZvҔ�q��W �5�i���Ñ*V�ķHB��JT�|~�&%���i-e9g]O�:�r��ݍ�/�c�r�2�*7kBp�*^9�x�B�!6�EM0s�p�]���h��N"0���hm+�;t�U����u�X��qxa���ay��fŕ�p4o��8�ۯ�:D?,V������T�eZ#�ѭ�<VQ<�E�s��$�4������_x�
i�KHH�}lp���7()'��F��E9�m�y��mAۚ9�*�>�+���D����tB�u��-_C����������"LԁV�,[k����&Ē�|�F���Z)?4�����G��	x.��{��BJn�`a$�ɔ^7�]���2��zxJ�ʷG[��7T"���e?D�O������-�lR�����-�l���!'�z���k١
ՅqRg9�ЛF�1kO���u����v�!�/���Ŀ�遪٭��yHͷ��^��q	T�`/Mi$P�7��xx��X9�Fi�0JY���i:������Ҩf���(��P���F5k��Ӊ��x��+�!�R߱,ˑe�7��2����Yv��jlDUY�k�8PU���7/-�B�|O�1˴�����Y���W����u��"�����Pw]�#�� ���ܸtn����w����c����Fk"�f�ꏋ��,ד���w'L�j�;�D�r�F�x<m}>�����tv>󆒠zRU5pEkM���h5�/�9���d`r*c�y I�_�(!�I� ��J���S�0>�-vv�驻5t7��,��l�[��2u�Z-�����2aTo�W���d��}(���Ά`� 9�[  �U�2t�|��gG���)P
I]���hM��	��y2��hĬ��J7/d^��qT	��3�ECt5�3n��=�D�E*�jYK�TzX$Pv�/�8��w�R��ºv�в� j1^�x6W������>���}��Qѫ��mPߕp�b����՚D+�G�2��e1	�[�ݏ}�Fٍ�:P���ux��"�zO�����!�ּ-��8��YW�*#P����X��M\��Iߣ���� �cqm^�e2X��:f!�Z����*u�kU�X*�AT��Uc5�^��%	k9���ǳ݀��c��9���'ȼ�7�d�U����s�"0��0�UU^�w�l-b١֗�����n�NS&඿'�ˎ���h�MM���\� TI������G�L=۷Z&�׬RC�z�D�t�
��j��i�l$ױ�m��˹�Ӗ��!���M�Ry���@l��9��};�i-q�d\Q�_�#�}����f�`�Ž��탩�����g �F�tj�o�wC�����jn�7@�zu�G�{�!#k�p�$I�:�B�O>�B�FR���	�[9��`�(>��B�R"�����z����m��{n��E��2d��0�����Z���b�k���ʑ$Ũ�~�Fv:����}t�^�2�_�d̆��˫�q�V�ĭb���^R��H��6��)��<b��aj.�f$���>��?��y�t^k%(���Rkృ�G�k��LNc�ق�m{��e��n
�w�2��t],� ��	�f�y�Pjyeupt�N�	�+�(��� K<���o�S�<�D3f��M玝}h�^� �W�w\��8�#ۚ�PO�"[����4��Һ(V\�t���6h �j�pv`����ɕQ�#��� ��"Q��fv����hJ�oÉ���;x ՞+vU���Uv�Va��q]��Y�&�r�Dfк��h�����m����4xaPe�\-n0f�n�}��V�߫�a� P��4�m%�?��Y�E���;����k�����ؓ"ľ2���F��m���Ȳz�6�LO� �z u[�Hn�$�$��������0Cl|�<��r�/�Z��N2�D���Y���ߪ���<WO֕�\ J7��Й\��T)��J��-���l�<IFeT�X�$G�nI�
'�5gR���f
0�����n2�[�^)���\	\# 6''_����/͵��w�����a!����Px��,-}p��J��!���/����	ya�:���D@(s
,��ԥ��+�`����]�~��g{��K=������4�d	W,D��"Jc�V�A�h.���U�������F2��]8�w�q���% 0��w}�:�@�i`mw�����7������yg�"q�{a�h�R����F*�#����D{�Gt�$ɘ�v��p�b(�]l�������7Tů��T󽻡_�mГ�� Q�?Ư	�j � N���-� �a��y��:���>�b��5����FȂ#G��¨"6���jHG�g�0���V�^;����*��0������O�=�2/��A<P�O����p2fӦ�����z��M���
�Y���-G�\
m$v�P�3&E6����I���=�)�Y)�B[�� �e5�F0�� ��1~F�p�T�wX�����S߳sZswX�ħђc+���L����m�c��0���kX��p�?�C=y��G��TF�Ȫ���rO�� EPY9ޫ��02�%�i�݋�C�����>�X܌�!������[u.�ak������("%����)�x r��Ť�,�\�� ��T���T+bl@�!���ިa۪y�;b{\^�d ����o�z��R[���%���m�O@�Ԗi��#���I2�W�@�\7fR�0�<I�q ��Ψ���j�ʰ��Ɍ���f^�}���f�]0]��mu��� ��d    ��^��ޒ�6%��m��4��+/z����n��j��ynVh���3&�G����N� E4U�z��b�kV)$� �n6V �ek�JʕI�U�T���!S�$����XU^�����g���&���Y"�)#����K��K�0�jM�BWZN��[u��5{D����$[s�s�~ٙ��e|uvq�(9��jk��m��� ���°�M5yX��9M��"�^���8�H'@������^Ӏ�NB�u�d�=��}�^ap��zQ\>�=�0S�jE��E�q*x����Z�J	g��4��T��7N/�>�m�I�i��L&�n�+X}��-��v�Y ۟�4�CЬۯ]`�L��1a�4�K&�vh����v�2�#��o�9#V ө�xZ2�B��vN�y�i�ՂDC8R����ѱ��X���h��]�Hy�� �K��K�
��*H
��'g��2\
{JBE8_h�"k������`�O@���p�_��,���w)�PJ�!�r��0�Z����Qp��O5���S�����s�A��������٘o��_��� ��LY�K2�������p�k)15ُ����=V��c3dx�T���[N�O^� g��9S@�]�.2ʀм����.��*�۠��8
X����͵	F�
(�v�L/u=�*�P�A"w�gR�&���wk�"�A;�VN�f���[u����Wh)/E����umV�F�EU$F7R��,���,�D���$\/-���l��;��N��c�O�C�������!8��i����U���M��k�;��=1����Є�xP�)
�K���t����k�Az<*߃��^���sV�|�X>�OB�'wP�sT=��2q�i̹�G3u���=>��������P>١wD�I����q��U��*갼 ���_�H��{(m�G�3���uC�RG1d��?�h��(�Yˈ�$p���RGn58�EkE���t�՜P��be�5}p.ۯ�ذqM#��L�|ȄZ:W+�ʒ�%�%Я�x�a�9#Q�-�Tj5������W3�o�g�]A�5��f�i�Qܲ�>BֈrX�?��,�d���~�F�8����H`H��	��i~9+�v|r�yv~�S`JCe��d�Qp4�4/b�u��*K�jz@�@�$��x0g��'����Cn �B^P��,����b����S
��kZl�5�?O�O.`.g�ta�a�<�jp��V�����M�)���4�_�p��g4c�WǴ��e�הi@��"�I-�Y8�5�W�@nY�w�ٜ�G���P��ވQ3&��z8�����T+�N��ۺ4�l���N��Lf2BM�م�q�=����ђ�|H��@����¶!�O���b���QC1u��2�k�L������u\8�����I�zGa���V}�E�O���(�4r9���űȍQq������9�z���^�uR(Ou��Nk�?�Lj���3�Y%te�P�!�?�:�����u%` "q5����>�׸��m����7�(��rf��Br��) �6�ºj���tg��0;r�=�[�����wZ��#��Is�<��g]C�.�a
���H�)g�Y#�����B@������	!����� ��Ջ�*��ŮEQE���R��MU�c���<ʇ�-��i%y�V��*�C��W����S�ο%��Z�����������U�m��h	�s��F}��ʶ�~��լ�7�p}��b�Oo.U��bٌ`B�Ł"#�L��,������V@�Am�<,>�Z
���3�t��G��\��	��:>��C���'��x�j�{��E�[u&��`$��vȪ�<�EQ����f�/Fc_��F�X�P�vs�L$6gE�\�Tq���
�� LW㩤�Q)��[M#C�儉��@�m�尬-1�9��X� xT����l�B	dT�2��chX-�\��K5�k)�t�N�kI}Z�M9�W3�0���<I)E2�U�(#TYi�`�R��
O6�1ەwaƳ����a����1�N��fg�_��ǵ��"X^$���K�̺�Ea]e�~3dG���:$�dWm"�������GeYa��gڤPI\�}3�IA�PS-�<�]�1�`P_W\��Ъ�,f%q��n��� �ez���u<oO�����A�U���h`��V��.�<�ӎ&P��1�I����'%��,������V��}��7��yp���#v��`�|��Bٍ[���95��]���]cq��uدj<=I�	Ѹp�ꆭdWǵg¯ u�:�	N~W����ڭ�T��6h5����z���,$D��.k���5sKC:�y �oq͡�)ґ���A����qcPi�h4�kM�Vnu^1f����#\�[���W�P�[%�����ñ�_�I�uV2@1v B���e���̅x�^�i��b_�%g����n����5B䲰�2-�����S�^R8P!'0��D�0Jc�Zchm� 4�WyLJ ��1�m��̸Tcn����:#&�=NV�&�H�Ƒ�� �D\�7��H�UQL�d&�X�?��ĺ�`�$�j��N���Q�F��s�w�fj��c����2�q�^kY:9�b�N>��5N��)p8���̦c�.A�P���b���2�N�jl}á������`��vH,,��o?��ܥɭ�z"U_�a_���0��8`Äe�*Ō��VYl���E�j?4ʎN�?�1o�N"r�̊(Q���)US����̶c��dy�ub������C�
+c�Rmn�$��eľ/bC���J�1�.�y��[���ڐ���eNZX�7�>m�G�%p�'G��K�u��h�|
1{zn*2��$�'�7M���� 8V�I>�u���f�4�qYd��f+$��I�3,���	R�GI��������J�4F�@�N��oO�ͮ�/;���=�*2����ؗ �@��)N*~�Ο)6e�v7��&|���4P6ŗv�O��`�~+��a�33�(�'��#�c�iUy<pɜV�Uy>r��;�f٩/���Ӆ�T�����+T�
H��@B4S�7+���S;7ZuN������\ z� Xy5��S�|�K���3Su߳�s�޴,1i���I�clQ��Ht���
R?5^ao{,^�A�k��<�j��!�
*���0_�IKс|�{&�l�:s�=�Gi�yS�o�u�@S�,�K�O��y˸'
��B�~�Qpj��篐���'�s84)~/��#C;����Ź>gp�#W�4�@FӅ��C}MMw�X�K�ĕ�ᯎ�D]��r��SR�?�I�:�TZY�L�A�������Hdrcx�Ik��ES|����:jZG���a��x��u���ɀ���°^c-���z��fΚ{3g8����h��aQA�G��0;M|@d)����/R�+Vfy�x�}����ud���u������G w[����G8yx>�Qp8 L�����8Fb��cq'������Q�K�o����(T��>_��C��l1��	c�9�F�Aj�+;M�Z��` ��X�.�C��j��iv�N9�C��N>KB�
�%�,I��5�nkn]@�#�d��<.z-�*�����ƀ.��,8ވT�:u**S�0>��0��:�	��B��x�	᳓�seP\F]v6��"lI�Z�r�mIC%�Q�LB��;�t��Z��C{��z�py���nI[L�cm�fۺMj�`$cu@��o#$��F?�a~@%����w�p�y��^Q��y��$����%�ƍ�\�4�Q�R�y��T���g�hu~x�@P�ӣ+ Q�U���,,o�JN�=W�u^�ח��u����E�3��x�OjFʜ�oO��eY�_ʜxUM�YDW�n�a
L�t:z�V�z��iA��p���c�����Rf�o":�����	���Z�nw����!��S� ����QCU�8��bYbj��C�j.�Y�Is����R�YGu��l��@tM��#�4t�T�D_���    �C�*�2�z�k���[<�t��yO'��_vA�`}�S�Ιy����<�W�����~��ώZ�m�/.�&����u�\mX�+G�lZ7�R'������z�^S��f�H�HKC��Q������٧3w 9R�a^�Y9xw�5O��E2卋�	z�ĶLT���q1R�j�~��/./p���������P�a��i6xA9d)g����=ʒPi�M�u����Co���0|ø�4��q~�n�(Mй��\�V/�H[<�R�,V>{E<s�T:,2��&o�W~Ҝ	�af�Q#R�����ӟz(�0"m���/Y1L#U�*� EI�,�R�t�m5�W4>-��G�=\�]5S8�!��єy�	�k9����s�j��c�-S�{�/��iD)���9���GrC0ۄ�:c�c�:���3�#9�f5���0��`��J�fX�"�j����.�b�=���j���hW(��]qT8�O/M�k�"��w6m��(JBdD(�}�1%�;_԰�qT��xt礂���\��cN�����9�xJ�A�g�2�uD��-�����y���#((�x���Z0lt�1�����(%���LJH�(��uC�0�JMx1p�Dk�:�s�f����Y��h\"���Z������o���h26Б�ٿ�@��(_)�,]њG��:�$T�1:T�n��z�������V�:.*��LbL������H=2����.����.��ǿh�y����,��	e�)0�eYF��^����96:��Eԡ�ˬ�d�W�s�c8b�������A�Ё��2@�sR����� lP@6Rk�7,�k��� ebtV�[��A`	Q�GS�*^a�	v�����B��^!�_��y��7�pj�.�5��f��(.����C��R��z��D*�$����j����9݁b�<�VvQ�=��!]YVE\y
�5ڿ�w��f��N�O$k��V$��u��U�;�o��������-l��n��F0�$����;
m����;��Lk��Eꨘ����#h�!�q�.z|@dz	AЈ2=�>�$'yr|
Q�������A��<G�0��4��}eC6���|�'�c�&�P�ռ����}�j�&ӛ�4ij�r�Nƙts4R����]TI���?��)�ם��Fu���<�GN*u�Da���F��؅�f�/,���Y%|�Cq��U��R.H�� �Q����'�Z����R��K4_����:QF����Oa��9i.�ߒhV�.����<�6Y��o��
^�ne�r �N[��ɩƮ��$��6*�՚ 
��\N�^�=��fљj ��5��ϭ�FDP�y3|����X#���ޞ�-Jiedɠ2�vI}8�\c�p\G�i�ܬ&� R'&��p!�"��~R'���l��Is�{�fqK���T����+|KHĘ����Lk���"��M����lv��_gA�����ǋ� 8V?x���������V��!��.�N�����Ept6��M�!V)3�R[a���(ϸ��+y��XԀi5��C~� 0
�֭|�G��Z��x�a������0�/�"�;S��q4%�b�y�s�%s��*��JW]�!�Fy��o�ю��t���.q਱)~���?���msͻ�Z-��5�
(#�e9X��5�\���&3x;*���D4��pl�-��i��~I'$��9/��%�g_����~�ۯ[I(GC(�Q���P���jQ�_��,�����S���7����T�6�q���À�'���Z� 0r������������dv��{rt�a���������a15�_�6�����������XJ	3[�a��=�������I�JM=.f�C�#� -�I�Uf�Ǔ������ ��(9Ȫ�% r�y�R6I��e�E�A�f"\�.�}�l#3o�yw�a����G-�jE�3�_7#+¬��3\.�V�z�Z~��J���"΀�7���[⠆�(�'M�X�>��G���\�����wXj��/W�@���N@k����%�l��Q�rK�4�cD�U��3�E�S����Җ9��;�d4ZN�,�x� _g�'��D�}��й�$�%��f �.|sG��'R������ <t��Fc�9-�[G`��K��x2b���YC��$ �jJ�i{�������G�y�Y�ȥ[L��Q��OA�!��B��J��&���M��aY�rD�f����<���EP�;�m��W]��B�K�$L��J�k�w��80��A�B]Aw��V���,<zi�"��]�=rޱ��"�^O����2���eb[�H�3q�LhК�c�2���q}�+�e�'��A�g �^l���2��WZ�Jw@��ʬr^B�{�hɼՓ�-K��Q�C�h ���VD�r'h�>���r�9W���+�P�	Z��{MTgٔ�$*�p�;��n[�M�Hܑˍ�P���L�U���,��S��9�N�Dj�UI2!	*	�5�Da�cD�-:AL te�>������v�����5��������������>T�l�f;�
H���?o�����mF��a��ſ�=[=���iƜy�~��ߨW��P�?���?�0�uu����ө���Gj�#��ה��� �9�����Iu�{2r�V4yrb��(�A�i( �B����S�C�J�����,����S����F���6�=Jbx���b%�Dg@�v(���,p�d�gH��Z��H@�T/f��;��#B��.4��L�Ե>(H���1�K�W3�����	n�u�>�w���ņ�@����;-�ͻF�n�W�Z��#�
�G�r�8�s7��jd"MOA�bF_���^u��A�.�!#���:$�h�q`ԁ�\��?��뷌�%�gE��p�"���]v� 2,]N��p�r~k)�X2��:���-�if ��i/��oȉ�VRtN��A���}0�D�qG	����~�-��s3[�a�'g>�~���?b/��7�ֹ q9�Lף+5�/&3�F�fQ��ʬ.�xt�m+'�y��}���j2��Ѽ{��[�0����}׻�|����ɰBrB��p��4�ڟ�fl�0ot�ڬ��5Ս��.���o�$Nd,�)�2w��~+E^9^Yj~��4��]�#�4}k�9:4�C�[k���	n�<���k%��H���]VY��bPn�5HjKu��)��>��,�������kh\-`'T{���<��������D�+��i٦5���q�R7p�C
y�$M��IS���=k�@uS�t�|&���_{O8�p�f���킊LԽ����!��w�����_-�[\�Z/j��7K<W��>>���)�ƨ���@�Ɗ?2d���2.���%IՊ �x��XT��։u�������  8"�_0"��Oʗ�L�G���6�,da��:N�K�pB�g�$���W�>GuJm������� ���8(h����0F�Jq`�a�2�-��ce�\�d�"���<��(����'�����H�wd�P�D#TvB�Ɨ��,�L&Nl���hRř�JXW듪WkQ�㙱_7��X6k�3)^�Y�ıD;�9v�஦���Pc��pI4�L�o<R��4���O��R����@��^*K��u����;4�{�+_׋md��VƠ�� iHhq\�^�V[�r��_�:���z��st����٭�1�酰���֜;r1�R4x��
��	�,^�0fT�Ȁ0�)��*s.��{q�C��z4�tK�Hp�hPܢ�]��R�<O��Ɩ��4��ʪ��*�ƣ(6�S:�n:tQj�|����8K� 0�S�|��<���♲�vS)�Auv�i�E{jK�	ī���N�N�N��]�`�7�@^&�K���Q�G%��Φ�w�I��ȍ�}(��-YG�����q��,K�ڭT�MQHUm�~�����W��d��/�i36V���b�Ub3fFg�= C�`�
!L g�Z�7w�u�!��vu�Oc��T/
"��à,�{�܉���P��������z��P    ���vg[�{O./�㰳���i�sp��X����� ۆ�q�]��ph�y"���z@>4t���F���� 8Ue�PEnpթ���qM�ʋ�=zY���Q��&�ƴ�:�g���`��n,SbkB�#�Ӌ�֯٦�O6>5(���7F5䷧�i.�в��b\9��=�e�2�Cu�ǞK赖6�.K��I� �
$�eA�M��JY�(���[ 4�"���4��`��
�e�|�Nx:/P�K�n��$�º{X��v$�So�N��w�3��� ��jq<z�2gX����-y7z��i�T}�QS�~�.�p`�E�i�'�ۚ��Ϛ��q����d��� �V��Ȧ�`) #�9���D�\�:�X2���������q�n�k̈́/[U���N�H>�]{^�����۰�Q�n��F��<\]�CvG��uʺӷ�5��=u��(���
"�����,/�,m���wb\m�����]m�"�|5+��b�>��h%�����o������bx�U#��P{�S4�>=>?���Q��W]xi:���4���9����.�RN��ϲV�\�.��l��׹?.�3��Ӏ=y�e�� mX�YL~"lU;6�/ �#�d��'W�k#� ��t��zq��NԱ'���)ĳﺆ,�|����X�����`�|��d�T�#��Z�TR�v������t�?�w���:��V�p	2��y�Fu���vF�j'�o��m������td���0@�%W~c.���+v�x������d2��c��ᘶ�\�&�&%��X���K)�^$a��_���NdJ	�#��#h++�C.u6]�0�ã�]��yc��x��|�n�M{��ڷ�_�杻z��d�k��*��Z5��8���P��= 	����nѫ3m�h������G��l͍6��|�.�4�����x^���XL+%�jK9���0Y��Eb8 (= �!q�{�Ƀ�9��V���(��<�G��mͥg_W|�$��=2�_�v�'�C)� �,��̝hM���;T�.����k��R�V��/��}��m;��<�4+�z�C�Z%��B� ��=���T�u��ղ\��NMf����v�g_1�H��i�{lZ�i�Sȱ� ���ew�aN���a��[[�\�k�]u��v��Fs"��ս�p
����c�H�PJ*�rɒ��sx/�b;ֲ�ީ7?ZvO���tb�2�T�(�v�H˒�vP �� �u��-���G않r�Vt3MC54���%�x.�Q��F�jHP�0x��
��b��H�&�S c����6�_���(�}�:��z^$I��iͅ{�F�������6�E@\79���>hnë@-�/�I�E�1��W���I�����;�/�鳾5��D����&�mP�wY����c>*n�9���,���(L��)��G�^��*�@�UZ�BI3�WQvH���i ���?�
!�?1���1�L�}/)�?�����'S�HZ��#Y�n��E�M�M��)�����4#��`w|O��bdnN�*�C�S`��壶M��r��16��P={r�^�r�~7W�G�&8���ګ�(��,Jk����R���~+8�?鹸���N����a����Ƞ+���cU�8H'gn����:�|@X�x=,�5�����zH�tt�Ḽ�X:Q"�����!��3��!�`{�i��@`��C�j�;����gP��U�=~v'�1z���	�E�����9��5O�u�1<y79Y��5W�ch	�!�W�Xغ����5���2�d\(�jI����L7���(����ђ�#Й���;$	�6�y�O ]|%�԰Nw���D���Exuz�*lf�V�A7!SFP�G�`Ȳ�n
�61w�5��oy�$Q}k�().�����:�7��6�� �"Z�j �δhrԵ�	Wj9���/�X��^JɃ���B(�z)�����t�T���i>��t����|���@��"Mʢܿo`���.E�R�G^F�U^VZ���M�=��0���ܹ$Vcj.S���JAy�,!�67!v��b9{Q���&Ʀ��X��/F���y�G�L��ed��ܨ���T��Z}�#bє��7��v������G�kNKM���<���0w��p6i�a�z?������n\��4<@��sس=|D����0���x}����.A �٩���z��V�d?6?�����fq�ޫ)�QI\���[��xTo'w�gb�Ӡ:]I�a�e�`#5`���� _r����oW���]�|S��u�����i2�&,��% 948J�@O�J�u��H�~5�%!���)�o�X�N*�V�,�L��	�9�Q��2>����>����;��EwkM~2G��y�#Y%ğ�%��J�� �C�~��.��u�4̫�&��R��t2��B�2u�Ppt�n��R]:;d�����m#��F&`��r<ElhRui�|��9N��z�U�e�F�,�F���N��A�#B��8�����#�xFs5��XNw.�׼��G	�c ~��_�Y³=�X�����z��V)��&���JC.ɀ�ӟA%2�;�Rrd�b"�$~%o��)�����[�rnJ���i��&>��T.���ǫӣS'h�x��;-�M+KGO*7�
�H��b���:% N~j�b'���ud�u����m���w�8@o됻'lhQ s�Н�	���iMn6���`��ro��f&A��*I�"bjMJ(a�㊩��/�6�%ҋ}�{�e%��ɁP�cO�x#-8��Y�fs�uYx$�,
V"�� ���?�TB�s�����`�0aT ��p*lk��K(ѹ�8s���;���݀��Ծt�7t�b�l��e���L�&�ezO��/����M�ww�ݸ��$n�a%5�l?�����)�^ˢ�Ƶ�Kr�R������7T0N�Ϫ,W�oMko" ��قJ-��*�f��%!~��ot��ݘΔ���ƪ�c�~�[�-{M�cO�cЃ;�6��o.U��-�t�H�J,��>C`qQ���P��uyh����?G�le��LfZLp�8�����\~��w�����k�j�6��+Fԁ9z&�펈��#������^�3H�%Q�z����h���G�:���P���͓y�e�z��$�vAJ�eT�܃���P�G�/rڇ�Tx8e�����B���Q[����ҁ)�=1����2�0�%A⦁:o���3�\�"��-U�^��Jĸȓ��'[S�	n{bXw�d�dji��B�>o�ZB _�-��,�<(�j�[]���.Z��&��q&�w��r �4b����� �����Y�D�	�ĕ[@�\�:�u�ߘ�Xc��5$�M�0F�л �1�pY������leT��b`=T/1n�	j	oO��Æ�Q`Z�x�L�����õP�~xU݌�o��*���(��k���,$
.7J0SE'j9O�՗1�.%Fi���IN��Xy�YQG��N��$ߪ3�q5�n@����p�����.Ȫ �����O�@��}�KF`���e���<P�sV��w6�Bj��d��D�CSA����2,�4w�� u�:��U��h�rZ��5�Ȁ�;С�s��P"@y�1r6:�~�ѽ-�t�[")3�`�1��`ĂFc�#�"�}eb����i�-��,��.ՙ�MC�dWa�UY�_�Nk%`jZbD���y1Gǆ�\\Z�FsԨ���~:�Z��V�+��6��A��08������Y�?�ΐN��' �^��;�??|tLL�w��bQ�9��/�]\��8��)\JY�4˔e�T���rZk���L&g$�-�%�i���mv�aO��%KUbq	�������x�'n��5�ݨ�.p�"bwv��v�!��8̀�e8@Ә'�jɬ����d�&1<!�������5��H��6����$��Ȑː��.�    ���[9��wE����ӳ�"��/;ec� ��!�K��Z�} E�����A�$�!B�1&�����*Tt��ӟ�te�����A���j ��PY=\��ඛ�vĐ��R�`-�=�D��������hx��C�]W�[���OXG�Ȑ��IY�o�ح�o,�`�����2#����P�v!�[2�P��F�_䨡owp��.4��<[��DE���9O��<W֏:�]@���m���w�ڀ��6(����:^��x�u-?��0�nQ�eZ@.�N�ʕ��[�HHZ�HH��u���#4�����Ю�"E���&��R����i��=�;�Xk7��4�����:��	8uo��#�Dj��	�jbn�K��Vq�N_O�e܅��'Ax������%HH�f§��#�u+3G^L�	i�U�s�5J����Q������cذ�5ǲX�����3,@~��̊�_~`ġ�R'y%�⨌'ګ�hUlPrF�*����f���鏇����q�q�g�yg/�f�w����?E4�9*�D1�E�$O]M*h- ��$���1?�0��(��S�6���32/[�3�,�{�:H:G4��v��M~��L�@���	��]�����cPF��l���$N��4�w�k��ҹn�{*�j,0�n�����ݔC�9�Ҹ�K���%��[�f�Օ�&$�kV�^
�|h���.�_�jJ�(K���)���z�Y��R	(�?\�Z��2wA�^k���'̢�2߾�_�=R1��KZuz�a�2��1��Vr�%7����/uD���Z�`+���lM#/���"�$�eV�[W�99y�y]�pw춚���1!ANٞDʁO��R��/h )	�dY�Giuɏe2q�&�0�_/�.Д����������$�ڎ����s�m�l��!W���'՛!�#��h�'��0vZ��{é{�CG	�̆��>P�������}	H�w`>��?}<9ǔ���9��Ʉ�e��#S`Z�&ULA6a�]�6Yg63-nM�����b�h9�Y|�ԋ��xv0�� �8��7�׀�7��&5�1���FIX���rOk��8Y�,������]X,^����^�&��Ë`P𓨦
����M:���[��O����E�N����ޘ2D�D��J�k-R�HS�a2�Y��SY=�=�I����b!�xh0�ɌAG2����"S�����y|�_�>=�����J8�JQ�^�iN�/t�OyK��.�`Ua�ؐˀ��|��r>]����|ru���h��_���'��g��I0��綋����y��CrLS<�zy"��98\zq>;;v�� "�;>opd� �ܣ�G��NK�����g����)	����������)x m����X/��"չH�ŨJ��z���s�{�}L�:�l8�FC�n51�?�2�8��ԇ2&��(&A����ZP.��p��:-�+NK�����+�b���n�%6�j��oC\���
� ������!5�>�܊ұH�Z�����EQV/����*�-�������Wz`p��D�"�Z�&J��s�d�d��c�R���ϛ}�3�����ߤ����%����j%q��@�F�v�遄W�!�$R��$��\=밷,�_Q��v~�
�"���}6M�ǽ�e�_J���
�k�2����1H��a%eZ��������Oފ���0$��b0��ʵ���o����bD�.z��oc�s�yH�%P�g�{�܃�ZXg���w�'v`�}!)Ë� ��k�Ko�,�L�K�y��\��k��:�BBj#���"e.�sA��� �-2��E<R��D�HgRJfk�wlT�D����j�wr�s�����CC�\�j�IJ���Eܼ2o�+�"�ܞ{�i!ӳy+K:�	tʨ��3�&x��@2�;4�S���D�c�����j�i
|�qR���k-cg��q�W@u<Pr� �[��v�D��
%� ��d���F�e����Ny	S<�Y��p�I_�W��Z�b�e���^)��c\��y�˂��B?oĺ��G?�\������ه��J�8��=�z�!/U������2*+������H��-��������g�M�|W|�l��tR��	�N��Ad����1!H}�~JL�C�����_ͮ�f�%�!1O��?p*P��e'��9H�	dc0ޯQ>^3�(`��m۬�����tD�b�J@9�B5b�>0��j�OaJ�h��48���Q�?P��-26���7�zFc!����т�+�ں�G��@r@��Q�v�mQ(����X��PX2ʳɑr�v[�g%Qe�&��y�#�Q�k����o3�����
�/��UE�_~��P�Y�����#�G��*6�
�����e5L[��|�E�y)�[T)4x�8P"�v��a�e�}�߼Q������ބj�7�7d~�jo�����kIu��C$ �_n �B]��`�3�������w�|e�q� Dx�WV�kN�H�BEp�>H~@��*�'.��)�!"��iQ�dy��ak�6aTu,xju�	+J��Y�-��g���8�V��!�#{7�������ܕO��	��ݫ�~V�Y �T�)���X
HU�ȡ-R�5�L�/�r�!dk��s�q��	�_V��W2�����#��} ;�MR�pBm�ʜ��m�E��c�n��n/�}f�&����L�Kހ�"����;��m�x���J���y���L��Ėk�sYe�%+��6>��}�~$��:�x�T#�:�Q!��6�k�~yw��VP8E��,�e�o�݇Ŧ].z�9dY�u�����3�a>���g�A��[	p1k	CJ˧?��1�(! �L�s�nwL	��7 ���ȏ��b����y��6�x0���uT��Ѻ5Nrg�{��׹�Ã2Y4�	��y���fA^À����l���I��T<o�VS9��\#�5L֕�pzqr��3S	��ga^��=�=�5wjm�l+���OWg��Ci�̄�!.Ħ73���]ҕ�n����3z��`������Qݼ�U�戳o����
�r���Q(��V��cK�k/_o)��rk�ă�-2w(�,S�zS3|g6eB�I�R����وY�+�[B ��7_<��:��%�t��Td0ZQ2Ҭ���G�J&�ap.������l���g������仃�Cp~��0�N�e��XVȜ@H�?�u��n����[�C3����Y���
|4J���5���;�^�3��0�\P���3W�8�(�e2`N%t��KI4���&�ΫnZp�Tk+��YHP�yݻE�s,��˪��89ꘁ�g���N��cEij�{}`9������ϹQ�2hw^��q�"���75-.c��6չ1V�n�)�F.���]|z��d"��;�[� \^�I�������,���.
K�K8ZF����a
=��BG�}�(q�ڇ�AgEYo�e���w�]}�s{c����o�DC� ��$.�A�'C�Q��i�9E5����_\���zFU4� B�+a�:��!�+`�ި������%i<8��'�K~wUi4[YC�S@d��8����Z.S���y�5�v�i�R&�LYU=V]�BZR�ء9P��i�k̔�F� fQ\��le:�2~F�ӂ�u#J��M����qK�V�SU�D풝ͭ��4Q�CK���S$��[[�H[)/�TG��Q�C�h!	��XW1�%�-]����O���OFDR�Y �UW<�|q��� U{u|�n�NTuQ�yG��	���Z+"v�R��h��"/�q�/������g�I6��I�e�I�k̑/���}�j�4!(4\�+fp���+�kW���|�P����ټ��4{�x�Ƙ� dZ !�����?���1ؿ�/��
��|\" 2gyE��J,�Ʈ���8��l���!ّ�	Y��B����{N���2��X�4���u+�"W	��-P[>F�F�U��x2=<W� \�@���    ����(��x �;ߎ�Ǆ޼���%=����ޚ_���\
���T�a��9�z������le�yVT�|��_�Qa�I������� �N̷h`G�v�-�7q� �� �vNr�Cꄁ�+~���{^s�lY?�9}����Y2�=z!^���ܽ�jjYm�sOBn�-�~�ًe�&u98���H��u��5v�Z���8��ַÒu2NB��;�x����+c����� "�>�+�4��'��u�������%D&g��@�'�P>5�ګᄘ֊���X{6�dݭ� ���4x,��FI��@AB�l%�*~� 0��*k؈�;!�U��4�\_;�\
dKa����E�yY�7ѻ����0����N|�����|b#A��h�>�'y��������M
��������I.W��)0M�+�&���9� Z��1h=˒2�y���ȜB�'��1@ap�:��l�P��7������TT���B��"k^��u��� A�qH�r�8,\�i������D8��%^7��^����6. �qX���ױ%&���/�y\�������!b?���:�a �����3����d�߸��0t荄�		��F��W�����O?�-�E�x�ܺ�r_|8=q�'���&���8���Yq��2�T�D��8�ߣ��q�5���=���"���LĵZJ�釹v�}r}&E^��)R	��o�9�U᭾���o�-�@>#C���JАѷ�2L���n�/9��wݫ �8��Y�\�ãE�� ������h�I���6��se ړ+e쨏����(��Q���tA*�K�|����^,�-ߖU!P�y��2P�T���!ڨ��xC�2��Y����������/c�nIZ�_�@����H��qV�[������Q���-r��`~��k���]7� ��E �0p��5̬srx�> x����nb���QŎ��.�O����7P���y^�!V� ;5j�~?u�σ�V��U�
��p�����$��rX�E06��	C��4ҁע�	 P+Y���}r����ek�T(�K̺A� '�a�)�����XY��j�K��~	!��<!*�8v�:z�T��r^GS��_4Q�G	���<+H��FR��C�Xկ�w��㮏��1䤜��^6�ƀz���[9q���L�~!�7�r��14e@��)�@����~��iI��>�]*~[�M��}p�~�~
5�ʩ�ى'�]�n���{��6�,Mt�"j���T!��P� �d&EjHJ��ބ���L� �R��kw1w�ŭ�U�Y�zf����~^��=�rzl��n����@������sTEt��/�E-�\�:����f)����q�:[��Kq���
F,x���]��:�:���/N���%���y���$�Z���h�C�F�2M��	'����>��:��h�A�n�q��I���6��_����]�a�'HE���M��^����9�g�4��A��j��k#�VT��#��}6�h�m�9\��I�ǀs{s{�4�L>/z����QH1�4�O���f>>n�*�NZ܏����]y��4`���l�p��Vs���d�GIA����o;��p?^z�3���.5&���'��,íh� G����ꯁ��B�:)�����ycc���h/�n���&qY����V'q�ta��/�%���E�Z�M2��εc
�0?,��ʴ5���Fj��8�暱���*�[�ŚC�������HU�tCj.�ɍ�U�Y�tRC�&A곪(j?H����4�?-���"mw"�g�|L
�Q���m����V���'�X,j��o�,|˶��N�u��aIn[�=�=�W!����є$��m�]
g���~��>p�ȫn�c�!�.+N1WYC��c�v��<������Y�|F�b3�����̪�z?�����_D���C6�$�N��&��J�1�*sz�m��1f��F�2���j�^�����W#ٶ�B�L̶|( ��!B�!��`�1��Ye�s\�����~_z^��|�
Z%�[vv6���ޝ��a��-3sJ�L�m,U@�!d<���ҫa9�K��H4Q/�,)�&��C�=��J9c����䳘���^�|L�
��?�� 2d#��w$㯾t?�ƌ�ď`Z��L�I��g���$2T�1���A�>ŷE����\��G"<Lf�)l;��:��W����&��gs·H��9�����o�7[$x�Y��;�Ĺ}�8���q�l�#��#:���T�.)DW��f�J����������n������ߧ%�W���6k��Ї�[9b�
o�T5��{��e:�$�͊/m��G��qn?�e�v&�n�p�#*_�V,EF�����E �-:7~���o�������G���Xo�V���3M����F#|F>(�qf�$E)�ܸ��c@�7o�-��b�d��gv��]t�7�[��ǲwM�dY��3
�h,Y;̵����Y(H�f����8JT.m�E�ƨ�|�����8<��Bo��e���F�"18�^bf25%��eu��+EhY�f��f%�;�2O��K�[�2c1�T���n��%Q�I�c b�e�C���Q#k���{�q �n����5�"Ow�n-/�a�?[6�0����h[u@,�zp���_Ʉ�h�HRAJa�wED�<\�w��3v0��������Z3��Bؿ�w�UM�W�n�)�Ю�gC�w�\�G�?R^��/����!Q��xt����{WmY3���_���ڪ��M�h98j�L�f�W�P0�,�|��]B��1�Ҿti���Jt2�P�u:܋�5セRf'��G����b��8.`��m�c@	�/�	����[P8�>����}k�����S\dI��3��juZW���=�v�G��߆�m����$��c[�R�餎^[fW����d 4`�L&����W�P-�Ё�B�?q�<���O��>��E����7w���c;|y�>g�sa��g�qN_?�ᔭm�� 1vP"���7�e� �eO��r��w�����N�G;&�?�麨5I�~��0�9����vh���Ո��SmfBj��[3�+��f�?R��{a�?s���6C�")�=?��]�@����fG�Z~mPtG��ѭ�>����"I|9Ò�J����j����3؊u�ag�$�������RH����.f߾{�?�ͫ���zY����گ�<�r�\�\�fS�q��4����Q���Z���F_a�����G�wo;bN�<�'s>���G���G4K+�iۊ�Y����*+M|��M���ܳ�;d��n�HV�H�Y�(4\qa �$�J���ΊJ�i�$��&"�h�]���rs@1�\I�:(����s3=m�q��{�i�D�Ǝ�u�#B� �`o/�q&c���1]ьbC�4��
�
Ko����j&�$�!�HځY�d%N�&��VGn$���+#�B\'Ec����Ʀ�,�<�'"��֯���>�˗��T]�w�h����a'�"t8"QO��`��m�Ta1����c)��$Ј�ނ�*H�Z�D�x�/]�Z��Ȅ'\������\���˦�p��)��hʈ�i~��ʍ�o<{�R�����]������(/Ho$S[
x�-�H���Z��w��f?�K(���d�������S�g�%�Ƭ�Ս9�|I����ӽC�b�������'*��к��mk0g�������]O�o���x��W��Ba�����׭�O��f)�K��6��'�A�����"=�lf��|<�����3Hf��-G&޵6��ʲ�ĝ��ぃ�����| /�@\Ӷ���.p�ހ�A��`׍9��A�V��UW��V�P�T�i�c�E��� ���i�ݨ�������ߗ���7��<O��y��i�RZ�؈��/Ǝ��!�-��7`q��7�Y�����#����yL3�0�����Ǚ֖@    /���$�H.=�D�g+� �c���-��W��i��_�@|T�p|B�`
�Q�t+�d�)Y�ͲCXx�l ?��ky�=2J�W;��Y�/�[	4C����}d�S�Sc�� ]����"ς������YWc�]�_�T̂�Rs.R0���_̋' �%.-R�*W8�ƅ*A+��ʑyw�m����`E��B���o��oBĚX���d�B���z]u,��+�*;.���%�Z�'�c_�8KX�>)�e�>� �%��eu�qH�ę*��ޫOT�-�Oi��H�I�~��}	@����/�͒���X5�eTK�T>g\Fu6��O�"P�ȚƕXs ނ���ѿf 1hT��ǀ8��᭹σ��:��U�q�u��6��bΰ��4�yv��Lp~6~�'�Ў�5I����s~ƴc��_�y����sD�^zB��������S0��o�6K}a���RP��H�S�����^[k�G�#��4�����^�8AWF<���+9����X�<C�b��ed�Z�lz����jM��	ʍ9cjch��#t~}#=D�@'�U��1��=���Jn�/O�r ;���	�S��>z{���x�)��U}"�@J�j��=:�v�zq�P���6�[P�>��Al��"�>i��Mj�Z�s8�"e�J���e'	�n�W�	Fc����V��g�8��Xk��CϦY^fuh/�VV��4�i�٩�3�,%q�_cD���z깔O1��O�=1�q]%CK�
�����,q�%.��2��!x��:�	�ɟ��	��Zj)t���w�A7����f�����q֐+�4x�^�\<В�N}�x�h�tp��w��a��#��=��:��P���'�����e�N�N*Kl57Gan�$�3�EM��L��{b�/5:B%UU�uZ%��ë�=�_�T���v|�	4��.L$)?��I�R_�����a��!�:	�*��4�5L�n���5o0X�����@ͫ�������i����M�ɑX��E��u�s����`��3�[�|�nV��l&sͶ����{���Bb-����;G�d��>`�'bBD⋡V���q��W���ۨ���,�"{�%-�lV�8��ў�� D+�� ��"spo#t��L��ۗ�#����Y(�K���ф��;9�iښ��q�iQDo�2�ud/��u�B���T\cU��T��)n&�A�@�}#��(>�t[��n�$�xvv2?�y'f"���UU��9K�`?@eʙ"f�۞8Ǆ�]{{fz���
XkwX�͸�)@�v=a�vĕ�Cؕ��Ѧد������4���ڵSl52Z��tA�?E�֋m��t��W��	'ˇ�pKf���q���$:�a��{*�� H��,�z�֜hE����z�I�!�$̈́�KB;���^�ׇ٤��$P��٥x)�<����p���ز$�lJ)a�QQ�)�Vr��������rn+sM�R����RP�X���^ίo|vMəA�����Pf��+0��2��yo�MDQ?^D��7Z��~�6�u�T��>�r����Oo�L�"�%�Z���Z�d5��F|
�1�X�	��
@��N��Yv�A�"�f0�1[����q��7v߇=L�aL�vn[϶-�!i�|�����YDWȸ)9\\,ڄy����1oP4�h�,4b ]�q��l��OPX/�^?��(q&�00=_�Ð�	Ir����b��h�; ��D �7�m�(�N�2��0��b��z��%Xq����E�B�k�D��} ��?�_��,�]��	1��4حDhfN<��[��ڳNPg���$ K�ø�b��ZX�c�K�o�̻E�Z����jvs�z�����|��1X<8o����������[��i�� ���f!�������\�Θ�=,3|@CK����7�X�%�p���~��p-~*���@�"�V� j���2Iko�e�S�]u~f��ך5qё���
��[ǝ�����g��t�@�:��@Q�$��P��D����̢�ً��_�2ޯ!@K~��[��c˽��V�IssV�jc��7���,��>
f$�qFv���XL�Fr�;�o�o
c+Xv.�#�g���{�;6�-��d!0�A�z$k��**���%PE63'���,*�׮�btP�ɜ���'G�2ry��󣓳�oWB'J8+��^�k��,(������{��˻rq-���`��L�^�d�r!���<�K,Oy��!0QPAؽX!��0�`��Y�a0�3�{��s^� G͒株\���A3�J��u�^fVE,�f<�q؟2;_�d�SC�O���i����,��8?��:����9��>?�/�ƥ���xf<��K׀�~o@�p���~g�<���2�;��_�����.̏��>7�|Z�o�ߘ�?���y���������<�_\�ջ�r�؛�-����ț:��.�nʆB� �� �{4�]���Kɳk�d����;�c+��ۥ�{��ƒ���YR����ٟ	�P�m#RÛ�������}\a�"[Q�����Bu�DsHx@�h;}���dѯ*>3���4%B�6I�@�: ^�� )t����\_��"`��uT]�׃P�����D�|�c�{�݆m�L��[��Q����Jyb}q�B�j�D��[��e.��4n(�q����_��
������^k�e-���+����@��K��2/���6���?��)�R�0�p43;:�ȝx�/��*�i�TU�[_Ak��gӲ��yf�d}��a�r�����c�RkN�y,\~�
OW	��m:�s@ҊKͤ�o,A���\�A�w�|����*s��ת���.������/dW�ı_���� �[��k�d�و�B���`D���ڼ�<L�����A�J`8�%�	2s�6ȇ��3(���	(!�ߠ/W�#$B,�|@s����|J�p�8�|z%Ŷ6Ȕ���N�ϼ��~UU5��BOij�h���9Y��B�.~k����AU!+�}�%�3�=Q��|�2��;���ْ2jq��S2EJK�}� ���S�o�E������M4��n�V6�<`��!7�|و.��H��1��+��A��z\���Г+�tƟ���k�*�ak�'����R�=��+J�y|��h8w�� T	>Q!���ڙ�r�Y;�e�[�rZZ}��1hq�+�;���o���Hߒe)������k�X�]bK�EbJ@�0ە��q��gcO����Bţ��1QP!��|ꬾb��d�8C��s��>B�ڔ�L�7�T����F9�Q'�~8×�����d�Ø0՛+��&YZe���)�j i2.��Xs�E�	lA~�ya[��H&�����Ko�m*�Z�}�5����L4��S�7ޏ��}�l,�;R�1�f	�?T\��f2��P�K*��֚�!�Du+��Z&:��"Ѐv9�7>o>��_�Ѐ�o+7Ds��G�t�e����&m��l~kF�r��W��ځp�P(�y"�<JW'�Lt����~%�����^\����S��B�6:�[�u��1�/��׫��`�ٻz���8c��ru��
ҽ@Ρ5�Jh�x�I���E'RN,�xb	��Ca�����x�ۇ��_�I"T�6?R���hkN�:)�o�$+��ܓ�o�OL}D fo�ߧ�I����=2��H�2�Ԫ	,���xL�T+�{���Y�W�K�Q�9mv�d���ܞ�C��ih�%(��TmS#S�fs�����A`<�f������	�����E��2C��<m��X�Z+M���NRNe�Я��q�����u"ERn�4���\^���L�_�>�ȊZ�{���j�δ��e�B8�e�t9v:aX��.u�ǕI�:?�f��yN�xy��C��A��; E�ӢMˠ^�o���[��1������c�ڳ��V|^2?ED/ִ�pZ�V���#L�wއ���E��uAʫ:���Q�5+�je4Yj�]u9�O��	_�� )�l�C.-H5������/#��OYO�H�neb    �Z^F).a������)�%U��L{�v�XeDP��c�g�^��*5^	�O��FS�Mԉ�Md�ya�{rl���X^o>EG"������1�a��������y�sy	n��i�44X�V�}��[Jȴ�!��wL܂I@e�x[E���{$WB�	ܻ�H5(��v�x`;��o�E��#3�ZY�9#᫴I���1����{�)�M��a�c��m��lV�MM�'�V�,PN0�7��V>��s�5:�[42,}A�"ª$q��F��y�d2�w��Z�5��3B�F��4_����w�����z;�T(G�ɬ���Ѡ��SM&\:D��)"��Yl9�ƶ\/hС~���c2ԡ�ͳ:+�v����	8d[���=��[3GAq���A���؀�7��(�4>Z��}�Ȃ��.o�
ц�5K�`|Ut-u�mO U­�g��f{`��G)�����o�(?�(�\iC� ��������eB���6Y�j��,� ��:o�K�e�&���J_�^��Jx��J"Uz��? �k�Y����P�c����R�� �Լ(����I��I��G���W�P�Zq���~�Z�Q�Ɗ6[͊�em����Z��A�e$���J�����-�����u�oiÁ��D�$2�����tp<4ȿК�o�4���ߑ��Hh,\9��%�P����D�#뢚f�w�]P�����	tp�?x�1<�!dW�N��1�f`�\6�z��V��)�5n5eN�̖�h���2.:�醅�,-+����m��Z`N�in��&����6˂�~�CS��Ks��Yb@~5e��l��zE��C��ɷ�+��������$|�@F��Б����t"qh�šOGO��y�Q�hD>�����[�eool��-�G� ��&K�"<Ƽ�ƃ]��ˢ$���X��;,������9�g�zǺ�ka�$�=� s�[�?Jb�Z��<�hI�׶���.Z@���#|�:�y��۾�����̊�:���?��3��Ӻn�:<�t��kE��̸TN(tgt�H%J��uѯ�}�1v�Ħ�[ʗ�?t!��zƇ݇��Ӣ��E7�k>g��;���1���"r�������Ycb4>m���h�w�g�4�`�_<ƶ_E��G�1�Ֆ��C|d)�9�$���
t�ｮ"m��-w	4��9���?/�g�H�yJ։������}��@o �ZN�>��a���Ż-+�Nؗ��%��Գ`����/)3?zM)�8Fcq�R]���
�bZ���.��i[F�*7�a6Z�kIU�[�I:f]�P9��yt���v/�rA?�������ܜ�d�7x[�؉�M�",9L\�����<��
G3��Pނ6ٴÍ��Ak�b�*zo�7w�P?rMI�,ɳH��<b�EG5NQ�O8tq-q%ז�į�z\���j�^��� w��v�`�&�.��0�H|z����z���6������^p_�B�@1o�ě� �gS�D	����U�����s�>����\od�C�.�����_s�O��R2K�J�^��w���*��K�<8��"�؋�m�㎢�Č�`;*��8�HX˽3�l�Ô��zr����+t�ѽ�1�#�T.fv�����#�ǀ+�օ�0��W����j�LTo�%�9��Q�@+�IK'm��C�STP�����A ����y���:���Ǥ�L`�?`�)�!�UExy����%I��x��^b�>�.�pq�"A���(�S<�z��r�����a�2�RGP~8���L�i	�vd��ZgM0�4��+8Ў�1�3PDFdU:uCu��(@���j�C=F�v{G��L��D,�(�3G��	�����l�$Oh��*�qg��u�`�b�]ȷ��̡�)tQTy1-Ӣ��\k�$>��q�4�����(���������<�u��S�0�R��I���ԭ���=��+�z�-`3����G7{�@��H��b���L#�j�Ϡ^'��M�`s��Zc�a�uk����8���qֹwn�GV��g��p�J$!�v�;�{��2t,���!�̑stJ�F�V��9j�h~�f2J�;)�,+ӑɰ���%���ye��w��#�<T�zh�����}8���7��7�<�`2��_�~XK�á�:6T��9F��a�]�R*a�q��E a7tHF�~E��_YK6��_@�7~�/�Y��?�o\o�`{iyH�"[3��V ���hF
��܊NU63檜�
��R�,���I�_���l��/<[e
9P�{�kc 3�R�FD�\�Uf6O����/����,O$7�k��g }�a���b���"3b3%v����V�=0���W2.$F�ِX�]w�A��	ձ�Tx�Dy'O�"�ƀ�3��_������M©F`)AtX�ؚ%��5��1��#t*%��b�㈌�|'������#Qz��g/`�Q�i|Ɣ���
^_��G���HZ5~r��yЛ2���"R��u!]�Ӕ���W������g]�l7�/�	�}��4����(mi���"˞T�.��Hj�R=	��-�$�ǖ�	�7⥆�|��� �g&8AVL����Dk�1{��+�����k��H�+�FV�p�U�	��ͧ�EWi���x����V8�4Y���޸�w��&Zۇ��lZ�UӸ2�Rjw����������gen 3���$0���3��`U�x��Q�.�|��sP~,ҩqM��U���O�ӹtyw�|g�c��V7��k��]�����v?�(K>�������QL񢴞�i�Vi8T՚�M�J�� $�@e��x���f��sF�s%H�A첶��cG4�1*܂�A�ҋ����	��ˬ,���խ�?�<�(�0�)vpJ�ƀN���J !�<���m��W����#���{���X�@�E�%K�X@)n��V*�m��N{�c��¹��@�!
T&����r��-�+x�KAf"+�IZ��뺵�U@YZE�U�it�̌�](?�=�r�N��3%�e�f8�s��i�Ƨ�Z9��|����H�V�Yi�	XW!�hx�w�����S�,��B&�w��[/��F�<��V;��n����8��(��ְH�?������{3�4[i
&W��g�<p�yQS4D�d�2�g�V�O��56&���@�iڤ��a¡&K��ߦꠌ�7�~�wC�qQN�:k�Rb3���E�Br����'���aV,�CGd�4�%�z�{4��qf�P����>�ɫ�b�����28��tH��G����~�wU���CzH��+����2�oZ�������.k��lE��V�~Kh������m�N)��O��OvD�w>�]?�0_��C0h� �33#�ȔHk�Y\LI�F���뎅w�cm��S7����f߃O���b�mv�����JT��0p3x]����<��e3��iw|;g�:KC������D�{Ͻ�4)K���	j���  �ey�wA�|d�|�C0�G�ٱ�8Ƶĳ���S�g[����}�Vmc�շTXG�I�Ӽ�?\����Ĵ��d��T��幱Q�h�d��~	%.�߂��i�����,�cY�j��7���*�!�YZ*�q��x`���X�N��s�@��yx$�]�S��u}�>�<����sr6;�=�jL$
jҬ�����ᡦ1m*WEE����sw��]���/,�ٮ������� �H��O��Z��լ\G�r	e��rx�I+S���1�uL>�U�X�?���;"8Yh�b$�c�}p�Kg���s�p�N�_��=����Ů���-�E���a�)G�
�2��M'�n-���v)�����f�����#����-Kp����#�͘y�a�m�����A��i��^5���ty2?��0���� ,S�㵖~�P�a�
"s�ܺt��$]"-`ژe�&�DA�6֢��Fd$Ț�q��X�{  @5s8?����/��x�%E.��[���w1`4�R    ��mF�f�����������J_�(l���<q�0yd�8`���=Y�B�&M���\��:��6~�O=�F4���@�
��2/3��&l-4#{���i �5� Srb;��NnOK�iC���>*����C�P�
��"��O��<�@���h���L���%�O��xh�+���V	����J�P�.n$���SF�8�ξ�����L��n���m�<�Nu+������P�]��_�;ƙ�2S�2U7��>~�݃38|�W
/�O:��'�j;?���:9=9��#���f�f�z(�0'�������o��c�_���C�Z�z¯�qo�=P��p*���Q1`�}���8����&N�aa�NY� �[�0V��N�; �Z����KSh,�)���~K��o:�zw<E[������s�l��Wè���_���>׀�M�"���m�U"�(l���U��=���-��f9�o�i^?���r(�2���2�����&�md��UW�����:r{��������7���s=�0���Қ�5�В�g[V��|��Ǉ��Ǐ	�p���iވ)�Z�G>%|�9L"�$0��ͽ��J���/u~��k�e���'M�i[�i=�ߪ5K��K�"P�cG o�ǰ=��c�����,���r?QN���Yy��p���T|c,�0���K�ゆ���=	:+HЁZ{���3@��|����'B�E���,k��W�Ӵc�)��"<�X�Ϳ]S�ΛŀU~v:� �,�o����ʹm�%�_��
`'Eƞ��1Zw��X۞9��^�0�7��L�����]�j�'�]��H�5d+��8w�㶕.�L�M(���/�9�p�h_b�9Tx_	������Yx��s�v�	�����7+y��'ȁ4 �J-;m��=����.F"��Kkћ��bG����8�D�f��_����HP���x�g��#2��S}���(�.ac[��Y��ON���3&G��*-��[��_׬�R�[.R�&�I��_~���!����l0=f%J(�a��Yt;h�<��("�>C��o �g/�f|WD���^��@)ϣcE���0��e�y����&����������B�5Ŝ_̃qX [�M���gk���Y������B}|3iV��K��ZxR�d�28É�߰�9Ce(��P���j~��C�%��E���iЍe�MC婓h���|!�S���3�����aeV�@ހВ��BLN�~ {d&�6�\Vp*z]_��g���|{B���u�v�F�����J����k*1P��[y}��3ۙ-v��ő��i��NX�E�v�n�]��/U� F�;Ȁ.|:��o��_�����ƈ�x�`�ᜑ�Np[k5�֠�1|&�� ]�#(M1��Τ�4`��4����ʷ�h��2��yR6���V�x`,�����ѩ���y�D�`��5P)4Y��������E��q�{A897w�	'����k%��P�p�:����|�YӖ��r��A��5�rw�i2��*+�{�����Bh��j�m,���BA��|t�5��Jm��Q��[)��2)D?M�P(%�B 5%[W($L�r5���ܠЗ$�f�={90�+��H�G��*�4���I�Q>IЍ��xi7�f6�3ކ�Q&_�t�{�#�z��4LLp����[H�ܽ�U�|4I��Vр��&$��4��4���wf��z�c^ܪ 
,\�a2��1�I_f�U��|i��~��hv� ��s(K@��i���M�*h�N~�/#�I���{ �f.)�#4�����%R��o�TR��-����V��g��1S7DŦ?+t5^	����sŢ+��_���~� \wTM���Cn�S��:]5��t��$l��1/��Rl�DH�����o_�U�3O��\}��)j�2Z�^�a~z��@J��V���
����J�81[%�1��l�u�'���=��]K��fsFZ��O��g�����9�B'm��v����ub��׵O���ɧ�c��`Z��(?8�@[����ܗ/�`��%� �Y���ʯ�̳4z�]^�`�a�3�3���U��s�(k/�dS��F4n�b��`���d�D8�������K8>n6Ե����7�D�"���"��f$�(\����<��q��*�|"ְ��Y�|��*�_�ZR��am	(g�x��3A��j};{a����ڊ"�nE��˘�,��֌�QT۰T�����;���Ԗl��ʦP'`�ND��:�0'��\��y`�<j�UHi��ݒ�����5���6zo�g��\{�ܧ�HA%5���R��X=�R]h>o,��l�A�tc��f�
���h����|vэ�!�8�&�p��h��C��#i�刐��T�Zt��zyD8����M�h��6@���cjȑd���`v��H��U{+�x��T}���$���3��=�\e�a�D�q~�4f��_e�%�m::�ZŲ��D��+K �䚎�q�5K������<��y+ -[4@�fOZȕ�M(�@g�����W�����#��r;R���kN0�T�]Y��b.�B�Ei�	u���m�#����T81��Y��;c�ǼMj�Ė�*�^����eUy��8�
6h8z���>̽�Y^����f��j1_�xW����Y\���s��i��d��<�Z@���ŕF�r��i��t	�T~�q�]�w�n�"��.1`�4��F��z�AE����~�k����^=���B���af�^Xi@c�%Y�p���{]����S@Q�����T�@f~�G�t�_���74K�c�����mK�fV(�zm^��Z�5�ٯ� :>
� ^	�s2-��C�vR�EI��PW�Ƽ��% :�7�gv	��}�	�k~��̟�R/����&�(��j9��(5 "��#+�1n�ڜ�e81��N�_U��4#R��'�DAV�x03=�y_��7a�2|Ui2|��1:�DK�����]oa3�O�ۑ�D]f��dǏ�T�w �|2��q5�s��"�pҚ��þ��D�ٴ�2�-r��"�̱J�3����,��
�Y��"���mɡ݅5�3��>�M�5�٭�s$_�2	�H���"w�5����)����8��槐��a�U#��Z�pz��iЌ��f�!�z]�+Ix�?�+��F�瘂�J�EH[�@��6mR���[S�8d��K.#c���_��׋�h-0QqY���!N~��h�G��5�n��9�0y�z�z݂y��yQ�#c�V�qʘ��,��S�zX��Q��TtU���-�ే�3�_[��=F<~���2�Sb$���oj�Z�|Eu�_��7M��/���O��,����L�X��'��e|6;w��g�g�3�f�W'��]���O�gg'W�7�9}��t�$��  �r�>L<�K�M��[]�����mf~�ĥ6hޚ���Tֹ5���XqU��'���:QF&E"r��z����C%F����1|Y6� �9��\k[i\A]��[�_��R�*��d�ݤ[+�Q��%2��]�/���y\���̱�Ԯ9����%d�9t*� �����;zk�Xu�ۜ�n��se��k(CD}�'��K���G�T� 3�V'��5A�����~$X0C�L�Fؿ��}��py�f�3T\���Ӧ,[_����%��s�A��u%��D�!*��^���ҹ��ö�%W0�uc�	R/0D'聅�(AU"i��K��e�^�I2I[��ڀU���Yﰻݬ���5����p�tr��(������y�ŬL`��
V篍����h�j��4K �7V��-1]���(r�6��e�'�949d�n7_��a�vKfo������r��Z?l��S�������ѻ)�f�Em;�;�?����	F�Z�ď.X���������/J��\����n��`7���H�)]h����=&�~Gg�����������Q�Z�D�5^a&��D˶    ��΂���|�d�{4�2}�)6Ok��N�P6�&�����;Y`��%|<��Z,-�����<g�al�D=�6m_13l��V�ʚĦG��a����ќ�@֛X��H}c�j��\����p<J�^(R�i��WIE��%�0�r�$V� `�*,Ha���@��/�C���� m�[\��an$��_� ��(׋'��r��L�0�cz�!B7����x~vrz�S�5צd%��g�� ��	6!�����"�dD�5$�.�����(�����j���5��gbpq�j&L%V��ٯ��'�`����ĝ���U����H�����du��@M�Ԃ/�!�^�
��ҁ�����u�����{4�%��ޚ�Q� �"���ʿ��GXr�
����!}2�M�i8U�4y[�M_����S�E��n\ �$Kw��G��,4�C�&�]�N��˰����l��K]7WeR�U�z}�C�i�Ko9>ه�H�h 9���VB����?Hb�P�Q�ڸ1��>3@Í�%�p�K����,i��kZ&o�x}��l�_����'g��7���F�_��82rX��/ŷe���a%�қ�J���梌F�`���L���|~�jv���Qt�fo���|�?08����}��mY�J�������0YޤmQ�̃m��ݲ����*��S����,z�ו���W�A��grj �8��]k����n&�Y��4\{")���#}�#r�n�!#�����n��5�F�P�;݂0n�M5�<T+�
a^O4
��1���ҹ�g ��f�Ȥ&@7n#*�a���Ż9�c(M��Amm��Ů�#NW�����_�'�b���2�O�M��O������Y� W�>c|�~��wPEtiBX+�g�B���-l��$_w����*գ_�#��@��P-|[6M98� �\�e��E�M!*�IJ���]�!�_�	4�6�y0|��yU�7����$0�Ԁ
HY�y@�9��dk���A�/I�uy�t�0��b��f�de����Z�G����T�]��}��ƈ	RU$�9�pP�5��Z�������
y�g������1��o��h%��'6�̨\4RGc�X4�d��e@��H����M��U��S�+��r3l�S9���@<�y��a�,M�f��'��AQ�f���4��Z+���WU.�{߶PH��D�׆8ȄQ�"xTL�"XP\�B����u-���>�}��-��5�qIR����QU�J��EO�׀}���_�5H?�=�,�o�P]VM�'Z�
�͜v�YEx�3�[?
�i"ֶ��I�&m ̼Fz|lG�KƗ�<ܰ̄$e�����$Ɛ���a	�)�H9[��+�����i����&%��� �:'��b���Y��8φ��ڱ�g>�A�Bp?��~�q�`�!��iQ�V����s��r�X���V[���B�a�l�Ƣ0m{���q��zB�>A�GP-Q�Wi��5��A�'I��	cL�rƎ5�K ��,|ۼ@��J߸��'u��#�W@��%`�ڪ΂�Ϡ��Z`�Iݙ��L8C�r�Z�1m�k+��b/aEC�!��7VH�q�	j�\e� ��������*@"���>X O�)r��_N�q�楖�0�u�#a^6CGtO���#��cF�(3_�;lm����4��Y��;��ҫk��Gc�@�.�ʴ�)$&L��/�NB��Jh#�"��°��p���e6Lde���T$z�� �F����8!����Eu{Xr*1˿I2N�l����Faɰ�9Z�@���
���H�T������ԃ[#������a��ع�&���o��;HѲ�!B���4����O 3H�����"k��@�� *�),��8y���8x5U�-цLx�k0���m�Zfie�~��� �+f�ڻ���\��66���-��~B�i���H��o���M ���%)�N^F[,lX�;�3+�u��h�{�"uZ���_wf�5�ն��＼"=���P�E,f'a��MZW�6G���_��n9�'��$�f�iC���,%8��k�p/��&���	��aӡ~y�r�/�j�=���/ӄ>i~��4��{3~)#3:�E�C��#��˥d�Ѹ?
�'���&e��	O@mc|�"ej���#���4*�6�u���#���0�����˨��ȷ�N�S����͙ݴ#���m���<9�l-?j
U+S��+�~�J�؞ZK����=������(�*Ic~eg bO9r��t��I�5��4?�q���F*U����/.�3�Z@��;��ʛ?���ˬ�S�'
���Pw��u/�,���ۆ���5���1���X�E8�Zj�<M�}qB2��o�}_�� t�ܹA�� |�{Ew��s�43��I[���.2f�&�����L�����cGh������q�X��� �����ԟ����+��4Z�_���+m�.�FG�g9���oeN���36J��J��֥
�%�Y� ��Tv��]�g�*�?R{��th�rv�n~L���8D�S��Q��j�~R�
(�&L>���>��.w@.G��l��������ksr׭>�(T\�Z�ޥb�)A�Ɇ�B��4�6$E�f�-
d1z�L��:IΦo]�u��8]���`�����c�]��쥧򄓪E2��:����5K����z��ſ�PfM�j,E�;x�;":r�q���B|x��\sj���X M���n�+d�Hj	>8��*q�;b��P�ʋ2�Wz%�A!F�
�t+$��u�2�����7qf�qI�@]O�?A�\����`��Õ������3���b�x����\R���7h�3�'X�\�"3�/��Kb��@��Zb�<�u����PQ�M�����2(�^�Z����7o�7��̞}?��}�n�<����T��c��rjw���T2�o��:�4�T�Q�̐�=o��;�����^Y]�X�?3^�s���E,u虿?�����w�I*�՝
L27Vb��P£ ����V��r2i���ujLT�5������:]/���Pv�1Ԓ�$��?i�$>�H��2^*Y�v0]�R}`3_���(�B��a:��)a���6�U��e��;F���fnj�+(����Đa�����Y
��M��dA�"E� ��5Ӭ2�v.	�N��	W�P
FJ�4[1������Z""s!�����-A���0X�\�J	�����g�[%�K�4S^"�N���td`V�Q��sbHX@��&#���������ԜiP(�"�-"�����)�ԣ��5�:���é�9Ϋ�A���z;ofW�w�Ӡw9J��iQ�t�5e����L����ܨ�"���.!������EWr��K�ld����_b�%�,���K)'�+���[�uX:>y���q ��ȍ>iU�xR<�4�b�H��p�ˆ�e� ��&(�w^<�����R!P�P�M©~E�(��c�#�R��#"��˓�3=�j�@n�K��~�"sќ�v7,7����=�33�OpEH� ���6��GٛQ2O���)�tL�4k��z��Ӷ6~��H�YS��z�B����L��rf��̼QvM҇�� ����/�&9��!��y]�Sӝ�O�0)�t`��2��u�y`������Z/���m��ѻSc����@3�ʈ1{%�dy{ܓ��V��U�e
%T���w�a�U�gV[��K	�Q&���S��֡ ��J,���˺YN%ЦM�,Is&��6��Ѿ���r�[���G�v}[��h��n���	>>K��r ���n��4I�fdi���������FLZ�)Mo�.��[�#1���R��ug���zt<8i�j!�-�
�Iw's7��R���(wՋ�\�̾=�����[��L%f*	W��J��4��5�g.��)ZS�_ߙ�uoVX�O���rr^
a���PGqmLF��ww�5n���n��~�6�ݯ�Lq8x���V�Qjc���#�r0a����5U�    E8�\�7(~Y_3��=��ÉO���_��5,��Nts��!�Y!W��;:�\ΐ�k��I0�b~����%�֜���[���5!���`54I^�]Ak�����T���[�C��?Ƌ߾�����W��W<r)�*�y�������j�Ր߀�G��I��^+�vp%�����(�Q�����\�\�� +��P�=�}s����&�_��a���lj��>lm��U4��L���N�{�@F�:��S�O_C@<�]إ`��L�֒m-�õ-K�~��t.$#7^?m�0&��T�%կ�.��!˦yU%�Ȧ��)���i���8�ڗ��`��{(�uD���\P�7�oY�">]�J�dp���K$H ފw*>�-�&�9ӈCw����]}U���]N�cE"w@�֌����;�P0:�Z�5)&�}�ȓ�$1��dI�6a�����%谳�(��4�m����x�0�퐳+��R���NIao⼍UXJ�Hh3��ݍf!*Ls�:0�X~fNSŖ�FX%_�#x�x~+W�2�;����U� �x�������?l�m�^��A�Wa�[W��{?���~�%%���"x����N>C�C����ɐ"ļ���DȮ�uUH�>ۑ�*�e	M��M�F?��J��^3YaU,�?9�.� .x|�Kθ��[/]�[֍:��^��YI	�#��Q�l*/���m���Q�e��/��x��V@'f ���^������Up�W�z�kiӢ8L���"�f�����Kk��J��>!8D�'Ġ#��f�Lt�b�@Z`��%�3C��*����ƻ��,z��T��3�Q ��U�ձ�U�a��l�2���E�[E ��/E. �D��y�->��%?NL��x	��A2�w�� i?�mv��P�:m�6�t�����Rm�?����1��Sj�.������nK���p�oU�<����UL)��b���X#t9-�6'[�ԑȠ��Q_}��p�v�)W�X��q56�pqryur�A#+�ڤL���ԭ%�1[4�*������U��a�y�w7V���v�"WN�w�%�U �uP���T��z�
o�11�3��"pj����ȀQU�T�)��~A9�=P��j.�M�I�E�`vyi^�����' g�T� 2�[��]�D�V�`�H5G@�݊�L���
m:۵���Y��{]�V�b2�/6%Cu�Lj���qi��4������1�\~��[�<WZ��A�v'�1�R�5F��E�¢ӗ��ޜ����Hh̭5���t�u��ҴJ'Ʒ���߾������2\�.
�J&�ke�MZ�v�u����k`k�a��$`����Ð�<�Ƅ�����8�8�����'�}Z���*�j���9VaG��,�VkD�X�+�z.���R|jE <+�O�!,}�l�{X�<5��][��k�2P[	��Τ�Ul��$�6���������"��gٚ�	��#r�ǂ����-{��I{��۾s��t���+�D^�2o[u���$o1��I�4Vؙ�b����5��}>�Ӻ6��za���w�=�\쐨ݘNk� ���gV_	��/^���S���HT�݂.��6ՠ�!����-�ٛ�Nbk�ŭYQ$U�c�e�f	��[Zw ��;��%
�����aS5�u0U�>�����P����n�%�6�?ˋk�����<~����H� Z��D���݁"Bd�k�c��d����ݎ�ݮɠ�Y$�y^������|����1�f�sL��f�^�<���I#�G)�!� ���7OA@x���Y���Z��/$�R�t�R����%o~Uξ��S���"���N��.f�mT�F1��� Q�4K	�,(��i�.Ϧ���>0�a�5�d������w������'���wl� /��p`�� �11~p�io��c�P�J3�[�
�B�A܉RͶp$�~�;�./�1z���Ӡ_@�SM�<�P
��-�pB僽�����5����%t�%�O��ђ :F�������� �@���1���mÎ�%��}�c�������4�ꑑ
;q	�����\�O�fo�;<D 2.O)JH��IU�����/Y5m
�k��_�ѫ���p�i$Bw���/��`��9ɶ,��-����h�;�|��G)<Ey���#l�"0����"��;U~xe|���p�5�����X���4xʙ���i�q�z��: Dn��Z�$�=i�b�;����%}h�Ql��
᷊p�i��j�)��uvH�K�,5�o����*P���EV�sH�|�6Y^Y�3eti��u��5�V���*�S�����+}P�tK$�a��Y��S	�-W.I'�@�9��,�a�]+���N8H����Ax�����
 }��C�#�� m��O���Ԝ�ߜ�_͸ )~6���P��u��f(�����N��b+~&�ԕ�����iV_@T='�Yp���gj��54w��ǿ�N;W,��J�@�c�rzEHӛ�V׉�/�X���Ԙ�U��UUt.�%V%� �����Oޮ��/4ɜ=�K$=|�|D��U�m�8�r�TE1<�tk��,��̀�1�3v�P�����t��0� �i<��P�^�_3b(��*&�%��k-�����
O�$�5��B��,�Zg�(�uׯ����=KG	1��k������n���3=ZԾ�_J��'���T����C9RBA�ڴnӢX2�瀷�
�P��.�9)ꀵ��/�\8̯)�Ɨ�E\ܶ��-)����m�9z��z�h�z�9̅y���<֭>QT^�~�EV8��\��GF��'@��G �@n�p��}�V�1BԞ��
%�Z�~���C|,�r��M��2խ�o��_{(�#��r�]�'�O�(��.���������³	�Y��5�{[皓>S�BS���El,Z��G��D%�i�P�}�$C�r�>/w{v��_�v���u��j�>�jQ��PI�M/��ԭ9;X���l����N�6���1�p=H�qlp&^�C��ುy������Mr��g	vY�Vu��r�"�\�6m�s'dR�Q�8x���d�]�1�U���0��~Y����`�$U�u���
0���+�h.�B��u'�5og�_��\I_*6y!�!����>{y~�����A���ÿʞ�=�u��_Ƴ�MR6Y��q�����\�@��y7�W6���3pO@����
>041T� �o�D٨��$�@IP�'��O����|R�i�a
�":��>���<;�H9�!����R�$+��,�v�?� �d���u����o��������-�j���P� 2��\�&F̤�^�����K�P��i��]<?z��;k�C���+��.��h)-��#~��*t�O��>��%q�=r'�-�g_�j���}�|��>��8ch>��OWZT gC�Pm �����˯��,��8j!��Bm31Ѭ�k���P�`H��R�x�#���B�˴�5jT��Q�M[y���2��:��B<y�H�i��.ķ�,�%za�^O����}X�dKS��f�O�
d��c�;��m[�\y�u�1G���� >@���n���4�H���'r��������CM���H�mc�x����k�9Ӈ���A��#E��}���(�)�o^u?���.J��l
��u5��lk�ޟt�p���`�C�߽�ߦeR��<�|��xu��ߞN���e�&e]����9��+�y4-*6)�u��	Gz����`n_��,k��"k�$5�4��z��:���3����4Uw��WN���?c��x�ϝ��J���$�vW��V��[L�E��@��D]&*1N��c/ ��W�Ty.9�c���JR&��/� ���$�Sj>��'PS�K����Q`��O6�����XTo��Y�y�c�B�Ms�	�M�)�P���{���ϩ7-)X^�z8g������&zeY�(�̵u丘[�7o$��I�w,��Sө�:�4[�U��ÿ:��z��e�M��8&���Z}�4YP���~��C��X�̹�a����3�^��xFڈ�"0g    ���ޓ�9���3�;!�zW��%)۲.ۑQ����r"�M#��VG��Ң��j3l\O̖�A.�����<�%�	���րH�>J}�A�ơ�������j��Ys4�>��Z�>�8�M�9 �s4���t�#�5�kl���0葹Z�PNK23�vK�O<`��]��pq`���23n�7�s���Y�Q5Xպ��߭\�-\�ԺU\�Th�*�\��#l?����{�S�2%f�prH��߱�9ηGG�&T�C�%�f�Y�ZcO��A���$~~"M^m��RͿ�W*'w���YZlA�T�HѴȪڷ�ZU؛5ǫ��X�j��)�s0���1Y�K �����;:b,�4���Nǁn�Ѧ��~d��c(GW��&��O�g>(2��RhF*1�3��>�Lu�xtYQ��.֭Et��d �9�#/�T������h���.��]�\#d��CY��17�2���*i�N&�Z �6�,0y�p.����fMF ��^�������!'���k��0��]���k��f��wm*��E\E�~��=�kG�U�C�b0c�[�����j�wO1Y{���g(]�$�9񪁇�[�4�F�򺻗�3�G����#|н�?�7�X��=�w� �0�{�ڪ�e�աU=:j��`Ǵ�ǘG=���p�N�*5�w�c��k��>�0g���x5��c��Ȋd�Ƕ��h\��(H>b�#�ڙK���������z�R62�����O^�ZX���,��qZ��߽E���m��{U�Mi5��e��t�`��vÀv��$�9C���5E��J$�B�Ԭ}IQĥ-�B�����?DN��X�Ň��12B��P��Ԏ.�T*hイ�G���A����ex�V�0j
���$6�a9��|��t�\3"�Y�ۍ%l�$�~��c�/J^���;�{meA�ZG���̪.*0"G�b$����� "%����+�О�<|��\w����\�k��	�K��1b�6��?�}ov�OD���∦ڨ�jM��[�y�H��n���[��5k&�E�vy�u�v�tzZ&�vFh�7��Gg��y"��P+o�L��Hj�()��e���� &���[�V^z����9��d�/�rtrfl����A��v�^;��z�<���1 ���f����[3��K�z-�ĥ��%	��C�[>�|*�Kg�2�+��fAg�=��9m�p(�4C����{��1�7iVӴ��.~�bhϿ*�5��).�d���^�߽����}�I�&6��G��@��Xk\T���V�[ď��/K��F�����m����mu$������T��� @�C("R���&t͎����&�c�r�M0�`�݅��G�~	���Ӈ��|��@ ?����r�OiR+�I`�&kKɻӜ4��rH,�ޚq��]����~����aY%3��_w{�C8��a�;���X)�6%³Q�_30���G(�,1?U\��NgWR5M�#��c1����8E�k݌�pV��w�1�E�WH�(�5���.B�*	@����T���[���gepP���6��go��ـA�Y�e�B��s��X��[�˶8 �C�n�hY@F-i�t8,�I�0ʬi,"���čc��Kw�{[$�F4��o�]w6(�m�=�[X���/��@TA,K�jb�Y\:
g��{�|��ʥx3����n����"d4��4�^�$l7��LXjA�����6V�1堓���f�qo�+=�;L�n� (V�K�z<y�x�ŝ3�ti�,����ЊS���\{}E0���̅5���Cp�&� Z!`�(���j;El���i��yq,������s S�Zt����5^���Eo�fX=D:�,A!���b�=椬1h��������K���4��4�l��I���GT�Ҫ�<��<� 掌�T����ʄ�_��9g��񜇴�a]�G[�O�zg��4V�T�O�*-���Z��T��<��p�0j���+�~��ی~����B�ǰZ9�C�zVW�a�VOAܬ��*���`"%�I��7c|X����e�'���Y�Ь�����AA[�>G(
�FQ`�;�(IQ76:�n�h,x�[t��%���"�Ss�\�˶g�z������̖��1�va�0�i\�2�Z��Kkr�o�0�NoBb/���{��'����Yi�&�н8��:����j��;��4��%z����A�n����R<%���� ��I�kg,r����2~����w����� ��d`v	��YQ�A2/heP`�}N��9���*R�v�MBv�uv�w��fͯ�bc���n�uwf+1U�9RR0��$���fխl����h4�Rb�z��?N�i�#GV,i�2�XBMߧB��mVN��`�x�T ��RF���]��/��jM�A$��x~�Z�wR��m��aX@���p���U4�[��G��� �ϻ����
�D�}�B�.y㼱J�6�b�3؅P�?���/�0�.����
��N �Ȥ��T�٤L�Bn�����Ӥ� ����뵄��I���a'YDI�ZiQF��d��gFͩ"�������*�­��ǵ��a-��-�J���F\����͓���b�"՛�PO:��G�FT^�fW'G�r��:z�*-4�U�qn�Ց��_,?wA_�ȺnO�d�#ei~�h�p5y�Et���$�c܅�I�|� ��1�i�8�wG�����
b�M��y��Z�*�VK��KȁU��6y ܹSk��{�
z�z5��n��c��e@~\�� Mn�c e��d��t*���]AZ��"u+�{�
K�|�v�kd���'XP]'y5�M�.�,�
�L�h�J{sӭ�$]�c��}zX������8P?��ڲx۪���f��@����!M��R�EJê����˪-F;F�u�,�����܅#��(�zꭏX�S�ŗ�mPS�6MБWA��A%ʋ�q���1���kď��nv�U�D��g.!�>�|��;%0ƭʍ�_��Z�����@uȖ~⸱1;)�%��9�_�m l]xCvA��������)�\�iY��>l1d̐��]�9���Ȑ��$0�g}X��ɯѡ_����sM>�7ie�v!}sT��C�O��S`Y#So�r��c�%y.����y���r���K��5��c�b}
K��1\�s��ϛ��Yn8)�1�����s�p����ԧe^��z�U���n(��V�j[\��S_;���n��`3���mi��� %7ͥ�J3��� ����g%T�$%HB�bQ.��dm�F�6���@�b+�g;4������؂�q�!Vjt���韡a+��A_Ԗlm��C
��L>��q�z�C�J�P���\�f�T�w�>MY�.�g�Vx!��I�nP�dBc�C�����ezp8���֔�L�`�L��YP�M"×�%�H�&�A�<QL�6��Y�.z��'��PB�t�Ñ�H�~$�	,PZ�Xn3m�,�;�R�*/�"��ʉ�Q�v��[#��'���	?��6Q��f� @)~m��-\iڭ%4^=�&S�ea����ۯ��*~��&"i��(b&��dZ�z�g�T*GΎZv��R��$�0��]�܏�����;MJLB�n�@QHo��ğT��Ǌl�ѿ���}V	���[�w#ј ��펢j�qiQmuUN�ѕi�L��l#�e�\T�0���	<�@��F�gR	k��>�fe�9 �4�&��7�s�o�%�@��� c���/N�|��K$�&�ū��)��bdJ2��Z�-�_Ԟ�r5�:�9�(J�%@��u�փĠj�/��7�~|p�_K���\"�2d�����jh�J�Ug�߶��G�c��7d/�ۖUG�Vf�|E^?vF����A_u6<}0������98u����+���a��a�'Rh�d�PQ$эE^��CgN:���CK!u��,=�!��%�k����
Hb*8��J�Ҷ��<x�Ez\a� ;+�q��    U��5Q*v"Y��4"P�_�ydY���2g��AbjgN�����`��S��ʠ=A��#а{�4���A���unֶo^�v=$�i��-3n�x����'�t�6⤂��~�ғ>�8f�
���<WhB���n��3���G\��� e�*H��\(�3,b�1yk�q���(T���F�~�(J��k�A/u+3k�%c����L��-N�/�љ����ǂ��IA�,�<vƵUZ۔]Q؀��9��@����m*AH ά���3��D��O$5�R��U���%�Zzᠢ��/��l'_�,myg���e!�Q���3O�Ə��!���s!<[�Ć�2*���`�i�	^&�צ[�u^F\EG_@�B��\['�ԀNx�B�_���:��wic�����R(�6"����-�l�]o�߁�p�{p��$¸�L]������
���/�7ˏR�� 0Y�Ɓ���y-ɰzK{k����*xoE�~����L�x��:7�t��u0�TA�`�T�>�Y�+�vEt������/4&�k�	%sN�S�.��+��肏Ѓ���e�=؁^7s�&HH�`�z�I�e7�)�j�Ei��F��q6����n{n$�c9R��k��tNllq[��5�����_WW��j����,���,8a�
��iQ�Z�(��禖(�HV�&�&d�0����Cw@|d���*�	�*�������JF���?��P���#���d�Ú3cY�3GɊ�����RT��H�gvR����6z�E�EDX�\�7�Rv�(�Uݯ��~�ߺIi���3<�����5'[�L���B�fA�gQ�\T��/�����T����`�1�6�����}q}sMZ %Rh�S=�an`GV�����,+ڤε���K�˕&�ƿ�4jR��HY��	򦔙��T�l6A ����#/um�֋��S���m3�ԳѲ򏍟���dR*����T�J$�{��<��}Z���0y6`�u�5�mW�G#w��� �b���#(!
�u��Y�ʕX����[����a�����k�ɳ��R%^k��\��H�
h������������b
�_����Q0&��xv9	�P�>
f���!|���=�c�3��}0
޾�C~4�&����%*q<��-�N3ԇ�J�^^:/|0� ސ���v���-���M(��s���5�����mͼtq^l���@�ЋBR�ER	?�2�J0%r�F�@���e+���z���k��1�m�]��0�J�1���E-R����g���nE�T�� |�o^M^��+s��`��W/9
��y�L��-ye(w�,E���ϐ^bL�3���)#"Q��+xr[�D�e_�� "��`�C4�t�� �|�"H�A����C����Ǧ!����ku����#g�$�yb ���q\�\j��l�W����"6=�
oL>M�s&Rgx	��j�%y�<���Q�Tq�H"�R�������x��*3t�1��'q��;��>�'c�Y�`2�U�n�vJp�n� ��^������<�R���6l{)��V��� �ȆD��`|�&8�=��Duۣ�?�nۨ&-�u���:k�X�/�C���:�(��Tn�䤳�e+GW�EV�x�������W� �#K��{��:|�05�*���j�{�D��nH��7��$x3:�����l<�����?�?�W�I w���&W7Sum]Ahkn8*mF�ug���}9�t�מYϗ�����l�E�]`8�i��R�+���;'��6"+l'�#_�W6�5�	Y�"龒�]�ʵ���6#M�%�?;����c��������\�p1��ӧ�6>ԽbA�(���{&.O(�N5���2��O�#��f�BY+���-����W��"�qr��9��5�Y�x��!O���ˣ�HΏX�:-|��J�s�)��53�-?�oF�P:#(R�2����>�L�ݵ_�Mi�6֢qʏ|�
�9^vE��e/[��(=�yֲ�#a?�9��BՀ���h�a���|T�}��J&Q�����h�����̡��� �b�u�0Mc�
�e�Cш��@�x�4p�R� ��~�Y9|�;��Xs��7����C��Փ�a�%I�u�֔���Χ`��=�@�,K<��!�����I���X���O9?^�)���ܿ�Q�}�V�?6Ѫ��;�0��
zt<@�_H&�:�2JŎ,���W�����([�++���ze�<(�I�"���1Y�$�Y�c�I��ө��^�DWWW�wY��
tӨ�j��94!��ֶ.��V�-h����ӳ�QG�ߕ�v���#��Խ�ʄ�յ�/k]�+�|o�����7�O�}�L};�>�u�t����roȊm�s���l�eg��S'e�o\��b���Z/��C���5bq!�}�(Bc޵C�a�X���T�����nt[s��f�w�����<@�&��h����>rյ{�#kV�A�V�L��G���#���5lZ�؁+����%s��z6D�#�Re�HA��d6��f��(�;Ro�M��Z��C��$�7�P���4],%r=z1�͐�e�&�qZs~!�C��T �,���*֭�[�?#�`
A����t��2AN�}#��4V��J�cH���1��ڳ6uώ��gzڭ>@��əXt�I� -�9�@N�?9���Lq�D��QVw�&����
���ƨL)�g���O�e��� �P�4K#��V�\�U<8[B2�R�s �7S��K�4��ݦC;7b�����pB��f=��l�~����s��Wt�r�	����s��֊Bxe�=�����` �N횻���Nx�x	�ڨ��_ؓ4C9@u3$e���5w{�:@�=��"�<h�[�3�^89�F��0�:j�=ki6.�]=`�����x��u*g�.
85�2�γ�a�r�r�V���Մ˶q�$T �c��
8������"u �b�z��7���a��\�۞�5s�j�e��:��IJ����֜E|�o%M������v1z�X��X��9%Ec��N�2�56k�$x��J�0��Bp�?�M!Q���Y!ư݁����;e�C0CVpkQX���[�,�P� ����
.�퓬�L��F+�b̓�� �k����#|�4(���\Xn{�l�	б�*M�� ��Л���()=Җ�LP��A�~�Pϔ��2��I�@�t�dIAI��y��>
޺ގUײk�?!\Y�N�W`RY.��>c��1"�`�!�
A5;�-�c��"���7��+���*�H$d��~��D�,�I���?9�������ЗP�4y�[�� �0�����g�q���lL�%�����L3��f^$�k�l�����g�vI^'G�I��v!�����X�rR}_�i��+�Y���̓��˲�Nj����?r?K�;J�vo�J�ߢ�?^@W�$SWR�Q爗���ݫz��qb(87����}�s�?@{z~u�@j(�Hb$3J󬳙������,d �U�	�w�-�`�cu�h
v�$i���k����,u߳+@�4�
O=7Ʋ�1��ZJ4��6�{���$w��b�4�7w���F�ί#_sY�ڵ,oL f3�T���a�t��a^��Xj��>��W����Q6����[KT�G�@-�E`�V\i���h,�#��T8�qb�):D%3�g���9��Y�,+�a�U���~�ˣ���{��z�.劦��;�[n*�I�c���|�d"�Q��P�5�CeT���ֺ�Ҍ/l�A�6xZ`��,��9㧑`O�������"���wZ3�����Al4�z:���/{���{��8�C�f���ù�;�����ki���YњD���l@*-���"qѷ9�!�n�j�gW�f�@]�i������E��/��x?�:�,�Hmҡ*Xǌ����V����=���2��&
�[��K~�_��Q0�&of����??��IϢz�/Ϊ�1�T�^��Z5^���<*�Qw�7�ip�~+    ���>L�G�ڝ��l<k~/K��3��˒,O�n�l�� �nU�S��l8H[�-r��"�iV�f�t�3��Tr�o�d�#����~�����8�k�_�mM��5���G�l�'��
�$Or�~�k-<�A-�������#�o>MkYx���|1�	�-\$-�|vV�l������b�'�{Y��~c{�L�����z�+�Q��J�[%�} �Xb���C���~��)&x�H��ւ2u����p�<�SfO� 9�dq�8�E:6ǃs�Y�L� 0�D���ZS����Jp��d
��(�����5ܐ	�>��������b�b � �˸�I�I��i� ��=�3�P���v��p8}1!(뫲���J��ߙ��"�N�՟ B��Ҳ���B��DA�.�F���FYH�w�
@�z.(��]�8k�U�Q�̫��#�3��.#A�Z� X��IT�Y�8aXQ��,�~Mn1]gG��z�MQ��vh����Z�F�y���8�S��-�l��W��B<�|��LA2�y�Z9*�k5.���E�l��1�`�O�̮�3pR��X`�a�����[�~�(������8�Q.`2�H���b[:a�j�W�qѮrk0�<�(��*�u�̜��"�B�̹y̲\� JAϹ����Mg4�CJS"I��:��G��f�՚!W��i�A͆�W����X{��d_�W�NB��@�[�.�0�n��<��<�5�Wqb����[빤�P��K����mW~fmͰ��'�p�)e�HJ;ρ%�!�;�ҼW3 ��ؓ�k�0�5�õ�2���u��붆�p������WxB�/F�k��êT�F�͹�Z��ё(��<��Ƅ�:������,	�	u~3��C�κ�oGN�P ��!\y�I��L=�ּ���B����o��i�M�Â��XU��v??7J4�	U��8x����ު�Q-�.��G�QeD�j�e��w���*���|II~�X[�8}�s��8eA�Ty�e���r��c�Vn�)#�^P�m�&ԡ0e�����}����#�kO��o�j���`!���m%������g8$���C�&+:/[�1Y��Xe h%��Mq����8
�,kCN�_`ƫ�(|�D�J�^�.�P�d�p�s��0l��S��t�O@��**����ek憲�z��L�o��$���@+�P��Ű�;�Yz���5
)�7����	v�*Y��9��/�ꄻr�hĬ�K��<�:kT��<Dj�F� 6��{��¿�L4H��k>.W��{�� XYn<��K?�B�6:׻��$�9F=�8�F�2�Z9���<M&itЙ5�^��g�d�O%_QVqTT�Q)[�X2��iʽ�Q&�P��'��;bR������n��5�xk�R���T���68�~�"���^��*��c�[k����Ls�DM�R���-� ���Fl���L��+��Cgb��S����e�a��j��8�X�s�qr�7@�����!�����J��"��b��[�z�,H���%sjb�.<��f����P��wI���r�ڗx��h�k��w��٠��T~~ �0�g$�v���*r� a>�"L�Ol��w.��a�U��k�\�_�W߇L����(���ҭ��%y����okk������)����~�"r/��}�5p�$T�����F9B��lF��p�N	����3�,W�yk�
��~yO��u����a2���߭W�fAʡT����	3<c�Y�C�v���2J%�P���ٓV��H�MS����+�d8���#�zH�F�&.u�x5$�����.�K�iv�ki5�����t�^uxH8$�fuR����Q���m^����fa���*��Β"��iu^����c�_���hT����6�=k���1aTl��v��UM�-u���{�X�S�ȸez�'Jy�G��-��.4��Az�{�H~��ё4���7�\����T7r3:?���F`p�U���Z�k�KY�,�l-���Υ����c�5�ҍY�W2p!�_<+���U�ӂ�Ep���R���Q�d���FA�DN8?���Yس�	�T�<Q���޽bĲ���.�?���Q8,��:�_�Ӛ2��t���2���U����=6/����t�C%�:�$霂���3g��.H<a�h2(�Ê�n�g��A�ЛU���!y�on�^���4`�	�����
�\�J�φ�5X�;����1\ڮա�4b��A�4�I��N�y��z� ���4.��nwb���>aq&��{��*�w�P��A�Tc�zB�;�834��R���2P���K��2���	d���B���"u�g��p�p�n�[O�ԡ��t���<�$��`.~�V1=M���,���J
�h�o�&!'.+�썽D�
DBX`�?~`y����Hs��-�n�����19ʽ�h�2�,��@�m(��GO��l �@��U�ۄNkZ;�Q��n���_��ِ���I^��\M�N�d��f�%�nZ���%\"�v�!�t�O��eT�"I��%�+��=� r\(�c�9����d�fՆ���2����C��I����Hp�:����rk����o��ۭ�GK�/V��0�8;���ØA�AV�y�y�sZ�ȯ�gNDy���zs�l���an��"����?�?���"Ph=�3����cg����,޾s֋�Y*WO�|��B�(ed&Y�tw���g,��F���	(�aN>d/&�0Xk�����5�g�a]̗��N��]�TGz5�������8�L�l�$׵Z���re���1�;_/�iC�f��OT���T�Q�Nu<�	*�	� 	�J�|r�S��1!�t^�l�XP�����y_�� Cb���zg|�A��p#m7q}��v:�^^EI��i�Z��I:��|��>�"X�ߣ"g�����^���T5��6��Z�I����	�M,�����[Ҽ2Q�*u��bh�j�F%i��jvAJ�FOsN6/����L���Y����ԛ�2�f����@�t��"3�'�&K���TaLL��
��v&�f���3�9��l�3���NrU*ݲ�/�~��k���"�H�ʛa ��47𑗃7�;2�������2�n���c#�%�Ke�YJ�@7Y9���`�a�Rs.��S�UP*�*-ic0m>5�*�Ю6��%U<	�Z�e�I:����fK=g�E5sO�G� td����|�}�@�(�����Vj�-(�=��$�A���״8�a|���0%��֝�~�1�?	�kR�J�]���lk�H�X:r�Q�_ͤ�/���6&b)���+o�ۺ�h'\�{̥������#��Ber�Q���Y�6~U����I8��<ݙ��Ecy�E�mN�̎,����+e���A�K;1����X��e�Ũ~k�l�pRK�s�Vsd��i.\dG2�O1k6��d7���3��r	�C�9/�4�(['2\���f��9�<Յ��M���׉�l�}�N��PD�9�V��%'�#Tܑ�a#�ʱ�'c+�2JҲs��֬�.����%q��^Ɉ���Lrt�����H��?S����]��1:�����.0��uY��������?R���9���dt`�eeڿ.��������,�A���L�V�͕'VJ��Y�U�ب���ce<��-����v������ή���Z:��;@��n�E�ϭə� 0���~;v�h��$��˓�
�U�n�fw����
��w��v�	ʸ>���6K��}B �<O�DPZ�խ��x>�_�|~=���LY�������f2����LGv����{�f(Zh�0��?v�L�ь:̓8��~iY�v���}k������!�e=�$����+˟ħ�=C�:x��<��;@qo�"��:��[��ےg��S��t|~ES6`)Ng�Ti��kYuw�h��%
ߔ\)̀|ѱ{    Ye��tH��E��og��q;Nk���28Yt���b�ӂ�j�$e�
1���·�;z.�
��9Bd���U�?�/��������m�z�r��ʔ�:��lu��2�R�>���qd&5����������Y��ĳ�#Xg%�U#��ˑS�,�'K�Q�k��v�Ynֲ���#�t��*������,�8��2�{�C٪��<N$��u��u$$W
	砮�6(�ʄ��I�E)�'�(K��0��7��sӭ7��v�~-.�A�.�� +� �"��Ś�`)]����� ��԰s��j0#�;u2m�-iuv-��0��M�6���RZz!��C��~ձH�Z��^��X�\@0�"�I�6��ߩe+A�^éڒ��+ذ��˳�V������@
ŵu�����4�
9����u_�ː�����:�!�Ս��5����mɮ�*��S�=J)`��L%UK�a�mx~�0��q�Ţ��j�G�����*Y<��`�|�������%zy�ە�f	�qϜ
j#�0�,��W��ܫ��&��V)�CK}(��$���B�N�K�����<,��ۚĜ��"9��>G���zi�)��g�o�6̄��lkla�\�/�8e�1��,��y&ɗ�W� pc����e��~���m8�?�u%>���_�{:�tr3��T�`����mf�f���r=_!;)v��O�ﰒt��vM�*B����ſ`1;���R���mzM>&d-��ؘ�P;J�2�,�Z�ޠR��GiO�p�_5� �q�vU~����u�r���\�a��=���dKn�o�q�D\N���<�"NꁤI���{���ه�%{#�lnY��������ݮ�~�Nt�/~
�Btow�r:k��"{Ip�j����$�.] l�l� R��w}��Hݍ��L.����ߎ>(�ttu:���7�Ip=�:��7���1�)��$8��?�O��3a�rt1��u6�0s��H���~ �qS5F��#��~�������W��⮷���[+ ɤL�$��L<,��Z8E	U![�y�e���/F�_k|����P�A�7�=T��>#��dQv�F�V��{�>�Ń״j3�\�c7`e�&�"ΧQ� ?O�`� #찚���@v��X��N�j�|U|��F�^�������&�晞M:o��`d\ʞ7�[s��4~����͕m/Гxi����x�B;=x�S-·��Ĝ�wL�ǝ����BySI���z�������P�-��q��~�7X2 �#��zXܘ������`1*�D͠��6�����͛'U�}{�Z����:���(ג��6�]��&
qF#�AJ���v�q+��	��Ն=ː�(��,�Bٚ��j��R�R���v ��h#��M��-yC^�)Q��� ���S�#��~I�q�<
S��;��l-J�k��f����f�*A�Ͼ4���i��l-�Z�1F�U�yÒզ���h�����:'.3n�#w����w<6g��������@
u���i�3$�Z�n)g^��Hݭ�H��ti����|�!���M�;�����sWy�%��֬p���4jkI8!�-��!�nW�Cwےh��b��z&��h���ECQ}�h�'#N�貙�����^�=%aS��?�_��'?���J��C�o�9��3S��֡8.�j0��fM��+m)d��^m��eUD^R��V(�P=4m��.���u�����v�c���J�����y�wQ�\����V58H.�	C�-)��1B0Zz�տ��C�����:���`�v0�+�-f����-V@�73�b���zY�y���5h�yW�Ga��*jq��VP#��9-�Ƌ��������8�֑�����j27��%C���i}Ke�T��wI\��U3=��Ttu��\й3�$���A>ZtN�,� <-;[�ս<�v��E|\���l<�͊��	�&�X�U{�U��W,��y������DY��<R�uY9j`E\

��hl�F,ni.�����7K��`}��<j@KD �%�DmJ�2���8a�/��s��#�ͺ�k��YE�,q�eM�9�^�I]33C�5�(���D�e&�����_�(Y��}�_n7&(���{�I��R���*����O ��	�Ǡ�	��?�e�f<������v�ޯ�}�B�|O��1�C�x�_�ש7�����Q��S�x��<�%��C-CX�q�Ag�Vǽ/���7���>�?� M؀��$�wBB��)m�Z�Lb{3��\��\���5��m�`�P ߾A	ep=ƘJ0����b4����2/�r8�J�o/�d��W���.yaa���}2~���7�����C�!����Ь0A���7;�G1���g�f��rF{�7Z�_�"�o��h߰=�A���npd���}�V/�Q_���,~��_�f]��β���4k$�l�X$ �îݞ���[;��w'D�6���]xPb�Sd���|-��G���OC4�m�-�E��սZ@�
����?ͥ�n��6<s��ڴ2ڊ�o���5�4��������Ʉ������ ��"�k �4w�ާe�dJį��$� s���7���"J�Hm�(�.�5M�G[D+�t�x4ƙ���p0�eИ~Š�hL\��@A��.c �p��ÅG�����_x2���j���)$[	,R�Qi/R�/4��[L��4բ��gd�-7/!慡��+�z�R4�x@�ɷ��V���~z�)�-ѷ:u]�	���W`�M��`M<��:H� >C�3n��3o��dV���~.0��@��۽$�. b�u{~6�`=����̐���ҿ�d+s��w\���}�^����]��O��k$ ?p�a$���i�ٶ�ˉSiE��1�؂�g즕|�B���+�M�	�mSfo��`�ӟ�i5��O���JՖ@2�F���b�`M�aҾ�4����}^��v�����2�l7�k/k�
���x�&�C���_A�F�U�3��Uw�wٚI�����N+��4�Q����I ޜl5{�9���3���z�����0��$�qumk�:ˡ��,B����7�+��eLJ����^l J�fL�dT�98�>5{�âQ(}������*Ï�ߚF�p_���/��(���.��Z���>E���
�t�ԯ�8�|(	K�T�a�VIgT(����=��k��M6�.qD�W�
3��0S�Ef\���R��^E^�m^��YY����]��-X�����2�3�ﱷ���S5Y�9拂�O�FmF��6񖯺b�_����'��cR��Ӻ��g�1��>J�bU��q�
�̇��u/��:<c�8���*y���{��g�	k\0zi��L��Q�nܩ�LL��5�\uD�Jhm����'��$��(Κ[��&�ڞy�:�B�k?,��Ac��l3_���|�`�pǈK��IQ�H)�5��b�F�~t�H[?,!�t�*�{np�^2��hH��@;O��Q%���\tlK.�)r��R1�f�ENOOd�Bzfm�h�H�g��4�Rj4C^��޹�x�`H<��a��̉
����|D8<��p����ٻ� ��)ҚL���_�=�TT���Ư���Ruy��w
K��I}�"��%��Z�U��8Nk)�fՒ4O`=,ߩ�gF�?�Oӊ/ C�V��N޿{?�?0c��jQ�g��sZKN��8t�hТ�aJ��Z�'S#�f����jr3�0���CF�<��9�6Y|�\�-��@��D'�)�k���ρf<P���'�ꢺ�"���.n�:+�)~��Ac�|eH��GF�%LR&�L����[��y�ɀ�bf05�ރ�[�n�|�`��\�Ն�u�����p��A}�b?8թN�!��7 C]7�N�����N��yK�����\�%���ݙ���0���Xx�C��gMk��`:�=����J�g5jh~w��Q�z���Ӌs�IYq�F��t����?�&'���(O
��@m3�����w�Ջ�0    ���a\Ee�[�Nk^:#ϸpﮝ�vGR�d.l��E˨�z �T���u7�:=ǜ��mW*v%'Y*�9����֪v9�U�;�əp ���C�WM�����ch�`s�����5�ZL�G��bK���ܿ���>��O�!M��?;�>+��T����S��(M��%�y�?����Ֆ͒�?}�l�O+��D�☘��KqwP-D��w���,���'D��'�֙��tR�����5f{H����K1�%�w�%��|e����5�2-{�U�����5�F�G��*��l	��ݤ�1�u���jy��%[����lt�n,A������y�5N
o$����(�ǀ�8!sjs���'V���/Xd���~V�Fw��H�ԍ�2��$J��hEk��<�E����^l[H�`��䟙t�	F ��b6���Ϧ��Q��=�$����-�v�D�Z`Oyٔ����d�%�=��V��������ҟ�Z�r�"M�@+��W� �e��@���+[��B�O`�p�{#`�	�w��<Vz��6���H�(=f}�rD�+XL���6���=^�]�PQ�_8�V�3��iI���k��K���s�}j�0]��[F��S��	b����p�[/G_�jK��*�R�&�k�5YdS�����KY���	�_� "��-�>}D����%z���3~�w�x�f�_	{Q�$bO�uk�N��{�G�#-��?S~�@��sf��N�=ٰ�����*��ě�� �|��z����0����Y|Λ:2��-�*�=T�ך����`�#J*Z(岁�;ـ�S���)�/A��׽���_R�L�	�deO?Mk���	˱���hez�k���[#y�I�+h!.�gȂE>ET�ǬzK�~�# ;���jԋP�١��ኊ�0�zcg������.�Hy�	��6/v�U� �o8�?��eW���)dc��*�G�;q��Anͥ�f�VF�q� Apϰ��%��=v��bwL&B|\�{y�B��/Q�Q�x��0�f����כS����`k�~RS��~~n��+�pY$+$>n��^(�0k��B�[u§�J�2*\&+��,�Bl�v2
4#�"K��p��!Z*��,K��X���-�AS�
�ĠN�Q���aP�#|D�X��K��>@�/>��z�X� ��8i�hP�
+`ʪv���V����C`���1Rin�Y�0��a�� �ģ�*'�!5�qZx������G�ѣ�J��*e*�7XDn���'�L]f���!x��A�&	k��Rd�f�P�����}$+ȥ�/���LO4��:�V�]��8@3r����a)[�?����B�Vu�>�B�UKqSx����ͧO�� (��Kq��ĺ��)'ZⓜP/�a�u�R�^�6�}R�]�>Q�<��:��i�g�4>���m�8���)�����(4zbeOJ�dfTMkA�s�Q��^�q���U�F����+{5���c��X��k�H#�O�J#UD�G�9h'�?�%Ў�Ëk�`��������y�~�_��@��?��z�A�ݢR~���V(<��dh��y^>��� / L��Eݹ��̀�L]�*+	�`j_� E�	̗�AɭQ�k�V�A6hTL�����<�ajtN������-��W��d
��������$��go%h�n��'����E@��ʻ��o�z�#E��3���(]+�O%>m�,�hR��{j�+8��<�J�Ɩ`�D/��l��F]�T�
��'a�S�".c�nI���Nu��X�.ۻ�?A�\y����ְ~I�ߜqL"r�^ �����5�Z�v�i~�߀�^�Y�j��yV��i��q�zr˴���YPa^�uI1��OC�X�)EkiUo��x?_�H���O��:Vr�fʣ�Ŵ�x�+ہ/Oå������ԳE�x�>���d��ѝ���6�3-`۝��ƫ+O�,I��<E���V+f��+{��'������7���+K�:�.�'������3F`��p:ݮ̗2�M�
�Ŵ.�5f���>��¢z&�h��UsX�kg�(%����I024 �ћ��YK���p����0##��ٱ%��+�Q�$��H�G���:�vtv�:u%� T�,tmq�>�:L���_�(u�����W�>�c�e���J��i&+���(�\{�F7���n1��� ��swς�
 ��EgG% p�1�% G��fV�vP'��B+Q�ؑ6
+����ABdBƠ�a|>S>��b2s������S�H�N'e��V�%���jy��p�~~�jVg'z���z�o�cFq�}��N���X���k�Rw�hu�qV�����mɅ�Z:�芰��De��a�<!Ը�c�.���(P�,C�ۼ.�(MSiC!�g��x���c�=��Tв��#�������4?~G)��m�n���yCG+�A�|O��N�vI�V�)P��C߬�`Qf��w0^Bv݅>��%H�c֡ҁF��]+e:QsPX)�����S�eW`�ԉ�^���G��K���=;
�wt����P**3�p��zMW�����8�O��k��;#X^��`r��a!'㈗pI��oY�4>6#	'$�p���O��"(�w��F n�,��\[r�v�UU���h��J��%�,^�^�r�r�[�����I�8g����!2 �*����aX��x�7��<�/�w[!Y������+Y����Oh٪qۺ��F�/r|�+OC�9������[|�C�v�i�( d�ΈX�"��:|�f��\��Jp�(��eZ��Y�=�'��`2�u����*��%ę���Ө�z���:I��m�׋�8��{\!�|�,��r�S|Ū$�@A�f��)��~�fh�DT)�dg��[~����s�:��Z�˧�j,�i?��~��Ukc������U������w;���boM����?�H�+#w��������Y��O�`�$���_����E0�[KF�ߒ('�I�L���eb��Sl���f��^�ҕ}���ЖD.����t�����K�LG��8q�}
KFQ���>Pw������������7�rp���6��J)�d��/���y� ���yWg��*�֬�/��4w���L-� �*�1���2��_E��W���A8��2gR����rc��~������c,7E;��s=2���X6�ur����PBo����$�"�����x.0�E4�2�7��a?�Dđ�	w)DY�����qo��?6{��� [���$����뼳[e+��uZ����@p;(�_��=�vq�6V&��a5kAn,̲%���Ý�Ծe¾5D>�⸟�# <�����-O�/�,`�Ь��"(�������<�(�#S��ߚI,z�xÆ�2���ް�x;�J��\��j��뵖N�4�����T��CH���3dPtsz���X�ܮ �(���#�̗�v��iӉ����<eh�<x�(,�����[���"�#q�@[݋PBo����W7@�?�4y��!2U��?�Q k��ݼv����@y���1�"��,WI�21堬�8Σ�(��4"�t���x_|�\���#�TfC��o��$j�7��y�yCeR�q�3.����Pt�\��`�t�?4����Yb/���(n�w���o�Q�"T�I�YN��r�����u��i�Jǘw+�%���rI�7O� �z1u��N�L���Y�ZĮjpQF��D��l�NoOB��g� :��î�%T��i�Fy���f�����I5:)eNb�%{&�ĨE����ѳw)�"��#ZQnL�b�)�t�ׁ�M��=��	T���YN2$�&�P�����uq�u�:��I� A�No�{�U-��2a9�;W�7���w�=;���P3	��Hģ�@�����nȌ�=�G��N]�;�Z3Y%n�X�\���i�v�z5@j��PЂu M�f�z�24\F�s��?`"u�	B*v(�c�t�	    $(e�h�ɤ
g�"�2�4���4ϑ�\#MvT�Yf����Nj�tbh-ot�
/)u�
3�4�x�;?�`/�I^[��d���)�������d���)��-c�[Y�YOK��Y2`0|o�<���<���td1�|����*��_��9̮��
�N���������dr ������||��'�C��o���\KM�u����vAa5:l�\f���o(4+�Jܔ�(2EBHM�Ď���{ӟ��q��Iҳfmk.�`��4/�x��m�zpK�5��v9�ꎦ�����$��	�+��ӑ���Y��U'��-q=�%Bl������pi�dl�MV�e�B���??�Ww��&��<��m���HE��4���}x���H�k BO}ҁ��D�5���Qm����:9�{%<&��()����g>��+��R�מ�+T��0Q-����s��v�u�~�X�UK�(���w 1�n�#
��	��`�s#7�lc�t��m��V�@�������Zծ��3�aO����r|z~5�W��9�������քY]M�'?B�#`�,anθ�d���|Ϝ�&��A`��v�e¡��YN핑�c.�fuR�y�|����=<4�e��W��n���&!t4{�]�zW��U��qgǣ��U������c�V\]���tD�ʐW"��1Ad�����#�;ua��g�t�H&�����ip����������C��z7p�i^	z������h��#�>�2�������$
�qꕢ>co��'6}��P���4�ZyMY��-!�W��(�ű����_`P����7hp2�7���	��T7�)�fi-��J�^���jrK���� \��G��)I�ѕN'M����$wo��M`5�tȊX\A���#E�	��?�~pƮ��;�&��L���a��E)��2�-�E�j�>�K�6��������z�g�?�)�a� �������;I!A�� *Ԋ����N� FYN���7�KD#��d�*?���������(QeK����AJhG��I�5&I ���d��Jks���<��
�?���~b����%�6�5G�yo/�p`%u�A�!�/ :��;Ľ�Qv����&��xL\ё�u�Tl�?��J�������%������2�܏��q���י��Xz1;��a(��h0�����`�/]��Su=��6CV
e�gEVwޭhuScE�?�?r+;��}���Y��3�i��y�����:���H�9n�*хw�M������1ۡ%�aS+�80ρ�Y��D�W��L�KsB-�8N���8����V�Nl��)!�W��%�ɭ�O��
q �:C&�{� 
�suᳬˏ7�"����
�&�)��p��Yҹwd��2��]*����Un�����Z���!��3��V�����w��s;5:x�oL�I�h�z��7(x�>r����U�c�b�`�8K���i��:|~��R}��I�FN�G0D y1���[pv>�z����A�T��I�}���!1������ʴ�}ƪ1�Lc�����bZ_�DЗɅ�U]��OVyU��?Ѳ�e!�����q;r��hb�#���A�fCܑ.M�C^�K�(���cu��(��	Z��	8�E��d�N��X�9�� (mQ'q�7{�5Ib�}����L9��d���,��CG��l-1��Dq�K�u���6�p��Ҳ��\hG��Ϻ�8y�,�e����@9g񵺊k�޷:���/߫],�?kV�~&(�����{����*CfI�������O�f�٩0m������&���Ȧ1���d��r�����8�ЛN��D%�Nƙ�!8����j;��Dp�`���|0p���7�M�	��rg[K�3��8I"x�;�'�ӏT}��HN�̨(�*�^�o�
idj7�ݡb�)[�TpK`kl�!\7\r?��|r~�x5_8�W} �+ S|�U]'����N�i͹����`f �1^Cn�Ď:Y�Nalʺ~Y4I֙j����w�(f
0���yVX�E���	�U]Q�#��Һ�Fx�2������/�7TW�e��?'�����fO�J��2��?�7�V�J���w;[q4��f6��j�l�2k ��>�����>4���
�h#�v���v�u���;�����C��H�<�~Ӛ��C�N�_�
+pe0j�JK)H� ?��^��}���(�F�۷L�(6�[|�ג��Zى������C����芁o�
��Oc8:
]�~�Tm��Y�^Ճۚĥ����1-0���k��&u�P�������4 /NV)��>�rpJ���:�,(�ZU��ʁ�Px�_�0�N�����_�;�5���aF�&_��H6�:� 5�3�=:������u%�ۖ�jm�\���p���,R��a��"�-aOWj8�שm��V�@O�m���k����f���I�vB�zo�1z;:��Kp�7ӱ������*�ک����֌��tE&劫��v�O�~�>��Y�%.8>��`���L���ƫ��8���ݔ*풢�{������ffP+t��߬��n#�����S7������|�~7TD��Z�ͯ�y��a2�L����L�U��3�"@	�(�Ĺ��:���_F���d\Mέ4�lrq~z~3	ގ~;�����hv3�g�`�,�0����r�M���(���s��53�����������r|6>W�0IM�4�������䪳�~�~�le� �,W��a���n&'L��~qg����j.���ar=��O�F���$�B�nwXZ�]����0 �R�r:��8^3�J��{ ���Z�^2�.�&^~q�Y�~AhBJ��.�Z�PJ�G� ������2H�*ۀJy(�>����ڦzGc��&��S���j��g�$�L�7�o��o���n�)A�,�cO�<�QSo��cI��'�㍻)�k�8�Yw�(R\�Iꕕ� c�̎�����l@�^�o�ئe0hVT'��f<H�m�DW?G,��	ߡC{5�������]���$z����i!��>�4�H#��K�\���\�y�e�\���.�ζ�%
��ִ@	L%?��E}��`_����A]8U�T����M�4�:'(���Z�U���V��4�L�K�x�^Q!�!���nK�$_��ӯ���5[�H����H������ĺ������Nq�+"s8Q�G�2b�(��1�H��,�QU���=2k��&
^| �� xRRrMh���O� ���W9���l��W�p�'�����?�"��i����dz�K.��������/9��&���f��l�/��1�?:�A]�Sg�kd	� ŝ7R�ĨR��|�@�8��D�4�~�	��d!���Tm�{�^�ć���#���#Iw K����-Cএ/��pO�SĞ���e7{*�*��N��<��ZJŗR�q3��-��qf�[C#Y���[)uD16*L�=�i��p�Ԑ�d�҉�K(����+�Ud���h�rp��*�O:����(�\9J����Yǉu�����Vð�p����>��(�n�82�:�$0�z��0)�Tɒ^ӵ�о�a��ן��OYM��e�#�+��\
�ܟv��?������2��p.7�.`��J��6�]&���ׯG�/�#��)`Z�4�]Efn��P�D�����`��߫��h�Kzw���-�`H|>_6�6�[:eE�TzSCd�=4	N��X�y�+�)��d��^�EyV��J��Lo�lpj�x�|\n��oL�b��b�	���Hn��l��1��C�%�G~�X�����l�X���G�v��tF���YV��i#����4�^!�@����L�]d��%v	�i� �'RDGd�M�xO���r��M+��� � �e�+
2���0���{n�H�Q�QU��¨5��lYw:��.8B}dh�����4vc�!�ѡ�]�7���2�O%��t�;    �f��W���M�|n,S�"V����l�ME)�0�Ҫ�-�8A1�\m#w�j�9�O�ƌ(`��0���E.��҄jq5�~f}��حY�~�����D��&6>�Ž�-����
��v`Kb=���R�l����i�#/~E%/���z#�F���#�M����M0p�Ch�\�@I��Jn9��c��@�RK��.�j��
�w�h����KI�+�j����j�ߛ�~nn�=�_ց�·��{�-���n�X!謞�*�Q�`s��Ö�6�+�%��3^C�M����s�[�t�SP�u�\�!G��
�c�>�Q�L9i��"��6���J��&oM�}Cm���@��v�S(��p�NLkt�.�@�9RB���#X7�߸۽<�KT_봳�ek�ꋔI�DR+��'��a�T�� �6*úȫҿdk�^�,�q�2E���o��Z�Z��Q�gͯ-���Uٓ�̑�B.�4��N�L�q�,�L���`���d��dn�����!��I�=����L�Q���]�R^��4�|p�M�&E8i����@���JB�EEv��'V�ѵ�($�h��[�ac+ô~yߵ�w#����_M��B;uR�=eZ��[��@4|0{̨�
ZRH��Ar����Q�ԡc=��)��Fs��c���� l7;�?ǗT���<���a��*�Q*��iؓ ����g��[�	�HXl�a�z�䯣���AR僮���B[�`Y~���}�2���ɨ8���le� �:���C/��;+[��1r�hdX� �����_���>"u�rR�4.���h�4��A��Ɨ�@I����B^I����*� t�V_���{�A��Q�\{���9n{l�(��ܖn�K�K�Ĵ�V!eJ��j�R�z�k-R���S#�����@T�����s�NW��!���bp�3��^H�š2���f-�N/RGUREve@~8�����nv �����T����hJM"�@Y��L�����A�������=`Y������Z&�6\A���nx�h�;��S@w�G��9��%�� c�Q9_����p0�9.����%����Ƌ0��*�uZ�Tk��TH�r�v�YU��=�%�����ln2f�g�E�aܚ��@���qhVOR��<R�17��Md�����N�i���t�Z)MI�L�2D{Cέ��x�|Vg�w��/l��5=�Wq�9��(4vB+j9�F��>����9��Sg�&ס��p��:A݀�N�ٔ�e[�(v0�y<��<�Э��-���IJj�̶� �b0�m�J۵ȸ���?
y #��;�7��e*�/�Y0i-���>���mX��zh�4L֛��Pzw}��8��) ]��m �z��3C��������T�>��R`Vn&W���$�q���()�dk��L�E��QV��r���uY5�-�פ��p��Of?Hxo�{��h��F[cy,�P���U�\������)����Uғa�lT�^h�k�]c���BEJ�֣��ݠ^*� 6�oa��������ݮ.��X�-�e|3}%�hЈ4A��:�݊+��`0�@�a�<�c|�c�(� �2ht�H;�J��\���ˋ�g��$s�K >�.��l�u��e�P��>�.��?��8�?���/ϒ�hz9 �nF�T�~��~6RC{�����ܜ@��G_�gM�_:=�W��(��ۥ��.T�����r����5�"8����{YG(1p�����,�U#-[D���R��L_k*n��uba77�/��WV���n	<�#�͒�4HP�'��8etM�/�lp�� P!uV��Ǖ��20�V��i@~m��T�*�[��}q��&2�?f�Fų{,2g��Um%Ց�Z�k�Eߝ�z/c<��=4/d���|^ȋ�5w�e�t��s#H�٦$x�c|�O������h�<�A2�@���D+�/���������J���IZxJ?^k徯�
nx�1�]�g@B�K���p�E+�3
��gB��i���+	#H3�(e��	���=F4��[��ι2�� �;�H%KI����ZsƓS`2�h��BT*�f��p�zbE^\���յ�Η iۂ*gH>>4�Os����-�E�
�I²LҴoȦ��ڎeZ�4�L�$,��;&�'�ۃF�)���oz�d�[����{��kP��/�Q@-��,�2���k-e�U��&U�al�Z�^|g�:->���IW��y��?y��01<,W�в݇�;��������GjE/��YK���5hl�&�}�U�Ҳ��~����Ŭ����Ap�����XF3�Jq�{Ssk�N�W��2�]b��l7jw�[��<-�x0[�/�K���V���j��ر���E88m���HC��,�?�ꔽ�Ra�_,q8�3�Ili��t`G�ޞ�N�[��ϯFW��-P_�sx0=|�U��Ry�Y�
�m.ʈ1\?�o�ϼ����G)���油]K�� �p��%��#L��W��5�����-�E$�|�"���v����ʻ���0�&��F�I�0��ҫা 2J�2���#�*}@G{u8x�����b��W�zL����i� =�-1�'U�WdG%-l�vs��������o��I�&��u�����u�E@���I	��'咾� �� {���Wd+8�g'.y�qY��k��B=�9q���+ɉ��
e��:� 5�$;�k�t����%,<�͑΄[�fT/p���M-<K� �����.����7.UMOn�	�g�'���( ^"�9��zEJ<�}�ؘ�ag�M���6��Jz�P���&���Z�Y&i^��K�28��,�G��s�86�� D���G��WoOǚ�d��de�YR�>O��� нF�.Θ�����$��-e@&U?�;Q5#�����(Bj��#4&��6 1��UE�q	3\��JZ�%���#��Ģf����:���"��� �i��B��@VR@}fV֩'�鵦���ʋ��s/� F�bIϹg[s�]��^^�m�`EU]��}���xf���맨���l����j��[�X�}bG����Y߶N�*��k0��ҏ���*��d^F=\�E7ʹh�C�O24h�������ap�o�"-�=�o�W\��Fi�{(FlUK[�!�� �eN��IP�/�����s�LMp|HLB�?���r�d6��g��¼*�T�i�E�Q�����b�P#�i�^nM���V�h�e�w��1�k���?YJ;���.2:]˰�ab�u+ R����U0�Y�1��f�Uv5)��s�}ȹ>H�����넮o�ފK�`��cЗ����5"9�Q��u�Q�+\�޿�-��ׅ�-�^Uy�c^k�8�y����\���|��β�ik��'lҼ�T�o�A�ʇH�<��ʌ|�Z�"�p�L�jd֣�,� `���AHn#���N��~�!�R�q������O���v�^2����`r��P��/�Vp�I]
Y����>���f�<�Q2H�����^ޫS8��YUQ&5"�SZE�
KY�, �k���~V-��M�2�?ʅ�YfK"\ɓg� �BX�,��s���,.�7F���ʨ�Z�??�dz��`���8��8���ݑT:��KF�-͚(��$�q�2��-+G�C�>����-Ah���8i
�R&������y֗V�әb~�ߑ�.�W��?���';��gIky���
�����,�{b3�P��O=�|ܴp0E@�Qxo�F
��#�����Y�op�> (�ryk�`����/�ȹ��_E����`Ud�k<�5��am���:o�k,)'R���,�>d�g�J4h�[���;���0(��WYw)��:K�AA �s��CPM"��R��,��8�N��G54�3�X�;�Y8�`ipFOF���X��[q�8��u����&tu���Ȳ@W7���}5Y3�$At�_9h�    i���!U�c��u���su������/ـX�#�%�:D��|��X7��D�%��z�Vǰ����Y���x�nw�V9��l"�8�K�sge�I���eO���aYl��X1pu�a���:��F��5�>����%xu�T�j �B(�qU偲iV`M]��gj��@Ն�1M��P0�B��U=>=���ph�YP�
�U;�7�g����Խ!J��f�s$��0G�M�gQ��C�Z���cr����P�ð�W�%Ub�b%~I�j�M��:w��i��e��(&�./i�&�Nm�=�ō�
�+����l|z>�c�I�B�O{��	�a��V�p��b0e��\��� � ��!Õ�
eF���j9a����W�:��P�0ͩ��-�����I���P�3~��^ ()I��v�Z�Y�ņ���5*	@J&,������&�~vQZ���:T�N7Y+�}������u��^��hG�"���a!ᑆi�EQ� lkj�Yo5�0��ݽ:���(x�S/���(������� ��~Tw����`1s��;F����I���$�e�`��z{	�7H�(2��	#���D���6&@�؅�d��bV��@4�)q�T;}x6&Zc���@k������b�X���U���L}���X��@6�9ܒ�w��t�b��So���^t�7ث2��5�a6F����ޏ��)�OM�� �2A�{+���9��dpT��4�����/ �o�ce��z|s~�����ޢ*�s����%L)�����k��^^Oا��ǩ�Q�*~rv>��S�xI�E��c�m�}p�/�L��5�).a<�]���������`��?:� Q��Q���a�VǊ*s>e8yE�EKC��H�Kz-�T OYk�c��8�N����� J���¯��Z��U���m��lȬH����nG��K��w�A?k �S���λ��u켌 �$]����j�����u\>M'J��PӍv�`|4�&F��y�YK��D��i��Iߋ2�df��}Y��b �8�^hM������nI��(le�R?I�Ѵ�
�`u*�^�ޟ�;�v���e���<�u5x`@�<�(O�\��+����бۚJ�k :�Gk�ZG���f6��������fhne|q	`cQ�t��w5A�k((7��{�[�X��íu���Nԭ�6���'�����^�>�S�d\+q��^k�A��l B'HT��*&j0�߫7�%(�H��߼"�9'�� N�0��#������{�^o���d*0��<c�W6�!��=�0tD'@��jY�fn�u�qVi]�Fw�*���p=z�<�ĩ�w���|��Q�)P��C)��F4��'�*a��x�.wͲ�u!�.�)��¿����fp��3�������S:p��Ȏf���;.��us��O���0��"����g�Fy^��l-���cF��ʃ�W�:L�ʷog�#���@*�@�����û]7�N/P�)�"�}��i�
����0��-��@�H�#N4l8�ȁ
�.k�87��I���+�ҭe����"2�Y���,
�]�= S�������4>>6�)�G$뫐	��8R�Uf$���ʠ�2�U�j�(�l�!�=���Ζ�êE�&@3��I�F����G������l|��5����l6����O����~���%$��c���tT*y���a�����[�Vy�YZ���*W)����ѱ��s6�!��<H�}垔ru�0x`�"7OES������ڥ�fʤ�PUU� &�JG�P��1N�͵m:[�{"!.���+�F��rd�ǈ{�Kl�I9�(e�h�,0<���f���@���ϑ�����.�y�}6��ʖd^�[��	̥�`����|���u�q�Q�����B�*�����F8T�EHK[�N�R�y�Y���.t��>6��$����3�f7dt�A�:���Z���_�NkQ8o��8Hn��M�Ǝ�ڃ��a�QX�|^�ZwX������j�C����l�$>�<�]�܈��9��,q��P�Y�D�qh���kWP���P�R���OPƧv�/����ȫ�A��eH��VlQ���JE�N�\�PT����h<��~Rw�:�$Ҹ�����y���� 0T�2�7~���Q�A�V��qT�����)K$����ͧ�+=��d9$�Mk(Ke�%�<rx�o)=��*�ӏ���'��tu��8,��(;3/Z�8��`�Ԁ�6G�9Ű��.�*Zѽ�zv�Z���7�wU�8{L�8�����_�	B���Y��t�5G�X՚�| ��3����6��� �
x͙oy��ȋ�-���xV:�	�vԦ^��)�x2Ժ��ԋ�s�s(K���.E�Z����Ěu�b���'�	{0m��4�#@6�	�s��N�*�z���0-Өv(��߻~�m ,�
�6|�܅a@+M/��tE�a�k���R���n��Ρ�|�|]�-��g�4s]�fNUs%�
���bV�`��i��˰̬�.%�O���1/�b�2�Q	��,���÷���'a��i�0)���dQ�wP�u����`�̽�>�/3�9"t�HCO�h���	w���L�w[Y��iu���Hm8�fs�ژ�	�2� &�J�U{kR!�r��nLt-$�LK�'Q
��Q���y�,	L�}�c�Q٩^�ꌌ�uB�$�����Z%�եR�r:�wl���'���B��W��w�G�V��܏����*RE���5OO	��r2����]ގ�Wju���C@@i��y��^���Ǻ���>�$q�p�,ܓ[,jD"��?6�'� װn��ɛ��O�p(N\*�E�[J���\�����?���IVԲ��J��Z6C��J����bTg�[���5X5�@G���+ĸ��{�A���2�CR�1с�B���\��i��.�\JGw[���.��~��G��sF�G"�F@��"�O��uO��x��တJզ����.�R{8
����i���ֱ�kdP��@���uW�?�5���n�2�+X�E��� ?���oX�9�Q�P^A�ζ�~���� +n}�@ H@ˬ�O�0���N˼�=M���W���(�����f�i��7A�І��!J������my�r�����B�"���Z{'��ʑl:�չ;�J����?�5QEm���f��������`���ë�� O��6����)8����,ߩ�x?D�;����d	�a;�R#���/���Ǡ+�o�6��BH8�CYL~0"eW�[<@M�E�0���$M0w~y>N'�O�#u���Q�c_�au���q��d�Sħ����:	�9wR� j����L�;��OO��A
��`a��z����w�Qx6�l��ЛD�����k�NY�w~2�^-�Ij&�e�9���t&j���;S�*.B��%���7T�����Z�	��p��� �9���S ����f+�7՗��#��}��� �C�|����-FՋ���"�CK%,��!���6��֎�!�3 38dS�܈X��s<ru��21���فSf^��}�o5K�({6I�s��K�t����AV�`(E��j�N��$H��������xt5�ތ_(��%������*8W�Rm�9鬍��F�*���.�+W��?��H�j^��dy�!�/.'j��B�+��*����#[�\��U����B�J��|��w�5�`XM���o7\����8(�-��&Q\���
(��F�*Ȳ�!̔34!���?e.xP��*�Kꂇ�&��q�EXŉ�l�z{�
��{\4��=�Jp��`����z��AE��b�)�zEu�(rZ�(R1.��A�,1����@tq����I�Ks	yGG^��q�����Z㵚��I"[
aǵ�xƁ�F�S8�D���Ĝ��TG�j���8�t�N����6U� ];�1�7kz���`��j������5q���I��_R�$��"��n�l+U\&�O��)[���/��I��ߖtp��J��a�   �C	���ݪ]�$;�F�A��U%�h�ZY���
����� �N�������U�J������E�ـ�w�)87�I���?3�l�z㝙�~��r���w�ķ����y"-=�aˀI॰���5���C���������+�3�:�"��)�U"�Q�Eă�6S��]���(W�@�MACY����-�a�%�xza�m�'x��pR][g�S�2j�ā�|�?�Zw�Q�e	����UU��FFk+b�k������T0�Gs�!0�����ލb[t�B�n�^�*ڔ���=�}�J���z{cq*.�
�����N�� a �策/M��-�d�Ko�RY����lUɫ9[���)������hTT\����}qB�Yn��ɟ��Ĺ�.y=���D��b��X��54ZԹCލ/�Q�+&�Ua}��H���o��Ê�Nt*�����͍��.=���hN±0��ֻ�Kk��Y�c����z���v���/R��E�c�Fs
[�U��r��~�T���(����Tc�2���(�(�GM�AdUa|�{S@r�t)Q��G6�Ǆgk������AM��ٱ���
��r�X��*��g{Vʑ�2	%e-e��4?V��L/!�l�	���҉��l�; ����A�y�?�ȋ~��45��!���mz�4���?����Ҿq1���1(��*G#�u�Կ��Q����W� x������Ũ�o�2X}�g��TӋ�~�����S�Srk��L�%�C	t]woOF��x���1�Ҽ�F�ɏ�|�Wagak�BAv��T┚��9�SMևl�>��|��!�����Ng�u�~>���L�_Դ8=fp�����*���ׁj�m/-�0x! S�/ϑw�ՆR2�<�bz�2��P��m���O�LPӉ�R��:ػu�('���q�ͱ5 �&��[PQ�@��L Q5[�צo���F܌��m��W�+�gj���e�Tz5��q��u���1t�r�����X ���	��Z��f�'�K.~�            x�3�LO-J������ O�            x������ � �         .  x�u�M��6���)|��%�w�L�E	�,482������dr�\#EY�(zg�߳[|UlW��W�x\]�����񛪔�����#����0�`�����;�a����;�`�C���f�k7M�Ы�[�	��� $w��I��A���"�ޣ���y7�x����^���N������Bj����1�Q����������J��F>� zx ��lZ������v����nVm���gt��F2���2��I�~a���[%דou��H�pޙ!�	����K�8�yW	����ը�龎t盖S�<���8O��L�4��'�ӟ��f��/5��7ayF7p��%G���F��.N9��+�|��{����ƺ��/9�*PH�Dɧ@E$�=
�����\�qP��T��n �i�$Ap1ĭENd����;�Bo���7������n#�>Q�FJ�Ą7	Q����]������^cmg(V��a]g.V��ɚ�T���4�>�~:����3�
��N�v����RAN3$c)"ۙH�c)�{����]�;�Y�B0<�7�� y�x2�MF{��rr>�~2g{UUh(��7I�T�dFB1�ڊ�H$$y8-�Ѿ�ܬ�����ARv� Cv�=?�"B�r� '�a�mk�è��FNiFo!O��UIC��&���B֛�$'����L��Ӎ��B%�tS r$�tC NDGPt3 ���ڛ�B;q��A��ɼi���`^��VÓ�5q�����݇�ѕ�I��.h�O�^���
Ex�Z��U��j!	�QP-w�>���
����.��l^�w@�̿��	����ݬ��<ΏѴfPuhH��{RIE�X!S%!�f!�*���"N��N���Z�[̵��Sy�o�o�t>����J� r�T:_I͉~��0v���mwt�ƪ:����V��DK/ɡ<�ӮKrQ.����KRQM������.�4�]kTM���^��*Ee�w1V��8�\\��2S�R�\*��t�թ���К��<r��^�Epd;q���L�w�\������r0�oĠN0�n�DU`(4܈p�l���i�l��Eա�^����/�
�(*ㅫ ����"V����Vr�uW�/tɬC'yʡ����}� 2�	h/()�p�a��/���i2�ݩ�+���]�͍לB��bZ�JHl��Q-*�,�.Ĵ�����j*�����?�(߂� ���{N$5Ph�3��?��FWoGG@T���d5p�+ω�
]yF��^�Y�4h��u�?�<7�
�%+r���ad�G�������n         5  x��V[��8~f~����nV��EAg�~���ڊ��ܔ���7�3{<ǙZ� b�}�_w#2ǭg��?�C/�!觞fނ�na�:����U��[s��Sݎ��/�\�a��쓦��/2��s�B7b��Z��	��I�(7 j \��q��^�s������Y��v��������Oh���ב�|����ɼ��EP[���?�94 ݛ��[@lA��8��X�2+7tM7K&����v϶��r���]���6�>l ��@�-(U�������1\h
<P��HA�,��rg�s�������ݷi�ȽHՒ�������lq����K�;� �OL�Y��5��mJ�>�'�]��#�K�@�$V�1(��_0Xp��Cu�H�:&�!��we�������d��	6��
erP����k ��a| s	��aG�n�2��[�kz9�YQR��0�(�ۚ���c�5 W�	q� Vx������R;�\*��Ĵ��%��@�lg��0��m��q��D�Y��o	^����B�'��$��CUv��i2��h��9�YvM����%존���G�������|�(0<x���{�ssS��EG�����>�������G&�Q�Y+���·G-^b9Q��tRm�8�أKC��nVm�[�<>�^t�/���_�I��+�I��maퟵB- �����j����5�� >�Ë�:og�st:�?���5�����8�C"�Fgga�Z$ �i��.��i?�(��Z� (�/?G;���8�h�L��|��^���H���Gi܃��aM/ާ(���p�����5�sDV�@�ob��һ!���خE>0���Xa,}+����U/:�/��'�g�&����լ+.��uм�A;���v��k��I�u��2l�d$
�ͣJh���:�B;)�>��+aH9Ɇ��W��]��E��j0�V�_�}�8yb3��thkE��[x��c}�9�A�S��c]��,��}G`E  ��r;'����`�2)��|z�q���H���E��rUg��t}��0ކ�D��znnՌ��!�ü)����{�7��p�A���P ��5���xڒX��t�PUoZo�$�iQU�6������ Q��U#�Y"�qE�{N�uc���Q=���# X�)��A��uݸ�A�pe�|0�����=m�cb(����YZ�d�����I��PJ�#3j:�-7`q�7m����F-X�H�.��d��1^���9a�l�R�q2��?���L��(������r2m@7�e��@l`����h�f3����������˿s��f            x������ � �            x������ � �      B      x������ � �      :   !  x�uV�r�0����8��(!����H��
��L�4�����<@AV����>< b����G����~~���^km�UBf��Wd1_���Or���j�u����Oc���/��FQ˄��d��w��f����6�P�ПI}�|�e1�d�.u�L�PeX�"�9l�[}�;�3#�A��L�;��FX���%hR&��L�kr�^^��WB0�x�"y)��r��\�d,C�@��qj������X��ZAύ���ts:5��gbKk��P���	t�?Oe��ڿ�e<`�r���1�q�a�¨PhcGNSs��*<n3tH���L��ퟲ�Z�V踎��3��}��c�,��P�pÒ���p�G�SA�е�>�,å}s��C)Ff�BD2����I<F%KsK��Ŏq���<����~۠�k���Q���t�Lo4�˅��ON�څ����I����ư���l�6�I45	��0��{�0�G~R�O������(�R��օm�����.����\�����Ζ�����qf���d2���T�T�)i�:�{22fn��E(�i��<���-T�y%?FR�Y$�j/+r8�2L]�(T5�-p]5g�݃7)MF����5��~gb)�Y�LΠ4h���I3���L�D`���H1��*ث�F����@�i�/�2ι�nCg]��9�7wO]��<�x*�p�v!��xr����&�u�vX�Rw��0p���=�4J'3

�?��7.<��z����;�Z63��t�?~`��i��      <     x��W�R�H}}�����5�D	�Q6v��[�"l�(k,Vv(6_�g$�-(�JU��}�:��9I�l��AA�>w�,R�Ґ
��cdR��YIg_���>gUF�cvy��h��Ϋe��|���f����3���]�d��zc�DҝH��"ɗ�m�-�#^K� Q:
e��,F���6"��2P�	��|���'�+�����(�u���2�c-F�/h�!VYA5ӂċb�*��&q�A�$�1K��U��k �\�#(�����.���tp��'=`#�ZQi}�8E�>���E���B�P
)vƋ�z�		l�0��rΐ$�֗%���,����\�-
����4��o%Lqv,�)�uU�|��F�G1��l$aqV�K��(Zn��b�if�诋��Α:�Ҭn%��V�խE��-j��s���x�4�*_����˲Z�u@6�crN��kF��� ����i	���s .B9��阀�V��zCG\����)k��Q��:��Ǳ%h��������r�)�V�)g�;�9��7��2:��yjZY�	n�c�υ����|��$l<򎇢������ëux���d��75�q��OU!�q�/�VQ�;�]S��<�$,_"�x���9�C�5�3���E���{c'��� r�/%�{N�) �ٚ�l�Ͽ/��Y��t�R;�؀�4"��N����s�nYke!���%�|�b_V0�\嫢q�#ԙ8Hڛ��c�(<+	}.�����R�SI����Um-�~�Ԑ1��xb۴��:��5��^
0t�y��AA���w�n�x�U����鶃�>=<o�S���"�d?���㜃�kp�ͭ5�
]o	��͆���k��8W�C�1����ߤ<���%&����)���dH?��{��2���zПu_Hu"`!2[���*oc���_���OQ� �'Y���o�M��w/kj�wZQ	���+&�$�j2��'�"f|�i�#rt���?~�����;�ɜ���������O���.���fa�8� �{{S^�����;H�͆�|ی�zQn�����R�H��Ji?�GJ�i\������fS��w��օ�i��<��Fl�Ҟ�5xaJ�����r�MX�P�Y1pL�cBzX�vGt|�R���l�<0�{Cn�"4�S���Ma�rA��O��|��a6.������t���Q���l��_�U0�Rq��<�'�����~<����×��G��ɺ��0�������=7��3�if��!Bi'�I'��]2��;�M�>�ǧF��d㥹>%-r�y�~\9�TjN�bw�a�DX��մ������L(|F�!���NCk��8Ѩ��(Z����$`�&q�@3��G�����=��m<�o��c��H+����
�k˃&��;;8���HaC�(0r�e\#c\hY#��e��(&�;֮:�q����ɾi  ��'q�en�b
��Eg���k�����-$��W�/��1�|�1�23U�N�����w�	�]^y����W�Y�      >   O  x�E��r�0���S�	" $�SҺ�C����tWx\�M��H���L�IG|��hP,wS�����y�� Τ�%���	��$!�t��g|}�ݨJ��e����U:�az��Fc�j&=��#~��j��T�~�RM8���gmLk_��{~��U������J�C�4�z<����Gc^q��b�m;|8�[��N�^�~&mᆥ�;�c��ڲ�:���뼰�$�S^���B�<��?����{S��;|y�e�f�9�GTh:&��Zl�u����)&"BĶ�O��K�tȳ�� �
=]�k��n�-B��燲�á�D��0�.�胾~�?�f�      H   �  x��U�n�0<�_�p R���Iā{�ec�	�lI�}��,)m�"��hvvv��Fm�ֱ��lfo=�D$"i��O��+�$�I��G�My����-�Y�
�I!�hI3����dS}���X��A-���ve:I��SZ�;g�H�$�TؗV��1G_ܖY�Qђ<��Jm�Ri�K��5^nOm\���*e�\zpl{����^�l̐F�D�5��%KxE�U���_�Q��B��5l� ����8�Ř��Qte�����Ʋix�V� 'SI>��c�=[�S��GT�)�fߏ䬀b"b٢Srw ]����R�Q��x5�'�<�t?���-`�n��s�s2E�����G`�x3Mw�dM�Ő����'Mt�!#՘�t��,���$/�Q��|�v����N�HI1���FmU�ؐr2�}���́�7��F���l8xF�/`���+���>l�?�f�\P�鴖ִ��ܝ�p<{�D�\��0�q�<�Eف�8%�]Y/�����u'=�16#��$Z� o&�����Q~r�$9���
|/���s[�`��v����'m	N�I8��_^�F�@)x;����I����9F����;���|�EEE�&lрN/[�����6U$���i?k���n>d��1yx�ymӈ_I�����7��?Y�      D   �  x��Uˎ�6]�_A [�#�v��.@3@�&���nf�H�2�WCRNѿ)�����~�璲<�Ǣ�,<"y�{n>���R{U�zi�UF+�Ս���U���73�U�m��_�ϬJ�j����vw�#u`��F�,!"nԘj�H����R5���N+ON�°�����ٹ�A�R[s0>⡣��K�-[$��[��g�m)����\I�*�L�9��խ#O6h�g�^�{�v��,�z�mp�5PM��_����3���%�st�{4����u�4���O��b�gy6ϖ�U��l��Y>�NW�7�-M��;����<S����W�'�SJ,Ѐ�_��*�<�
���gp�>�#p��@�(��LkC�c.֠�-����N\K�h6ۡ�Է�[O��@�
ي�n�}z�ogR9�����z���+�@Kcބn`
4�c_3e���6j1�E#b��Q����k����=�9�����L�;Q�S`g��P�t������i@$ݙ��e�yd��Ȁ �S��'Si9��nD�cZT'�\�.��(r2����(R�F��o�~Tq�R�W���R��:\p���r�-w��&[m�	��2{Lw����%��7������ù(S.<߯�Q���	L�|��N�����#��!͋i�u��I��9���Di຃��JL�^J�������_q�EҺ�:�Uc`eH5
ˋb
�Rb������5�o�����.J�B���}��b�KjZNv����5i���i�7�=K6^m�VČ�`ьs)��\a@p��w��d���
�l'o�-wɅ�6GǓ�wùSI#C^�kb�X@�яk,��8�����n!�A���E�Ӧ�{o�#`�i/���K��S��.�G���a���9/���M��%��&�kA��n�Et�hXA���f��b�Bb�(�����%Q�8��}�X~�	�X{�е��7�����?����      F   >  x�u�1�� Ck|?d��KL3�����n�/E�Qd�A��u�H�Rzc���ub镔$�-?��$T&�SSrf�`����%�t�h�ke@']���W~T�lvӅlJ�݈���w�J(�&�V�G�&��d���5��x�X���Z�%���p�Ag�����U���-����W5�mg�ՈV�����3�FXEJ��ft�a'�#?��B�C���.ܭ�2�z_A�
�P�8*�!�������Ihh���"v�R�$T���c��ՑȆ7?m�5Oq�)WCRv/��_HBIz�n�<�޸֢�9^~t�m���D�ew�q      @      x������ � �      )   	  x��Z�n�F}���1/�Ɯ�_����������plڣ�.^J2��@�#؇ ��O����&)5)��XRK��SU��2+��<��z?9�b���b&�k�E�$�w"䉴L�4c#s�	��%ř0c�Ɗ�^�%�]�6��U�՗ٲ�����W�~�����E�g^�gU&3�}�0H��!�~ryz39{�.?2�9g7��������?!�S{x�I>Vf,]n���I~�^2��ʎ��5��M�.�	�.W�eU,7%{u^n�����KYm�U����v�X,��f�]>]ޯ�EQ�۪�+�|;τ�ݍHlDik^ڈ��F�V�و�0V2�F�v�c��J�Jw7���������dG7py�+��p���Qj�U���;������g�ċx���vn
?pM���?�67R�x������]-��쾬���opm������X� L����VL�f���d��zM��w�k8��fC�����}ڇ�c�s���>��Vr�|��!���'|cW
O���?�fB����k�1<j��&�	A��!��;?��]4�m1�}����`�L#�"� p@@��&���??eBp�΍��뱱��&� -i>�"��q�My;�����*׏�% ���X���3-6�x�$�?��X�B�L(J"���>$s���Uh!U��h�M�-��Ҹ��-")�Y�M?��!�p��<��kMV׾��)�s��8�����Z-7ż�Rw	��<dC�/�5�J(��<�#�ϭw��@O��>�dz��n���6�=�p�;v��3Xq�<v��N
�Q�f�����
Q�{�]�I�[��\�v� %r����3�䚆��2�0��r��jPT=b��S�1�k7�&�в�SB�<�9Bh������y(�&W���!t�j)m=�aV.�������v�1�0}�(�)�n�!
c��#���a�8�I�������&7���vf��9GiI,.Y�$ZpU1`	C	'��gj�|S,(�<s!�)%�A
3h��7d�Wa
�;c�=(�\Ҫ5�ks���������å�H;���h0ܸ�r��s�H���\EK���Yu`
q@>�ra�ns%����Udag�7�@xZ�_|K��X�"r��I�T�U�"q)�s����f�GT��"���-�7>|\�����9{�V_��`K�AM������]#?����9L]�S#�)nl��o�mM�X��h�}[��0��ȱ@:�������;vm<E����.��ˊ쩬f��ۚm�{��r�^��P��ٚ�2-�������RT����!|E/��T���l�/����
���f��-ެw��f:�=�ߨ��#�f����r,�S}j&LGhibԬ�׈y]���v�Ղawۺ����f��4%砽p���z�Y�JD>-�:�ڀ;��v(��c�^�7(�o�$��}§�s��X=(YT���ٕe����%�R���q�wx�UG�Q�l��J��*���_ޖQ(��Ud	s�H�V	(��N��2���eR��-r>��&I��=<L���dd��z2�5U���|?+:�?���J�����ޟ�@�~�NjW��tddu/U���j��뫳S���I�O�w��N��b�vqu���)�jP�ft���E�:"t�E����[#@�6-�?`�~U�4&\�0A,ϿR�t�H�&0IC�CJY�����F�2��!��	�L�F(w@�7�(���)�Rg,Ѯ�:55�U؆��)��SAt�5I��~z�q��i"�\7�iy�_l~�!��}���q0��v��4uk��[[���CB�p)1����S�J��!��jP-�MY=QNqb-Qv���a��5����y߿�B{�Ӳ�iOn����+Ne��o�2����>������	e��譪�2�}9�^@����컒=��PS����3���lY䟗���)����c)�ir������NQ%��l�D/-:C6��(b$Pr͍�~;��ʻ�*�������pQ.���f�����|�)�� mwU=2��'�]Wi7̊�!�ȌJu0+�Mb�N�`N��q��lk�d�U�>Ú��$BOD�)Ip�-�)[�j�Xu��v��&����ض���T�Nؑ!U����+�.$;�&4
�������Ԭ}���akk���0��'����M�S������-�re�RX�͵J�i�(
���N�}�(n��_��IJgC�<��-f�Ҹ��A���&�hJf�����)X���r�U^J݋%�ꁆ�4Mrx�IWi�����ܟ���A�1PqJ���\zd�ySXv�CWCr���A�:��]����Ͽ�!��_U���a�F���}��}����(Y�tK����D�cuWs�]I 1d_�i�.�ka��ߢ&͡LN�x��V�Se�C�j����ݜ1���k�08u֝�U>��@L��-404Arm��Q?�D���C������N�`B��:7^@�M�L�dv��~�U�t�X�4�q�A]O>}��>�R���B4MC&��C���ohNb`��j����j�i���\#�&4�/h.��\Ti��a�����3���A*1��i1��%���(42Bv�9"*X= 2@,�! �6,��'�!v=�XSv�ْ��	PV�)���<V�'b�:O��d�S��b��&��,RM���Ci:;�܏xW��IgwRxHL}d��-b�h7�f�4 I\�BmvD��
r~C5_�vG-/��vv(k����#)�>H�U�2�>H�!8�9j�A+$����e�٩����_�E�B�<�:Szw�b�p~u���Ț'��{����c�x<!��� ����	��*�����Mci(Gh�8�y,�ޱ�@8��l$KP��������&\ǣ$e �=�4�:��U�k�i���\�H�?Ai/k�6j7oK[糶r��y2��-g�U%�T]h�<T=��G2a�U��w�hCi�M3��q͔l<2Bxӓ`��m��2�z��11t��A���C4�� �	�D+�cd��Ch����H�n�CH����SXG,+.S0"�jC�<w�C��`vc��h!�������[Dz��#�g\s�ַQz�X1;#;�!	���%]Ρ���i��][e�?ғI� J1��ah������N$7�Ct��z:��j<�"��+���-W���w3���҂���D�h~�
d��,�Ų����p���	5r�ޡ?6u��jOFE�����A vs�~�r8Q�x� T�_�x�����T0D��+l��.J|�Ux�I��e<���d�=���1�4���`N�o�oT)�x��|BM�dpMF��5i�v�jۜ\̋��A�jt�Q�J�#�5\_��z��2�����r�x���{����t̙�,�A�uf^���Xqt����N�4��Q%�߆�㚠ɠ�ѕ�Թq�G�fFh�#P��w3]����{E+�M����Ч�z�ŪV��O#)G� �����(�7G����`Q�ʹi3�e��nڹ���Ξ���6`S�^��rC)�~>@�oI�/�m��<��	s��k�)vX�	�������ZX�Z�w�"F.d �.�(�>8#�����<����鬶-�����l ]��1=S�bӠ��8H4z��B�k�KG�h1�O3�x�(���_!�o�|�u>^-�4,��F���Lt'F�`�
�����D��`=�!�7��K�� FCcGM�m��v�)��8��K@ᛃc`1%d�a:�&�(o�A$���AN�j;[�>8T���RY���s>��fʴ�      1      x������ � �      J   W   x�3�40�70�720��4�0007��u�q�;�~�ٟ���D��� 	s������������P�k�g�#� ӂӐ+F��� 9      !   �   x��1� �z9��E�P~��0Y�q��9tl_��C�xu)�r֏�ߢ]�Y������}�����>�e4�y3{�ֺ!ܨ�({�q��3V$�Ln��rM���:\��;gћ�V�;��QJ}˶#�      #   �  x��Vˎ�6<����2��ȭ%�6���P�rY`A�\r�ߧ(��ȳ,,��`�d�Y]UM%i�)Ix���6JJ�+K1t��B�R|DQUb��QI�:�Y`�y��LF��f��Ԇq�J��%���&��n�['f���F-��{#?qt˅L�K�U� H7������vT�A�Z�j���b�,��.�%�J��JM�7�G��Y��� jP���=jmŕQd�kx^<�RYI��׻�V�2�*�=�����M���1TN�O�ӫ�������?����rSѕc���n����Z�L>pk�z<�w��,��u	Q�~p�����k�m\����6��ꟶu�<��n����:ߣ���Χ0�A�xۑ�}��m�C���,r�RJj�D\B�O��UJ/�l��H=<�����J��.���"�i!U�?9������Xx���bH��g�ҹ��V�0�s�L"�s���`�{F����<������n7���~� �^��Т�V��ض�a
����
팤4Ww9�"ClsD�ӎ-S� aC�6� �1��ė����Ek��&� �*ר���@��8OBn�x����r�zxC�+sV㟩�k�_W��fGun蔶�3��9�	��P�[�4��D���eQ�M�ߦ�f$T���ɡдǷ��ZT�{H{�1ԸO2mdj=ڌ|���>saD��j�LY���imy�+��1�`��E(��L�S'T��G�͈�RK�����H��-3g��V[%]��t��^֡qq�"b@xQ���c�ZֹTfJ ?��������-�W�e/	�kp H`3T<�ۋ��jXS׊�D���)id��4��)J�3���3 �3N�\��2Ͼ��A�E�h�HS�q���t1i�}L����`6y41����z��0h�"x���X�}���� �\5@�7c@%�4S�ͧh�:^R��.7�Ӏ�%J����7����'w<'[��Bo�A) ��f��T!b�=m���3����M�U�r>
�쏟wFÄwpY\V�hqN�#aΪ��q|�x�������| d�����'��
��JCͶ���Z��_����_�<�W�������_D���>����w/ڌv'�x�VW߿�ɇk��R������p���E�      %   n   x�]�=� F����X�QF5D�D��9�.l��ڼ� J���K͊��;����ۓ2צ�g�	N�l�t2�*�IH�jq�nk��4�s�V��hYj�?�])            x��\�n�Ȓ��<�_������)������v��9;06��@�<��rp�<����۪��H5��e��|UMv]�n^��O���M��D�	c��?3Q������4��?�����mn_O���_?�����}�Մ� r!�\W'�R�rH)��"�.�f������R+Q)��g��w�7������k���輪�wǈMJl'�W����e�6�aO\�=����� ŷ��C��J7��˯���/�fq�������l�X�o_��o����X�RȉT�R?���z��˲�k:�~ȓ�ʸ Y<4�0%i�rU23���XM�U��͗����\�]�DȊy��QY��"Cl*-%��f{?J*�����)ڣ����z5J�:jW2X�M���6Oۢn�؀����JӇfy;�k��r����������<��,9גv2G�{�nVr9�M��T��o~�<�_����Sn�J�'�O$�ȺȶY���|�ϐ��K2�zy��y3$lH��ZXv��o��)5ع�<s�?i?��?o��vӬ��bo1$4�M���w�	����^q�n�+�2�����>47��zH
^@����!�╴��v�Z����	�C�M���q)�����RϕaFn>��WJ������ f�|u���C�JUR����yfP��7���z��'����hYy����_��z%e���GU���c�ud@���<�����Β;��˒��ɐ�qKJ�#�=�Tщ\pI�#7=�T�\qC��#�=�T��܈h39rՑ�Tω<n�Ȓ�y��B!/�h��	�h��T	������-O�/>�.����@���6Xk�p;�@�ة�� �x�8 v��w����I@-z�m��@/Du�a�q>��(A�ZE���g�H<`�d���,��� ��YV��6#I���`}�O�<$�t�)��/�5��������P�������"�yQ1x ;�����>v ��� �=�@x���=�/`5	����������Ӵ�1�X���\s4a��Xt!,K����:|���O����d=�Y��P���-�/m���/]�� 0&�����:���rT_�h��u_e�R3�.������{���Y����z�۲,O�I=x�O��� L��_`��z�"	w�[��(�L��΋��fg����dzzp]Xv^/p���-�p9\FC�A��[����g��-��E�D�6�w�x7�4���?�}y2{���������t�&�hxAU<�Kvk��Ze3�����.���ԏ]�WSx~��B�CW��j��~�������g����ؐ?�S�������!i*�r�G/f��,�@�(D �8�8���v�R���YSI�A����c��Z�o�p�� 8S��XJ��ؕ���
6/:���'O�fӫ�A���]���fy��������/����|1�=���70�7�
�νA�ٷtNa�&;�N�ʹ,�R�Q>-�g��B7��X�2X�txZ,�b��H��Ŋ,VIz�+�X�y2��X������i�:�uqXxZ��`u�)Z�2��9�A���6'7ȃ�Uc1��ωM�J�5�Nl����emX�=pNp��>8'9S)MBB��9љ�P�,�Ӂs�3�u�8>8'<[1*TU{���l[�����m�<����=��P�B�\y���ٰ��cl&J��bT�����f��]d�������^�D�#K�8�J���z�\U��]��i�c�]�k����N������H�kxle��W��^.���{ݕ��G_�{����.��R0��gɣ�-=#-�`?1P�Pї��ޙ4��UQ�/��ŃH������˛c�c����
��
�9����:�wY����>����iAm�Xq+��7�z1�^����#ޠ#[�4kR���8��_�����n�1�AkX���v�/�o��@�(tS����'ۑ���x;���L���8��if��:�&!��mb����:��d&cKrtm�6j�zgy�_�퐞c�7�w}�����m%`\"��Kx˻�Z��A�!%�P�{r���®dXLE
��Rx�UK�g�U#�MnAV
I�
G� �̂%�����,XQ�F�bz�aڃ�,<�>>E�,��8��ś˓w�=���ml��e���Q�`jZ���X�2X�yPA����HH$�y���	r�Fm�(�.���9�ڷ��>:'S[i���L���iOJ*'S�5,��U
�	BRo��O'=xN��r�-:'�Hm婗	����ӣ�>��*F�#�M��9ɺ��v�.�v�礊5I+�{��D�}��+N��op����I(�p��P�$�@��%iҩ�ω�U��~�d����U��e=௧=i�p肍ݕ���e ������h=�1p\}����W�Q@����9�b�R���շ�q���PExN�<$�����o�z�Nz�gr�tt�2A��+�ɷ�P��sȅN=8xN��C�W���������E�n3�D�'M�����rz~ѣ�(- v?��H�c��мc�H��|�P%�`%��o]qu=-O?���g�6#] d��r4K��o����u��32�79o8�xF� �������C��1�9c8g��.'c^Y����������/M����S�*��[�j��RO�]*Y;ߖ���T���ؐ2̇��T�����N�4z�8&�^�8"$��rD���%g!a�u%y?�x�V/DH���P��±8��i~�Z�ǫMy�o�����f>e&� �U 
�/W�1�/߬֟�������l�N�J+�萗Ŵ� ʫ��[]�6��f�E�S���	���������)��o�9�B�1�S�<�#�>���֟��rUΖ�߷My[��s�)G�P�H(������)?4�f���wUy��|�J���"��^�4�U�v���7���r��<*(���8����>8Z1�*��M�.��sH���m�~8��&�
:��J��w�uU��.��'觷C�XQ�F�D�[o0�-�ۯ��)iU��q�����qH����tz:]���V�Vo����˦Ƅ=L��XF 0`�|:Xh�|h{O�R������~�8�CN�YC�9��:�P㊩�a��AP�t�Y̾Ջ[���]3�=��+,����	*
��R7���@}"�L�LH,lB�C%��
�W�gͲ���4"��z�qjh�X9,|�mZ�YZ,�t�]7K����A��ְ6�� �Z��׿�x�O�+2<���8�l��&XjnX*��E�x�sGLy�]�c�Zm�x���������lY�o��l�|��K_,��+qjl"{�$��侮��<Z���/k��G��xl�`���LO�Ւ5j��z�}�#��	����)�`!*�Q�^��"�0�p`I-I3�,5��4Dv�W��O��dQC��B% U|j��A:��.�%@ v^�7�g���r���!L�����v��<W�{����a1Y3+#W8���;���9��#��L��&��t\�I���yp���k�]jH����y�б�W���n��J<x̘a�J�(}j g,@q�b&1J�ڂ��T�ki�x_�����""�}�9V�,�w�"�<Ru�a�"���V�F�S��;`~L�8���:����H��78}�$�x���� �Tc�Y�4�Z_,��ҧJ	�JU\����|(�8}�����U4!cL�19��,�� ���@B8� �D` q؁��<p�/�H��)��Ԉ��c#S�T#Pߞ��l1J��#�ç0&5�y,��2H5�whoM�hb��Ug���B*�cS"������L���FJ�qZǚ,X~[Y�1�J��dwm�|u:N>PJ�1�Վ�負�ڸs��Ԩ��N�Vі*G9�R��>�>�P��0PI�!%��7��9xѕب}����	4BƛP��w��0��{�B��w� �xs�j��SW�sg�{kp?^h��7O�H+Bɔ�¬^�    +�������۔a�4�Gr�w��ԝ����S����s5)Wګ�{oI�t��ۍ��Cu�������0Ȟ>�"*��R)���e���H�u��0�h�h��x�D��E,��n�\h���bT�U8)c��%��"�JWf$�<ޟ|ʤ��o��\�Xq�����by�����Z�Нs
�g�����!���/.k/Nx��!�|�Н�
�k(��L�Cp���K�����V(�)�\�s�Y↞no�MU��� .e��D+!C26��%�#?w���zX����q�œ���y�0,]��O�XI�/���>-�#.\
�܌�\0W��,B�R��W��3�j�Y׋�d��Cz�3i�A���H�2d��B
f�����d��gN����1{�}(>cM�iJ��.�ǵ�������3�l������~�ˠJ�r�Ź�f�Zn���t5��w��B3�G��Z��لr[Y�]�Ȑ�4�٦���z�A>���l����P��v���i�ai܄�yǙ�Xv����pP�0�A΢ϙ�Pl�c�0/�_�,;��օG���9���%�ꎪ���D���2�W)pJr�Q�Gt�YO��ܾ�v��Q�"	�X/�ױ����>��Dwӄ�Y���`�:��;cᴁ���J�E�q{���r4)-�aȿ&_�r�����Ŝw}ۖ����Aq���3�q��B��� �8���׫�P��nn���:�B�������̻p�P>i
w��O��ի���?         Y  x�eQ�n�0}63�Nۭ�2��I�b��R������E}�������G3�H��+8��Lf�8g�]C�$u�mj�;�%-+ׅ�� �&ӭ:?x��t�fx3���+:W^0h���r�ٍ���a�ZC��9M`]k�$x&��)	c�E�V�+Ǿ���ݙ����������p�>H�䩗�M��$��`<-��1'�d<'_�H��38���8װr�:ք\��<�-7�����r�nA�v��1q.4� �=�۷/j���4����:cU]t�Q��8�;<�N���.X����W!Ge����s�Pg��Y��3<��u�p��x�o~��         �  x����n�:���S��<3>�,K�܄�H��T������&��jE��3�0��4էi�:�c!� ߜ��	m�ū�W�/�*�ҥ&i�y��"\��g�)�0 !T�Cל�#ZI�"o��?r�×���=���p8lj�$E	u���c>짦?��6���o�l���+t
G�[C�,[
���H�"�����c�� �ճY��0x�{y��
]�)%%�(�r�Їv����ǘ}�}���>�W�R�Hf��Z�h]F~�]h�g2J
D�d �ȵL|����U�0V�ʭ�Z����pn�v�f��&��U4������伏�m�H��M"2��%���6�0�ØZ��~�]=���e,gQQ�PY�n���g��4����{��WRΑsI�\�@,Rǡ��%cѹԊ`�
�˙��y��}�Zr�k�Y
��G�����$i�
���O�M�tǹH��4BQ�S���t��ɔ#"�nw�/��Z,�B*���#�R*T��e1֋cO1my#͘*�!����0O	��k7��kh=(�{�*�%(�a6�oa��B���%$1i3��@��ǙF�h�j��4��+�}�S�/C؇~'pƥ�#�qy8�&-�A�vA���i%i�Fb��=m�ޤ5�JLNs)��y���7i)A�$�i�@�m���h�ʴ�����[����S���$d4�W8n�����٤�G���x�ܵ�}�t%E�ܞ�B���F�ҾZ�9�0|��Kۙ9m�y���6�*�2n�l�#!� ��P�g�3Ӱބ��a����m�_|u�!+T%Ip:M����~D��T:I9�F�)ԍ����oXG�fM�u
&/�Y������h��j��+Ҿ~[n[�/BT��]�pO�WK����rŏ�Ss^i��:����`iVg�O�},1���1 6�P���� �I��[�(����\P\����Q�O����-:�X      6      x��}َG����7��R�<P]T��Y ���L�K�������UT�����jR�*ei�v�-� Ea�C�!^�m���kD1TU���˹���ӥ|~=��>?������l�W��[u})�������zy���/�����*������7�|N��/�s�i�T���w?�i��KU���^��+-?���=uyX��֗%l�n������ �;}�s�F/!�Z�?�W4Ua���ϿN���]�}����<B���������>�_����曹�~���^^o��f���<?f��zַ�+�Ԁ������� ~��c�׿Vna����l�� �^R�qE7�s�����N�#o�p�q�H�D�l�QMx�<mz!�(�������������xޮ�����m��ߕ�;=�K~1�g������z{�Sá�~��/��Ϗ���>�ˣ�r�q�*..擹Z�]�7k�����G���I�/?�'�ak8�@�!'7\B�T��$���%*���X%�4�k���8�q�Y����p� �r��eR�(Du����M��rV��K}&�[�<Z#=����R�Օ\�o��}F�à����z���7�?�p��%Z��V^���j>���ൾ�/��N@���F�����V��O�n8(m���p<`x���--!�A�tdlۆ��l�L�^��'��Oԛ���C�-y!�1��N�B-l헴G�a6g6d�< k6nS��o�L�&�(Y�r�����4��O�o.N���oZ�= ~�S$x�&u��LM]F=�8���5$�g���q�p8'�OHΌ�OX�~��r]��)=KP�G����j����=���-΢q�y:�1F �)�r����s{�h.���ls5_��c�=;O{�.ƚN}��x~��J}��������l��Z����H���syVz~�^Y/$6�����E�E]�������8�2����K[u7���o��0�`�:��y��)U8�y��{Íl���4i�F4_f�ݘ������p�!�s~����t���Ђ���iOA֡u
����K�9��������d�*#2�75[ح�$x�#�z��{�%��$��[�e��VƖ6ĭ��aN1I_r�Js���B��)=I�#�h�2�&d���CK�$Ͳn�GR}+���'�Sk�4��H�����R[��j��V9�;���|K>@rbҧ�v:��D�S��)_��&��QN����/��ᰋTy�mc	7��F֊�� �yLB5�ٟ���:��0t%���21�$�,�)����{v<q��|��F+'I��	��(�D�]�`�J��}73E+�o��8�q����4<Phy����]ϥHR4(9#@I�긮u�A?���L;�����>��D7��x�	׎�A)�$T�����bCц������b��Z_mr�l?����%�Ϗy����Ǫ:�~�g��^��7���7X#��뭴	�&��>%��~$�/yy�����͆qd��߫��h���ZTB�ۀ-A��z�<|�x�()�<�@�~�P��>9�y���tY�=T7�B�L@T�	��,�^*�@%��0�‥+*A♪�$6�/!꺎��t��Z`�=0���4��i, ��3.�tE��Y2îX��zY+��Cv���==`��ɿp2eUl	5J�"*�2�&���n�0���%��A�jqy��`�dx\�
WH�;�Ǌ��A��>��x��/�6�����`5�j��x�h=���;�b���@ى"�,-���� �i����,`\��p�P�5�-Ǉ' v��eX��D�e	�|�s�5����Kz��&F��[��n���V�ڢ�_M�H�W=B��Iu�p��U,,�=	��-Fm���JL��CԄ���� ��ʈ�����ڜjS��6D1o��t��8����[��6
��-9��;�c���]��D��`�3��$L�ǒѨ3cd�y���x�|_P�'΂8�ODz��STe�\:�q���T����jۄw�a���{c0� LA7�#�bQ��X��f6I�v4r�a�'�>`��/���W%�x+E:!�چ�e�����솻{��*����4I�Q:F�}=c3sb�t�~���(��Ā/�&�kI'L�9Pj�)\�i˂����n�;�~���V�Kqi���pY#��"˴kS��6���\��)�އ�<C�E��q���
�P�Afp�Y��jnS�Ut�Da��	�X�D�fl�hbbp�$zc|N�P�Y9�eC�����1�"�`P}�R4&)
��9�*��q�����B'�ws�y޵S�´)�{�XLB�t��0�7v�_����֑��'�T*ᖱ1o�^J��(��a8��!to�U*O�"�骢F3��Vmi>J���Зk��j�]�t��*����>W���U����ႈ$lڤ����]���g8�X��uU5�y��u:��eX��/E�p�09��yp-.7Ǌ�Q�j����:C��Q�ڤ��Y��Oߎ���=?��Ł'���ټ�`!F�	��Kg]�P�1q�����WYB'��W��,�O�-�)�YSi)��4BGb���'�-y �$�a�KYZ���K�SPLq7Ȥ�AX��߸|oH�8�  �ɡ�QN͊@�mS���k�Gaާu��z�8�j��F"Ol��7��y�a:�V������F��49X�۰����� >�n�U�
F�"/�^cR5��&Y��T�rE��EE�\�K�{qEWE>�o�[yy���ͯ�����R__��s L���g�����/�$�/W��d���³r�Ua!���Oָ>�3��������k�m�8��9�{���g��mf��L�����8�����fq���E7)����:K��n�x���w8�������L7�$��ՆYJ�<���F7}߀�ઞ�
_=g���~Ra���q�Y<`��x^"����\o3�̇�8	�=n��R�
��@)X���G%��25G������7���\CLT�t�Ē%Q�).JDMU�F�e>�C��p7>�v�:�[ͧj��uf�6�	&��6C��z�m����@�ͪ��,IT1Xu0چ�iQ����q9�c��z��q��7n�27��L ���^�n��zVN��` �� �o�{�I�0�S������ 7��&8��q�~���^�pߏ�C�s��O�� `qF����u+��g7�{!�%�@�	B_V�U�����U��"�ڔK:El�P��ܸ�u�\t��G�oE u����6��1jI��8�,� �k~~��n��vU��򠱺�����s��2sy��ޞ_��S�ѿ��_~/���X�����^?����ٔĒ|K��R��Ǐ��R�֐�_z� �̝(��!H�
�ru:��@��*Y$UU�f��q���sp �����ܤy�.���|������4�ܖG���<���|�YZ�Ԧ5@��m��[���X�K��?�[e�M�pדF�G���r0Q��nI�i��uK��c���_\-���W��Vⱞ���#�.�	��aW:h~z��c���ʒ���yM�ebÜ��4&�#@O7�e[�`�O�H�H���k��˒�v�uZ�:�1�M������-���q?dΝ ����z(�A�����|�Һ�
����`Aۑ�o�8Ϋ K��8} "�R5�ʃQ�^ ��n?���U����n���|�k�a�`�T��<��r���Ĉ�����w�7��G�I����$�!�K=�o�"�DQJ��9R�Q~�
�t�	sO�dS��h |5�i���VR�����#^���tY4⟸m�d?Č��n ��!ZB�t,(�*9r�[R�J�.�J��l����d
,ER�hM�t,����+��НFn��2.����d��a(#�5j�t��������c����Bh�j��F�!
�qQ�餇�T�6P-�y%x�;��3.�e�-P�ӊ7TU��cG���n�x�qwA'�����p�K�4    Z"K*�΢\aҭi���:qxܛ��|�}�Rws"��a4��Ha�U�a K��i����l��X�?�Bw��r��I�
�*����O�ifF��vw�!���Pr�D���~�!�4|��i
���I ������ݽ��k>"t"��d��W��Ԗ��jR�mג�)\�B��w���V�)��R\b�mɚ�k�*�`�f-Dt,��!��n:���IR	�/���(.�|����Y�]9�A�Iߖ�=�=d��2����8�PX�ÿ��xϓn�Ơ0���<C%�h<�&�~��	�?��>�I�����ā��0�87�+@�(o��Wl��7���sSkK�<��]d���8�t	�fPf>l�l�����ȝ(fh�ٞhU��F9�@Q�)��-Z��������;�� �[g�6h��s�Z
&д,��1�AE�������Vx�[�!ۯ�6pa:�*L{%��l
�%�Ո����;�+(t I�:���v��t�!�V*W�u��&�t>�����($8Q�)�� Q!��d@ŌUh`��3lҡPY��r�n���+1Q �>M�C>LU'�N
:ǝ��s�9���5�����P���x�ٕ�r���M�
A�n���`l��߻����P!q�O�������ќl�t�ש)Ě�<��ݛ�Y�B�'���]�)�4��Y���2i�~�z5�����~��qB\R����T�D���$��I������ML������ص�����tI�V��e*l�	��n���$��p������%ԍ�`�{- �Ǯ$+�EO��p�	�¼M�����1��Nܾ+��D�+��q��`	����%��P`X�1��f;']��"$N��GC�g<S=�H4� �A扚��x�|��t� ,��낁�Za����>Ǡ_xD->�o����(�'ȅ���y�Pr��ڀ΄*i�-8���v�1����8��p��煔�bV)���4�3��Iz���v���Y���k����5��wH��۪������� 
"����>���� ��d����<7�U�a:���mG��?:	$�> �;�6�-(9چ�9���5�ZDf���l���Hw��><&�%f
�
,S��hꅣc��
���۹Y� 
����Z��85��f��p�dQ5��TG���v�1pb��} �۶/<wRイh7��6��-�2����
��P c�IY�k����	�q�:�&����HZ�r6�q]z1����Z������K�.��.�7zy���������/�ߨ^�~�i��[u{��Z?��P�[���/��%��כ��3s}��?w+y�d;���[������	(�����"�%�� �M�bS�谝���.:Fn(�R�=#��j	�B0�m�"*A����seБ*����,>���22D���Gz�K�V���c<�+�r�k8v���r1_���Ԡ��y�����g�>����v1%���u?rV�חJ��<U����i����Z���}����T����	7�BDATW����������y~y���u������;i������x~�Z^�������e�=}�.�{yq.�j���Q�9�^�ͅ���y�,��"��ǡ@2�k�[�T�VU�+�Ӫ.:�I�du�����K s*���;�cv��8U,�<��\�b.�@��Rˑf��\u�ئY�~�g�g.@�=�i8�YM�i�\wJ�;���,@�Pu}8���ڠ�$bO�U���Nd�U?q���y��+q��s�Q�-
����ذΚ��耻i\˨P�~�߻�zt�"���\�A6�m�~]�)N�ޢ�tWE���������;�������WS5U�E��"\R,�&9%��#f�휎�x@n�������L�q*��M�e�T���Vg#Y��ؘ�b����Z��i�������_>���j�WGQ�z�sՓ����~|w�������w��w�M��*�/��#����}���8��~��ϟ��������Qji�d��ى�򮈓��2V�Q�E���H���{�1
��8vE1��ޛŅ^�$ׄ�Dh'�C���4��1���ty��
�NP/*fc���%�Dm�4�a_���<Ŀ<�؟��[}yt�GIϏ�s���M�S*�XxS��}�<�l����߉����������E������R�l��.�Ϊ���<~V��ꢾ�+���7��Y�fܝ6���ʹ�Q��q1wP�*n��� ���Yg;����X# c�sE٢	��������hV�ei ���F��3�f�+�~ �;����~/_������|��m�8oge�勫��7����_P��J=���8�Km?��ϯ���\����^_�V�Y���ǈ���s���$�aA9�~�BWd��E�Ei�e+(�Rl�ݘH@v�Yg;'M,��d'!\���n5�׎�Ue �uW��鰅j����Y_�����	�Q�1NX�jL�4lu��¨�5	���|8r�[�]��Y�+އ������h���Z[Vc)��O���|�g_K�	L��(���0�rY�:j�M&dE)s������>d�~r�!����2�w����-.C��Iq�� ��^m����RT}~�Z>?��b.�"�l��������a=?}ٮ�{e��fm���(!J躲g垗X]̧��"}y��>[?;��.�o�+�[�l�����T�_:�����!+=%Sb���.׈��)>�m3N�Ȏ�{�L�ҧ[wX@�wB�b���u=�-l�N�dy�,0aq�;��;��z ���]9���%���y��)�s^�d]�:��[� �t$�fEяsP!e-d���Z�ڌ���l֣�+��YVaC�s�V=#�2���D�!��  L�n
�c�bY�7����JQ�b�yu�s�e�**�$�)κ߫�n]��+;� F�T E����L��`aȓ�*�*m�~4�8�Q�J�?&��w�Ƭ�s�'�X�:k�6`�C���MN�䰝�q��"<pB��acK�ʭǵ�˨j{�2��-�ʲ������|���e��$eAM��LA�yKВ�}�B�I9���<F���f�����Ӭ�Y9�K�����������{��[���r���z��A��T8�y�2��6����Y}���g���-��.V/蓶?�8��2d�ns׳������|��1[�y�%B�pyq�M]N��]���n���������[����~1��U�� �G�aܿwdѤ�H��o�I뙰��u,<&�ޫƐ�S�n�LbB��g�L�6hZ���؇,]?%}��劷2����)A��>�����Mb���'h�eޭ�a;o;�8� :�@"���,/�-r&Z"�GJ����9�#Ͼw+�[�~��}�ijc8�_ic4F�2"A�r�v&8*��둹���$%��f��OMR�<-iV�H�������c�;`ɉP	wR!�b��Jl�����Z�!iq��Ｔ��`$��"�uɥ�S�T�k2�q��-j(�IQo�a�{��	BKת`�b������@c��)�5�q�s��m (�@���"EW~���������b�����K\]�o���(�9U�n�7�oq�_Pz����,'G��o��^j�����^2xy�/�Ϳ/�v{��-����4y�'��pB�2�|Ek��l�bIGM�� �]:MY��x��S����{��ny4'��q;�DWTp�V�E]�Mw�y�sGݔ�岔��������,���,賍��1ü6�fdN�y��/�S7M�@ħYu6�y0�bbE��k�h�a�������Q��,�W1E�8E����]07�l���Z�-RH��sz�w���q���@�����d�
��F���$�(i@�2
�
���(�^^�������lU����ʇl�H�S�-JK-�X���v���B�{o6�"���8�U��M��b�'���>��>f�V
�{�"�m���jU�2ϥZ�p1�NG4k`T>n�{�Ǭ�ئ��[�?-�WS��    l�,UC��fn�4(� y���#�5c�vr��$�xW�5k�"5�I8遏H��Dƪo��,9x�{�� $O�z��wq��T�%ʄa�3 a�Ր�k0��x����
݄;�����yumkU�aHK	�"C�/�$BM�Q�1�|̲h�1��>B�1KTI��a�ⲩ��Ғ�t��|�ݏެ�(P� &�{����.�!��8,�q
��<CSV��ޫpG��{� ��i���hl�xe��ZҖK��j��f����~��#���q��!D9�h�lM�,aT�e��!��_�N���
L0�k��bi��^M���)�ZT#�eYǅ�Y���vBP��*B���1'l����V�e&E��4�G�:�a�v9Z�9�oV0�;F:��>��2��,u��m��1m��?� !�b���ܶ�b��"�J��ʢ���&@��d�s�R��c��1�F�6��\�0�ʢ����c���[�q��m(�aID_4�R6�BK�L!F"L?S;D�^���1���犚g�O:�)ߖP��hr0-��A���Y'��5�	b�O�5kZo�7�0�	L�d]q���)��.��9kM��>UT2�e��@��m��4�,+�p3�ޢY?�щL�-<<c��<�L_w��tVf�Z�Y8�1dǮ��d6U ��"�ۥ��iJ����N�t��>�mif=L�Yװ��ݞ�C����[~~��s��~��ꕠ_�غ�}	?��v�������n�_�����l��^�Ć-�!c,J^o/�=ѕ\_~���c��$��m�����p	S�5Y����.����P����FL��h<dCؔM��qےHI<��ؿHU�4G��>=#C�-��̧�
o����,�iD��8ŕ�*�Uv������8�RF�S��:��b���Nk8�(D�a����58�W�����Ew�{�Ŷ�l�ƥK"��N4�BX�:X�v�<����1Kf�L ?q"�>��r���BP/YB{��BVi�IOAp̏���ZN�N �@sHi���D	�Z�砕h1]D$Q�xk�y��PD {.K���GD���<E�#ؐiґH��=��ު�Łp�>w���M�3
YbCuN�f�:Q�u:�}�n�QCy�?yy
O�A�g�Jt0M�dp����Ij��B�b��n{�DS�� ݍ���x��ڤ+Ӽ�7�	�d����F����&�Ho������(�s���2#�����I�k�{{�z%#�/ @|������HQ�Ȓ>OEm�jHӽ���4+Np��i� �,��n��(ؤ�l��}Wv�t@���*P�m�X:v����*@h�&m�L��Z����v3��9-��qA��Z��m`ۤ��^�<F�!�q������� wg�B �"�o��9�4X�dAԶSSUS���V��4{E�/6%���a��cin�W}V���z�?�W���<}��;[���T���-�_-������Byj�~}{���/_���f}1�g���K~~<�.@��Aȥ
� @��v�%1 ��"h�:I��T�F=�BF�9�����AN��F]�B��63��V�;U%��� ���P7�hCֿw���z
6�pV�ID��B�#�7�����m��0���Ujs	��tMuO�RV�l����vo�
z_v'�}���x/D��|ڲz�#�,�U�޷�׿�',�~
o�"\oD�-ڦ\,�L�&j�9S�ڈ��@�MS@_o'���vs=ES9��� P=���%Yb��sx���>�M���_v��h��Qn��=��6[�&5������E2O@���gUA�����U]�����0��G2<z�o=2�	81��'�\���.��R�6�N���E]r�u�a;o;�lG�e���P�}m�T5�Z4s��ͰK������6qӰ���;=��!w�LJ,��m=�W�νL��@˻�`묷�l�cj��n�N.0>1B�Nɢnko"
0�u��2�xA��VS������������R���j�ͯ������:_�o��D��B=}�9�R�u��Ϗ���_�<~C�W�k��-X��j�͸����9>�|�����,�0P\s�����ET �H`��+��b�G���E_y��΋|"��,�@�%�q�k]6�a��h�zo<fK*��ԇ��{w��Fp�O0F� �J3����ց�4҃�Tt4�X`|�t1+}�@��{����bN5Ek:ͥ��nΫ��C8;J���qY	�Ч�w�OR���}_�4�@�n��@՜�C ���
7�C�	@v?����j�6m���[�A�*����RDL}�Η�,'c�Q�	o��wn�,׍��qEa�1/-�k�q>*v��6�>k,�{��tݦ9BKª��

�t��U����Z��5F��B{k;,�p)�V��UUGE	Q����hr����M��-�±_v�2RQ2u|��ɒ��igD�r@�߽^�S~�iV칢��l{��<��6ʳ��maTu�9���>�H��I=a��~b�g���n`�b�^�f3E�e]B��BP���c.0~Pۂ��R0U��
�^X�W�u`��Q�zk�H�]����kP�׆�0g���X��VÒDY�M��Z��ȭ�I(tb��}�XNbղXx��V��Z&�ʌ(C]��{;O ��%���ʪ��X�ڣu(���!H'O��Qx��[�Sz�;|������41!�(�r���if�<�?���y���Y71�N6��ź�1%ߪuKTP��JviX����l�KP�o���BtB��}�L��jT�$�Rt���w[�����0��H~���$s%(xb�����@N���a��'J�#d��(���Nl3t���p���0�j
�d���t��M�{JF���W�`�}R�'�K�'��IS�j��a-�J�y�{+A	_�'wFp�Y��:�FtF'������tP��������{}U�-4����k}�o6?�1�/���\�^>��Kf�c���z�s��%cח���<�����_˫qP�{}q��~ϯ/���v�_��I�[x��"��
rq�%[1lt!R$s� �<c���d9��� nA���.k����eJ��-�Z��n���R���ܽ�@q'͋�E�D�ҼF��$"a�%�h��rQE�5-��+ܟ�s��O J<D	��,�����ǩb�X�<ǩ�=�
��l�Ů��2Ie@���J*E��㴘�DE��
����3�nA A��jˑ� S��XOBT2%��aN�v��G��BO�H��ws8�u��>�EgJRQS9�p���N|�~��pʠ����μa2Q ��<�`�w�ܡT�a�ž���n=�\��铹�|A����}?n��}�gS����ڷ��k�?��+J�I�}{�+�.�XT߫��7z��V�Ǐ��E�j�	d�;����VQ��� yc�c�i)C��Pݑx�f������QFqe(}�R2z���\�YPz �
���醺b�XV}���KP����!��c�-�@9�1��ٚ/�YdR�����-��L�SP~!�1Zj1���vE���\D�kJC�k��u�S�"6ñ��Y�:�N��8�|�(z�6�p�{����":k6�LL�V6F�Q��؝v'���NO1�0ɸ�I<�[S�#簎�.ݎS��{��uS��\
A{ɝ'9]�*ݧf;R��Z��x��AqĬ��}C�bcI������F���k�"]�4,M,פ:��[�:� 71� ��D�xK�b%ұP�ܢ�m���ˤ<�>��Q��ӂ��]���a�$�
�}�Ru&��F��&>r����&s ���'��xj�Ӧ�,'ݘ�[������i�~woW@�o~�<�!��1v2����y�4�P 0����h1�uc�kP����d��]aKQdL�5�l.�|(�0聰!s�T��(wR��^
!��)�V�6��m�&Ê������q3e�����1+��Y������L�Zb��J8���:���IWm�ȳo�)6ɺ�$ ���d�����k�a��b���ςd&��a;��y �
  ��^� �k�t�
�7�k���D[4�,O3郒��v/>�~*3=S��팆�N�:簂���h����p��]�9 ���(Q�;�t�VE�R&
�єT6S���>��~�����Ԙ���TU?�F2t1�0�ZY~w_Lq|�[�\���2� (b��yY��A$��:��:�~�z(r�#��=W��p�8��l-U׎a�c��㬏��8
�6����n
Pe�*\tP7<kð��i��d��hW��6:��~B ��D�P��K0bހ�lrf%=Y�1���b܅����l�ȴ�R�*[�0z4(��vja�$4	�c3;��~�̏A1�����X*�nAYЁ���3�D%�$Z�2�G���Y�&�!tcPH��ߙ�����Mʎ��h�Mj5X�{䊷6s�w����i�8U*�ˈX~���f����Y��������
x�X��ﴘF�D՜ T�Rp�1���7?lwoW��E��(�D��( ���[Q�I�$T��Ҷ6��5�!����M���$��ߥ=��-�SJBM��l
���3�$;��]���� c��T2�L2��daԤ[�UŨNm/��M��)���'u�=FQ �K֎�K(�Ԥ}3�
Kܲ�v�{����Kۄ��:��j����W犠���ep��~��M̲�N�2 ��	�;ڴ$Ua�WE�(Z��������#d߶+�P�'$$����c�L�N��u��,
&8�X�Jyq�ٷ�@|w�R��m�
�[7e[n�ԙ��!�$���/�q��m���Xw���zZ1MA���LFb���8}>B2�8;Z=����ېtif�/�,C0,y��Jj�EUCp�)�j�����΂tg�$B�2m'���pn�m��&6[���Jӷ�������%��O����l�v­��|��[��j������>��g׿$f��*�S��l�n��-
���Xڜz��7�Ϗ���1�1{ַ�뿖�>q�+���>�YGlL`V�'I�n��8�U�V;tR��y}�B~bC���� ��A�ViLp	�(�D��Ա]�m��6��!`���L�sE���	=�P*L;9g]3��ċ�=޻�	2�Q�	0��~C�Ϋ��Q׵e�ql��!����oS�̝9rW,%��튡����0Hos��2�d�Q����do�O�9=q,���
�-ig�A���{7�wP��Ї߽OSW�B�[��]�,ي`�"�=�ni]���s�������}��T�G��YLi��j���R�O��|Dw��q����+���;�*����۝�,���"/���\��ܪ��y}~:����U��jW �[=��B�����K�~mRX,��pB˾N��C���%w������E�ZlIA��,�%����P�g,%?Z���_�޷�-�s��m��o`�k�\�1D��@PO��9��m�>`�Χ"�>�N��Ȝ� Lt"�eI$
6�2�9!��+���ANYp�VQaܦ%�Z��LӔ]�u1tR�{]����ƒ��w�ͣ��G-��F�#���f�:
����m�@$�����s�M �p�5ˀGU��u���������#g���v:���z�Mu�v Hq��S<g4���+~�z��D��k}��TXV��**Ǧ�m5.�l5H���cy���xWҲ@�����cմ���s���$*�{�����rw#�����y����Nè�3��#	B!�tX%�Dzhj��+��;�r�����F�|M�[Q��*��`+�b-'�#Wxl=� �`�&�BE1J�H��(�M���-0��=6��,�7��S�Ąs��n,9�jF״�`ҫId:&,+�,�Q7����j�nE�J�+��]�@�喀��#��6{fּ����9wuc�bVȽ_�`�P��8',9�@R�Z�"2*��+~ԍ�_M���}�b�A+!�S^�(���4�TH���x�1��-0v�;�!��4�C�@07���7t��c0�cF��~�#���︀r�GE^V`�]��Έ24iWS�4!u��:
�y��t��j��ה�Ƭ���K�*�Tp�#����?+iQWs��⮪ �a�|��Q2d���8����޶W4��l�r_���8�2^�&dE/�4�4M�i� ���^�;gߋ����8�+��̜��h�]Y�	^Km�����������8�~�W����? �%��c�,F@���y~�d./�-�y}[���[����q����b���Z�s�\wY;�,�\a��U0jṭ��Aqw׍�wlW�	��q)HVv�zc�F��oDY�Q7�kP��s� ,�ޮH��X�u�ð2����3ۖb�; ��ăn��Acz�h\\�6�&MHPD���C��1�E3�C�6G��7g��6p�f &��]���6f�`��ڄj��Ni'��͇��z�������a(�>O1�VEQ`F3� ϊ���`9f>߹,u�f09��OXEt	�%y3����%��k\�b��a��6u)��b�(v�S1�LJ�fS���M��-��;2��đ��m�A�~���^���Ĳ�F����P��!˷c�lgc���B�b@=�-z���D�Zg�"R5�F��5��x����1`naK�(�^��5&�]�.|����{5��zc��x�~T��P�R|�=kX-��S�P9)pĔ��mN��9:�w�;�]����w=m�t�,q�Lc��PRbh�S���K�~�x�A'�> �O������d�      +   Y  x�}�Kr�6���)r��x�!��랠����lG��N<��Ox��ط�������o�]lWi��C�G���ۿ_�oD&�qE�?��4v;i�<����uj�f1����^�3��I��4��{��@卙e��\�7�����]����ԭ� �A�?��c7�;�.�f��t2?��T�7�.��X׿)w�k���������;��ܓF���l!!x��o����4a~�ʧi�,0�͍��sF��ݢY����:߬�Ȯ�h���v������B��x'���"g��T�Ӟ��X�Ֆ�Ն;�M݇���N��T�?L����!4H�4Ҹ�q�$OgO� �#�O���!ݙy��'��GH,<��3�u0$䞗�J_y�
�N��hku�t$�ny�lh?�����9
x9���&a�����Hƃ�Xf�����0��ecDOt��K�4�{����ib#Co�ޛC�8�����Q|S���h��w����*�z.�?P�a�l��-to	%�vx��#RQvDU��4�F�d�Կ_Fń0�iW&bi�_��Q���%�'���T� s[�ާ\y��ޔ�Y3+Q?��R�`e���5��"�ޓV����}����|Yh�y��Ki!��<�������hOi�L��vC��$ϰRL!B�4���]4�C7_"x�|�P1S!s������3EEw�`�58ܪƔ�y��q
��l��:}N\ÿN�o�j�fDJ~��N�Q�,���v,ק��0mx���Ө��Zw1����15 �&�r,�)Uz�Q�Gv��K��,�~�U��-S@ #G�^4����BC�A��ͅ�������t}j�A�i[��9��7�c�G%���Ϋ�1f��p�j`����b����%�v	+!�Q:p�Η�,(�ի�#��C��-�k�󞆑�9lY.�6�>�d��U�2ZA���Y˅!�.u��y0�Ю���M	���!OP��;���F�Pq�\ ��iw�Ί� ^���� ���k�=��� �12O0�<Hmf9l��V�LU$.��앆�V��~�-zJ_ƶ�=Lg�aR��-M�Uз�B�Z���ng�<�`��uYh��ќ:N�yo[4GK/z�Cir���7|��r'�?_ahQ�/�'���N=���W�iCoh��$->�f�Ũ�yC{�Y`��,Tc��J�/$ㆁfc���SȈ�c{�u��W�-uꚫ�V�Ei	!��ka�Ⱦ�;	���ԮmiQ���i�������o�H��^���'��D�~C�W�\ �>V;-�<,њ��W[�E���\���"�w����]2[�������@<�      L   �  x�m��"1D�!
X��ñl�q��a9f���^��V����?�ĭ�I���q�z��靮��0R(�/�6�&Y����-��Iݵ�[����n'��:Y�I(1�_�m��I�/(�Pi���g*(ߐ? 6�V^�!Y'�� �T�0�ġ�)<S��ő�4T4��g>�7�f\��1sY�oC	�MՍnA4�؛�ŸApS47��X��a�+��+Uav���)�A�Y�i���y�+Uo4������A���'D�����,i
����0�㬎љ�.b#��H�S�Q���)����N�UPu���395!��~2!�YB�,sX�>���Xl�z�D�_s��k�����huÈG?K�5^�4��2��	k_�W��e*�\)XË"�^����.#_�ˏ_o��V� �Ê�#LgJ;���3H�=�/��Z�n'BQc�&Բ�JQ���������~���Ǯ�z<���v��VO�|�����z�RP}��=����P��ȥ^�:��U����Fm�'��7����v��Tn��[���Q{�B/��]��^��RkDCup�O�|W����Mɋ������0�Ϊ�T������_bW�vX�X�ѐ���:��4�+T�R���S����'~��/�Sx|0��׷�$]Ƕ����\��cԷ�B�?����N���E���K؎+;���~�b�Z�      N      x������ � �      P      x������ � �      R      x������ � �      T      x������ � �      -      x�Ľˎ$;�%���
Eo�
���#6	535w�W��{xj3�j����zQ���������+�JQ�ju�*���
?G��)"�y��w�zv�o��:�����ӌ#8�vF�J����e<�WǷ�z���(}b�b�;����5{"��#��TE�wξ3�[�#��W��ew���M�R��IE��"��rh��b�ެOy*�G�;��	�f�TV�y]/��� ��ԋ���[�e�����O$t����80���N�wI�).��៨�~*TÂ=�����s4�
$�d$(�gA,לxT�ш�b�{n6����ҥRp\�*v\�e1�64G@� ͧ6���B�f�/"��fH��x�$�8��>5y�T�w?G�>�+F�9Й�e��sO����Sh��a�l�s�x���J8���R��%�ف�ܚd��,a̎�$#�Z��,� �e}\�����#���iQ;�f��=7Gg�꼨$Q3�_0!�[��B�a��~wv���Z6�Ϸf��o��IVr����}��o_̡���n�I��idF4�n�*؃�i<x�|S��������#H8��%�˶p�ج���9����O��"�G�:KT $�Lh��X���F�M����04�-;UW�z��D!�l�ǡ�޼8�f��D�ј)ýq����r߲z�v���!����E	3\�YD��߭�������Ol�l�X�����q����j{%�̾�Ӝ�����q�����y����k�~mp�S����a=�i""��9Bo�W�LB헙t�Gi��N<�9�>�	��:?����i��\J�.��C�{�(��7�y�m��?����.*�ܵY�~F�����~���p���ιs_�)�զ���B:|:���:.���J�O�KK�IX؁F�����G�#�0:��y�c&�Cg�b�x���)�<��rulv�Z��T��ە�Z�X�֧x�ɡ��Ʀ�ڴ� k�kI2-^��ŏ�C��d/�(�����d����b���~&�Mta`F)nǲ�a}>���y���g�7�w��}�E����W������iӲ'����Z�}�N�Y�zZF�h�4-��V[CeV�?i��AC鸴�Ӣ���Gk1�,��K˅�-Zyi'��e�b�Zzdk�6���;��J��aWddZ,�5D֝�
/r��B���ȷ�Q��[H�@b�m��T^8����-���*/�*�[�Z�d)26���˼�?Ny�YN��ߺ���aʛ�W"o˩��a�Jd#�jOy5H�ݞ��
�tHѴں��*�inI?�����f�;��Ī-[j��Kn/{��3^����{IJ�#�g���9a��#�OT�e��.�7e�a��-���n�;�A���s�H��z��΂?Q]Q��a�r���'�n�/[��}x����{�G�	��{��8���b�K�M;:��qqñ9��}�����.�W�D2WvBZ���0w�>1�Uߥ��Cܭ���aRC����ŗ'�����>��h��G�1
I���]�u��z:&γi���;ϒ�Ȝ �m����'�b�qƦ���uv�o�Y�5�T���_<�s��s���v|���82<@�j;%z������M������i�_�blk��=TԽ.ƞ[�c=� R�� "�p4��^������X�!�)�@�}8=D��T �4�h%SyM���<�G�j�D3PNy�ӱi���L#,�g�cb{ʛa��~%����v��@9�+Q	�!�NѺ��F��ؘaGfR{95(�@��ؘa�"҆�5��X[��Ћ?�$J��j;6&+��/���l-��=��͹�������'H�9��������`6!U�}�>d�� ?(���+�ч��Ds�Ì�P�~��Z��Gt~�&�j�!n6b9�3)�v���e1�6�>�CD�{p`�`ɏȠ��Z�ÀAB�#��d�vw��1���iD���iX����DkDg���� :s�����I9�L�&�:��z��s^D{��J��#�Xs{Z~}R�L���Qh��_��x��~J�t�B��(
��	
/z��h��&�RhG#�N���j5�B�Ň���CG�B۝�D�>��B!+ƴ��r�9J�J�|�(�\J���S�p�5"%��D��4P�|�)�,�>u�%#R�$K�Om����R�No��R�Qh� O�;cJQs����eP�=^�@5d��H!چ(�W%cN�(3�Ҽ 3{[�1���Ͱ���P�6c�X�`�E!ڌY^Pݪ�B�3�{jG�B;t�,+�NS��C�FN:���@Q��t���/��<Py8e������x@�ňRc�Ht\H"��c�HT� s.'�_�(D2��Ch'Ԡ]e�H&y�)�Q"�I��(?#٨$"��I�r^��F�(m�9���z{86�������δ���wp� |�ñY4�E"�	C�X���?��r*Gu�>��)W�_զ>5���\(d�Ώ��R-�a�H֛�
1G*����zQ/cv��΍���Ǘ��["W�׺�_��I&��E�7�v>��ɑy0ݣ)<j���7��	\RJ_qnN��c��D�fos�8=�_lW���W��)������W/��yWo�\FA��i>�P�NS�[��߭��ie��.�e{_�<�v�l6�ۜ�v�������~����vEZ.�Ȏ�J��}ȷ86��9�Y��z�dʱ���_(>NV�C
BҊ�ެ��d�s}f���d�8�X�z�s$���q���	!�~�'�,�]��,A��Ec�QM���t�O�ľ��q���M�g���zUƾ��Ȭ�7��D�����w�偑�r����e�$=�PIzyN������*]Q���򁦯Ө$t�Py���"�Rn���ơ�Nb�6i�Ɩ@�2�@�
hS�Z/��.Ş5h�ܜCE�9MJ��/�P'�M��z���۸��IkhVA��P�.�f3E��1�7D��H��s��c�9վΞ��G93���0,��C*Y�s
 ,,`�+�����
"��z_��A�\�v���w�8�+��_����+�Z��/���S�������t�[)�)�K�ۯ�ǿ;_4�*3�9\��,*%X���`]�C�^�>؋�o������C�ԬsA��v�R.�����j����:���ph>����	g�A�b"$�&z==�M���Ss�I�H�OTKa�R��'�8�W��?ˠfd�#S�0�#J��-�7�m����=E#Z����4��La�����(����D`!��~���:�XD2�"5��x�0�'��a�4Ft�df���Z�-rL�9�j�慆�F�ʵ�)�����!iDgbJ'%��7�^�nK����G����.u](W�O�-������� ���]�Q̀��Y�p� s�I#RQ�vj�evP�C�:��xD)iT'�Z�f=L���A$��m}t��v��WR�>��������W��4
6�#��=P<�}E���p᧩�r�A��戯�t$�� PXC���h����HKo�����C��F��:��(�a�"]0�HKu��_�04�@�<`��r��AG�F��i"��jj��#!����"��du���j�-����܀��́�Q<�%k"�4����@.�hŚT����A��,�F�bM��w��4���'RGQ4�k�:j}�$(��G#��5	�\q����d>hB�n(�p�d��C{k�8(q��I��M8�?Wa���C��9d5w��
s����i�DN1�2J�JA.X�HFmBF%��2EY�둛
�F��6���h�Y E�"N�軑wa��+5��'�}�'.Ǘ���K���w��9��B�"���!��r��,���R*�XE$*�V�������I�����c�ل��H��Y�����A�*q&��38�݇�?������*c��m�g�k7��97ug��\��m�{;�g�#��
x�8��ά�����j����˭�0�I�W��f����땿��"��?��o�]]}��-b�Fl�l6���|�t�h�s񮖖�چ<7[g/z{'�-�gIx� ��     �F��	����=xx.��~lg##��ޞ�vϕ�|�k��R�򱖖PfŇ����h ?����3W���� U�~�+�)���a|�.Fc1QH&*0��1�	&O�͚��<�'7q����#`�t�>5	:&��^�$^-V��2&]��ۡy~��-�Eæn]�H˂%B;�����G_��=��7d|t���:� �s��K��HDR*���Y�^���0|�χڱ�"�)�������*��`z�7�ŧ)`�:��g'nj?�^K�ذ
�_6��y�Ԡ"�����D�.�� $��������G�}��z�4h��"&1�e>���DCa�Fpz�b+���;Fm�&�l��p,����r}�Y���ՍM2�콬��+�ʡ��WX:�_�~����ӋX�̜U��Yݛ�ǝ�ο��ssr�[5�%��Ԃ����<�����5~9֋�h��^��l�.���
����s�'�(�q˓��r�6�����5Gx��l�r�N����̞fy�$O���ߪ�U�Ϸo]���1����ł�n���Dm͝-f��ڽ|�5%ܪ�g!1��4"���39��r�߈؁�R�&��	��g.�&�A1��H^����h�]Y�}���)��\��s*{D>��3��� f�ar(3�H��$Z^�}�)Qe<"O����y�:���|IYt?�̸��"�ą5��u�����:�T� C�I�s��Su6<���KB}x�qm����)��揊1���پ`o�D:�@ߑ��s����oFɷPa��S�K0 �2���&^B��oE��S�Ы�8�,�%Nu`"R�+��6��6�qo�a�D�1LD�0�ΛE��P:�P!�a�c��"p��1\��O&"_3a�b��]�bF����DtP�ME��l����Pi��2�:hS1a��7o��LF��1Y���?�B�_�t(���F�EF�0���"��D�gLFb�2�k0.��&�~����4��Qd�M@b�LÉ7ť���D�+����x�1ٴi�L�ok��a#%E&�dR�s�jL6��ɤ��,=d�9K'��{�h,}In�Q���_��Dҧ�B|
�R�0l�LA��BL�$�#�&�d�O��2�bY� ��&R���Ƒ�Z��G�2��V}:|��w�x`�T>�H�T�?�0dF�����>/�f`�l�N�M<��t��@��f�U�0էßl�óS��Z���0�N��n��9ɰN�0i����,(2��S*�"�΁2dA��6o}W��#�?�_����R���%"(D�)�}
���u�h>���L�$%���P�<!́	�[�(/Q2�)��2�nR�d�ń
��I��$�)��u��|��u�	[]�ҩ��VqU&C��9P��U�����vP�b%d�
�R�z&%��)$�O�L����\D'%���^�3�6e�(�v<�����P��98&-���>\�6��G)�rLZ�_ӫ%k�'����mjGt�m���2h鰣VZ䰛�X�-��Z����hF��eOE�o�M�H������5�丨�7��J1�\Z���/T�(��##���ezƿ���5J�0v3d��K2�d3�u!�O3����F�3�O�$��!̄�Y����0�����Lb�{�y 3�f&��װ��>l��J;�F~�ͯ�8���c���_���#�O�.�%�"��7;rGΐ<xs���#x`�tl���A����6�����#�pxX���gR|�i��|;��*�g����L5��	�~����3����<�*�O�ߒ��O%B�$�~���d(�Oh�~�z�u~|��q/v����#7��.�s^�4����
?��i��qx���Y������V�%�]���ͯ��#H..���!s�qh��t���\�65/��L9J�s.�oX#�UUq�N~}ͣ�Xҝ�Tb��mLW��%�PH�d3䎃f��̺D��2�EH!��\n5�=4�v�2qje7K~!�	���Wإ���N���Z�O���'�������>Ս`��z�@�T��^~��W����G�0;��c��<��.ꘐ���T�-"�����卺���|3_�z��h���Y�5<r�0�Sl�5����`������-�,1E�k
���w�9�{�*C�;]�V��ء��G?E�X,ٻ�yZ�K,���W�_���⡱9�R��&�j�8�ӝ5���m�%��q%��A�r�k�c5:0O��>�v/Gм\� �.�a�%<�{�{9@o�C���®j{�'U����x�O��BjJ���p�H�2#cvȞ�\m��+z0y:��wׇpޡkaG�yd�92\����D�n¦i��}%0%�]����^Q�ؠ:=o%y6��y��ۡ��q��ej�Í ���I��<�[�x�3q�+E��t�W�m����RWtv����_NA,�o�,e�&&]Aȼ���b����$����L��L~c�;��ŏ�<0=��Eױ�����|5u�<]>�C^�v2�ts՘%�"�25����V�jA9O��z��?�����1l�����O��޾�6nB�s�%J��C��0��d�[�[L=~�LyhK��m��i��K����-M�����6�C	6��M���#Leu	xZƂ�!<:�]&��'@�=aJ�Kл�L��f�ָ�2��X�&�dB���υ�9D���W�N�}O׸;\����������RD�F�m��GǳI��p��n���W6ȑB�I�@Au�q�	��?��Tw���땔�o�A}O��)�Lρ�v�BF��<}T�R!��^6JhoC)�48���<���A�|F�����n�ݥOg�
�5[6���粮n���iN����~�D^�����>8et�N�]��p�۴���V��Ԋ���˥�O^��'!���W-��]����I��k�N^�l�}��YL�w]j�i��K��^K��nҵ$\>
Ko7z��
d���H3x��ˇ@3�=̆�e�GS����F֚����,���z�m�d
.����نxf�BL�G�晵���ڿ6P������Z��Ϋó�[2����ٵ���}��Y�z_�o�f[/^ֻ���7]�v���R�+������]� N�u��'�����a��9V�򹩎��_��t4
0ëw_���<��
��-����9?����3cnH��e��6�sK���h�������]IG�j������WuD�f6w���~�,���������ó��v�[��:l�Nk1%����t`�2m8�%��¿ �i
L(��ӥ\%�i��aW�����94��7�ScQ`
�>s

A!LA߸�e<�WǷ�z<
AA
 ��b��������/>��������|��W_L���������K����>��>߄�g���
(�I֡ �b� ��ڋ����wX���B@�#OAA0B���d'r�Ӣ���u�V.V�΋
N?(Q�f��:��6����{��T�^ꈗH�3x�O1F�J$<��q�ͦzY?G<d�'�t�!�>C���(�A�{
,C!��ϯ���|�[���h̘XO����	���p܄�@�����:�k?��T,bb�˨�/Sqk>�)FD���[�p�W0ʧ�Sz�mJa��D�_��#�z�z�M�����j�Sy�w0��oӜ\���͂�ZHd�tP�.�@����[�~�G��J�bEU`��a�w�E���I���������M]m.*���W�R�������rJ�\"|�ä��{�M�u�k�[F���|ӏ�<>J_��R�K�-
{�r\|Ff�b��Ρ��d��K�Z�?&��<�P�2ͨ��%����z�ަE��r1�E��B��-�ۜ�N��u��+�Dq�$���	:$��3	�0�d��4�p�MhTr �i��%4�0��M4�M@(��рRv�!Ʀa�-g�lX�C%4���k=������cOQ>D_	�V:J�˗�$��J/_�    l���+�-N�$�J�9��#:N��Ç�+�^_)������>x�i��Ri<'�}5���8S^*���	��$#N�d��� �'q��Lx�uA�q��A����|c�8�6'1T��w�p�8N6�4�5Vaݍ8�i䆊�:��fR���8E:.��Z�u�Q�"u\q�#�'������tD-�����:��f���h��b��{�I���4�q1H��������:�	Wƀ��xʡ�q�
�t\�q��3d�'���Ə��+�S��r���`'�?�É�8E�)��{0���.cz�i�����w�GPp�"͔OB��qd�:�H3�0wѯ�roAq�4S�qF��R�P�b��㌄�E���8E����8#^��K{T"ä���5dD�ix$�j�t3�?��<�S�.�wO�/��8EҭI���}G\j<�n5�ܚ��6�v�#�V�[�Pٴ�)�n5T�='��P����4z�Kh��s�ޜ��?�+��V��0�F��Hs\���@�÷�1��2��30҉Ј6��D��((+�dۀ�@��A�bO�_��֥�y�b�D��"sv-`�7�.d�0��īQg0�o�A�Lv&r�jD1�gbF�(l<�ѕ�i"Ud�y�H�0Yd\j�(a�ߢ��,j=�(�wf&)���5�B��|LR[���m&'�F�7e�H�MN
�!�1a$&'��Fܐ���d��q�ǜ��y�ɹ�F��)G3�椐Q�LL������ج*�ݐP�Q�Y��� � �"�s���t���C
��c��ی&:�@�9
��k"�*�A��6��j�yg�ج&�{�b��|�̱~Q��07�	^��ـa��A{&B_��Z���� � ��1 �y�n-l27 ������A{g��r���(��.pn-H�`D	��_�U�54N�ԧ��ڜ��SC�)N+j^_��\�"����ࠎ/���C��A౿rD����!�����?'����C��67��<7�]�8ܜ�$�m�rb�r�^��+��7�`29���x�=���� ���_��4��%<Dz�8��9��l63_�,uo�����<����BG���^��x���4s�_�|*�q�T|���R�C; ��	�1�[��I}"���|k�w
�#�?���K#c5�Pd��Z�����\��;�6���1�it6��6�M)�p6���&����w���E2Z�Re�e��\X���>����Ҩ�\x��Uzd���\�>�Q���"K��I�����R"ķ1�՘�\���XG��V	��I{C�t�,O����T'�u[��%(��-�����|L���t,��۷5>���z�	�p2�4k(�=����Gb.���p��BL�Q������Q���62�"��;dd�v�C����٣�">IpnP�<�,p	�Et��v�ٖ��n�aE�\�m��-pI:ѩ�Ӏ�-�g�K��9y����a��)>�؜4UQ�h8sG� _���h�K�fihO�C���:r��a�1%:zmьh@c�����m�m��a���\((�����v��R�04��J)���an �E#Q��kXO������h�h<EY��;}�шdT�e��a����q4"y՞�QE�7)�*��J1#�h��iٹ�1��FשRfU�(?E����hD**�*
[<�QE��?)�*J�s3��F�RfU�2��fD�r �L�(c�=����1��FyR�U����T�t�����E��R&U�fꧨE��F��2����A�HEшTT&U�>7�JA�)(��ʶ��s�įȓ�<�O���Ge#yAM��F�%$Z3�'���"	�b���C�#Z4*�;{�����xD�Fec{5��Ҹz,ѲQ��yM��~+8ѺQ��^i�n��p<"�Ce#|n���2��G�R�<ZD���j�b��k>{���]��B�E$���t~�,�[ H�p~�	�-�ǘ�6�. ���m��c�u����x�j){Y�����M�V����9��IPy���>�?w�U�P�U���tٓ�.}�Z��M@���Y��Rx�� �|;�Pw^����l��?��q��IŰ��)x圹�%ߔ�t��b�Y��g�W�l����7��G}\���lS�'@6�mO"�/ː������r�*|J�N�az��ߥ.���ۤT�	ߋ�(���ew�ai��B��m�Нȭ/���<�|}��#>�VT�U����z�@���b�z�v��*G>4�%/B�����H_*ϥ�6Ϩ<���fB�}�A�t�q)��2�G�[��O'���"�>:SZ�3����d}:7.ާ�#G�(&�y���0.���#�	-��C�qA��(��oY�� �Ϗ����������xD>��؃_�-��G�|~��S	����xDzj�z�6�y ��#�۳y=5�Ǧ��(���|�l�_�rD=�o�l^O���T������"y=5ʟ]��4�߃���=�<�#�it��y~���4��S��Rz#�itŧHVO���QO�;>x}4��)�ǈz]�A}I~�����tky�X�n� ���:	���z����SEg���B�)�G[O��p��@�)�G��q�H�=�z���)�ꩳ���ROQ<"=�Y=u��_�
��(��Ҭ�J�I'��KwKES����p�ןȝǍ �g�/��� 0yH9��i���CJrRᘪ�f� 0uy�{��J Sǐ�����A����`Y���T�ގv%��G����{r�d�K$�T�7ucr<\��M?s���b��U@Փ����x�fԤ��vԤ&��t�$�)a:�	�D���Q��$*��'��P�$��H�
p��eБs�x>N���B"{�cXD^7�{U�� ��y�����1*�� �o�ay���=,�D���æ���q�������(~B�.q�OH��Ҽ�2���F�t�>T�Q���yI�p���G׃Б���i�!4,2�n8;��H��MC�aSwt3�f��VgD��!��q*�����S��Z) "A�i��È 'j�a"��/!2LO��|%D)*G^����\M6G� UUXǫ�� ]���"���#�\K�T��&����K�"Ôy�XBd�{�t
�SV��M	�aʊ��+!2LY���
��A�j���%D�)+�Q�3�UwF�R}V�d- 2LY���%DP�*o��j
�SV�}�J7�Pݝ_�����"Ôy�WBd��*�) �RVy[�HND�����	������ \SVdl	�A�j�t��!'���g�T������%�"*������w���%�@w����q���@̥H�J`���ب�l��V�;6��$���MQ�_�6�����M��6$��z�9E]q`�6{�-1_���*�f	l�zǶa����z"씬����l�N	rJ��;��rw��2)M�绔�l��J�$�S�&�oV��������]��9UvY��Ҳ���b����6)b���z _�X���1�JvW3˱?9�_//d@������S�lJ��w�\)d�>�J!�f�)�r/�|_{���h���Ȱ.���T���ymWKB���D�I�����جw�����z�m����D���RE����n��B�Q�X�ӫ�ˡZ췇�� 2������L�|�ǃ�e,_2���(��D��q��@�Ǽ����p�H)��X�c_����R e:�Jَ�f���C���~�����>�͡����7��^��n0D�&�I�f���}��fE���� �Y�%F�������]-z�_~
���J폨��n�}���e�����f��TGHTc���w���U�����������ޜ�h3��=V�y�i��� KPV���ɩ e��QC����z�������.f��+D��E�7>0�����-�?��\�~����,�Z/L|:�TL(������Ho jxo֧b2�����U�C�176d������O��:N.$;�n+m3m&^���P�H0�I_������V���˘��L0
�    %�f�d|uM�o�*���1n��9��S���6�g ���B%p��vZ\�5xn�ί�΋
�HnPhH44vu�-�b��l�$��ER�$Pɴ�AP��O����F��!��@�|�ʶ�����P,��/SI�s��d�'c2��a��?�Gl��!�u��l��߻�,��N4�|No����а���ܒ`����3U��2ᩳ/�s���XN�nd��ٯ/��K�r*��.��e�K$�޼���������ǋc%O^�i�^��֙�z�vm��2*,'�9��Rٺ����h�8V{�D�#OD<1S�]��L}��xg�Ϟh�a�������&�?r�ੰ� g�,��(��9������ɒ86������O�M&'w72�cP�ɒqKx�^��&��K%�Q*�0Y*�o�qY��C<O�ޥ��2.]�J�'����V�z�2��l�Y*+��w/�8��P��y|y7s7O��oMǴ����ݻ��o�j��84�.B2'����m�=[�ʂ������}Ϛ!8�.�A]����|��� p��p�{��Atq��f���ol�hT�j�vLl�� �
��!_{���\}M�m�Q�����賄�DǿȐ� t|��6%3���B�<H-ҔąRs:��X�,�Up��pI�V���EI�a�
c���(J:�D�QҞ�G�D��Jp�p�8J6�ćI���N�շ��ȵ)�A�D���.GQr�hS(�az#u e%Q&�,�%\��R,�\���Yk��H��0~�(rš(�V�ް�' �K(J�\R��ۿ͐���(E����*X	��(��� �����Ҙ��qj�z�0p#���85L��kی��K$���0���K#� ��85L������R�ǩ���Y0��P"�V��[Jȹ�Nַ�4q�:ԛ�(ѿz:���1�'�e�T|�V�����'���8�D����K$2�E�E����6�A.��G)Rm=L��8dm;�R���0��ޛDV��(E����6�tJ0�x��z�j�0pH�FQ�$RQmiC��l�����o{�F����Q��a�6��$�'��&�a�ͽۆ,8�=g���QX���a�ͽ��,�FP�6�m�&�<�r?ɳ��n����xP⭃l^Bg�����/����=��͹�����I�vF���l�E�� ܾ>⺎��d)@�Ť�b�Vp�aD
љ�%9

 G��Ɩf� /�H!���e)��و"w����y�V�uA��(c���<���H!rem^���9���֎I!�m^!���˱y�$;#�����KtNnHV �A�H��@�H�;<"��6aH^ %�N��fiH^ �u �iH^ ���B�k1!�vԁhK�!y��>�(�Ґ�@rh(6��ڐ�@�ㄢK�}4c΅�h�Ь:2�-4"�Hi^�NmD
�:Ҽ:�e9&�Hi^�DcD
�4Q�:jl@��	4ͫ#3�P�'��� T��b("�X+�(D�H���
Q��qvYo��t�k���ԧ��ڜ��G������b����=��sY-��~�ߪ��j����-e��V���լ�q�9��Lw�Sj�;!��f�M��%$X��j�X�O�|s>`^s)��4�p>1O��I�|���y�=p�.�ݪ� m�|`�Ў�z?������q��uS�㯔K�����{`��I}"���|k�#�?�u1����a��P8�լ�A	%��tcD�wy���>�:����0Sh6u1ӽ�J��(~�R�ˬ:3�J�
 п�[ʀ��ݵ
���}���tN��N���y.�63�O5<��*1S�"��Or?J�2���*�Յ��q54��V�������?�A0d����U����a�C��pgd�7�Pǩ��";JP"<p7�8�?�e����$�(��*ocAq��G�p����[�xD絆�,��p<�7�8{D��yDz�+u�( �g�r?O�s#�ǘ�4�HE^]�
<Ɯ�Q("X���2�<��C��i���va��]J����"��PC <��^n���m=ݜ4�9
�T:������%]bqg�����~b�i?9r��hD�.�bz��$4ܬ ȵ��i�hk��ajh���I#>=m)}oɘWt�\�(kD
&�Jрw���8��"�Bڞ����KEшtC�u4��a[A&g�hDۛl��o�l��K��ш�K�U�=74�H�E#Z)�GDˬ���rԂ��6٣���b �(��m�L��M�y��<���i4cA7�T�X�zT�b��7�K8ў�zT�_憟�ȊS�HEUJE8\~O�~n �Lq4"UI��E�@cD�o)TREosC����*z/ki�����K�������������r��c��U�=F�o�;���l�V���'�>nus �Z����,�����)��!�"�;߅��=��Bho�B�ez�c����8���m�-�K���r���jҥ<�a�(V1J�_����k�<?���&@�׆��ɐg��������Yc�Z�?�5���ٿ��Yog]����7��n=����2C��+��bq�qxX U�"�V�ͱp�d�hC�$Âod.�E�|V�����f�D�?m���?��_��	ԜK����3�J#�}�-���hZ����7�5�J��|�i�gS�kQJk����kYJ�"�hŃ�Ji!]�x��RZ�@E+r/�)���P�"w�ЭϴF���Ք����w/��6=S�[�[銴Z�n�R�B�,���Ix����	.�@.<�x��i�g�\g(��7�QC�`�tP,���d]G�r�G���xc˦�F6-A�jS���r�-�D�N�|t�K���y�O��͂�X�K!; Xt>��f�l�ρR�����6�H��pD
��W���g����O� ��_K?��@��`1��w�*�դP�%�H|,��ݰ��d��!�ᨖ���^�������=����ʴ/�d:�����]��O������,xf��#u5Ϧ������,�z�a%LA���ON��3�E�y�$��XP�W��WF�h�ʖ$�ûg����b�顯~�cgƳ@:b(�ȍ�,�q�E�c�4w�O�d܀bю^,���p�/�@�(���Ҕv�O�_hpCzs�$"�!�m��m����f���Xч�������p_�z���:�������]��m�����li�+����=\|9UR��`��O~}�B�Kg�����"�K��DpK���F�
K��aDp|FQ8��Dy�UB�#���K��aDp�x	1��d:��0"�����S�"���bY�&�D�)�FN�"�����'���}yd�?�}�y8�хg��-�z���}'?�Rr�.	0	��ӄ]����őB�ĔIG���6���2$Ȣ :��r�z|�=L�������|R�=]&-,!ġd��t��abl���Z%��/���Z͟�� p�V@Ĥ�ѧ���O*K�m*(����a�v��s;bEJ���f6��sE�I�~_���D�>�u���Hy�h$/����6�0_W�&ҡ����z���k<'�9�
�_&b���Pk��\�'�s~��- 2�Xa:�<V���v��l\@D<V�]��v��'9�XY�YBd��"{������"Ô�K[Bd����V�0eE�Õ���S�"���#Su��aʊL�,!���mn�H��-��	�N��z��u��Վ�@�s�I\+x&�Z6��/md3x!��M��;���+f�Q#�vެ�����xI�:�K��L��y'����`[�tۗ��eO8[�/����o���b���֌�/��L|���S��QP�@�MDA#��:�],,�8p+���Q �r���ܹ��twN��-�y^���w��P�|P�z
ct������*8�xo։ԩ
ya�T%O�����1���l #o:/���[�X��z^a'�XJ��ǉ5�O�!v�[��    <Ď`���em::G��� e�}b����kt���|�[��1X>�<����J���,��o��WW��E3RO:X�|�Q�l��6C�s�q��}������P�U��d2T�UC�R�t��6�^S�2��2������b8z�ąɭ�<��~�j֡R�MH�	��P��������q��0e�w��w��vQq�V��FڧbR����<����U/�_h}��=�/�ט�D_��/Q�ߠ��#�ߢ�O!��}���6����<��G��A���Y�P��f�^��HH�i���%��܃Y�����g1�?(�8P�3B�2ʿ)�h#�!�IF,���j=�e���l�m��al�/>�!�6����$��.?�`��󑍷��q����l�_W���6 4��^�p��et�1':Xu'SFg�,-=�,������ ���"�D٩�3D��ҞJ����d"��AIr��L�������e正����&����� Uv^�A�r:�K��'E�r	�A.2���
)c1�G��A�y:��DD���' �׸w�p��qH��D������Q>�u`�=�俟	䛩���1����<�=#r1����|�
�A���û�A�MErhGhP��� ��v��$�{��A㞣Crh)8}O��ᵶ9ؘCߛx��a����Hb9}�Z�1�@c�b}��]�0�>�}*��IxjhD�N2�N�1n�/�X'Y^'��P�C�����'��b�d�4�7
�b��y�TtT�N�N�㥸gd�b��I��I��'6���g�Gx
l��'�6q�z���Z��N��Yg�0�b62�>�D@{"`A0�'&���QH>̟��]�����t�u�����~��Xh~���ܰ��K:B��w�S����T���2���7��E_��2�vk�.pn<8�@��E��T�	��!��(%,ڍ�;X@�'`�<>)a�����Bz�S����],��,��%%,�o�t�By�Ӊ��Q:Y[ �d��*�u�h����¯T�M]���(�,�g���,c��L���T��F;�,��Y�"z[�����^��B;��L`�KX$_���R�2�o:	�5`	���|W^�H�,!�|��D�p��H>tz'�Qث��WNH��1�lF�I���0'4*H*�|��n��f���i8$�6}Ξ�r`����uatX��/�C)zr˰�R�����2p�����t�s�Q$hF��Q�{���K�{2e��.�����mO��9��:֋1^G�e��|/��h�|1*�FS��ǲ&s�\�y#��6����d�?�)@�m�*�N���l���P}��n���;:�°�y ���2؎� +����rR�K�H����ѱ�%�ؗ�}=}V���È�tK���mÌ��m��Sn���9�ʩp�Ո�]��?"��>?�_oÚn9b����N2�ٔJl2�bD��S�����������U�w��+�%�������o/���gw�wZ|Ø���p��_3v������������h�@g�O�ɟ;	m�)��bE��/�/��IHH��M0$��ă?��#��!aH�Wڦ����\$p�'P$�;m�����~A��5C��/�mw7���	\�f��V��I���P�x�s��Z��uQ{�$��^�fERxq�5:ǐ�H �Y�dM1;2�lN1�$FS̎ �SLC��M1;r�lV1�����4�X1mF1���k@N�=4(�h�n����H�tS�SM8���u�F$��L�����v_H�|��B�4��k��	8M<!�87���Cg�t�G&��N��nJu�&��XB�[��r�R
�6�����nl��)���s����a#�h��M8pd�L��'�y�S�wB	�������u0;ҁ(g=_�'�m���y�D xP_������ơ-|�蠾��ˡZ췇�g��`���l~�k���z�A���;˥�d��*��OД��c,1w�_��4<� #������D�"��=�΍2�k���Kg�t�0,\O��:{�_���
#xT'�2
�M�o��Z1�(����Φ����
Ⱦ1X枣����t��ۉ��"��c�|b/�}7E���=\�=c2� ��ܧ~N�bj�WB�G󠷽t������("Уsĸ����̓�:���.Z瓙3��ϳ�ޡFƞ%�}*G��P�;[�x�[���ý^P�v��+��U.z��GL��i"1��wm�ޕG&���4�
SG����:�##���5��yO�j<82˷\�ɛ�ڂ</(�	\�_j�\�"���ޟ@����(�c�<�(O+4w�َJY-��8���ԕ`�雇�/������'�;�����/�=i-��+m|'|�y񯌖q���}������Х6���<��z�������m�9�5ǪY>7�Q9��Yf���_��!_�1���n�ӒH�Cz�G3���c64�Fx�8����!lv���D�y��c��"��4���Y�lxv���^�D�r-6�o�q��;Bbv�Ûlg���ql�d0K�@��Ӡ�4��f�����=��g|�\��������:8t� Ȟ�L��s����s�A�����3g�ont	qR1�]r��o��!DcUr#�1YןI�p
nL�w��I�E��G�$k�L=ji_�+<��y�m�.�����ꊪ�}��ۿl�G�F�]����n�����W'���h�'Z�+�/��?��6��f�r9N�|>Jw�ܼڞg��3l����b�ñ>���y��x������B�D���������y\�qnkpA�gs��S;f���DX�Qe��8֡��]@�7�9��VNd�A������ߪC�\Ǆ�''�����gBS@w(��g��x��RAwɔ�ʯ����d�N��K�_ԯ�`�4ʧ�0�g���s�r�P	6��T�0�;�ޯ_�Y�f�o�]g����7��q�7����#�]�0����?`�S;�Z\>J�������6�k�����7�����g.Unw��_=�˿����X^g�aT��K#p��v����"���M��w�c�\��ѐm�S'���<���&vu���� 9�������4���_��gؗ�����zW���8*:O�U+�Vg����r_�ϫ�e'��c�)?��ڞ\ lgbq��v�1�X�5�U��F�w?���|�;��(�}:r(�׳�����������*.�~�?6�gC�"p������m�T��cyZ��1#�:������4���bCmFnƕ����b����������8���n�o�>*�a��_$��[����^�ϋ�_���ϩul���Ow�y�������e�M)��vÑ��0&j���F����O����u��o��L��:�g>���_I�l�����?T9��(��*gT��4&�g�x�󪝰�	�RGU˳�[������R��e[�I�Cs���.�T��}[�ͤc�"�γtpO[w�z�ެ��2��`C���W�t+��TT��ٿ�J ����z{�/�~�*j����&�C�'�~D����oLrF���]��j��.'��?]�N��˟�<����]놹����|\CE����c�*��wο1�@��]��.-�s<�����-����o��4�+.����u��ٿy����#�N�7u�f�� Eg?!�YƔ0����Q� ��<5��O��+�^b���d������e�l��w�T������x"�����wn�	�����S�9ۙn
~����9��Dsֈ�m���	��?u�ɶ����k"�SO8���D�K8����eg:=�;�Z�����ܸ���N���	��s^vl������hm��6	툟���
�7��҅�~���)M�R��bj��aw�:h�kng���ޜ�q��������������
����������?:��o!^����9�� wd�'�U��    ���\����⡗+�I0;�����e|�ԭ�u+��8V��s�s��}hס��Y�ˮ5	��?|��C�IP�����C��r���=�׋�Ah	j�Ap��^���]Wϐ]pIB�T'����h�.5��{X�?������;�	@����������i���;��?�4s�S;�J���']:	jA�t"�����bc6z�Y���Ay9LfF>��t���tŃ�"�V�^�=d�օ���Sh���w�e�]��V*;��:)v�e�'bnQ����c�GB~�����sB�i�s�}��t�O%��a�K4��c}�<�7����S����]Z�V���٧�����
;�L�\�)5Y^e�i�"^��nom�H�&�TlR�n����vʗÝS�a_݌�����E���N��%_p�qO^�f{w�V�i�0̓}r�xA���M'��{e�
sX�_�qb�*�N������[�ݥ_p�P�H�,��,�p���,r�*���h�V,t\T���u��PBL�(΄V�^�/e@��ߥfRN�rY+%��ӧ6u��t�{u���'7'�N\R��>��%5�
�K���\.���hE؉�Q�SH&�Mdʘ3)l��h���+9�l��M�T�������%؝%�<l�S-�β
���{�$�����cJ��e��=!`�;Er���D����>W7��_��:
�?�a�����%$�3�2@�����9��O�����f�De�U������x��|�N}莲��#�tE���"������<��ϱ{��{0X�Z�oB���V\cب��¹Af{Z��UKM�L�O��/�9
P;�������X/��j,�LV�����,ku7m紺 #�K�a}�ѥ^����dȉ�Na�'
aM��W\�E!z�Z>8$D��Ql����=R�6��G}\��e��z!x�#�����%�FO����+e�NBn���ޫ��5��^���Ϸ���.�uE���L��A��~����s4��s��[o�;p2K"w�Č�� �sٜ���~�v�J�e�����	I�\���%? %�]�0 �~׻��?��z�<&l*��ϫk퐞
���5j�,�i�D�Վ��Y����txg�;��P�~�7B|��$dOA�R��[/D��57�Ի�spY���yD���3�.�����%Vn�Zݏ�U��d���G]�2�>W��z� 1S��F!,\��y��g�<^gQO�BT�}j�O����?�pf��۲��C�uV�ng��@�Z=�Ƣ�\���>�w�.�suȻ�E�]���r~���Suz_d8����[�է������=��PRU.XԖov�qLVn������9V/�JrI��ٜ�J��+fY����J�|#���%��aD4m�S}����ްW�8\�!C�"���+y՚�0s�I����G�x�(0H�k��[�xB��V/��#p�S�r�D���Ee��#�_T�h�*,� S��䅂��p�~zg4
Ài����h�<�)�`�9<�W�"�0�E2���W���N� 5ɬ���|����Bx�A�Z/�������d��ɴ��/�g}���'�n��]J0!z�O��ܜ���yբҒ��O�B/��M#JZ��J^!��R���sbB繴L���A���o�1����'uq>tUڹh�PiF��z|W+J$��~'H�}���pr^�r�Q��!n`΀j��&|+�xw��r�����8e��l^��~��	�?	��M�+7E���\igx͉��3y��FSeIR�n_0+g��o�oΟW�T���'�*4���\l	8��|�rJ;˰Y�2x{�a[��;��y;_������ki��_��l`*<<.UH���Ž�}���Y�nYl7nﮞ�c� \���ig���"ݯ��¬k��_]�WA\�+'�?��$�K�~� �/[v!�������-�Cs<�!���Z�Ш�T��t��"�ۄS�װC'���8�ivr6��ngO�d;0���BL�#�y��z�q�o�����	[����������d�������S������'��)J  �&�f�s�[V�f�kf�!g�wC���T��%�:�a��Rgy/��R�B�) e� S@�^H:��dS@��K)h�L��R�/�$�R��]z�t�� �_J0f���%��~'r�	6�6y��zO��do�����~��"�7Z���~���K��S����?q�Z�]��L���r�W!\�pUD�$]%�i�~]�E2@(�J����;��<��g�k��%�$���.��S%�Y//㛸�2��H`�	�&{�_~�	��lz�6,(��=�ϻ��%{�<vY?Q���v��g!��z1��Z�ua�_%�ج���ʼ2�Qh�JA?��|�|y]M�;�����mn�&C62q��ȟ/ۏp�6	�M�B�j��%�QW#�[~)���z}58/����p|{�O��E�,~��ÃZ��U(��*g��ލ��9_�706�(�X�GJ>p�Qt�/oN��p�X�'�����T],UO-�&��O��xo����ԙ�՟V?Hx�u~�+ߎj1f�M]�\��	~~�'cb�9�osPw�AN�Dt�}Ms�i�h����ġ,�,��ey�t\�����Sh���LĲ	׮[H�<��+3_N1�e�G��-����/��,�Rm����}���=��D
ªg���*�e�?�(�&�0�2و��:�Qůe�ɒ��������wT��%Z��b���>5GL���qqZ-�_>&4-b�*�����)��;'�9��d3S�0nZ߷��cS����z�"������%[.����%Yd�3��
Y�z�6*D�(d3�7���������[��Ai�I^i"pM���6T������>W�;�|�t�6Mt*r�/��ghx5<G��)��L? ��!��_���no��p�C]�N<��I��sE���$�9���ln[U,����� �(�|<%�|�m���G�u*���\�ǒ����b�7U��M�*��O$�Ηq#����=��HĊ�K��6�"Q`���iH�%Ts	5"kf/	���e$b��DfN������DfN���Id��H聒�'!{��3�l���(f�����<����IŌ&f�D:�!�Q��9�*"1P1y&+#1P1yf+/#1P1s^w�����H���Is[y�����%�lN��n�����>�|�'�nKh�KwNP?7!�����MX;:�~�!4�yi�0lǣܗ�h���כpې��S3���>�z(��@��Qh���tVfV"k�H9��E�}:zf~:��=2�y�J�|�u�)C�����|[�~��Ͷ��XsfX�C>{zz�"pHн�������z�T�s�~~���u�w�z>U3�[D;���mJ�-^�mlF#W!��yx1��@�ݕ:�B ,m6�VF�$$��4t���\�"j6;-�
J��Ml��΋��3�V,��eWObF�����(㡱<�|b�'�J�NĠ��'x�)xX,f/<���<R�EP)��!ؓ� �c��C?���N����E?�0.��Qă��A�L�a��!���O4�ȭ�"˃꫐M2O.�;]��4��m{���8L�kҸPH����������"=..%������6�����q�_6�i��+xM�I�jF�!)�.�ՙ<����Ǖ���=�I�U=� ����Ufu�rF�h/f�7��>>����,3[_	��h�E`�#������ʸE%,�N�a�MO��Y�]DN�[��,X� �}�ܩ��)���������Q��cC�4���n[���4�����K11|���Nwh�O�0��ׁ�{Q�V��Y��C��L�v��nn_�Vs�k�o@��;w�˩S���ݾ:n�u0T������7���3�=}?�̤�fR�'[ꑟ2F&Ɉ���M�b�,~���/S��M�kd7�2��aN�۞�d�r�m?��;D26
��ùa���Yȼ�)���F��CmK��w���>@���5�!P    ��>\�,�a���)cЛLyO��\��t;,~�B����Ac*C0s�Z�ɏ�w��1k<:?Rd���������2���:�I�)����w�O1�7y���I�)�F���S33w�.���[�|��w4���'���TZDo}Li���P�-�ݞ_׳�[��ѿ���&;#���[9�( ��W��c��o�=�O.�^5�c細���[�E�hr�<�<�����ӎ�}8/a�Ӄ�,o�ݴ��ηJJ�sm0�[a7�(솋����O��[�(`�Cz�Ti��zL�]+	>XG%\�=��͹�����噄 Ƿ
tA�r��+���x�V��ky��H"�u�c�L�PZ�wP�z��m�R͛K�� �6n�f\l�ŵ������4q�Nno�����i�Ơ��%$�h���"�=���
~G;�	��3Lĝ	���G�O~Q��U������|�~o��M�<UZ��u�!V2d0h(�=8*#�I[����%f���NVbu�C���`I|L�;��E����)�1I��L���w���Q�AS�cDp���+	�D�+�Q���1ɚS����|E2U�3!<J�p�/�Q�J�Q�>S�\���1�7!���W�/>�_]{�ԛ�b��Ōs�]8n3�0p���q�Om���կ�S��G 1��.���[��_]X�O)�ҟ�(�C���B<ؠrC���{�f8�y�H�H��G��p������7�V�u:�s���\��}�9�D}t;�Ͱ:�u�Hu��rf�V���[��b��?l�8!���O�z�A��P��n����m��5|w����y^��r�N/���I��ӗ��Y�X�%g}���/�j��ا�]��KΤ��;�-��H�T�rǁ>�L۱>2��`�r.��1H�d�a�H��z��0@�Y^l 'a�058�� �$�7���1@�R�)`��0�$((�$���E�EӒ�KL=
A�ډI�����Y��
�0�E����#��2<-'�D�i����÷�) i���+s�/�0\���T�O������\O�2����ǚ+������e4|�H�'���(J�~q#HD���ɜ$HXk�@��Ԗh�\�%��$���H��I��|�T�F�"�p�2`�-!����@���H$�񁄝x8X�cx�d��,"��Rq�N���D[1�����2�
Y�E�zy���y�C|�"
m��(��̽I�$���y�o��_�Q>q_N��KEDfet`���4�C#=6w�Fg�W�������4I[�0̸)�P�#= ���mK�Ղ�qNIW��Z8�����t���޶�m-Ц���m����m�B�
�m#=LSf�@���YG�X�8�*�:R8�*H��#i"/��;.B�Dr�O6{��Q�9�T!�m�9���������ZYz��{_�$�=�^��h��O@���Ƨ���ӄRwц����E�&��>�Ԫ�@�;1�(�wrY !� TB�&�������m!�&)� �<�=������2$�) 1w$v4[@bo$��E"I��B9A�q�`��WͲX���aP���K7��$w���v�:����^�ZJ3Q�~}.X�k,ݘ�Dv�RƊa@T̏w�?i�Ao���*�[�������g8�Xh	Rt��4�R��Y���>��.��/�n�L�:����}T�Ѿ��߯���FU�U�t�|U0M��Ǩ�S�
��ɹI3ڬ����ubӕ��eN#����F���B��i�h�s[�Q�V�i��ړ��|5P�֪J�K1�Ԗ�~�H�K�)vA�&�b�=�ֈ������)eP�H�G��S��@���fk�P�c��`wq��8���5��a�@�� HTZ�⎰ �D�Հ�� A#H|pH$`0b����p�H*I�i�O%�y$pA��3(��%E"u`�PLω�=
���Pl��b����*�Aq��߬���[>U(����
Y��T����:�D=�Q���nl��"u��Ӆ���u�|���eY݈��H'�T 3���q~�(�쩣�"�(��R:��gE!Zz��t�~�SR�}�T�"x���$�i����A��uC��ز1 �y�P�~�~�VXL��G�J�t��ӟ�c@�2��R:<�i��b��
�Vt�UE���~i�)?��⨅:�xA]��z����j�������w��Zn��H#C/�u4����N"�jMߜU	Sqa�oc�q]�K�N0�/�DR��#a�`�$u2mT&#t<��V%�����r8M�埓�׌�(��Bg	Y�J<Y�APB��$@�� X�
��A�-�|��m�$&,Ԟ�<�ԉL�������uRS����}���U��]5��������4a��yY������z�L��3�'P��f�4�D����N֒��5����:��dU�)"^��nNfZ`�S��3\�|��+���J<�ů�@<E����y��^��|��?�a�wUU�U����*���s_oǙz��6#�3�Q��1�
��[xn�"�cVO���(##�/�z�*���*��kf��躯_`��?��w�U�����fB�#�z��g+�zl���u���X=�����_`��g���:�V�E��Y=7��$�b6�J�(��@�R`3�N<f����f�N<f�������2��׉�F���b�Mc�X�ߝgsw\^Ζ�T	@;@��TX�y�}X�yk�۬v���:�+�o!Ĳ�4�N[\�X�����7$�ㆇn'���q;{?��V���k�	aI!I?yV QD*�ϼ��#P%�S#�N('V��A:W�>�N�]3�Lm1��%�IO�g=��́���27�q�s=F���I$� �K��� �l�kO$�ĝw��3ٵ��A�x;��H�ym�C"Mx�D�����QȮ�wH��w��3�ɖ�������]��H��B�6�#�]��H.f5�b��'�6ԡ��:\Z|�6j�kCJ#d� dDY�k�B��ն0�IShi��e��q��`w�c�e��q��V�q�f�WxK)iG�Y�W�= FұG!�6_�*�x{V��g�L�,�p�����8���$�d�k\�{ #�p4{�囪q�*������|����TM�N�gf�q����f=���T���N����P��N�q)hHKw�+���D��Q4�w�u���m
�=gx��k�;5�N![�s���-�@Ǘa����r��HN�������ʻ��S(��nk���,��2��ҙ��ƸlΧם�A.ߥ/aD�Y?(���)��-��3�jd�Es����򋮄nt���ʻ�c�[��*?߱��/���cֻC���C���MǮ?�- #�s!)|��d�}7�R���:���鍥r��A�<1a����X:縛������B��/D�s�Mʾߩ��,��;}�l�_7	��@�N�DU��
c;!#9?�ӈ�=���혹��R��ۡ�����0�S�x�Vd�&��7("��'q�B`r�Q��pˎL	N�t�RrP��ѩ ��΍ޠt��TA���Ȋa�򇪂��:)��˟�
R����#�?o�P=���ئ�b�/�Dlh�0�*H�z$T��ŗ=���ܫǕ˽��X?���;	�� -8���˟ˠ9]/234_�9_O�� =w^b_z�e�j���;J�s/��Ë �v*�������_�F�~;%C[��S� ��h��->���>�@��~|%�/�5��>�@��~�K��u?��㌠��*J��>|�'A{�*�eO?ex�6�}lW���.�`}7;����1���`<�s��j0�G��mi`0�y�h���Xϓ�8�RG�z(���,X:���8�邱�����cЏb`4A�y��ӿ7'����`����~Ϲ���'�������<�W�( �4'Κ��Ip�NB��[��-�$Ϥ�4¦����w��Q��ų����,W�M�˒�'pw@���=����3 p�u��_f�TO�"�1�71p�m�W�c@@�w����_G��w ����3�-���ͨ�    ^P0G�C6?�D�i˽>��g��~��s~�B�(
7Z��B��\o��n�h�Nv�"MW!���O2QT��"^�b|�'�y[/�?�sB�YM8%� nRz�[���t|ҵ�i�-���_]#7�˪���q?���x���XG�X��~
�����i�)�S���;����*���%�(�n�~j��s���bp�4+{͞��7��YR��*�.�{1��hF�t�l��7�Vj*�Q��.���I �i�k�!()5]�Ɗ��Hc�!�>}�~gf��[#4���>U|n-w�nk���H��������|�����y]��g���s��CM���%��9h�c~���j�Z"mq��:��,N�����_/�%X��S[�(ۭ'��h[�lQ8�7��9װJ�L�d������8��A���l:[��$�*�J?�S.�Aje3� ��Z5>*��OMΰJ���3;kD[|r,N�7�֗��x����#�M�6�M��2ߢ�"-
�H�+�;�=>���@���=��YX$p��}py(��H��ya���;���$�'�܌���$�F'�7mU�$�!�Ƨ����챬$�f��D 1�U$�G��4a���kH"�"9�<	6a+Ht?9�0:#�$��*�t�_�Xk�*�����X��	a�\e׎o��E�W��4����1�I?e�`D��H��X:(a9<6��lu����U~t�א���Л�	��kHPK������b�L5$��Vٵ�W��������e��	�������Ȫ��2�Z�YY(c;�((}=Y���((}�;h����1P�ZgSlpRP�td�5)�>��_�!�@���r�f�(=m�o�'�EKK�I�c-�E�!�ҹۊ%i%Y�y����3<	j�IT �h5r,P�X�(,��k�0ς�*�~f�YE\���0�����B:5��$LS�C⼩����9��}�0dK�ʝA|J���c���.9��>Pr:�^D��C��a��o�SN�|�=O��r#���c��Ѳ-��]�#�X�nH����.�*vj�B�y3��AK���Pz^�J�&*��*��w"��(i�~�$�~�������w1�@޽Λ���$�����H�nF�
�:~v������{T�=�MJFO֟��_�V`��^�l�H!�
�~�+��;PB8�A� $��ϞBC�VB���=�ƛv���QI��"�{�&{��$)��p��BK{��t�#���d�,�������%��p�c#�$c�b-�%d���>�Ht���!�&��oW����}H�� �K��s�O�ř���'���n9;M��T4X�&Y���=ti�B �r7�Pܹ���6>���,�̧���:�,�����e�ɹ`D�ɧ�\���]��v����ъU���X/���8 ��'��� �=��M˔l<ZA>K�r�d��B�������C�K"W��m�<ʵ/�xC��#�-�;�G��~:0
ˣP&��� �
��A��|�^�9L�
��C�1$�6���-F����C1H.%	����܈^>�r�b��$��{���%R���Y��%RF�h��c�lL��n����g��_/և�&3H�ϧ���vx�4�]�����։����a����9-"Ɋ)6��o �V[���F�N�s�
c�{!���,:���B�F��"�q�>g���>���\_��ok�!ܽp�?�IY�E�����W�)8��dbh�GwH����-e����� Egv�v��=��O'َ�.�#�)�{����܍�!y:�C�):f��?�R� ��̝����l
y�{��j1=/��� � �F�&n���D����9s�T���Z]��=8�R���p?SD�������h�y/ ��Q�*��Fa�b:����5G�����D����h�~�h��PT+�����r ��jzTl����uF����)�ii2ǵ����~�����옶�x���t����QN��U�$������*9�W�@�J%Rv�e���ɾ~%J{�F[����pH7�.������u�n�2s"���LKm'����4����Uj碜�2w&�G(�M����������߮�3�����ۭ�M#l�7Z�ffDư��	UX�H� ����gB�[���s�}�)��\��/��ԉY<��ӏ���q?��ump��j�BK
���
]��$��k	���F�4<A^5
�|I�v܋JT9��GK���(-Y�$w�4�G$g�9X*_y$�_Щ<"���$�ڗ��Vqʿk/=�!�&]j/y����v�U�A:��Z'=���������H@@��v���iZQ�i���m��#�^���M_��k/�R�+��|�N��vw����u��a]���m\���#�u������� ���#QB4����QT~��E�?�?��U�o۽�|�Ir������ӊ�?�-/�l_�����_z�����߶~����?t[)?��i�/0�[%ky��}O`��Jz��U�&����孒�lR�M@[���ݭ��lUE��.�U�E|�IG����g�1�g8j��9����!�I<�_�^
��e��{q�Q�גN(hSn�8���pܿ��GA��p�p+�^Y��JV��j��g�䲼\�6��>u����g�pt�-�k�;�z%/9�=����N�0Pa��0��fP�#"8h(hk����,d����8Z�d�N�鴣�`af3�Q�����<k�q*K����"��Qx*��"�`a+��Fp�Qy?w��$��[�CI��%}��ig\`NoOw�Ux�SK?�Gb����k����8}���sL�x��Y�	O�<�oH��ei���|��iVx���x	�y�\�ӵ�
O}z�Q>,Jw��5�
πz�1a��\�ӵ�
O�j���<�u.䉘g<'�ǸC��Q�z/��g<9�*� �E�3�%��O�A�O!O�>�K��8"?�Y"��ZH���"��#��"ܑ�0����2³f���M3�T�rH$J����PHR
�iU*�inДB#�q(di�����lS<-̓�b[�A����&cL�c���F)��'Uc�7�ek�۰FDA�{	/H��#T*IrF�A'&��$!ԑ`f��^�-'��$Y����(I4��Wt�k���UDnI'm���Q'}�d�"]�&=]�~~�v�������g>��</��!�ې'rb�	'Ҍ���q�A��Ђ��:�4��:�|4�������xv���������0=��/�)����m.�D	5i�1�^Ky���(޳N~�Iǻ��CA�{��DL��r[��3s�
KA3�\�e�Vf� 9�2�1���{�F ���R����"!�U9�����u���:�z�D���t 1'��A`��uD`�����e��@w��$�\ �.���cyJ�"���mr1�}@��}#�yo#.�o�I8��L�=��TT�5�-+��=����.[�����q�J$k7kp\@��pi2ޞX��%"ޢl0�3�8ʖ���E2Q��=���&[6)��*��D$�~��Vפ���U��j�emn���xU���;2��L���_��(�%[��;]�DNj4���.��$e�.�ŧd"C5�"���TS��M��Չ��t?m�/D�{�����!�c
g�١=-����N,�
�Q�D������Ϩ�`u�����5`i�`y:����1�^L�"0}�D��7�z����_�QK���{2��Ʉ<��e21&֓	yz��3���ɦy~��DI���hS~�F�� 4f�U�v; h.�!c�Ym���42fHQ_���T}�6��t�/g��>������bf[�1ۃ�,�N��.?f�u�J׭��,1묻��O����$}]��;�ه�3jAi2J��L	��=�N2؅�C pQ5˻����KFG��yO��:v��V�ʝ�K��NFY�U��3���yW��^v�QH2qV�����.m'��E8��K�!�qx,��j;�h��ɻ��̴Qalޏ����	CIށ�欍	C�����a�m��(1�}�X΋��    m`����<k�6ݬ��=�x�f�5RcA��Rq�?�<�t3�Z&��^<�vS�.�=U����/��;���1��{��)�6�t61,�w�Mj���D���t޳���n�3?�!�qx,�w�m��Ý��X��#zMl���L�Pbx,F�� ���ˈ������2[�
�5���s5dӧ��wc|��9��q�-��T�h2�@��lL��eUȗ�q�"m�o���ϗ��K3����c��":ב�Cۨ�Rw:��>��A�����&j�\
#AGfr����2��ԇR>hs��n�`�сlȡV�p��P��_��	����Q? f�d�!vƇ�=�Ƽ�Ɂ�W��LŴ́,Ĥ�M^Oe��f��L���mi���1��^���Ő'���j]���rf��tE�&����ϋ��.F��i2�jJ�[�4D�3j��[%#yy�q�ǣ�<����ػ�&:�����vv>}8�!����.lϻ��+�;[�B�E��F.w!��J:-^7�8�A����DG'��a)��rT���+7�D�C�ۊS�c��4�)Biy�p�<a���-���J*�x��x�;<MiJ��3»C`����Q��m��,9�m>"K�Ko����<�H�S�ܛ�'�_�i*R����"�1!r�iz!��c��������=D=ND������)t�:	�X��� �_���\��k��Y�wv�&���?(�WC[��<�n�����ږ���[��t�|&k�*��MBm;����N*
����,�A�[����̃4���ѧ���c%��7T�*O�Y�V�o.�"\ҕL��vB�VO�~��-a�q&Rס �I�8o?X�^�p�1�
=�m�>E=:֯�)d��>4":���C�����Jv�ұi�����6��9� �҉i����u�vzn\���PM��%��tB��wh�w��u������8Z����_��f)�o����B+�o�h*��>'��]����x�]�D�y��e��MPgz�v�Ġ����Q_��5�ᆛm���/���;D����R4�w,^��M���h<�^�^��Cp!�]���x(���C�����rXMObKȄKb�����"]4@4E��i��/���4�M�k'��&��X�?Z�"�pJr��q��"r
r�����雓�Ϸ[�|�m!���5���dm��;�������L{���|��㣭(Y�8��"���PRʇ%[·�_̓��o!S�L��U8,����g��bʝ��#��'�T��I��A`#l
L[B�M�F�I#I�F��c��%�U7w���w\�9����
 l�wܻ\d��&'n����p�ӷa&T���P%�*rB�G��	u.�(BU�K�8Bc��,v�#-��p����[Y���U3d�w��B!���0�����uzY�^�.z)�ы(���+����l�~�-=K)����!&=Vo�!�F!�O�	����l������q(�w(8I�	Cv9��b$�ڻ�n��¹�p�m���'�p�%,?�Q�k=d��e���t��(^C��/��U��u���|討�g�FT�뉘[u�:<�f��˯�g���R���}J���k�Ø������֨&�f7�'9刐�g���^s���>�^N-��NvsE�7?Y���#A"�4�c$H��f� I��KcA��4��,H�������� OCZ�A�-H�?Ȃ�d�vb߈,X������˂�Y���ܾ,������˂DO�?hw��)����ӗ,Ƃ�I���ݾ,Hx����U�x�b,HT�����͂�@�o�]�~�Q:ƂD>�o�ݾ,X�����$wE��
x�WI6W�W1Ժ��<)�Ùܒ��ȿ;�%����4��Ǣ=(.Y0Z?�c�#�f��>	R�K�J��锇.*ijS�y�܋!��W<�Xa6(�2$��jد�1�tړ�@�:�h�P0�!��i0nmqa�P�۳��Y�ݡ��ⓡ?���Y:U��Ey�����5��� ].�f�_��m��0wl_���g#�S�仿
��T�IJ���7c��2�ķ�XұbhD�j\�����_A�T!� =b�xp�)��4������z�v����^�q���^=B���\��q/���b �.�L��?��9Hrj�Ö��{��S��uξ9F�B��U~��YE9��W��t�]D�~
Y��ھ�l@4��L{�.��:�Ȩ���:4� FC��i����#�oPM�O[\h��,ζY/�'<������ؿ��t���4+�֥���'���Y�ӷ�Z�`�4le�DU�P���9��u�-�l���n%_N���B��������_Г-7�p�a������s�F�z��ߥq��qG!�wZ�8�84�#K��I�H���&���z����������O��t����������P�mq���`��3u�l��i�A(Ӗ�8�a <̉�����]]����B���y�-�|���q���m���8L����Ǜ���No!13⌠�@�Nd>ݞ��S�ƨ���Hr[�6M�r#?7^� �+�_jwG[��1�H��@~z- ��u��T���4�����S�(-��Uo�!������1U���ĶI2+��x ����ϔ�W�Q�+A����m�i�=}�6S����d������d�a��;0��x�����l~�g?H���q��M�?�h�j����&'K�K���H~l�'��N5��s����0��SOUlYȌ��j_�"2S���~-a^l����}�W-H�ߠ�!P:Z�H�a��)�]"}��SH�wn�/�c+��ӯ��r��cu�tV�5������:���52��D#�����	��jP
��Q�x1�1O:(�gy��k��[�hIX�}5Iִ#��ڗ%0�}��l�Q��z�I_ӡh��l{�BI�}":q��/��j^v�US��v{������l��PG��ܩ�7��59�7�Ġ�'��)$3���kD�9#޵��I:��	�����A*�=��gZ�vЅT�Hm-)�t��}�&J*��2Bz�����	OHq�1HZ
I� �-��S�+%�Q�����A��y��ɮ�,�ɫ<���&�WR#U�#�<�r��,�	z�O�S��I�b�����R�ߔ�&�I���mJ�zSbC�&r5�$�)�x����V�_�Qh8��6���b;��Q������v���R�O�_ӟ/�U ��Lz����C���U:��>�3���
�DĿ����*!i7U:�/��u(��$�����JmS��|7EX��G���Y涬��	o�����!�	���sAx�i!Ɠsw��	
�b�%s���[%�d�[.����2#)ސ��В��oN��*��X27<Q��u�L�Į8k��M�sE�;S�X�����;��3wn�)��>T��� ��WZ�h�¤!L"k���ກ�j����hB\4A1�>I[��@�Ü�h��q �6���iwVo ���7AP��n���
��W�/(��Րoc��5I�|�x.�~4�,�z�l�*��C9�����?��%����v�8 ��:����\�h��h��`�8+����zrn�d�3�ȩ����@�_p,�j�q��Ȁ�kfg��%�21)�}Yo1�ODu�Vf�>�	#�7R1gu�[˴�Y,ɬDh��Ċ�[��o�w�v�Ζ�nT���r�InZm��� ����':6Q�� ���;Y��v�-��e�����k��~���O�!y Ԥ ��@|D*� gnV����dH�Lk�qX�����̸����Er�b���nŤ�b���/_6{��	�H���b:���|>�;�R���������rwNs^U2�����y��6ɖF.��c�gT��5`�o�Y����|�7�U4w���i�����r���O���_��>l�V��k<�L_�c	�d�����!�^:\U;�j�,�GPI��ą�x�.�is�L<�'�������z�S<V�    �)�+^�{B�{~�V��)^+ޖ�W7�lP����n
�Ϗ�k�O����D(1}�#`�Y}1��@����g
)A���$^�%` 6���4�OO1F�����?�b���{'a����dR���J��t�8s�ђGy��y�񢐤�(oC������؉�T�l��&�p�VЄB,�	Q2&ʓ��Ž��K"�w+Φ=O�o����?�ΟsB��Y=)%�O���A�B��x}}Z/H$Z̲N�� z�����,���q�&s��䐄T���Z�H��e�r7qHA���U�>�]�H#Uo)����z�DS�����t�O����^�G��$���ojT鋒�����Ⰼ�EJݤ���H��7��w>��S�s��^(��M=s�-�m�����۰�d�yZbPE���76R���[�Ũ�=����ӝ�l	&Oc�f��܎�s�0��6u:�?�q�xKv� Yy�:fyӏL���M>�Y�������8�n
��Mjt����̎��k"w �9�#�Г2��@�;9gS1xѥ��������U %w(��5$��+J�SF���D+D~���A 0J���j�J.UFSI$�܊���іr$�ފ���2%%Jr]�(BIR�"c���D�+J,�hD��+�^��HH��".@KK��,+���G�Rl�E�ޣi)�sȢ+�ѐb[�,��e�kR�t��=R�t˄�8a��VG�ȥ�Ub��D<�"��>O(Ǖ�eu��W̊ˢ{�5Ȟ:ʈ @�+f�! 0UΙ��b
��e�e<����W���U�C��Q��p����XV�,�l��\a�~S9����|���nhN/��:66�����jk5���B6>4��R �Cc���P�-544}!CYkh�h��E��^��F�\�hT<oF�u �ґ~T�_��z����=6"���DmV�F"*���ц&{��KU7 �J��m��S��ϐ;���G���#���6��C� KI�n�ߠ�u ����: �(R㓏`�4Q��/fq�I�,op���XDc- n�\5�Z����ˀ�s�"�����3/|�o0��|�F"y���9�����������u����{!�I�Q(���Kq*�~���EԄ�= �ׅ|H0��1� �8��u�j�����������kd���a?��p�)�*���A���4��F��K�A� 3�b����B�
),;�%�b�KE��h��M[�X<7�d@��N�B�Fr:}�(5�Bb-�B���r̐h�� ��qM|�FӞ�'�V����jdkR��U-]&�@_椶e�ӷ T>���bC���^_l�&�P�dؔ9UV^��&�s�'F,�Ʀ-蛽�����|>X�"��ۨ�j��=��BDC�!�b1���~����HƳ9���<���{��D��^�N6K*���,�Zn�@��+"< �&7e�����T-R�?��7�8��}��D$���W/7�l�=�#rubB��ә!�#�Ś���{��2����)J4�%�I���]#�)���c5B)�U�յܢE�|U�M�w?ύWSHX'��٥�l�ȿ\%D���Ƶ�ܞ+:֘6(&��߃�̼�8�Fl�Pt�*+Z���Q$�k�w�#}s�B�C�lc�o��Ō�
�q<�y�:�d:_�_�3h��qO�-C�F�'s�<{".D�v<�ǲ��ﻎ�D^�u%�����i���?�FLTA��ѣNZU�P�������	H������n���ZKź�8�|	��e�O�V�*$��ͧ�:���{���S{�3Q:�S5�v�C�BȒ������H{�!�W���G?Q��+�ﰜ����nO��8x�/Q���Th���8ڙ��5��3�1�|i�0=%����5����j'��ZV<_G1��/�V�ya�_�Q�K*Ze����򎀝����ݺ9J����/� �o���0���B;"�� �!Q���Gi����㊝������e��ʸZe�������s*�R�ː�Rr�6�oD��D�qLa$���C]��-t|'�����_{:�#d�{L��[T��7u��&D	��y�%$��,%U�y�LH=�J�2���-x�Ņ�>�:��p((z׮�)���Z�*D:�JA��ҭ$ƠH<���D�6ŠH,����spNK�"�"�t��CJ�_��tG1�#&6~�R��?"�*���iV����$U,�qA�`�*��H"�Z20��tm�T`�q�;�A\s�᳥|L�ʷ:�83�lwQ��#)��TP� �{g�ȸ��> )�̈́��ERK�fev1;7	].���}��]��I��U˱�̐Amo�Y��T��d�G)tS�dG���%SI�L�+�MZ]���Ǫ -2VI�~��9��V��N�u`c̎f�Y�
<(̲Q�l:XAs�G�����R���t�H�<���}vm]���U�
�	��x���.���-UP�NBvTm�ۦ��-��.{B$�Q���s�8*CP����?ER�<i�te!�n��T�#C$�Q��tCVp�����u,m}�#~ܨ[�cP]��Hr��j[����v�e3�$#+�j�t�P�XCu�L"��
�'+�9*--�#"�����Dґ5g�+���8�O(U�L�v��|�K#���n_7��Vq��	���&�?���	le�?x�/�����,��q�_�|:��<������e�$���:�u�N�WĚ� �{�$��c2&�3�|���+9�R �k�q���}t2�Q�N������^�՝��˭F;U�vL�,�7%�_��1I�եoѰ0��'g��{g��*{p��*9d����L�~����Ŭc� �7U��dN5���-&g��P붘��ǃtb��fJ2�������a�9Ϯ�*}��l�*{P0�%������/U�%7�%υO���og*��@rV<,;*���8��*gŃ�b����Re�
l�5,;�Jg_�����b��{Wm�����t��r�������:��L����� |�b�ɲ�������_�_��[��Q������Cӧ�葼���lEFBkfś�A����Q�� �$h�L����=8�0"_g�+"�����fiD���k_!I"�4�R�JN�Ņ�ˢ{����2f���L�
�R�P�Z�N��D0x\`@�86 {$K2�jr6�a��aTIm���=�&z:�D��Æ�5�������	b|~l�Y��ZF�إFOY�pE����$[����I���_/H�T Mu�� (����D#'�@;�Xw-��ɶ�.���v���
1��n`ޝPM����	u��q�v���T�#T儚�ԛo(O�j����e�-.s��я�-=l��o�F�@����%h�]$2��N����<=�뢳��].��.�~ҭ�K����&�w��O��&��_��8��(���B�iM�A�UhE����������})�tqRΒ"űu��vk���]��l����$Y�鈧��Ʋ��)��m��u�v	4ړ�qI.,"�[o�~c�.b�7�����<�v���f�9���,�T?=�,aT�� ���D�uG.�V����s#D�\5�!�sRK�q���	�< ��0��K9�	�= �k�0��K�Y��� 	C��{祜��"�� so���N�5T�?��+q��(Fs�v���vz���<����r�L]i��߇_�%�X?���Ю��x�G��U�c���h4�nM��( ���0��M����D���枵�;��� H���~��n�{�,: ����T��Y������0� GE��*� ����=�S�og� �m}� so�T��Y�6# b[_/��k&�'��n(�����P�o'�� Dv�t�Q���P�oa�x�>�/��|�^x�u�x�.�/w@E�=�o�� �H���7<�;��~�'ަ��éH_$A���W?��+���������W��q?��/��#;�t�Q$��$ =�kd�@Q�    ;�.=���]�˙����0�j�Y�EW�h��v[��e��pn?�1���ڑ�T�J<[2y��}�X4S�Jl��3|��n#���jn�a)+U�"��A�`�:�c(5R������������U����tĕ�K�b�U,\��ŦO悥�F�Ӄ�͎\���k���D6�D�+Q䬃Z+˽u ���&�����Ū�;q��β��s"k���ǻU�|X�oXbf�Ą]rz�rf��%� �/QǪ���4?�2�W�ڠ�b׿N����l�N� z�f�{����X�R7K��.��M�H�ܾ[��ò�I�s�m��5î���&���F�"��}�Ձ�k��u']GU�j1�w��s�jě�פ$��]'��.>׉�r��ĥLԃz���y�U�y�1G��������
'�[gF�
q���r:G}�*y	se�[D&a��Zf��Jn̅b�a0�{�~j��J$E&L���T��[f�F�:�YHl����-VL<�ZS'�{����^h������fC�ô����
�jd!�s@���jT�&���]����#`�X�)�u���� t��Z��a� �8#���6[�&��"���B�*( ;�� ��1�=�Jl"�L۠ �&� �D��#h�&� ��D6�h��OO�
Bt�
B�$m�V�ͧ�d�y��^���z��&<f�k
m0g��_�

��oB7��;���� ���A(��4haLm0V��� �B��b����zL���"�d(�wt|Y쟧����e?=��M��zrr�y삇b��� `m�lޑ�>1���D�l��f �ʶ�:��/�$�:��η����շqJ����f�Jd�NU~F��o͏Kw�Pu���p��C���۵=5Ǔ�1��5�Z7��?v�;�����f5=j�r�&ך"���E�t;;A�J�>+s�A��&��w��0:�I4%��i���t�����Ii:r+f�!pv���qf������~��0{ >l -m>f��ˬ�<���"O�{�������ZGP2�*}7iv��v�$J����(�=���}�v�5�L�LKGd��v����\��T�[�"�I7�l�Q"�wur�#]5��LL����������l7O��?�tܜ��ݩ&�*N��p;����]���m�߰A��ڙ����c��m~[�OO�l�z�C����_
�,���bU�[to�������?I6��;�b焂���8�-����X
�}9/A�m�����X��v�Vv ��ſ�s�o��α^B2}�&Sی�ާ��N�u�K�RO�/�G�㈿�!���]%K$O���&��DՏ��k�̗�c��I��i�}1�ʡN\�kuߞ/��>�����:���=~1j5Z��N\Ҧ�n ��������}2OW'.n�;�������9e��l�I�����kkgV�Pz�e�����g���?�1ИgX,I�,�5��<&�c�2}��ɫC)�����:Y2٠]N|B64����t���V�r D�<qg=�@h� �� 08�� �� ���� )���1&��Y@r�[���P��I���'��S�qȪ��ZGA�(A�(�XC��IK.�L��I|T�p[���fD�T,u�"mT՝<6+� �o)_�Oc��-�޹�f�X2��__�#D3�@�|��O?����zH����L/]߮�� _ޕK	_��|�O(Cv$ �������p��G���i��yq�_\�!���%���P�T'<���_^g=�0^��O�Kt_�|�<���~�Ԥ��o���ZoZS����vN��	��ߎ�%��>VdV�}Dd�g<�>��6V}6�yI��*�&^c��7W��-U�;wmA��^%��$ǟ{���2�ަش*�{� }���f��
�s��|�����L�س*ѝ[����1���B����[�ѧ�d�}@�ڹ�k��\_��/5a���O%Y�]%3n��i}U/�������l�
}G��g_��[����t�{��M�ٟ�퐦��jB�àr��F<��COs��&�>Զ0̓
�I�
#w�}�`O<``��*����C��6�ۦ*����C>����9Uaļ=1�ޚ��K���N ���]�B?����@����BB0���т��|	Q,������R�g�tW|ǐ�z�dÅ��Vr�>�#(##q�3d|:��&(�>J��I�~����� B��A8:QU���B}�E����Ơ�hr��]7��-��3M��%b�y7M�R
�.և7?������6� ��Ko���3|���%n�i����w7��:�F�#g��0_�����qG^������.8���k�b�� �d�u�dw=�������4��'s��@�)V���t��n?]���q<�N�|9:��"���,����(J�ʽ��x^|A~!
�>	�5{�y�
�`	��<[�2xH�d��?N"�'���8۬��U�A�kA������¥�4\I y�5�Kk�h��Q�t�8E��M�x� b�x�o(�	��Ëe$#Vz��4�K�b��b�t�:�,#6|�c�xF��b���:�"3�ƋEB���f,3��S����+�oImP2�����J��yh'�f2f��Ě�Xb9VL�Nn�L� 3S5by�LA�����Z�3S�-f���̔4�(�퀸�g$wЛ�v���8�n���s��stX~�
õ+��>N��"����G�Ð�. ~��A���鴺���N����[n�fE��@^�,��ҥ�`��.l��]5�˷�d&��>>(����\����I��0�t8���P���qaLF�o?�Zʠ1.�-Ҍ֗clJ��<�r���6R �-�����\
EQ�g2�tt�0t�8�� �(������EF�U�|��5��NqLO�DQ�����el�DAl����=Jq����6d|F+F]ƈ�u(����G���5(��utt&ʯ�V=洕��u(�5�>�:RԀ�Vv:��#q+�zp�C���O�:y����]9-'��IC�`�kzZ�*9y_�V������ty�j��*����Ch��*���pg9>�N�C���xG�0�q1�>�â>�clE
8��<U�d���n�a
�����q�<0:�(���h�������I�R�6�t_͒Eִߪ���X��U�fGGښ��!��ikz7K�Y�ݶ��Y
�0K)�g��mK��$!ʙE�.?>Tq�m��j<4�F�Q�$��gK��Q�6��頭���W�#r�ы�0bR;<)8�����Ԝ�z�>�P�)<:���*����N z�;���w'�/~���:�X������ �i���ɏ��r�_oc*��$��e��~B��A`]��]�x�$�$�ڛa��LFA/���^z<�z���)��I�I���O��6eھ�y�%��q��L�b'�'>�b5�f\��(w2����g��3N�p�s�1.��.U�#��z���������j��@�bo���Ԏ$;�d�Fvخ�3�	�L�fg7��՝���ERd� �����n'J)�F����r���vŶ�/��j,���Z~���/ ���-��ng?>^v����9[Φ��q6��"�����w}�:�s?�Z��XC.'\ݔeJRS넗Pg�7�!����v݊`l~,f���@���j9����_�S*�k2b	����s�C?�q�"���'����M�8�0�x��-��N.fj`�W�Ӯ�`���c�T/=��gJ����t|�*+V��Y���b	�f�\O��A�z.:蠠py?U�~�'b�I~�s�� <�	[���Ū EM��i�����;[,Fk���;�l4᱖�N��7�r4�	o�߄���^j)�r��w���U��6)��R�#X�~�nϛԑ�W h�<��X֨껍�03��u��$�&62��1�d,q�.`J>�̃���n�6���� ��O��GXc����[��$cY	�D��%��K;�E����K*}�����f���n3=Q;�2��tƞ�^���%���%�/�UwК�#���&��������Z�>    f��1[�ĵ���{�l$ѱ�J��d?��6젼(��N��a���6��
:0M�n�2(͡�����m�_�G8��\������p��ߥv~�f�k�B�bv�,����)�na�?n�o��vVv�����n/UC�ܻ}z�d��u�lN�oV��E�N��s�,�W���&p����l#�>��)��W�Y�"Yؖ��
�M�a����N�t��[M���vEg�˶3O�FO�nW���y��Z���TN�nLRq=!����_���������>~��_ꇪ��(�)@����&v��6�gz녎d��Ve�c7���ת�I���+���.�?,��d�mJ䙶8��D������� _ܞ�<R�N<�jx�&j���S�K��׼�\�z¨��-J�C99���z�p=S��H���$R� ·\�A��~#��z�j 0.V�r�)kV������a(��XD�f�#D3��V!�u�[��FuD����p����k���Rw���<� �5���D��c,�D�&��<Ϛ�qm�(b�k�l��C��k��\��;�N7n)�H=��s�T̍�{��+��.�$�F��h�)�\�c�\�U}G�7�.%�4��;�����k�~�z>Y�Lj�s��
��:&�@t{�D|a)���@�T.�!�����@�*�a$��~�-�@H{`�-.�V�R��	����RrNV��4��>��o��Ux�H���-<R������k9��FN�����o�<lyr�g-G�w���'Gm���g���'�1�ˎ���6>�Tȍ��N�,[A�J����tV^ȥ���}V�VNE�N��d�"|xU�u���۵�+0��4R��-"T��4��LcG�*����:�_y/�J`����TL��jL�n�7���r�_J��G��F�a+��6���UD��^��.1����m�N
���'�7QciRp�(nW�>�k��lR�wJ0:���h#eym�,���7RF�iĶQX�F�F�8�4��4�&�ӈH/h��׾�6R�Ht{+ղ�h�"��L��1I-��S�x��W��Z����lu����8�L��[����e�ܟ�9�����;�S��[�hԄ:��;�(�`�h����m�����'�a=��򃁔��~fS��J��u(������s��2o��'�	9Ī��	�\��@�<a �7����=7�0=�g�t8c�(q�i�~Fh}o<YA�v	Fw^،�����@$�@K4О��I�``�E�`X�b��i��8�飧�t��۫����i��I�M������6��������_O�k��l?�R�0��J�
���'��j>�r�O�r�5�ݠ�;q;3��t��Y�ɷj��� ��lӼg�ї���{��ޙŊǧI�d�Nۀ����(��be�ĭ胷������ta�/2�}�Oo�}��a9R����'�kT��eq�e�g��j%���~дAd'�I\��z�1N�7��pa�WE����/��>��`��.F��F�tٖ�9��t!�b���#�^��\��4b�Ϊ(����l�k� ��{c����*-�Dg4٤z4y�_�%�������^ޝS�9&���y��(?�m�g/�:J�)Cc�x5��E�(� -bhO>�����e�L�'�:��5@P����yY�.�7�[��D�H{x��)�Hfg�%��])=����[� ��J�y.`��Mo����n���1�8�Gb��U,]0t��|ܛ�W'	�&���&V\���}��!��i���a�.�'Vq+�:,�K4X�E�sX�#�d���K\�VqK�q��X�m�#�j�����a�7��X��*.j_�ezb]Vbq��:,���K6S�� Vaq������
ʈX=���V�����i�u3�x�����g�jV"/��UX��<����˭|V?+��eʏk�y?+Ϯsk\+��Yyf.����~V�Y�`�Z�d��T�n��YxfM�R�I���4sJ���LFk�]]4Æ�`]]��?- ��B�����|�X��
�ɞ�RR�4
>e/�1���뤏H�lc|n� �yD�D�3�5B���5y�_n�C��U;�g@��7�����ߴko_&�D�[T<�j�+�-�x�4ըx� �D(��%6��	"�^2��2g�rV�@~Dn����H��Vaa�E��"��
�C�W��$��D�HT80�$�+!�q�,\ީ����9��e�~�t�gp��>;��n_�nׇ�֭��n������j������|A�J�v3�v�M��<��L#��<:�oM����i�ԕ����Nۣ�l�����j�q�m	�>G"L+��ZtܤK[��ɶ�Ee��r�d���V%kd��P�H���"3��%;ٲH2�C�EF�M�ʧ�C�B;�B:��c��x��@�@@�&Ф� :>8�X p{�]�|�5�H�w�F8��K?>ݮN�p}1%|���ק���=a�r ܠ�qqڰ���j�ݎ�:�ӹ�iDK����j�8�r��L�n)�n��!u�o��� X轆z�U�&�.^dC!QXJ%�w�Ee'*�A�. ��y��{ɇD�|�^R.j������ە�v2���k�E<D�:�	�gˌC\#;��t�M�l��O�$Ӽd�%�1$'�6/����JN�U���e���5�p��I�� ��	����5��G�O��u���b��M����}�h*��<Mg��nv���?<��f�8W~��\#"�*w@@dJ�	��$�>	�K�����ʐQ��4�;��.V�M�y��V1XԈ,Xy6�6/�h��Y4,����lg���I0V���X��Km0���6P���$�zm�� ����OAi���Q�g�����L�5���.�s��߫������尚�Ė�	�S��&K�b%�%���c��vv\�w+�K��R�u���%�8L�Hgӧxv=O�%=Ńu	��a�nF%E�����iD�J�N���QΧ>����I%JeNS(
�P�!Uኑi�X�a��	-Z'9"�Z'���e�8�3H��,��%��møAX�Ma&���y��.C�\�f��Q��)RE��Vp3j�b��w|� b�+ �(<Lz ߽"�^)?U{	`�;�p�+X�r�dHf89hb�q_�沈�N��S��@�1���,ٟtR}+E�"��c������T)���������ϗ�j2{�:�dF�Z��p�Ui$_%I>��P�����\oIWm��h~(R��u�4����ߟ�ى3�M�l����>P���/�䤪�ȽJ���!�yu\��!>�7UI�>��&U�s��:/�G-"i�s�
HT�8�Ѱ�$�O;�$���$��
sOR�ZIbt­/d7&�]k��,!^#�q��$��D��S�ZG�Jְ]�ZG�K��$�i	�$�`�joMt���>���Q\���H�-lI����3I���")�������-lI��� )��U$%ֆ�S�HPGll�I���")���I$�6������`cM���")����
$�6��$�po��_�U7%�E�e[~�e��O�ĸ6��V������8]-7��Q1��&�	�I>͕�6mљ;λ~T�l�	J��&�?��J(�ov!�N��c��,�\�ƴT*\�d/t$w�[�[z��p���~q��&�y�}�u�fGU�P�J�K�&n��x�^ϫ�`zMZ���\[�Y�2V��vu�B���-��,~����������(��,'Ԗ�8t�b����
�l`*��$�`��J��ԃ�o,�`$��hv<j���B0���`����V�{�K�L���1^c�~S)�������kLu��ZL~�1[��d���.`��ꮑf�+7�`ݞ�ꮵQ��U�\��kK�x���Xc +���`�/{X~�'�UY�E,��a��� ��_��E,��a���������=,?4��,b�e���C9��$�/{X~�kԖ_o|c��>��;6��'˯zX~��
C9��'˯zX~�_%)��K�"�_�    ����9V>��Z��]�"�_���Iؒ�-)X��L� _����J����^٨L�V�{R^�h�N�/���}H���*;��ܕa?����$�\��NP]� �}��Q+g���ΰ�#m��-7	����sg^����x\-ݷ�Y<;���8:g{�c�9_6ݐq����
�1��C���0�ݴ���)�n�4�)���:�?����˔�|7jzp������r�\��$S�1b���t����㜐�>l_�ǆ� z�f��H��-���g�'g�&�$6D&�Jݳ�z1}�V��<����5(g�迨���:Nuy���CL�B�%�wh����;���ͭ}(._�3 P^�hN��G���5�n�\/s��"Fm!�������I��atay���ϳK(���:�31��R���p�@���w�'�ѡ6���dv>�����qu��k!��,����̿��y6��5�w��B��.*K�RF�n�ii�D_�8� ��F8�j��vV9C�����`�<L��|`�ĳ�߭��E�r���k#a��Z~������B�D.$�5ԲV@�Z�S��
:l�+����R�>[�l�3 �nf^f�7f�oN�㭾��{ՠ�C�cq'�3��^B��k��&cI����ð���"}n:L��sq�B"ơ�;��`��L�_X�E���K >Lr�f}Y�f�\tt{Л���j1[�v��ٌ����=BT��"Wj��f䌪T~-_��E~A{2z[�*�[�ʯ���"��ߌ��<[�Z(v0��"����AMQ`~-D6#�g3�M\z��	��-��^��6ߴ[��Ϸ��i$�0�x	v��yӔ�9I�7O��I��C�N����v���bƁ��L�O��8�<dD��݊4��G�j�H����h�I�nt�9ohx���b��Iפ�}`(�C����0����q)N׊kҎN|��2���c�����ۭ���ZO�|���n??�fo4�B�|���ԡO�7٦A�q5�04�E����ܼ~�p��z �^�hR|�t��oI��h���l�6�h#r��C���
��,	�,��0��\�M�M~�_ܷE���6_[���+@�&�����G�7��na�*h�N���.?핲E���*�7����-e�8��U�͏iy�L1[dO������O��걔-i�iO�[��=���P�3;L#7�����A�7��n����s��*\0�!p"ơ�K�Õ��~�8{��W�����nΗ�<�1�o������t~9�����CIS��k��Αj^�"�<�|"�0�'<͒o�o5�ƿ���׍�iZ�e�실w�=�w�"[�0��e��lz��%������Ms��:�E!t��5ɷ4�o���ۘW������_�
Aǀ�d��<c@в��h���z�R����) �BU��F0?�]S���b��Pd�v�Ļ61?G�R˨|>��⻖�A|���F!]�!U1V�"��F�Z��,@�bB�0f�$6j
͢���5r�L�s�=}� t�aj��E�KC�1(���J�R��o���U�@��2�� uc�N��"d��	�k9�D�![T�K��~� ��*�w���
����sA�C������#e�k�!�a5HYŰ���t�SN����ʷ�W\�� �� >8��$�Do9J���|�H��6Y����23��h�J�3��z/0�²�w �0�"m��F�z5�� ����
c�"4�Q�����s_��d(x%Dn�*a��T$ɋ�Ng��1��Z��@ű�@���N��{ ぜ� $��P7XDwz�ņ�z�򢌥@���i�2�5T�Y�Cҝ^mq��*~m��{���L��[LC�' �|��d�"���n�I�WYy9�b�ȻZ��[TCH�Y)P��A�;[F�l� T�Uy�QiK}�!�|Q?�E,�.��į2YY��:g��@�O�r;T
�ԝ�qW�K#�>�O�$�H|�bY�ޕ7@��&�� �,�J�����I�=5�쭈HCv}� �}�B
8"�K�<�Wa*j�qc�֖�6�c�5lF�p�rg����G���9��BX4��ޔ��Dj��v�o���0Z�Nz�s�����y~���`#�.{�1i
ϯ��Gf�&�P�Af8�h�>.C��:p�,fH_�	�d�($���`�9)��A�1X\���`	Πz��*�2@͆qr������<,f'��R#�����}p�и9;�0ر�n'��c��IIz��tg!�������2�v:�����ٽ��(U�I�<�*ɷ�k������LO�� �B�1�?K���/��n����?N��~��O��gǩ4�G�5(�5��gEk�;Cw�h�!�g!��Xb!̆�"˞�!&K�K5��!2a%��8�ܪ�Y�Zْ�/S(���A��m_H7ٝ�N��I��ɹ��u�o���/�/�����p�rJ��f��b��=�Cg��74n��[-:�J<qCf/3'��d��t�q���z93�d���h����_?&��U ��e�:�Xs��9Yl�u�z>Y�9.��N��\�
�~���1MN�����6#|����DP�mx�*�m/�)~���'uB�n�M�B�8��B�RM�#���'�Mlէv�B-�aX�H2Y��?7	�;=���JQ�;V�	���p+�^oJT�.a�oY�/\#^�c	�X.��]r���?B�ױ[aʁ��X޼�%�'9���˖��kP"��{f�������~�z����z�!��f��E�lN#�5���ٵ�}�Zo��]���wL�۰�o�f�܊��iF�l��4��t6�s�}9�9]��߬kD'�!ދ�cs���$�^�W��v�T����f���ɰ�
����D�2������B}����rXMObK�~�U!E:�>M!�)����L�ZY�	�Z�G!ӾF��7��Tt�(�9np��=~Ɠlr�,ǔ�9U�I޴�H����[�ͤJ0�?��ӹ+��W���./+I5��-��3ʽ!���ᾼ�E�&DDp���|�4a}����n9;M�G�6i�ia�ʈ�4�FBn��o _ʒ)u�ո��fg7 \ђ1u�u�gV���|��~iȊU��ۗ�[�*S0��rD�Hu�/"�L�v\��I0_�H�M��� �����$��wf�}�0�D���/c�\8�HN��5��yA��q2�<��f$�x����;M�k͡b�َ6e�f4Y�x7Ӏ�	5K��H���v�������'�йӗ1;����<��o[��tڮ�I�t��U�9����h�+#+h�:qym��Y��Ŏl�����>gP왻��M5��C����T��s{����^�������Wܻ-9�#ע��W��~M�q�ԋ��df2��"YYYe�2��sl̤�m����m��c�#� 2�iZ�U����c���˰��_^����h�q֕J��z]*Yt�ͳ��q��c�Ϗ�0'�1a���	�e��on4�����r
&�
n9�s�ATY�<�W�iZ�m�����{i�?����$`c.p�!�7���O����=U�L�0ل'��T�}p��w0�~T&�XkY�<�Oo�ӓ�H,��:h
�.�}_��h��q��[v���~��H��gcq�h�����:\�B?�1�F�ž��K�x-2���>ЂYo��Yl`����K"�?�>U���.���	�8���j3_L��;ás����6b5iB[}EKn,;��]��\p���e ��dG��oPF����xrcM��/�\ㄑc����
�P1lY��G�x�^p�Ǔ�z���7ʿ�
V�5[O�|H�`Dh0��=�ʉ5���(�����|n�̾�G� 3��d��|��Ý���x��N5+���_G��T�R���Rv�n�H�cufJ&���5ie;�T1,���A2��,z��ݥy�h\�;��z���\��{I޺Xn��
����A����*4��n�,�L�|�c&Jhc��3i�5t��a�ߴ���S��;)w#.
�v�a��+W�"�ǁ�fT���a�"
�0�C���B�>����V� 2g�X��    ID)�:	��	�`es��o��nH�~G����eu<��ϦDh�1����&�s��^�0eu�}}�ʟ�W}d�* 鞢U�1�H�᭯�W����/Tf����в{�##��=o���_�nF�j�޸Z�!g1gUؿ�J�C ��y�Ǚy�-�^5$-X��������rg�cE�T5@G�N�3<��o��PN�-�VB<V�k�8<&�O�����c>1�j�,g.T'Er	�)����f��� }CЏ6D&D������%�n����y��Z��˶���Ue��2��D�3 �Q�8���5w���.�w���d��D�Ev����X����7C�T%ȅ&��m�J���w�*�H^żm��� Cd1�͝/�[�R1��Gm�2}^�O��vʭ���e��_/�è��=�D~7�͋!������(�{Z��w��Tʿf�֎o\{0/�i	D��M�����0?������]D<{��Z�{]�?lZDD�r��ѭ��t�VmLA:V�T.�Dy߅�R�NU�R�L������9��L���a��h�t�)��#T�Ê��F�<�kT��0(�0�U���c��H�� �(gb6D�t"��vy*}��Cx,��*�d�=��ۄ8�������L��W8I�W�TL�1�E��~(#�AhHV���R`�)G�s�붘N�3�=�O�-Q�Ё]:���C��WS���d�LkG��Lj��C	)��Jjï�c��l�J�}l"0Y��O�\U_��'�Dj͌So؁ٍ!���sSUb����0\���|S5�.�K�j9F��eF��(�r�luF��<*�r��ϑ��������x{or�-}�T���OR�u(�:E�������iuO�6-_�?w�~����rE�E�!pi�@������&��V�'�/4H�ai��~��^�a �b,�
����$!��*4����P��m�Hr��lR�Eu(���8�SEEQ2���d��cI?�I�����HN�5���-9U64H���V�$_y��H�0G��q�u˞��jW�Ԟ��|5��̪P���|w׋iY��4?����4=>aV�a�-f�w�A�`y�������/s��E�f�(*=�Hxo-��Wݤ�{~��&�׎t-��	0�J��&\���\��W��,�Uޓ�e������_|�#�y�_�U�H����7��|��<�Hѝ�'���Ŷ���ȏ?� �����qڰ9V��}^K�� dZ͇�ʢ�g��(o�&��O� rT$��XJY3��d��D�.��ݚ�8a���4�2"�ˁ1�
�ghh��h@M`��Ǎ��O�^�A������t�Z����ap����pM�g���~�6�è%����t?Gs`�}���"(M4���q/Ws,Wj%��7oوl2,�['&ebR�\����!�2����#19Aa�0�v	������sLZ�%c��GRz[��g$�IhF<N"��ҊMYy�a0D����nMO����1C��s�j���"ף� Ju�1�t	�9��Ԋm'�s�_?{�-�/?��GJQf�w��抠qɪj��ar{E���5_�X=D�#\Ҹ�NJ�]D	z�^zz���Z
U��o��w"y�IC��03(��Px����5 
6K�$��1���A�>@�$�����k(&@���[��%
��^Q��	(r��AP���JWr� (��Z��(�4����Y�"�à|�i��2� �dZ.��'�d�Oex�i�@�dZ8�|S���P>Ǵ"�&�\��0(�dZV�J:�k��-X�	I�=�u�<���o_Ep�Ȥ[$/�,i�����	�-�������D�.�Tw��@p�߶Iht�5	h���}G��:	<���O��O�Q�P' ��&9yU��aq|~zz��>2G�����O�j9��_%�<�>�궐~m����y�=/�_�(J�ăx��^�� �Tk�ؔ&?G���Mo``��a�L||���7v�չKkƕN�2�?���>��4���1gƔLK��{9@�dl@��5�M>�w�x��|[|�g�;� �&!>L���O��(�m����A|���0�d�	:�k��Ӄ�s�<]��e�A|��v��� Ƶ�Y�C���STD���s�?H</6�]��i�A��䏱��<���j�s�?H|��T�ے�� �)�r4�N��s�P���_r����*5a�θ���?)�DY��,t
�����W���T��㉷�;�;�� ��F���W��P�D�`Ł ��g0U~�|�D� ���HXU���/Qτ̀�K�YG�,V�+R�f�L���a��+5>=獵�~3��HPH����iذ<��s�Ӄ ă�1�꒼�aRs��3=�j�=u:�7�4�!�t��=��p�#��WN�æ��pO0��3!�_�� ���E���O?N��_��]2�k��H=����1TP��D�h�W�5Э����M�u&;����>�Q���7#|��,`�#������7�r6Q��WG_Cy���+N�}�E��`'e��9��bF������h�� �u}�^��c��X�k�&o�ܹ��8rI��xg�[���/E}��a���~�����}=_��!}��.mE�X��.��t���RN��r1�X��$~���ps���\���r�O%b��q��h���ț�1i�o��G���(-pʭ��[�*v'ϔ<�Z�L��-֌?s��T��cgTꮨ$��'Qai9��0:�JU��<*GeS|$>�:�fദ�K �"���#�J<�_/?�(}��~�Ɵ.���]�*��^�2ᜀ1^E�%���N��b{��=d��I���i�Ϡ 64.������bv})�67c��M�Oj�t��~����d�������&3�1�m^O�L/*c�i���n��u�ъmw�I�1�0��_�\���� ,��:��y�5��w"��q#3G�ϗ-�\�0Lŋ�g:ڵ�H�J���u�^�S�������C�^͍�T$g2�]��HY;�D�Z̝N��xv���	ܙh�bH�����T��������#�8D&�9�4K�`|(�<�4rM���7F`�pU�Z.w�6�h̳�`���AW2f�DQ����+�����AU�611�~��&��%�J�m��d��nÐ��t� �T�r��K�X��P)E�.P8lш0��1�ȓȼ���GU��]Z�a�mɴͼ�;����YEID5�h����O�q�}_E	�5��b��WކB}RQrw�|��u���r�[IF �R2?�x�,��k�AyG��n�P� R2+
�n�	dr��l�O�@�.M��`wi�V�4&G�7��yFW:�\`��i��@ꚶf1�Ʒ:W��6 �M�2i�%�E�Q0q�v!.��Zr���>�l|ayUӏ�w����:f��f6sI==&2=ݘ��Y(+�U2��s����6"�x|��y0�3&�-��EW7vk�i}'�%�Z���;���;MK����
�PJ�gO���z�@l�<�[0�S�L���g�����{�cF�F����3o��?iP�gu�Pr������N&�!��y}֘p���}�@į��G uC�/�2<�6�yO�?,���:M�\����^����ƌĸ���	�y��1"z�BIs9η}��J�hUYD�p1$�wX�^~P�&
>G�+�p���㞾�*E���k�h�׌��#�_)Km=����#����Z�nغ��`�֛`|�=p?͍���[9�]��)f��Q�K?j*�	.���2 �ڌ^d��kk}��2a�r��M`zl�c-گ.�x�"��%��-�ӒbH�;F�ХE��0�X�ݴ$��&l���OXk>&^�uf6hIΤ�	D�k��Z��=Ő�O�\��س�Hr�$�9�	�uFs��-`:̓bZ�r)����W�r{�Ȝ]_)rAWݔϋ��`Dr��;~��{u����� D�5�I��5��U���*Zw�׊ ���g�^ ��ǵN�>SŞ�z�Tޣ�]G��ظ"    �t�^��ޗ��v������f�ހ�=k8��t��XE*�"#����j\��"����X�j@�I�����4�.Mlb�'Oܴ]v�
�Gh]VH�d�ށ+ԍ̺���F�'�X�q1M��Xo����8?��&�:��j]$3�x� }�٪yP��3��[5�"�㚶S��L�Y��|�Z3�.oc������F�j�yf��r�1�0������RS���Z�Lh+Yx:�l��P|6+c+���`���W6�Z3��7b���j*B���Őx��$|��_+�����4ވ���{m�(�~9��$g_�~O�9�G�ݷ$��μ�֢
P�,ho(פ9Ǫ+��^���CZ��R'7�e"��g�l��ȳ>�[2�X�������/E�@�)p���Hy�h��6��h�p�I�=��\?Y7��M�!��r	.�,���?���!�s�
RN���˗�8َ�����낞�� K��X�0.ҡ��A9" �^
�R�C �仚�X˃�XK_2)o'>��o��|��ju�޴�]�2]e5�]�`Ͽ�
���2H���
;�����'��Dxot���T=�a0�|5�� "������ᯏ�l⁋����\��1lRj��0�����a��pN�'���^U���2a/p}x=���c��w(�IQ�ǯ���������ubu��,���fz���ZO���d���p��}_�;���X���a�n:��nj�i^vļ9Z_�}]|�ae��γ#�u��܆���}��@u�Y��� �
P!���n�v��/=�b�#=������X�6�J{���D�W�o��� �*у�rAGW"�ɽe
F6ͩ�>��6Q2+c�-3�,]���Ȣ&*���/���QF��p"
Lڦ�=�Tu�mO���z�4��e �2������6����q��7�~=>
t�c������@Ħ���������`��b�-�G�0�^<M?��7�6���qUd��k�W��bqV��{T����gK��:�#4�N2V᠙(�Ԃ�]�@�]%.?������� 4h����=�W��+���!]��>������O��Ë�����/"T�άYz���Ѕ5�k����Z�����LF��@7���I��������g�_�}7�I�������ˑ�`#��dG�Q�e�k6�X��յ�\ʒ�Aĸn#�>*�^R�s�ܞ������/����f?��Ŋ��﮸{�@�6j�[-O����P�� �LB��_|�'{#u��.�Sy�A�ݷ���+t�"� �=ge�"�����aJ{̙!1�k���=N7'�y���V��S�F��I��Q�V�n&��@{,��YHr�s�/BIJ�(IY�v� ��1��y_H���)B��`h �-��� %� ^B���3���@�Z*���q�4��A�2*�* �j���@�$�*^����2�~���t?�k���΁��[T^h�s�t�`��d��L�F�*cBf.�E?�@|6I�Tի2�%˷x�.>����^b�����J�^)y�N`��Pk6_(P��;�Vχ��=w�!{�8�W�����-W��X~�'�`��`��A���afw���մ޹���+{E�<���r�v�8�>���b��Ӥ�1�����/��8rɦ"�=�_�6W^��zď��������|4�2��)8�C_$6^��ƥ��%(z|�T���!ڒ�����Z���p����xd�~��J���*^+����7z���Y�o!M�A�)*�/g��%��aғ���{�����R{��s�٩/������}�2=r?��������.�����p	��L�d���Lh��L����3�l8�Fa*n���Q�"7=�hy��Dψm!T�8SMA����)ХC�(����Q$�%�E^�a�zо�	���Pc̄+�
[��c�(�K#+f&ٟ��B�
�E)aUfΌ���0�S��F;�8{,L�I�c��h{�R�4�U(rG� �6��jLV}K��afo�]7�� �Z��h�($�Ts��0��e��`��&ĥ�p�u��P]�y~Z͟���a8|���p�,���9���%��c��]�"F:E(��(�:�ք��@`R�g����X������E�7��	��p��|��M� �.R���Â�8e.��g�$EÉ���css�C�ZRj$�(�t���:yc%[�$���R��
z1��g�a }� Ri^H>���c;ӗ�Ϗ��jD��(�x4_l��>m_��[l�����ݥ;:~r�����tA�ځ�#n�~&�y�_�J:��k�����=���o�}���c��3�!!�ҹ��
�q˗���f#�����<��sI_ہ�J�������x�NT�+��g*<�I�|�$�P�y ��Wk�����?������t�QR��&�d�UU���)�u���c��PA��)�rZ�:�4��G6j�����wAy�m;�q ��!g��oq�����>�WT3,�ǳY�E��_�9,�z��ڡ)��a�	��ũX�K ��biVU��.Ń&A�B��Z�%<���L�W��|=}{�م%c�1�<�.�����Q:�¯O;ڶ.����f#�iƿ���2�u�]p<�Ϳ�0�ώ"3�v>�_��3+A�!<_��6�u���c�J�)]��/B	=��%�����R~�ϗ��C炏܄�������T&0]�_\ۨ�lQ�r�v(Cɣi	^n�����i����'����DR�q��e��x";�@e  E��U
 +���ԡ�������`r�չ��r*����q6���\�r:��e5�
y�u0>ۘ�>�� �x�5<Ƌ1v��m�zxv���.���L]iC#���@���#M�˕,G�&ة��,�Va��L�hHƚ�K|�ˋ��ty�eyx�#�8Ca-�Ι��
��'ΗNו��ŋLs����AB�Txj��P�R5�˅�zRj#�@��X�[���R�q�{&c��F�H�ø^��y�!u��`��Rr�;�Î����$u,�H�w6d�`��B��1����{R�s��W�<�V�<gr>��y��bd����r�V��xZ<�W���0�y��z�MQ@��>K�Iy�Tޖc�m��<I*����A�I�ΤC�$�{�7�E6<�oɼ��Gd�i(e��	>#�(CvЧ����o���DR���Q�6EE�[Ơ�!�r>�����0�+���qŒ�8�XM�`�X:�O�BI�S(Isc
%�mL�$��)�$�1���4�Лyi�ЛYi�Л9i�P���H濃��#����4 9)�vN$�vV$�v^$�vf$��M���"�w�Ԯ�t��"ԍ&�v��"ԏ'��M���]i�]n���	�r�E�Oh��.B�xB��)��J>Py]&�~���J>P��W�ABIF�4D(�H���u$#�BF"�b$�jFʴ�*ڭs$EI���R�G�J��erD�+Y�F�JђezD�/YfF�J�evD�3aE�"��������/R��RIn��4H*�M���I%��r� �$7�Bn$��&^�M������i�T��x!7�J��Pp!=L��P�x����#)�HwO����%=N(�ɥK(IE�%�N(W�'��:�\9�\�}��tX�ӣڀ�1���=�BM<c����T�W��Oq�)��&E`�p����y&{�i~8�����i���@�Pf����锽a@\����+� �L��$��p]�� ]u�����q�	e2���QQ��݇^��_�%C:S
�_�,(ҽ�
�B 4�Y.�}��t����w�&9�r?u.q`��d�
J�X##���)��k/R;�͹Ȏa�S_�d�F��
���&���l��,�� <�hDU�
g�fh��B�X��m�{w�Yn)�cHNs[`�l��0�Yn��Υ����68̲ݝI&�,-2D^���	���5��8-�y���0���u+�6{�|}�x�,�G���p�R�$    %�k����):@�d���ؿe��L�`&C7
�t�C��6�1ף|���sl�`�_�l�� ��̭�KMB`�,"��T�m�iS�t�v�$�KT��"H�9$��]2Yє�U��.�Z��E���%������r�y�N'yY�j��.��eIw��.��eM�!��Ӓ�%�!��Ӓ�݇C�]��*k-��.T;A��r�4?N�k��T �[�Z�3v��{],��u�����S=~:K�y�q�@�#�F��Q����"�L��o���U����"0�tikE�Įk��,YH����2�4�G�Nq�Ī�,4�g�)c�b���g�1�S&S��<o�L�L��ΟIC�h�|��bPٚ"äS&��F
 ݢ��0��PrCT%�ԯSw�N�W��WX�R�14�P�V낛e�A�I^k&.��ٙ��ä��Vw/��.�N��VT�SeHr<����cXyM�!=W�k��B�n�D��ʃ(N�T�(��K�1����-��z1�W"�v� ��p�$2��5���La8�=��L�_x9�$��(2��$28�5���L���[]�HQ%�U/��Jdv_�ڗ<�/�L�K�ݗ�D��%���A"S��g�� ��}ɳ�r���{���ǿA"�G~�u��b�e�A"S�r"���"Ga�^$���QاF~%R�nJ$]H9Rd�-��z�&�OV@/�_\�^��&�8?,vO��%}<MC� ��&��p��1�u�,{j�����!��48w:k��]������r_t$q�F?2��rC��c��G��8�H�#�?647R��`�Yi�h�����..�x�"�`�q��;��������+�7�o�W[�����<��GpD:' �/8B�]2h�����<���初�p�����w��n1?�cm����M�m��|E�Z�4Z���ͧ�6����|m�Qέ�����������n��>/�jGg�"ކ}��Ô�{@�dxXdL��?��1\ }��^m�����`�pȿ�_����k1�Y���f���A��ϡ7�,ʈ(�Ww;y��g�P<�q�����p���l/��������aaF֧ˌd:߈��S��j:�q#AM���q�S�����5������ME�K���%V?	���/HB�tӦqĘ�R�����n�d��Pms�o-�f)7"�$��-"���&j�G@������A��� (�tۗ������6�d�o��5�ořn����I��R�2YGB@��]N��Hhb<��P�����U]��B@Q�5>"��^��H���+��=��c�64'����&����ݏ��|%�i'�v=0]C_��F0��E`���,�j0�p���"0V�`2en���HV�ɄD�Ɣ�q�����q��.���d�n�ʖ�F�
Ɨ�LͿ&8wU����[�d�nS��g0�2�*b`��mrL=�>����5����������60E��yfr|�"��>�m��oS��Ν���60�,k09�L;Vo�\��m`�ގ��u������93 Cr|���mHx�{z0o��H�_�n$���� ��(_n�F$������d���Crxؽ���I+x��M�y@�m�Kx����ig��	�J[S��3�p�	����VI�%��7Ap�6^�6����&���,<�!$ݝ�@0����6����&�"}m���-ڭ7a���c�icqi�	�������'K�܄!A���8�GÐ ��>�c��D�M�&4W��w��x2ty-�� �kqj���iy���q���$hs�ocѣc�"y�6�4��`P/�a��|��ą:�Ŕ�ߛ�1��zZN�~���s�,X�k .Ys#�G�����1��$BVHr����(�������d����P2W�����ik(��P\������7B������P2��۠8V E�Jƹh�:dF��(�+��P�����3������>�Jƭx#�������S�F(y����s)��`��W��J��s(���m��7sΝx#�<���֊���mP�lkX�@9��	�ϳ��%w�P�!�S���d-�0K�Y��5�+�"� �Q J��
˅���o%�Z�>����ZN��|�mƁkl*��	�*���	�u������]~2= �sZ��2G�M�̐I�����x�VZ��z9�y93F�M��0h���1Jn�����UMd���Ɔ�zAE�h�	M�'��17A�tM��2F��/K6{Y2L�y.s��n�y �fjp��FpC����wE�@�ܐCH�r��m��gp9�ܰ��|ҋܡu�!g�g!���*���9`�j�7W-�Fp��{�Ed�|���s��{��[}L?���Z��0TE��?��"���Sο0�E����2	G�dTؙ�P)j�%9���)�xzV\1H�q��z�3u#$��t�)�;�)l�5L��5M���f=F��l���gH����'�m�FH��畫��n����I5��-�'#ϨP�W���t3?��tmǙ/W:_�A�V���̧��r��������V�<��;�&P@��"����8&�N����'A��"�0c�	ڨf&�������>�O���\Q��"΀�8�/v�_F��V}��[3&�^(_�1���uw8����G�d�Ku֝�_��}�����ae�Mώ;C�3�6D�U�!���Cf��6>�4��6�%7A��=o��;2�8�zlч�)��쌦�č���{���*H6�z#�8�g�Y'���E�s�%F�6��`�3>�������yw�_�Y
Ѕt1������Db@�@$<<�&��,���6�TWn��j�Rp�P.R�&�ы��.�T�I��b86>f�<�"�݋�$ٔs��3��L���l�>�`΂`q��V,��6.\`�&:P��ك4�J�*�$|U���B���Q=j\�VSP9� �������)A$#��&A~b5������w_�o��UMyn������e5ڧ�JI�{}�Z��>��I�!I76$���2��]M���Y9��$'V���gu���2K����U��":*$���y��N�/��+vLH�vN��s�^-���F�-]�mH���l�y�%�ںkG�D6�l-��,	�)A��Y�W;N��p	��g	��6��>*$�egk�t}��� Z��C�è��ݐ�kS�}��}Voq�Kc�^ë��1v�%�'��4*�ͣ2�.X$S7vN 	���E؝&Y��F@wW��6=��աf��j79����<L�sTQx2�Yd�>{����r������������ŞfR��"y�\��\+Z��8��9����	���^����Rh|�ǫy�Z�����]�}ٽ��+!�H�CsS��B��N`�Jt����%��މD/-�@7�N�D�q�|(���Zr�L.����,��T��MZ��~�ZaK>�q�*ףL���/�Z�Oǩ�,�j�uQ���E�A��J'߸��6�B'���uG��,��ŔFw,z���{_�mi���a�f-��^��qd�
�*p�U��aғ�&���=Y�s��;�q�����F�]pw��z�e��w�x�����V��cw�3��r����}��\�����Ƈ��-�����;���|��_V��t���|����7�=�Ut��W��]?�3W<��oߗ}x�v�Ci�~�� @L���D��o6��>�OZYE@z#��\3<��^90�L�.�������eɄ���2�to4�p���PB��ܽ��n����Vh���a�{_NC1���Wf@��J>�k�z�gc��k��6�d��F:^cƒNvr��u��R�}V��BBޫ<��1�9�E ?	��u$`�o����F��+/bq�p�N��(W���a���k>}Z���pp����\K:�O��$���HWS-�>�_g#8<#}��JӅ�Kõ�򌞘\��a(D)
/*����P�	`�n�pi]n����r�    ������d��5���o>[Sp�|�U�x��y<
4�`w�-����R�!��q��/�j
!��ǳ��Ey���KL�}�����CtK������ ��CQ��N��UB�BbI$�W����: Q��v��8�>c�}�=+�M�a�؞B���@Ql(
���.��#޿.���SMq�������X�޴\��S����_0Mp�M3�pJ�]0Mq���`y�T�X�N���n����x���z��\�Nu����ZtS�
9�L�?/l�z�0�4����?_I{�t��6��t�2��vΑrij{��yp:fT@�p/?. x�	9H<��1ݯ�'p�W�wi�f�W
�/_ߏ�v�û�*t}���XYhy����{d��|u��׫0��)�'5 ���A��\}L*g� ٣d*����6����F�@��_A��d~4ă����H��SI?W��W��'����k�o��� ل�J�Bٺ4up��j3r��1�&R�d�Q�W��nΓ@
�(&�} qJ�3�4��8�_M���ǉ�,X�r]p��������-�g�:��n8z�T"�����`�x���a����!���`=L�2;�l�n,bdUlX�r� ��ǰ*H�<[ib�jt#�/]`h�,����q�=�uq�^v��6ĒYf�F��Fđ��*��:���q(�B)8;X�~��'�*U	�Li���GaR�?H���e���	$U���|��R���+�1H��GD��liJ�& ���>ݵ7'XО!��s�I�X�2��o���qz�˿�����S��M��|�mH�a�z�3�č3��n�=�2�z�����M(}��T`�5��$6T�N���#w��*U녛fּ�޻�.�U���@�P�bOC&�|�n^��5��A*��i�/��KH�-һo�p�7����}��O7��d��1��#Jµ�*L<�,"����(gh{�p}_ᆕ	g�.`�	�t^6�*̻MI�+�%��a��؍���+6���!��^��5��;�h�������04D�+4[�P���C�%���q�b���!�FS�P��J���hK�T����]�)4ž�ahJ*x\���|���.�q�ĹD���sT\���sTl˵x�*n�M�k�04E\��MxQ��X��&��=�M7+���S�s\l��o��p��:������/�T��5�'�x\�q�4���a��it%�OV����x����c_��~`�W���������s�Rɫ� �=���_+�T�� �Q�[��¢ ����.���$��5�:-��H|��l	_?��VgR�����6�m׀HEB o���ܬI*v �x��(��D*$v �x���fu�;�D�Uwt��X+:: D!u�Pc�V��&���S�|�v�R���'�T^���@���z(
��T�b�P��A�+��0S��*�:M!�������|�q5?�Q�$Px �OЯ�5�d6�t �O����˾�,`���	�����;�rr֯�Y�՞����	�V-�����zO����fs�TɅa@����NЄ{��T��}��۶#W�)�_����B\7�z����>�R;z���ug��W��iYM��T2�e���LK�L
�_��I���_8�1�?#*ϒVפ��t=?.o��tϱ�����?�\c��vZ�������<5��_�)ւ"��N0*��v+8��DL��K���c�����bw]��:թ�U��n�\��2	�I%��j'K�/RΘ6F^#�6��G��@���p���A+A���ù�Rx�5���m8�t���b���|�B�rK�������@�~a~&�0X�o��s��������Y��y��hC.�3�U*�L`Qk�be���������?�?��#	L�s��}����c�i_ c��}a�3Ӂ��� ������磧�<���j���N�������w���Uf����5����a5֐1B�P��1U��e��*�
5Cho+��UP�r��6=�d����9BDF��̠>���wX-㳔����rVs�6Y|p��`X�tt6�V����X/Q@<����f+"�@p�Q�c�_���K�6�\��Q
\}���ji�n�m� �E�/Z�N��Jo����$+���k�	"�����T����<���3*���V�����a�1Hf��~���0iҠ6��;�f�f~��m"�De�E3�#��jf��z#U��,���	���,���j�	���x��~~:��J�u�)�_�>��y����%9���Ữ�1֚���z�y�`i�L�B�g�y�/���D��fT�j�Rr]�1������q��V/+P��ignZ��^����9����:B�9S<�j���շk�	1y��$�/ k�+,���m�Ġ� A�,跖�(���r�n8��@�gKjq|����:�uL�	�*�">�}Q��T*u�'�j���������r��ڶ�j���\@�+�-���4�+������,�jZ��F�ڬ
�L�	�3��J_nm�mo�����6�Z;3��?������p����7/2�070��6Ws���W�7� ���/�n�fҖ������J�+0h?��Śz���v�u������/����b)����&
��I�B�ȼI��+���糳��N��������_���)�b�/������cʧ���8]|�>�.��3�\�4Z��C���W�$n�u�w��H�]?8m8s
��^m���_4�	m��o�.���!p���w���'����Ò�RjƖ���3�����.�%���Z�
�����\�l�8ڴV4�Z>¯��I�o��\��"9up@�G y�����{IP�H6c�p��,��;f�l�st{������=���>������Q$������������q������_�XA`�m|�_Z���������˟��J��jʣ�b3�_%�N��9ۛ=�� "�Q���g��׆_�\�Q�	�J��a�����������̰�(܎��+4�`�x�in	'H#���vf8��3�<��Ė�V#�H�
	��H�AjNh������b��_�㥀���rx}���f:6�v�"�L�ت���^X�m�h��r�m�?B�����=R���"��뺑�<�����4ݘOmC.�<�"�<Rt'��]�1t�9嵳�ei�NY�]_��ޚTB$�Zja{������(V�H� ���1=�M.�pu"��(��q!�s��x��tl�J87`:��$^�g`�=�0;s^j�X��1�w�5����]nZ0@�ũ�U��R�������୅;����(g���KT��yqI}	����*}K5��F�@_����˭�C�4�%�r�Z#]��d8ox��3��E��<*9/%��P���	|%̓��=("X�Q%),%�j�4�����
匉b�G=u�"KI"����e� Fpd^�Q0),�`�;�ϬHSf��:��u��Rb+aiV-Df��LC�>���Q%�}TĻ0{0/�}T=x:<�dK5Z�u1,�և�yɬ�`x3��ҌjNa1M��P�).�\- ��(�3����9{.��XN�uXў+�=��u�E��2J��\��zH�`s��(md+4��Qte$!�ckFo(_F#B�ÛÖ��jFy[0��p��Y ����7���a4 }��Q���C6��S�1����� h9�
n�1�kF=9�ֽ�ԟ��3�ׅ�-A3j���q�0m ����5�� t%�h7��E�s.��`Slߕ`�H�{��1 ͨ#P�f��, ���H�]LΣp� P��pP� ��vy��yԐli&dY� 4�-�Ĕ�<�%�,ń���g �Bf��.z�G=��(�����/����9a������O#0��7�X}M\��f��RjW9��db��M��Lg     ɂ��@E�2���R��'�Լ �cFJ�z�G#�� ��_�{�����p���<�8�.��Zx��_�^ P�x�I@5*$uY���'�3 �p;����Ԩ���%�8���=�y�dL	�QCH���/%no�Y���:��%�z��%7�'_�}�s|2��PI'��Ozfв���(���PhD!�R��Z�Qh����=��=J^�J���4�����k��1#m��[��$d��00�\W1�iZ�᫕�m���&u�P0���dr(��f��N�QA��[yqհ��6�'�����ϕ�Q�+[��5��U� �+AսD	�E`4���P���0&��*�Eh�4���l�r��0�AIgAg�����Q���V�_�B.��<$=
m�Q,>K�Q��Dc0�����Q���I�aH��s�a0.mN�`4��b��P�*�%��J8�b�u���g8T�l����a��πA�w�F���z<ɡ�l2w��/�ΔP��nY�QE�h�D�ů�,il8��l��V�l�z�Qœ$zVQ�1��Nqx��`O���Q�6H=�p�����w�<��ڣ�ذ��H�D�C#'�1mF5az�!Q	��\��l��k�H��ЌR��g$y֚	g���JG��a����8�Q��<�ٝ&|;���Hw�}�ۛQA�@=;���>�>v���Uom��[���(́����� :�b���Ԧ�-Dv�r�(q��ËjbD��0F�� �G����˿Q̪�ys���᛾bم�#�f�%�f���	܌r�Y��bY8��j36��h�����I3*��oz�����
�9��UoBB�����.��"8���̉��{7P,���QI-�ep�������L*W;Q�QC�X<\KJ��p�r�Se��S��Wyj���,��=h��tG�c��Ŭ"��e�R�/c`8	0�@e�3 0�o0�wI�G�7ֵ/�Y�S>�X�S'���r3j��*ce���tnv^+�Q��T�<*8aKc/��Ϻ��Lf�7|��3��xb�|5�>v�������!0j3f���	��z[�f��YiV�xiP�����3���fTQpD���*[��8���m����V?��5*)�e��1F�Y8J�0m9jw6���)V�̷���n�ǔ�\�W�~�Ç���;P�~���)d��1����k�!��MF��2Jj�P�`x�M2��Ɂ��Q0�(�I�B��Q��� N�ܢbvq3h)���4�~�OOk��tZ�݃c{i&�*.<���V�#Tڣ�=#l�i�Ͱ�RLQ/����B�B �]�"�Q�]�_� �ؽ�ҳ��ҏ.l�*��;wN���3�t[U	"�\��C�5\C��m��(�87M���*���uc�F@0	�7}�Y{��p���d\��~yg��2EU��ڣ����0-���a�Y�f�:g��Q@k�\�!P�9@�@�F�H1�x����֨a�������������j*u��[2�5\�|�ԣ��?7L#V7@��|]���83g}��Gi5���R�yJ�63l�,z���t���A BnT|���ŬB�3+ۣ���"�7P��@k
�FEף�h�%����.���l~x�z��m��֨c�z��M��S���e��p�VXhf��q`C0?QX����ζ�`���GI[D�z����i,��iq�L	n��Z�h��F"d�9�#���(�M�,��D���v�F��I����"?���P�	S^�	(��$#�t%o��&i	(��Gx�P�-�a
O$���jF��H�n��[ f��k��C�!颦�e�
.���h(���u+�8	7$���G��n�F�͊�<4G�m8�ḶQ�=�:Zm}7�|�d�c��ꖥm~���`i���G�XK��#%�Wa�$!��a/��QO�z�˜o}��=��������2����oH<��R\ˀ���f�d-i:<!��sx"�L�U�@���Tj<f%} ��.ͪ�Ml��>�Sz�O*A3�\lua�f�P�H�NCB��P0���|"�L
����Q�-G��Du�u��Z3�L[ٌ�QI�pKM,��JzA��K�2}Wnk��|��@�un�������Qҳbd�Oz���� P��ɋA8�rN�I����6�XwH`QB��Q�(�
&E����]~0��K��j�r܈�g5� �!��k|��WPh��~|��F���:G
!�V�J��˨�f��F쁭�ZB��3�5c�t���IP#��s��0��14�#�Q��bRԨB&dn;(��;uLΣTN�7)f���IPX%�Dr1[�d�,V H����I�8�x���3�F��&�&����!H��}���� ���f�|{��}�n�s���ٹV����o4j
4p�X�6C3J�X����(��V����A�`X�=����ը��H+���T'�� ��0@�냹��C�=��p����+�;�kN��ף$1�61��N�_����t����
������#��ꅖ�G髚5M���¸YH�ea��Gs�qF��F��k)���=AHX�c [�}�F�TDo!��s��*1��g�t�����zBꂩ�:(&/�ط6��{��*��6�M�Va������k�C1"���̴ȇ_F�Z�g <��Q?�H�]%D�̼���e�~q";�g=.�.̰�H/��j�D 3�ؖW�`"�(áb�����Q�G�Tn�~�W�nE�z�-QX/m������:s��ټ�j���f���7������A ��Dn%�	�H�<xК�^�7W�䛇���xa���ZsG@�	3�l/<y�&�z��l�u���Ż#]Ei!�T;�{A�W������j��5J�U�)0���]�R9?@�Y���Uڐq�y�A!�&j�{��W�T��9�|Y�`��l��z�v�8�L�+��4�q�s���_��K��*a�q�sf�G9U��,y�G�XX̓�24�ι��5Jf�wb[8����p��1p�;4�6��Q�2��%���ؾ�4��(�`���SDD~3J~�>˗J��2D�åTi�{�9W�d|����ۛ���mHiY?�R�T��9�|y�Ԭ�r����oF��ϲ���))xW�<*�%h�iCފ�)��-�E��G������絏Cp��O,�2HN@��a����{y񍟶+��U��;!|S��x��QG�D��VȪ�����>�RĀ���Y�����9�XE�SX�����9uڣ�V�h�>��hx�F�j�G�*__��UhD0y)/�e1�CE�ԣ�]̱x����znr��qp>�^fXkT3����&E�V�E@5�$!�N��ݼ��S��-�-9��rQ�O��=��f�x"p�G �q0�+e	!0}�O�&�Ŝa�Q��y��adG��{(�_�zW�1��2�ɩ)�޷FOb� ��\��6�Dq]�a^�@�o����߯����&m�(Ls�&j�^F�[# )"ݯX��:\�,����K�s!_�.d Rȷ��zeb'3�o�ޫ-��P�Vi�DHX3.���W^ʯ>�Ba�1�ｼ�GIg��S�ɦQ�I˰JCl.�Q�(
I��OIX�@y����%�-��/���kz.����^RN{��gKYv��^�(B� �{_�8  QH�|��
��T�^|Z{�J����q�F�ٌc��8�z�(E(���c�x=M^�������{����ֱ�r�&ī�;X�z�}H���%�� _����-q���AF����G5ɕ��'����p,�4S��^-ΫQ�'�q�
��±Q�0�K�QA<p����/Z���Q�?x�G��� �焯��(���=V�մG=�;�e���-�����(�4�D�I��pW_��H�̏��a�ea�ɩ9?���#��q�1�2v0_F5�@�`o��ǟ��n7nz\�����'���X�1(=��Ud�5���m��c@�B��-�؊_�Y���%�R��e(Ͱ�)K��   
�X�<*񾌍�&s�l���l?Y�/׏��q�c�"0q����O����A��~��\F�0,\������wB��)c���,f�_F	G��������Ab�#�bg�e�(��'l�ӛq�c�Ǩ�AR>����^��V��)<��?���gH�
�7"�hU�����@��޴{Ԫ�ǘ}0k�$%�&��v?ǆ��7k��/0��b=xJcZ��s��M��mɨQ�J�h;�u����qś� 6^�M���F&��҃�
W�No��*I�wh� X��)��k�"
FS��V�����;r�dɴ��>62
���$ޭ�Wck�WQ�T�O(��^~w��ja�����D�2�$��@{�wn����`��Ώ�}�Lx�� ��d�95�͑_g�vF�j����{a1�m����i����Vt�߫fѧ�r��o`&ή�vo�Z�m�3W-g�(SO ���e>E�P����j�:�.?�W����i�G�V�M���K3º���:}^�6���m�������?�M��>߶�t�E0c��r�z	|�u�U�z�k`�J�^C0���@��2�y8,p�i�;���Neg$;����*�n�B��a���"g�ؾ$c�+�ʨUF^��jp�WVk�Xe=p.���E�Ւu`jl�4���:2�����'B6�m�� g,��ߦ�=��n�U]:���XU(��U3�"`0��{Q�JLOU�פ��G�����O���Lt�iU��Ƣ$�S���V�w���Nӝ�?������6��      /   �  x��XM���=����s����u�$����K[��4�,%�����a�s~������P���A�1 ��뱫�*�B!�wCj�}{<t�b��m]���N��JRC��T{%�}�����R�W����r���!�.q%�~�#��3���c{�����5v�X�c�=<���8���H�	y'�5F�����"$}!�.>z�e��v7���][�i��q�7OL�ayɀ��V�������O�|�����J�F�F�Z8���#�QC-��T��AuC�D��A'�r	��R��p�?|x_������w��9r�����7�@��j��J�K�J���F��nK��o�6V���g�$_	�(j����֘�
u6��0R�����C���j����Z,˲B�J(ʡL��L�)><�&��ީ���/��N���kD�)�`����ϭk�uX����%E�t����1�7�:59�� ���j�u(5��C{x�ϧn�z�+�M�w�.��9��<�������xŴ uN�+���21=Ƒ�B�J�r���]7����a[d�E�6三��J���r�}����;��၂�r�>�R�,������9��	�O��n�f�ECka�q�(�[�*U�Y���x��Gl��u'�����`�TjV���rlOñj�c{���M��Н85t���}[��/.	V5��ƨ���^D�IU��p=�3�0�P�C�� }�z=8�$��ڑ��-��P�S�,[Ͳ}��FW�?���4T0=�s��w��a�<�$�z�4$�V��n�B]&6��P��mw|<ĿÎz手�����Fis#�^fG�4�����t���:Xz;�׬��� �	���s�%j�H9��Ң4��?�Z��P�?��8?����� ƣ��*��2�
���Y�IN�q8>�X]�7�f��{E�����eiԤ���a��$=<~mB)E�ORi��	��>q�,�g����ke�`�6٢�Қ3��3/Y�F��l�-'��@C�N��J����4'Y���#h�dJ��i�#GN�Ҟ>���iC�1�Q7鵻A1�>�yk���]<E��Ik<w��]a1� ��3��������Qek��=��u��mi|��.��"+9�w���O�Z��tyBs\�q}i���2�ɔ�O�L�|m�1Z߈9�.�rTWZ�[�R��%�hl��Bm�k4������5�ۧ_SB.#�˿�����w�Pn ���PM��Z�W����Nϒ^]BqkY��o"�Q�*�d��j��71�ӧ�u��xIH��ِ%?��.`f�	wHK������*��bm�^Q�����˚eP.�L3�,B`{�$�V��
�sư�1�l^��t��Yc3ݍB�?lJw��ՔP8,Q����pyq�NI�*	��u�B�0��Be�	0ڔ}����O���<cˈ�B�~�y&�G!R�x��$�+6DT"����"�\)A7&T�F��z����o!0���X�o\А��@�N��@�N�mX�-����	�t�z^�13I�)���e� P��y�|L]Y��8^Ϧ�0�!$e��vy�z�P�("��]����XS�kP�:���-k+����]�y0�8-$V:�E�_�F��a�_�t��Ds4:�AX���.VO�\�}�8��������z����Z�����=�� #���\szm�����H��I���|�\ݩ|Ϩ�J�,V�J�����:i%o�M�N�M����?�(�����ܡ��c�~�����p7gM?Sh�AC�؅��ܲ��,K����N�Ǌ�P�������)��>��^B�^G�.��
[�e�>�\��E�z4�;'/U�j^hn���!;���|jw�8�r<�FbT��b�6�����I�O/Ηm%�z���9t��F�\఺�[]���>�k      5   Y   x�=�;
�0��z�0�hv����G
�����d��~�S!�Lk�v	��(��!������_f�RK��CH�w��`p(��1v >�j#&      3   �  x��V�r�6>SO�ɩ��P���F�glI���D�23$������129d��>�^�P����KO��D����~������M+�W���/^�pZ�9Q|ν�:.e���%�&.%�N�{2q,H��ЈD�oL��|�Y�����y/	�;h%��*�"�y֎(��R�x£�I�?���>�?�����I��oRQ`��M8E3� S�s!>I;Y��K�g��Y����Jýu誳O��>��NhEݴ�j�@fo 0��V���/
��n�+�a%(���Pʽ,��w���ﾫ�Bժ#N%��VO�E���`����}Y/������u�čc�Yq�P?:��9+���s��h���e_��Z�R�1�I����r5�d݈�����}���/��|�NiS�,� :�M�Z�R�̼F�V��!;��LT;E`}4���"
�.�d9.�ar�#^>ɐ�q��d�صv����t��.�-W�Mz�\_.R��Y^�j��Ϧ�ۛ����_|�)�n��H%Z��K'1��Jx<�.��Q%z��<�?B=Ϙ|���I�N��'q�j{����+3�\>o
�7���q'ф�	c�K��q��BC��p_dBW�V��n�Ӵ�DO�I�M)+a�D��̤&�R\�x�	���lq,&A�j�F~���=֐cG��;Q�- ͚F�r<��מO�8O`O��iW� ����7�6n�A��b7>�eX?�DQ�(��Յ�c����!�$�2����J���ė��걨���r�q�y���,�h���I�!;�7
g�X��黫ԙίS��t�@^���b~y�B�N����v���zf<(���z�X�oaz�$��L�N��Wfُf�66��N\�~B��ʍ��I�� y#�h��|1�����⍁���-��x�Nƾ�n���s��j�/4RÃ���0J/ <�.NC:o��L��B�:�ct'�-�q9��Ȕ��9��U���q�b :��C�X��k��U��T�6"�߲A���� �pTL�Rԇ���"'�Fiʏ���|��tG) a��{
Z]��q�щA����X���-�{�	�����C�%�~p��ۇ��
�^����v֪�h��Ԣ�8u�h~I{��l۹�2���B��5J��;D��,3F�l*5G�B�;���3�f����ڤ܈�]��:3��6�k�8����K�ZK+��ʺ�tN�ҮG�H�ZV��-#;����a�Ό��}Խ�=�mev�����E��剏2�E�����(2:J8'���(4VsK�sW�ȰRM���� o���׹푁�H�4�i�FZV��g���ƭ���pG�3�2�Y~��%��|�0-��6�#b�pC�(hh���t�x*~�͂"E9�o}�ބq{��ʹG,�Hs{�xOF��?]�x8      8     x����n�0�g�)�,ܑ�?nq� �԰�4���tK�"J�з�Td���JZ���p��}�݉�g��ʶ��Z��QШ���
8�NyZ��o�֨-�ZY�;�&�0d8F6���LH�Ҋr�|���2")r�x��U��)O���du?b����Wk+5��@�S��śZ��^�n������t`k��}�~�/C21���8{��r�B
�(R,r��;�iv��Q����X��6��`b���И����/��m��� v2��Fu���kC�����>ka,	�K�O����������Ydɗf�uۺ����+n�W~e���_�q*d��e���0YL�wT.~,���6�Y�ީF�΅����ك6���t�\k���r &9J��,�f��S1�	q�s���dq��K%?��]x"G'|�IV�T�U(/8��2f��d�oæ��������W8�"
X1���Q����.Ą�y"��U�ʰ���SZ����"�t4��*'�     