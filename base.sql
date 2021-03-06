PGDMP     -    ;                x            hotswap %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) a   W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public       root    false    221   H�                0    16417 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       root    false    203   ��                0    16427    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       root    false    205   ��                0    16409    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       root    false    201   ʌ                0    16435 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       root    false    207   �                0    16445    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       root    false    209   ��                0    16453    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       root    false    211   ��      B          0    16874    base_centraltelefonica 
   TABLE DATA               �   COPY public.base_centraltelefonica (id, modelo, end_ip, qtd_ramais, qtd_ramais_utilizados, dt_ult_preventiva, obs, filial_id) FROM stdin;
    public       root    false    248   ��      :          0    16818    base_circuitodados 
   TABLE DATA               |   COPY public.base_circuitodados (id, nome_filial, cod_filial, faixa_ip, produto, circuito, roteador, velocidade) FROM stdin;
    public       root    false    240   ؘ      <          0    16826    base_circuitovoz 
   TABLE DATA               �   COPY public.base_circuitovoz (id, regiao_filial, operadora, designacao, servico_equipamento, tel_abrir_chamado, op_urla) FROM stdin;
    public       root    false    242   	�      >          0    16834    base_datainauguracao 
   TABLE DATA               Q   COPY public.base_datainauguracao (id, cod_filial, loja, inauguracao) FROM stdin;
    public       root    false    244   �      H          0    17391    base_ferias 
   TABLE DATA               s   COPY public.base_ferias (id, colaborador, mes, ano, inicio, termino, dias, decimo_terceiro, filial_id) FROM stdin;
    public       root    false    254   }�      D          0    16888    base_historicoincidente 
   TABLE DATA               Q   COPY public.base_historicoincidente (id, incidente, data, filial_id) FROM stdin;
    public       root    false    250   =�      F          0    17383    base_ipfixo 
   TABLE DATA               y   COPY public.base_ipfixo (id, ip_interno, porta_interna, ip_externo, porta_externa, status_online, filial_id) FROM stdin;
    public       root    false    252    �      @          0    16846    base_testdatainauguracao 
   TABLE DATA               U   COPY public.base_testdatainauguracao (id, cod_filial, loja, inauguracao) FROM stdin;
    public       root    false    246   n�      )          0    16609    chamado_chamado 
   TABLE DATA               �   COPY public.chamado_chamado (id, chamado, modelo, serial, create_at, updated_at, quantidade, defeito, valor, status, loja_id, user_id, dt_finalizado) FROM stdin;
    public       root    false    223   ��      1          0    16692    compras_compras 
   TABLE DATA               �   COPY public.compras_compras (id, num_pedido, dt_vencimento, obs, create_at, updated_at, equipamento_id, filial_id, fornecedor_id, user_id) FROM stdin;
    public       root    false    231   ��      J          0    17417    compras_manutencao_mensal 
   TABLE DATA               �   COPY public.compras_manutencao_mensal (id, dt_entrega, conta, descricao, valor, nf, ordem, vencimento, status, dt_aquisicao_equipamento, dt_ultima_manutencao, filial_id, fornecedor_id) FROM stdin;
    public       root    false    256   ��      !          0    16537    core_fornecedor 
   TABLE DATA               r   COPY public.core_fornecedor (id, name, numero, razao_social, cnpj, rua, num_rua, bairro, cep, cidade) FROM stdin;
    public       root    false    215   �      #          0    16545 
   core_lojas 
   TABLE DATA               _   COPY public.core_lojas (id, name, numero, cnpj, rua, num_rua, bairro, cep, cidade) FROM stdin;
    public       root    false    217   ��      %          0    16553    core_profile 
   TABLE DATA               U   COPY public.core_profile (id, bio, location, birth_date, user_id, grupo) FROM stdin;
    public       root    false    219   @�                0    16513    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       root    false    213   ��                0    16399    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       root    false    199   ��                0    16388    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       root    false    197   K�      6          0    16759    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       root    false    236   !�      +          0    16629    envios_enviobh 
   TABLE DATA               �   COPY public.envios_enviobh (id, num_nota, num_ficha_transf, create_at, updated_at, filial_destino_id, filial_origem_id, user_id, recebido) FROM stdin;
    public       root    false    225   CP      L          0    17454    envios_recebimento 
   TABLE DATA               N   COPY public.envios_recebimento (id, create_at, envio_id, user_id) FROM stdin;
    public       root    false    258   W      N          0    17486    estoque_categoriahd 
   TABLE DATA               5   COPY public.estoque_categoriahd (id, hd) FROM stdin;
    public       root    false    260   Q[      P          0    17494    estoque_categoriamemoria 
   TABLE DATA               ?   COPY public.estoque_categoriamemoria (id, memoria) FROM stdin;
    public       root    false    262   n[      R          0    17502    estoque_categoriaprocessador 
   TABLE DATA               G   COPY public.estoque_categoriaprocessador (id, processador) FROM stdin;
    public       root    false    264   �[      T          0    17510    estoque_categoriaso 
   TABLE DATA               5   COPY public.estoque_categoriaso (id, so) FROM stdin;
    public       root    false    266   �[      -          0    16655    estoque_equipamento 
   TABLE DATA               �   COPY public.estoque_equipamento (id, name, modelo, serial, patrimonio, backup, setor, create_at, updated_at, qtd, obs, loja_id, hd_id, memoria_id, processador_id, so_id) FROM stdin;
    public       root    false    227   �[      /          0    16666    estoque_movimento 
   TABLE DATA               u   COPY public.estoque_movimento (id, quantidade, defeito, create_at, updated_at, envio_id, equipamento_id) FROM stdin;
    public       root    false    229   A�      5          0    16735    msg_group_msg 
   TABLE DATA               ;   COPY public.msg_group_msg (id, grupo, user_id) FROM stdin;
    public       root    false    235   W�      3          0    16724    msg_msg 
   TABLE DATA               �   COPY public.msg_msg (id, assunto, mensagem, grupo, importancia, geral, lida, create_at, updated_at, dest_id, user_id) FROM stdin;
    public       root    false    233   ̔      8          0    16771    transf_transferencia 
   TABLE DATA               x   COPY public.transf_transferencia (id, obs, qtd, create_at, updated_at, destino_id, equipamento_id, user_id) FROM stdin;
    public       root    false    238   ��      �           0    0    atendimento_atendimento_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.atendimento_atendimento_id_seq', 2301, true);
            public       root    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
            public       root    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       root    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);
            public       root    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);
            public       root    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 20, true);
            public       root    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 132, true);
            public       root    false    210            �           0    0    base_centraltelefonica_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.base_centraltelefonica_id_seq', 1, false);
            public       root    false    247            �           0    0    base_circuitodados_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.base_circuitodados_id_seq', 44, true);
            public       root    false    239            �           0    0    base_circuitovoz_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.base_circuitovoz_id_seq', 61, true);
            public       root    false    241            �           0    0    base_datainauguracao_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.base_datainauguracao_id_seq', 27, true);
            public       root    false    243            �           0    0    base_ferias_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.base_ferias_id_seq', 28, true);
            public       root    false    253            �           0    0    base_historicoincidente_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.base_historicoincidente_id_seq', 7, true);
            public       root    false    249            �           0    0    base_ipfixo_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.base_ipfixo_id_seq', 24, true);
            public       root    false    251            �           0    0    base_testdatainauguracao_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.base_testdatainauguracao_id_seq', 1, false);
            public       root    false    245            �           0    0    chamado_chamado_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chamado_chamado_id_seq', 289, true);
            public       root    false    222            �           0    0    compras_compras_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.compras_compras_id_seq', 1, false);
            public       root    false    230            �           0    0     compras_manutencao_mensal_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.compras_manutencao_mensal_id_seq', 1, true);
            public       root    false    255            �           0    0    core_fornecedor_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.core_fornecedor_id_seq', 1, true);
            public       root    false    214            �           0    0    core_lojas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_lojas_id_seq', 61, true);
            public       root    false    216            �           0    0    core_profile_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_profile_id_seq', 17, true);
            public       root    false    218            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 282, true);
            public       root    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 33, true);
            public       root    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 48, true);
            public       root    false    196            �           0    0    envios_enviobh_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.envios_enviobh_id_seq', 87, true);
            public       root    false    224            �           0    0    envios_recebimento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.envios_recebimento_id_seq', 71, true);
            public       root    false    257            �           0    0    estoque_categoriahd_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.estoque_categoriahd_id_seq', 1, false);
            public       root    false    259            �           0    0    estoque_categoriamemoria_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.estoque_categoriamemoria_id_seq', 1, false);
            public       root    false    261            �           0    0 #   estoque_categoriaprocessador_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.estoque_categoriaprocessador_id_seq', 1, false);
            public       root    false    263            �           0    0    estoque_categoriaso_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.estoque_categoriaso_id_seq', 1, false);
            public       root    false    265            �           0    0    estoque_equipamento_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.estoque_equipamento_id_seq', 8136, true);
            public       root    false    226            �           0    0    estoque_movimento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.estoque_movimento_id_seq', 106, true);
            public       root    false    228            �           0    0    msg_group_msg_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.msg_group_msg_id_seq', 19, true);
            public       root    false    234            �           0    0    msg_msg_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.msg_msg_id_seq', 68, true);
            public       root    false    232            �           0    0    transf_transferencia_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transf_transferencia_id_seq', 8, true);
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
m��ߑg �c�<Vi�����߂"�6�r˴e9��5:\�9#ll��i*�(&��;���v'3�9�q\1�k?6;�q��:j~f-�+6!麆'i(kQj��º<>Q�uF@�!7[J�]")�8�_�N���l�k1�L��S���<FG�_jE��X��"���#�: {fx�8�krμ�TpV��'��Dή'�B�-�7���C�fz���<<��^BӰ��*���:[������=H������_�)�6
G"'��$��Z�}��ѷK]b[��A/� :^�$^u��T1��^U���+��o�OX�\�Ņ�"��Ch.��H�0v�H#%ÔI��шN�;*���s��5�*�O Q���s۽4in�J�E��p����PD�p��\�gUv�3��p��#��<��(fɋ�;NL�I0E/��[+NP��Y���95���7��-�҄fn���Nj��1�Pm���M���Ѹƻ�g�ĥ:5�g��g����� 6^t�Rm�W�ܽI?�8)�����e`:j(��������`�h5{�9x��V�d��~�y2�!՚[ S%�*�;1�&��G���b�?z�Cy���k��O$��(�ظ��X��9@t����_����1�٥0�HҪ�U��{S�u�����3�+܇�]1����� &B2��f~��)b������Y��H:ĉ� �V�\�*�A�4-�塵��Pǻ`ѼN[���8�ԩ"s���NkaTZ*��؄�ٕC���Ӌ��W��Q�i�X1�P���ɥF��Wh���6ZL�,TNx^aZ�4vk��C�.��%�*�&���I�3AUz1�YZ��a-����1��"oDZZ��i�BS�/��h\�6�
4X�
�7���kT�ul����+�o�-�1 `�A��,�����zh+�Z�3�	�l�U�%�e�_�"�#�3�XFF���Ay���q,�~߷$�x�f�L2�g�D;��D|� ����B+��ݢ������e�SDIȵ�1��Sl�r9�R�p$˝�Z�/`�I1PyìZ��Z	4���j�����k��$a��@r��q�{�j��x��:��^��4��LX?�ʖ�,��R_Y��#_|}��C?̳4w��ٚ&B�L�޽c��Rs�� &x��$��:��\�|���ei�̝�7��E8Է����n���$���4L��q���Vjf�l��J&�8�Z^�Zm��[\�X���(�%3?L�ض4�VK f�M�¡������<��z��4x�ۈ/������J5���(�<�c�nkޒ2r��0B�+��G՘��]]K׋���Z]#
P� �m��mej~�/ߤ���Wӛ�L/���۱+I��l0�o	E- ��צ�o<5p�܂_�~8�7TvD�t?�Ȏ����q�� Q��Й!M�'����{�*��kJ;3�B�����+�	�,z�5
�(��$��㡍
���� �8Hׄk�d���L��D�G12���v�Ic&�����$4`�RJ..�d�}5�S��rSsP�l�����q���|��Z(GM&��a��0W�W�?����
�N"��/�2]"���rm��F"��
�ӎ��枋�s��K�Z��a	����i%#�T�f<�    ��Vo�=7/>`d����_̦WW�w�����C(Cc�8gY��Z�Y��l�(��k��X�?#t@9���F+�;�Nc���n��I�|���8���m���1�0�|h��Q���:4 �%=�}(��`3����.�%��	���l�?]8�Ks�bYP��[��\ ׂQ�$��� a�.�7������"qK~$ZB��,��jDǑq	~�1�N���[6�db�u�U�lo!�ΛLW�t5x]�dESd~5tE�����,,��B��DF>�����u�DIUq��|��yS�P�Aij�Y@����O�Ň�5����r����q�h��EV�9�D:�uP�F��aQ��������g0�=2�0��%�!������QL��,����3[c��s:4�)y�A�r�E��98�e�蘫,d�9W�bw��]�_)v-�d�&w�
�9��O�2"����<4�}kLt-3�(��"���D�7	�е���˱��P��9���*]V���_��}?^��R���ٹ��B%^�4)�Rw6⑒�*�E�dW�vϘ>�l�ȢD	i������">>���U�^����M?.���@cI��`)�]f%�,&"�`��W����p;��u�P(�{n���ri���a>C��?6;��F��[��%���۱&����� s�A��N��:�"�N��������qW����C�B���<��=N�R/�˭��Ž�I� D�J�)*L%�,�e���2诅��`r&ɜ2�vk�Q��d,
��ǩ>#��)�ci ������Esz>}7??��:�4��{�o�#4�����
���j{�������6����m=�h��$ �4Ϝ������8�B-8�HV���+@nr��;Y���Ü�kﯽ�(�ۑ(" ;1��K��[��=s�2�
���$�3o�[Ώ�c����q�����1O��Ӑ�Ԗnk."�Ť�S%_��di�Mey��2�É��U�^`��@��k�n���~�3�Q7��},'{�z��>�����O� �S�\�&���7����X��o�iE���8ˋb�˲��&u9�h�tgZ$��g�u�s��g��#�;������	������d��e*�� ;4ҨGp������ő`�����Zi�xO��j,"�Pև%�e��Wt�)�ΐ2�@�Σn-̥�S.nU*��+5!�� �4\I:LB��J�׏��Jcu#�;�a"�=4[e�y^�2�`ieP[$J�b0�*_jZ �%Q� �����ѹ�0�����+���"���6�VSԼ_,Ngskk������ v7��J�na!.I2���X��.��ډe�^����笽o��+��I]�\�X,)�O��]3;�8�Nem_cD����E��8��ȍ�Y�Y7M�h����b���3zB�t)��&�UqH��t^y�d�]�Fi�8*'|��WK��^�ۊ�O�+���|`�9B)�Z��;�j�HZB<����{�߽3��E8��D�o��u`��A�E�X��^mE�n%�'3����8@ ]C*.�t�".�hdVU�Y�*�C]�PO�Ȩ��S���y�����qu2p [i�\6k!h�9O�^N��Q��3�U?���
����ZF���qZ�М�Hq4}Dh�i�j�'�^ٚ%-�`�cB�iK����20�(�@�\�H�p,���k�I�ܭU��6�zy
i�o��C�Rs�����Ȼ�oo�в<��`�4¯�c�Z��{%{dpη�T@Qy�� ;�o[��G�Q�U��~h��D9����Ǚ�z���
_�h9���H~v�;>L/L�[��	ª�~���z�b����,��P*�)�^W�Y���n�Up�D)vI���{�W�3X+@C��3��z�Dߐgш��pz��c*y��6֛�P:Q�B*3�>�K�7T�E3U��Iz0_�̈���Z�Ĉs�(X��pqZc��D�����0��f��4z�,
�8��N�|�͕��U�|#��9~���"�Gޕ�	Y%�x~�����X�%����i��b"�9�3�w��D�.�yK[�%���D�F���U���.KE���Y���H��80��q"a���R9�u�dQ������PcWRp�Ų�j��_����Z�w��`����AeV��Q�:'a�ߓb9�,�nU~*�,ο�����}�}�	^G�{�4��
8������b��c!#GUT��>"�Ukn�u��4��ё�P�C:��)���������S�1�2Qe�E6��m5�����r.���of���0�A%}��$eyJ�v��g<h��Ġ�tj<�ĸ�*�֩�CC:��$���!�ZJo�;ˮ��]N����[)q����Ԫ�QF�v�
o�)8��t}��X�bI��n�|4MIi܌�T~���X�ǒ��r9r��y:7��E��К��j��d�HQ��N1K<�x��5�o��B"��0��9���L��c78�Ydn�Ҍ�f�-|U�S06.uW�R�&X�b>�����50��mdla'V���g��Q��q,���1/�eQ��:�ln�ͫ^mZ���5��^s�
��]��UM��Ldӄy�:�QHEğD�n���<kW�d꠼����-�l�k�-m���%/�����e�[�`�g�q��\M�$�%,Wm�� ��5��ϯ�dјJ0��R�iob}���؅�̈��K���t_��-��NJ��dM3�"�Y�`x�cDʁ� OS�&q�J5.H��KA�]+�r�e%�]#�D��J"� 섩�`��%�����C7��2;��^����?}�p�x�_dAbc�Eh/��e^p8D���t2�@���B�2��&��8�B�ͫ�ŵw�x�pW�|zuszq�]/�W�k��*���ۆ�����l=��T�V�����ŕ�.�N6��7�jU/�U�1:��T�e�Jb��[�ۮ��f�)��K�{T�5���䍢��A�F�T9d:E�y��(�O�	v�%E�.�*�	΢�9Wq�xJ'�{�X�Lfb�{{�*�nw��dg��6�v�د,M��yC�1�#�<IBkB�rN�6O����(��B>�M���W���䟵yF|�:�td�0��f�4�Ơ��E�e:�@!aV�ТΌ�`����@M;�X�D�����Z�������zy�@���ԃ�nC]�� $8��;��W`{����y"��ju�'��,-�?B��ĤvD�I�.�0�H`��<���,ύҊL.ޭo�ܒy�����w��B��?�� �{���
�)�S�'Q�D544����V`�J���%���4��q�q�ft�X}�����#�]Y��6������M���I�ꮈ��qy@_(#M����3`b���Cp�&-k���/#
T.k��n1x��f7Wg9=�����ip�㞈�vz�^��a ��e[o���o�<k�L���T*�Rk����U�s�>R��eN�ũY��\��N{�8F�Cg��z����&� u���Dvi�^|��t�	�Z�j �j�5
�0�P�l~3�oHc�u:��>$�5���w�j���X�h_���~oī�E�u���i8%����!��o���z�C�6
9��R*s��uZ�Ĝ	�yitE��9����*���S��bƒE(͍wq2�[$�$ŀ���z�Շ=�@�D�A�$�-�{c�xT�>��x P�Z#k����D�ʅ��]K�ةU�;���K�Do~��,��t���w��zqei�fhn�[�r#��oD0����2�@e�G�ᕋ]r�7w.��I4�2��x(�h��XZ�xQ���iW����Dr ����ah���J����X�G�w�!w�0V��$�)�"۪�y�F����{�����%��P~"B?���A�Eh�����q��F��������W�M�5>�(*�r��S���0	�� ���t�U�A8�SJ�
���%�3Bt�@{Yk�Ie����6~vyw ;�n��������!z"�0Yz�+¤k�ؐ����i�o螴�>�    �F�+�ڮ�CuP�%9������YXV�֚�܌��+���a�?�� *G�MD�g�	�LS��M��Yp����z�a$��=;�m�/	.��s6���ҩ�������i�K� ",�UO-V�ƺ�0����A0�昭VZW�)�]&X+F\���Ԥ��j|ݺ�!B�&N� �jM��8�I��ǻ��C[qw_N�(t|�?!Po*�l�E��%�k��U�/I�Ia���`��Qh�i�Ҿ�-�=�eQ Ҁ[�a�"�aJL��z�+�uш���w��<T��>'�~o�r�C��� ��ٚ� �,�&�R�9L՚ؒ$�D;q�&1�A��X�!G^�Y䮅\P0wS͜��tUf��[F1�a\R;0�`,Oe~�w&�����#��Z���2Q�e����Y渚��H)�ve� �.��:�/	��3�!���$27s�i-��L�
�M�,,�8:�پ��HJ6 ��5�4��,�6��,iN��e�N�������&�*Ϫ}�{�n�V�{k쟅��2�R��i>�O�R�}82��W�f�����W]b>����ח梄���� �N��Ӛ��%z�tmK�|���@ɳe�Z6+�Q3;[:��xl�p�$�DҠ���?��\S֛L�z��������>�����),E���.���,�)yi����l�h���Y䤼;��u<�����ơ��G9�"�@�2�>�<a��51#ƙ��kV��2D������~�c�ßK1�#�3W�X����
i]�g�$�8�!�,�¸W�s��К+��\"oE���j���BN���_mt1ݥfyӺ\޷�\��I�5Hv�b���o��J��V���?]|���x03�\�ܐL��sZs�f�#�riw��S#9W����������Lq������#�l�P٭Eh�td���/˄<�2Ê	���F���rȪ�&�̰��P�����%�ZR�}R'ϙ���fe�!󌭓<����+��dVGb�<�%|�1ɗ69u˂�����e�oN�WQ���=�e�����T��������T>ꦡDf	��;�>d�p_R`t�`Чy��A`0G�aah_!���u�?�D�-3�A�Klg��VF�>񱽅�����T$�|H��p�_!�u��M0��2g-�Y��,��M��Zc3O9O��dEឥ������� T���6Zpy}�����4� ��Z��<{IM��A�b�j-�V���.�O/�ߠ?w1�:�Yt���1�!�}<���&D�ۗ����'{�P[�	?��|�h_Z2h���UI7Zi~���6/4&*%/4@��V�a�J��Y��	���l�]�'����j�ґ�k.��yy��7)��9NoP���$~��t~K��Σ�؄��38�2�J$SJ"��Q�`����R����Q����(ƂT����Z�)��Q�h�tO
$�I#6"'���+�F����#y���qG���ZZN�-��B4���%(d��Q16P��V�Hc�*�2�j"�u��F��Ͽ_5�`�%E\ƲNK5�V-�	�fS������ʀ�����m���J>��"%�D�5��9%�~�7Lư"�G�Lc��5;o'����'`���z�
��IB'̕ʲ���3��Z{ɯ�����vm�DQV$����A1���ua���1;��y�ʆ��K-p��Pd"҉j�/�<R��Lyl��^�Uc(�
�@Ȇ,-EQ����Qjم��TԕoL�\�p���˗15TFQ��f&To+X�[��4dF�������,�%�cS��Gn�����l/��]\DC�s��0���T�yl��Fe���+���GY'7��-`&������`p`��O�(F�i��ݔ�}�L�y&
A'�G*�1$@f�߇OxʿC��P�Q"��E���R�ZyQ�N��m5+ߖ������U+L��V�[a����F�ajWTk��ʏ��3N���
�UT(�sp)���3=��3`%Iw�}� g�:"R�2JDx��͈�ŢW�#�q�W� 8dkR޹0k�L���C9�E�0���wy}j�����	1~3�/���Ӌ�1Q��_�� }�/��RE�E���6	<Dq�{�&6�&O���� �E���ڒ2%iQ��	�J�+u�)�ZXF~� jA�`A��8��Ix����Bg t0�h�|�l�9�E���D4�eV�#��t*+��pa����7(�����۷�B�zk �b���W^�|c�ODex��Jl��ۚ��ˢ�j��uN��������l>�F��\�Bz%�]�*��S.L��t�x���\�tǃ�?�AS�GF�ZK�SH�"*#�5��&�0"���]�Y\K�]Z,�$>K^IF&���D�s,��д�Knkd��e��'���k�8�	���6w8��gt�v:H�;"z-iE8&)�yo|zـ�]~H���[�~-�V�rz���� �Gh�Q.kR�К��:t�#ap��"����۱Ik㌢�H@.v��6'<v���mӾ��rǉp��#�г�X*�3���O޻�F�dg�ϡ_�]#LW���~ac��"#�X�$�dVJ+xF83�*"�
g���m���o�>���>�Q�����̎�{������2�"<��͎��w���t�}D��G B�a��Y��ۣm�=)~H�1�鹊Z��f��T��r��rV1l^U�ъ=y\UiM.���vKD�l6�C.�$X���p��@�m7n�yg��b�����3D��y"��uT�Q�d�V>C]�k�`M����B�X�q�1 /�,bp[r����kn�rљb��,ԫ�^ ���QG�27e��V�ڨ;��]�4��GFkY�����QmK�t>l�R(3�Խ�X���L��h}�vϰ^yY( wj�x�\���y�ӚZ��Gp2)Q�|��~ǩ=:�׭�Q�&؍�
4h�� <��r�,�ܥ���.��7ZD��bե�q�Gg*`��.��'=��8�+j���Y74�5��=>��� l��J�]{Қ,�ھ�|�z�c���t�U�{ʘ�hFV�&���$S�l�b8���<�Dxh@��;hO��O,�e����m�}��}���J�D��E�8Ϙ�uO��qE�&�`KD�ye���Z՚����@G�����N���s��')Ps�v��h0�s�Zk���:h+l�C�`w�R��o�qF�|X�\?�yX]���h�c�?OBH6��a'I�xw��V�,�LLp�A�i2 ��yX�?�����q��w�[K�����"�=��<�P*,�	�����T�����n8j)�R����ھRg�$���n�s��2s,��}��Ǌ�������{��j[�]��M��G6)�n����a/��MP!܏�d��^�gd���
�I&yY��?�Pq��e^�h�r�6F�1F�Pu�E*���pΡ�:��i��B���w�ֹ%u~���ê��l���h�����aуhs8\ڭ����� ��8Х�_{�^H�����\�ܫs�Bw�#�{FYR�e/G�^x�6rZl���F- ӜD������2,��v�����6�����O~豗C� ��0����4�h�lǐK)���H�:��z�ޔ^��6*���콦~ gC�Ԛ�>��'�A9�	4Fn�,�K݌@O�����
�YܱnU����g˼�L��(v���!<J�*+����4��{�m���~�,���:J<��RVϋ���^�jZ�*����a ��8�5:�l���нU;��hQ�;,f��D��#�f�X��ڸ� ���j��t�t����ٵ���m�)�Jن	4Fh���h8�<)04DQR�Ԏ�M`1;�wK�1�>�D�`�iO7��3J��߄�87}y��F���@T�1gR����<�-���I�h���5,��5ɴ�c�}T|���o�5�#��D������(���7�@�e�:.5��gTWf-��z�g縤��6�h�eE7�8���~�8�&9W�M����m�
�z�Cem�:�'\=;G�=    xa�� a?��"ʃ��g��ۍ�������L�G��)�E��6�̀5�~�xϕ �u�ы���(�eq4[8��~"?+6���Þvζ_�K�P�Aی�8��%�W���ǧ����*2;j�ЄT����V	y�������Wdq�n?^.������{��?�]\��Xg�JH*�y��RT'����8y�,���VfG�6���m�۶��FUO]� ]��. ]���uh�-���8�SM��mS �iY��Ve���ƴ�Q���X5IaI]_����n4S*���ի]w`���p��[7�<6��=�ǚ��S�dBO��>�N~�X�����:�U`E-_�P3Z�u��|�8���C�?TS�mk��:���0�\���V�cc�a�@��$3��>�l_Ժ��n_]��x�8���o~��RQJ���j7�C;ڄ���~�(�!�Xq"Gٴ.qI�4�x��Z�Fg4���j��dov��H�Ӳ	�CY�AY� ��-���C������뫋����j�7�;?N� h���q���	�fy�U�L���xrsҮW�oE�Fu"�ۙ"�N��#b��m�p&HK��f���
�똑D�fC=6��fɉ�m_�����t��,Q�r��^L�L'�>������^�����OT�,H���sG9���y�)#�κ�X��b_���%�������;U�E�DYi��r��G�G,��� n�OL�-9�aŃC���0i*�u�}�g�2�2��ww��en�FHfVWQ=q�f4�����)�y[� OYTF8�Z��Y��L�F�Ys󖧖��Lz�
mu���hI��B4�fq���N+2|���sP�Dkc|>CssB��&߈N��[���AOT�e�`@4�Q��%YR���Մ��J�E�Q�����GC� ��i�	�' �����D\P��I�����R�<�XB�T�
^��J�l���,S&k@���2As)s{ < <���;��.�{W.�ڑ+���eղ����0W;��ɇ�I�s���`��� ';�=��4��`z}�w�GsS�XUIY���G�%��r̮DJ=dp� S�V_��� s����|���[�z����~�S�[��������.��5nG+�˒X8�Tzn~�I̋�(ݿ��#x��,κ](;k���F�ˇ�����u'��~�ȋ"-`2ȱ�I���A����n����u;'Oi�P�A�k�b������
x�ؗq���f����bP�;���Ă������dIYx�Z��?´�͎T����W��	���9v���ͩ[0$V��j�IQ��XK$�DC'ymTh�)�d_ }��W*�60ē�R�8�!@ұw�{����,%���C�����j �T�0�e��7��������)��ȉ�e`�������h*��I~lR���􍐧r�5���k�a_ ��@X)���ΈE ���`��<��);?�cF8�S�*��{tg��jj~���R�yE�T�� /�H��E�+#���f;�$]�T��@(!cPI�.�۰B�9c$�.�8ˢ�_ �h"�q��<N��rW��R�|��^�_�@U3G����uSfL�d��[�e���r|�`>��p)y�m���$���g���m�t<
x�i���@AF�����:+GrFb4�gKg�;���E�F3����A���5���-m�Q��Znpp�t_���7����g��aM
/�%1'eh��dQ>ۤ��塓%�V3L'(}0~�v����ħ�4f[xL����Fo[f�I�d��Cu��pC0���b;�š�϶_�!tL�< 6ۃ�F4�4r4q/�QY��U�B�f� G�ѬN�|dB�hY���f�)�tW⠰!q���"��,���\�u�|����#6V���Tk�?��$u����"a�n�랳b�LED1�-ߨ:j��A���f"���E��S�dFs��8Mq"�a�(�$%���#����ʔ�g(N�o)h�;�/����j�D�=��p��IU���$�ē $�M���>H��(�@���}�������T�x��s&��j�s*r�8M�u�N���
M����vEr�6��[��Sz��
�V���g�`]Z��0X��������L�:���i�PW ���ɹk�m��'�t��z~W�K�D��Q^�	''	H]��7�>��b��.ޞ�9C5�O��	������x��Z�N����'l�?��KxPo����A���傪~Hu' g��dd��h&4q�H#�us�y��ަ��p�?�R;ƵcAHLʒ[���/����O���I��5���|�',_������r�7��'|G��v�x��4Z���;!~��{� @�ۥ�Զ�ľ�"���UY'~QBr��Ea�D)e�8$O˙��i0J���Tu�n��R	D��~����(J8W�Z�~s�3Z�7�T/��L�{��PR�zD�w��-��+�:ul�ϛ��;J+����NV���?9�@*A���6F?M�Q0�%&
��H'nw�rV��L��d7��9~j@�������$q�qэ��Ƥ2�|�u{x���@��ص���⎸N�� `����ʥ��(�|n��
�Ʉ6��O�j�['�Ilڧ�W�>��`QOP?�q���Յ�� ihP)D�Z��ϙC7*�T�ť3�d�#@_�
"/l��wO��j%�G���F�x3I��8mUgPoU�+��E�s���T�>����%պ�~�{�m��K`� {�m�ђ��x3YD��]뙍(M̰Q�,����&�^n��W�hݯ-���@6@�����o�w��b��a�.O�"�'׌f�|��m��Hi�z�c��T��8�0W�j:t�[m�A�
��ƍ.�nsX�u'�Գ��:�ϒ�����e�U���]>�ܾ?���q6u�\�c��[��&&ƛ��l:dROj@V.̐��@%�g���v�����P�.�"v.�����)�
1�)n%7,O����2sB���"�KO�;KS�CT��#���Q9���{�%��3<�4gd�Jۨ%Rt1LA�|đl���O��G�*�I����Ó�eR�6����*�#�4!���E����<��ve]�����d�&��l�
Wp����+lF Jc���)�'����'p�q�)@ŝ,�^��A��|�ݱTqf6a���&��͜�����j݁f���@z�ޞrg��.Q����.'(26��=��V�0�Q�zk��_򸨳ב���F�Tڮ���S�.R���1�a*@��G�!`<k��<L�/tj�e���/�,Z�	��("!��f#�� �Vu��<�z�/'푺�e=u��|��rcp�����L�� X\>Vc盭��sRR&S��o��o��t~9,����3��c���U\��U������ ���]�;���e��)@8Y�jB���@�6�1+i���5�z\�8#m�,1�c�T�q����]�\��Y��($uF�����,m"v���t��]��Ve1A��Q(�&���:�w�hb��Zy\�2��=�:�TX��[i�إ���c�����A�TB���B��C�����	@�կ�W:�j[G�9J�ZB��!����:8���3�L���y6���,���}r3�&\���2�g7h�L]c`T*�b��ky�:`
�7���)�><2Ae�4����3#���^�H�|�b��(,b�K�bS���Y<:��(9�lJ���XgS��#��#���;��$]��gU ӣ���M�r��-��4����g��w����x|MZ&t_/�L���-��7��
�)�Y����ūخ���ez�=��״e����\Y�5!t�w\��o��t�ҳ"�	�Ea��E�Q�'7�N�R����.�<��C,�5\CkKgQ����v���F�v�Wo����O�W�S[�3�e���Ц�~߬��Oo͂�; >�����f�"ׁ:���h�#3��m���������a�I���(�^�uh�(����/���? ���h��ѹ�ջ�n	    �r����{|a>J�"/�j˖p|�Z+ETer���#��g+�Ӗg�&�R5
�B������٦9��p��`�0;aբ� �3�eT��g�����vi6�~tӌ'�������E�K�0�����n��o����(M�Ì�0��RMh�����!��YlO��>t�l�2e.x?�<��� %j^[��J��X���Rw�P��1��<u�M�~	�|�Ȭ[���C�͗��
躒<T�wQ㙲�u"_�Cƨ�T.�]�pr����E����R8 E��0L�j����=H�IG�h���Tb��jv3t.FC�����:0��1u(=�\�xт^/g�p9��4��0Vk�γ7Zɤ|^C��������:���su@ݾ�������xs��GԴP���:&���P.�_5��=�$r��GZzpoTbeX?�O+��=W����o�(��Q����Ɯ�Y#*��g;x�x�z�)�F4���j,�H2l]�3�����(���v��4t����ϫK(�塗+�� ��<���ˊ�z��_�u�9�H��d��~m��Re*���h���&]4�mΓP"����FKY�,R�<�5"CV�y�����QVoE'�p�n��U�:�Q��h��{ɦ���\D�^s���^���F�_Cָ��kT��V���X���ǯ�8~rQ���4��T�g�6(���Ć/�	v�0���ɟ�AL$/(=���ւ�@�SPZ1�mIi6�-��:P�
W3Xu�,l`�o��_���Ҟs���J��;�a�)�쉺o�����R��!�?�n���qW�EZ��.G�J� �6N�`7X��M���:��
jn��!�O�E89m�D��j��#�wTZ
���"��0L��$ѠnI-���v�o�K��`s�j �"Qf� ���zЄIXE���F5�&���(�l��V�&<r*���hG��&���j�R?~l������W��1����p��l�����<X}Js$��{ksA�T�Ķ�8�Oxf��l/tm�]BY�:��M�j*!z����pn=��R+Y~Z��^,�̨�w�z�D�k�V��c�����N�zRb�1��M��^���ft�@vXdU]��1�N��Ί2�)��M)�P�\��VO�0�d�n�1U�Ɵ�h*�A����e2]���Om`Z�a�~,_��C_�^���4ŝŨ��;�[��2� �3>�N����H��H��f��e9h��hY�F�Ⱥ|v��g�jΔ����{���Z�^-��Ϋ.YV���Gi�Җ�c��J-ZG��W���ީd��O�.���;��7�����g�,��J�Y�"_�(�Qbɛ0!�&J���W��Y r쐎j4�#��^}{vu��YWn#�UeQ��;�(���8���*VV,�,���Dp�s=�Ӏ{�4}�䐝s����q$`\��	P5P�2��ҭ��1�X*����:�kNZ��}\�H2g9\u>�k���}����[��`�?w��u����8a���8��y#��>�rU1� Ґ���8�̜��"�X�t�����>կ��xX?�l�󴘲��1�>�����!+E�>�LM�Zq�����B�B �: ���Ao�Šp<��J
/t��"Y�"K��=��QVybP��6�U'ASPh���!y�����	���$Y��f�ՃcD�-l�L����V�3���i��-i�*r�ʅ��[kz��|T�����cxj���,�آ:��f�jTI��(�&�ӌgr��Y�aVR*���Y��]���� �93 OP��Ѩ���.d���b΄2	�D�D�̊r�j7��Ƒ�q���"�Fa�e�d	1�����Ft`�L�1
&yl�wG�)3X'�ۗ�&"e�T�ێ|�4'@
��d-Ncxq �x|E���#�%Q�Ap���������_�E�Ѫ��!Ck���s�Ñ	DS�l,i��\������܁�D��/�F��+r8�������B����f9P���<���mhYk˘���ͦ�H��$�=��$L�(�'^V^GE�|�Q�gV>���[�b"�� � v�{�{�S	���sR?��.��U� hDB�đ����;Hac��%2X�`�:�Wί�]��h�<4�='���#R!���*RIjK�֕H�W	s��D�0��<� Q�G��{&���t.Om��xX� e�Z�c� f��o��T]&��G�9W�Y֥��k#O���x��Ar��C��6T{�Im!+����Oݶ�o�+��fo;���+c�w>�5Xi�3��ۋ/W��q�f�W�yH0	[WY�3b��G:[(����g�%f���1�@m��#��`8��<��|����#� �c�8�f��D:B4��QDRRkx ���������"e`P6o�~�8�D��xI@�Fŷ��;�����*�����k6����/��.�q��͛W����MC6E������]��w�s��_����"i& �YO�(3�e"�S�W��`eRi��'��T�w�Bda8@0�5��x�.�m���'夿B�D�,|��Ny�*�)gwS���l�9���1<M�*���Ub�/��&fA�VQ*gAE����]3���j�?`�a8j����uZ��c�mge�1�:@�:O�>���Z��oi�V[1������I��P��E'E�����҈���ծ1��{[���s�Kk��pS�*.|�% �щ��,)EH�DV�K_"��<ژ�o�F�L~��H�����I{��fX�N�4I�	�\�ݮi���Z-��1��&�@˾:0�S�l!�&Z>]>����P7ۀ���}@:�EL�A��\��?�i/�f�b! M�U��V7P��LMn���/���/A���Y��l�e�w>Lc�����جAY��pq�rmB�>*Z/w��EV>��I���(؊���`Am�I�-#��kS�m���	6m���j �))�l��re�����Q���dB	Jr��IG�I̈́ rPg�9Ȫ�{-���I�3�Ù��:�S�g��餳��̿�,�o�ϊ���WO�{�V#�Î�h��S*�����	���R���؍n�`^v����|�gf�C��V���-��[灔sUB�'�b�(�%\?nϮ���;��"|L��0�N��1(��2�i([n;hZf��0x�7�X��V|SM��6Ӷjt���|�- ��Oك��ۀ�MCg~��:����̟=9�z�:g��AW���
��?I�+Qp �	�9����m��M�|ak���G���  <�?��9�9���W'��"���#���P-K�4K<51@+�*��\��e�hN[y�������|�d3d�4�[:l�}z:���C�YhsAB��wQ1��� �7ZY�BB8址�rթ�e(����Wo���� M������	�r�h&�m��?�c��|�u^x��x���b��/�7�޻k� 1�_tl�uR��A�6�LDU!͉���J�q�U�&eԋV�.�/�Qq�ڨ��g�5��_������~M~0&��_ :�^��H�`u����=��dw;��'L��ѹ �k��T>�y�t�.a�;�ji
<yH�z�E�Ͷ��}Gy�KqL� gLkX�q��.���j	;��3�U��w��4��隔��Z;���MpҺ�h���������ҿs��,�S}��h)�G�:nu� �	O�cY�}��5bm�WF�9��P��鋞�@R:���������ma�E�qF�@����^3�MK��om��+7�Vk�ddΨ�T���O���;�{UVsP%���c	X��R�y�KG: �ꃐqs�t$��]w����r���P�����H�g��U"�R=�D�>馒�[C��A7��\�����i���tx/7�����q�4N��b6���mB�Gks`e�G�?%���y�e�����j%�-j�k�~�C�0Rs����2E�:�U�Ĭ)��cr�2��)?�D��E���0�    J}[y�5r�p��PqG��'rJ5&CR���s�F��S0�c�~B�	M��~EQ�4I�~ �� <O��$0 ��Y���?6O�s�^�%�DbE*Rv�W�[>��bVcn�:����S�T�� �HVFĩ��9��]�����+W#�!�pv�vJ��c9$ҡ�bLu Z�9p�y��&�޲�*�Ha�ۋ��/�Z����{-�B@	t�v���n(1����s�Ԩ�kKI$n)܋^mO�R,�p�M�	s'�kA��{�Q��d��&��N\]p	���v��Zg����"��M�����i;[��PSs%o.��aJ�k��wN�- f5x6 ��0)�ғ)�ٷ�s^��.)��2fR��e�A%���$Cؑ���,��E�,�b�����>��T� ���0��4�=FPg��`i����&��k~cZ 1;Ni/ZDV�G�~s~|�"_5����� �W�w�v�1���W����y�Y��8���1�?(�g��*�s��*��rN"�j)	�P�ނ��ǋ���5tVD
Dm�""@g�g�M��N~\6q��UQ'�=*���@@�����K�B!?�q�V����AVj�\�-.Es??�]�~J>���h�pT���VR�)3̚��$,��CAT�BSv$9'��E&ڑ�J�A=v�q�Z��Zw�C����v?�}��j$�'�Z���5aNw��3ܔ������U�0�����j�l��!�;+;�mA�D�z���R趰�(9	=3%�}�l�A�hR��R��̣|���9�m����N�����*؊ ��c'ΎQ$�Vy������YM��ݒ�SS���R ����\Ah%#rU���Y���?t�˜ϋOYn4�¢(����Ѣ�OYJ�!��J�4�\!�������'Md`�{}x�Wy���$��҅����Qꤚ�9�)gf� ��k$w���ի���V�/���ά�M }|��j��qE1�!�*�)��N���I^G:{��B&��W���E��_��U1��� 'M�"�Ž<���P�O�Q�Q���lIt$;�	��}-��<j�z�O�ƣ݌��	�� �s1�;�U]��wF+���Q=sJ�He����6ǳw	`�v�}K�d�o � ���8P��f��C��7�K������JQ��>�6���aQ�E�gu��D���q4np&��O��XL���05�w�$�:�xVʯ�}3�V�CM9T��4k��Kl;�7�ڶ���Q�Φ�%�V�:��
�Ҵ���ҙs���E�Nd0u�]������.J��C$1b]0D6�2��7ֿ!�RTf!����5�Ino7S��w=L�~�z^�����D�/��s�&NM���n�U(D��nAޕ�<�/Vv�]L�$���G`Tgᛶ�gۃ�r�&F��wNh�	ʈ�q���8�pZ��U�S>*2u �k�«[5��L��az��D���)*�'lNR�����ݠ6G���C$�u@��#.U�e>�)���"&*�$�U^ؾ-A���aӮ�J��D� ������G�i'ڳ!�A������O4}������"�9¹xa�-OҼp�R�Sxku�\�庴��E�����q�����ɽ��WF� �L*]" ?�BM%��#������1�,C��ur�j9�c�ۇãebC¤���U�sgd�4��\���#r��N���͗��ݗ��S�X-��O-�D��
�k"Q�RM��)t�t�ӯ��I�8�z*b��k���-"'J����?��W{���Ǳ�G�n�y���ƕ����UK���2�� �Eɥ!
$�$ŷ�5�>G��
)�U��mI��)3TݒW^Y�RR���l�lPZ�3�L��հ7����p�wV/��s���'ނ�3�����Xi�a'E�
�)�����uh�lA�~�wM#�=�<��c���׷n]�$W��8��8��u&�/y�[�k�4�9Z�� j��x�����Fʖ��f`(�`�2�mS0�,��o���
���\�[\�_�z�>� 8��ܯ>%�S�YR嵠����y-�ng2j2��ޠs`�Թ 3ʕ����)6��5ą���4
D��׈�d��4.�|��	����iO�����K�C����_�s��ԯX�aq�\��5���U����/���1��q�B��֛F�����"��1}�^߉�B�x�A"��2���ٶ�����詿��E�nY��wja�3��w"�&�`�K�\�5�=��߷���7��V�R˛HZ�X ��jT\�,�<ъ���f�.Z�z�#w�_���
х`z��t Or9DK�7���
��O�>�E;��D \#���1�ïL�D��tʊ�#>���G�4H�KUB�g���Q�K�q��WޝH��B���5#Q_�����J6��#X�_J�&�Z�?��3Y5Z�b4��5Oʙ<ެZ���VIk�I��)��,�� j��4a����N`�[fT�5��eL�%~�W�3���n,��7lNb���:�=���4��"-R����j9����`f;(2!)��M<��ٹ���XgT��a�VM�i��/c;�����;
��.�������r�^�Y���Z�h튘9��ۋ����e�L20(�B��U<jz���3����$Ö�yH���v@1b�j[�<�n����b]��N��v��Ha�~߯�r�a=j��N��!]oȵeGe��9ˡǦ.��k�tG˸	�4�-�c���q�e��H���\HBeM�yp�|� A��������*hi�3(����+��H&���& gM�'0|O��Ϭ��M��F蚉��&(6vuصC�����7�����P�(������ww�i�ăN���8�q3EӶU��^��o<ﶞ�PAFh�T�4>@�h%�Jq��0�	5�����bp����P�}@��ca�J�+����鹤>%'ɥ���kK1r��09p�6u��i�[�R�}�vے�~W�\�=L2���w�F��?�T=���7���Q�����pp���A�HU��?��T��t�?n��,���c�=^D�<��"�Yq����8�U-�'�q���h&Ws���(L"��}����P֖t-���)A�0Kb�+���W�n���4��UV�~�錦�"A��~# ���n۫���A]�Ą����@M��x��^z*� Q�~�I1�!��D3�
_>�eQ�Si��V��������nKm6�R-Q�)s3fIX$Q����D��N�КJRI��"��g��$F"$�V=��Z�[���K��b�,Ϫ�����h���e�U��A�O�X�������:_�a�Q@ޫ �UI�`����c�yF��1xU�� ��Uc��c����(�re ֚|O����-�4�����Ն�"�
Pڍ��a���r.{eGڍ`0�uRC_`�(穌ǫH�fB^T���5c����S�'�&e`~[��f�%K�}x.A�E2v�5��D%ܽ/n+E���|z�,(n���׀�R�KG���d���\���A2�A���CLR٥�5_O��T�_@�!'�ݫ�������AҸ�
�i=���}p�=
.q��By��ᠡ,K;*	�5,z�~><`nn�K��Ĥ%/qkpl����$lw�l�����q~��q�@���*��
Gw$�v��4 v�4H� )�����8��k�d���X����	���k&X�j��w���J�b�0N��*�gf4�������>���{�X1�����\�LBɌ�Z�eNpҝ�#����eL����t�m�!ct���Z�Qsp�� �e����Ҽ,����%Q��@���E�������9@�Q�?��w�E��e���]���{��2McO:�� J���6�[���@@-�uӁ�=u,O�� ��c� îE���d	���`�k��\�Y�u�������B�պ��0j�C��")�
�/� �Y>��4��`C%3.�:�U�5}�plBѸKh���^(	��R��N<�!����
2    ���� �Dt���̏�Ǚ��=�[_i�8�կ���x�[nM����!�jy���6P����F�N����~��M
��HMc�8Q�2�%��$�Q����ʽK��������V&,�m������W9M�gDl���l���#���l��]�����w�����>��1S���:�ie�%	5/P+H�eq��3��D6����R�mv�&�x���"��=�\#�H�@{8���%c,in6�ip6�k]%���(\��^�7
�X��S}X�	q:���\
�<jP�tc���������b�a�i�M�OT>��D8~0�On�'1W|eq��
�Q}�m8������?��%r�v͟_t]�8�#>hA]���Е8~�6H'���n��+�jo!c�Z{z�L�|M7\��4���%j��8�F/�����$5�%8�5�NT�0�tb���X��c<���
"��ӷ_�t�y������i��F�xǸ:!�Y�������8�e������n �r��^�@r��$b˵o��e��u%�ǻ��`R}	� �c�B��G�d���Z��o�|�$�t'hD�U�E�ԡ%�W�����ceF$xD8:e�N`T�����\�^,���G��$3�o�@D�ֹ8��tBy�v���-us櫳"`����:�l�	�8RiG��ȯ�mt�2���׋��;\��Ĥ��Ҳ�x��\R���0.��.�c����8�5ս4o�i��v��F�<\멣<�~�-�G��X�c:�Z\G[�E�l.���#N�����{�x���lЪ<za���G������D	���Iº�JK<���<��N���d�dS3�����iv�Z�n�u�'���{�� ᰷�!
�U��^��M�H��y��҄z�(�2��}�Ժ	6����,d�ng�,ʨJ'nV�Ƒ%���a��w�=8��$#��^��f���D����� n&�S/�WV�pB2�6����0I�(-�g���dȍ
�U�g�We�2�2�|%�Ի�Ph ��@�{��ԯ̅(�j��Qih��;7�t����8�A���,A����Hd �����#I^����H�sd�x�Z&�O�LF\�1E1��<<�1v�$���������LӚ�޳Y�!P�7���Z+�Rj@�ܾ�0�� �����vR&�������M@,H��1z��WN�X�8.�8�x���⼎���!��q�K,���pD<m��I�ZyLL��~+��$_{����I�d��0�g�5fX�q@��\�^���j=���dC@��ˋ6�i������b�6;��VIRɢM��@�	��s�ai@l����U�9�D�� 3�$��8@�^b%-�r�SUlK�4zD��f�a;���\$Ŏ�1l	�b۫�B���t]���	�]��@��(8n�߬�D�l;Yd��(a:`�-"���Ռ�
E�Ӵ�ӆn�����|Z��)����y�f`���B.#S(�k�/� �Ǯ����bZ����w��b��d{}}���rjI��3��VgJ]����ж��$�+"�Ӵ���I�����Ω�+l��E2gCg �Z�������2�g�[�)�{�\.<��2u��T#���z��<e$ [���2�N&�Q���C�M�2�e�qA͆�+by��]�蝳oŶ6
���js�W���g�Z� v�yL�������N�\�~�DV�~U		Kk�h��?0��߅��ջ�A�I�9-����w��zW�3,ǣ�y�t����XR,��ut���`A���Z�׺H�^�lbQ#ø�Yh���&����@�%�6��D���a���C'c4��+/?ZJ_����Bۮ�Fg�Y$�����)�P�wy�F�Ї�C���3��r0wQ�����hv��k��Ҳ� 9�f�p��{B-|h-�̹j�w�����>�	2�px�gaN�M�4-��W��}Č2��m$�7��zN] H݄�X�S�N4�蛲�^Ԡ���V�P�}�Ȗm�}�6�ŕ����~���}�����0RZCz4�G��-d����R��Rb�--,e�� �w]�$���O��HU#iv>������@T-�s*���*�\E�J�H�Vت(���-���=�������b⚳ мD���?��m�lJl?��ʭBK�͸���3��iV��C]��='FK������O�k��� ����T
y��]�da�� u(��C_�̂T�Z>�����dO�0����6�i�@��Ҳk�0��ۜ�(2���C&��j�Ῐ}J��p�.�/�^�{ 2��q`�
��������L�X�-�2�h�?A���tN ����b(5�����^+8ף2�2�3�'���4ϋ|v�7����ͪ�9���[ԵB��u#:����5IQ�VDE�RF�������)E4��ie�� �L�����{�a�xY#R�$Ij0* �c]gL*m�E1VE2�<�g%0פ�D2`�8�B�9tv\_������E�.c���U{��z���g('T�I��S��M6mGm(�{> ���Zz\�(i5ߣ�RI����e�/k�b5�̓Kk��Z�u+��gR_G�sa�W�jS���t/����cn z{���6���Ϲ�����Z<]�̄<I�,M�W���##�b����z+fr��o�q�'E��$��^}�:�zӽ�"�5���WfxE�AW�j��/�[;[C��A{��#��ދo����FX�X0[M�6{��|���2Ħ'u\�ɘ�ΎV(�糸����_�eDX��V�(A�r�x��12=l<3�a���l������n�s��R>jʇ��H�
��L-2/���I"��e&�w5%�ήC<y���}
*R�x�Ho�uǿ>����+����r�>�8�!�ڶ�Ԩ#�ƹw��	�V��u�*�#z�X�nݺC��o��zq{�jq~={wq�f��tV�~D�'��;x���@���*�Ӹ�K���ja��e	tw�$�р~~��0�V�7���o˻�y���q���@�2򂧠���u��-��)1�����y��"��B.{���O��"���+N�cFH��et��5y����d-������*N�hBm"������0��<�~X�B<��N�4�X�	o&2�9�RSԥ�+E��IU��)n��a������0�^j�M�ld*�m[f�}�@K0]>dU |��<����hE������T�� 3 �9Q����5�=N_{ژ8�])���F~���[�f�������!D�{�7Z�U��W���H���B��4����5h2��1/3�����޷��2`*B�N��� ��p	C#4� W~�Ԯ$4��~hg����ݯ�H��p >���`x��B��y�O�-E�2/Sqz9��˃���C4�fieOo�G��z�����.�=6������[[�*K6$��v�)<٦g�����_�$��������R�F˿�O��Zj�?��yF��*�ZvqWɋ�E�p�e*�NA� I�3�W�Ww��m'�QV��1Z�g�al�~��shD����`�~���\_ o�%��^k �|�'��x���9��6nM� �!�&*�T����D�B�*����&�}��;��OL`q� (��ڄիZCAS9a*h������'R��y��i�qz�q.�*�D���A�-ϝ��F+Y��cKZ��t3-� �������$���N�����R�=��K����X���{$g���qU�(����%H,b�-7h��}��{�����2')v9�{�w��<�<VZ|�o��^%O+K���������Le�6-3�����<C�s���J��I)'�Ez�$)���Y%܇�	���^:�����_֗�Q��c���L �1D�bb&�hMM)�
�4�Ǥ;k�0>ab��!���?n�4p.���A�u����)�*s ��J�!`�X��d���B�C��"zDk�p�%��    ���Se�TW��]6�]U'H�Jw����������v�]�(�^�4�{��NC��ź����3�8t�
1�;��&�R.O*�u|����p���K��������|�.'U��1HN�0�')g�7� j�wxO���f?R�.!L2D��qR�_�R;�v���W�).�o�m3H2�r���}r�[`E^{���&U�ǉX�EM�:�w�4���g��.�n���r:2���������0/��s��n��8��Z.���1Z2�;ݜ4.�ī�G���.CG�����,�e�G@h('1Z$�_�ݹ>((`)H�֬�},9�G�i�~Y}B�nq��M �TT�;�t#�g@M�B�gٔ8M��%@V����! ��}��}���I�?R+�����:�Z�9��w��ƍ9p#�2��@��4��C_�wK׎���`�ʓ�+.�E�)�fR\�4u`��^��1A�/��\w�ŀ��0N�4O�ׂl�	(k�H	o�K�ʹЕN����x�ْ΃է ��$�dA�32�~
�<@�5�J��� �feY$�s�4�+7�v�NGT��J>��|��Agic�D��e�����������`�T�����[�����1<)J�iZ�r4K�a��\�x�����W�CG8��vhޫI9����B��f��Ö��.?��A�^2����Q�ev2F��hř���|����M�<h���=����%�M?���IV󂑣%tP�i�0�S-De�  *�\���Zd�B#���7�G*���J�-�M�<�颢V��xD��,�C@�e��麉*�}�Q��:b��,��xX�~��݁ؿƠ�?M4���UU��<�2�E�%u];~j9{M�bn�T�g9�������N� �9�;=�q��%���,W�P�����`����� ��7�r4
_�)t���|�n���!By���sJ��rb�=�?t��왾�wy{�Dw�:[겅�+�B� !V{7-�c����[7�r�(A߱��^M!{'��r{�;����̼n��/����,� ,�G��1��-�I
��q�B�oD��b7��eCį�z�>܁���x��F$�g�5�_�9���j�G�!��U��jzl4�j�������Sh�X��vO����4��˅e"���2ϕ�h4G�ne��*F_Y�x�D�ђC8I��o:�i���Z� k�����ܬ� 4�/��s6\R����Bb�$7n� ����"o���a�(,�}���.}�*sg��}7�J�CLfY�Ϲ-mΧ��/��#˳(a��KK��i/!9S��?\\_A������
]P��d;�&�f˭��)wG�)������v��`���ڀ0k ��ZJ0-��Я�W��/i�ƹ��"��rb��h-R�*B��r����_�"j��Ɛ#ʶ������D�~"8Q�����ݝ	 O�dU{	`o0��S�G���[�΁�z��s>%,,�y�����k��%2�P/��]�`@c��IA��{Tg4�+���� ��(��e�f��ֆ8�!�����q��8L��U%<�1�kN_A_�c$E_3]�fS}��di��l�9����:CD��h����A>7�Rw�x����7��rf`���3��u�ڙ���\��)O��zK��'I\�.��7JND���E�L�~j�)uy+I��S��P+Ŝ�U�7�� aX�x9D�(:������2�gW�J1�"�t7:���Sv-27d��4��]jF��I͓Rkξ�b��S�ĥ�$ď��V�=��|���GBMtU����"�"/�$���"�fn^R,�C$�/�݅�L\{���Z��\Ѳ:�\�z�w�t���s��a�#�?�l��8Ƿ�ϯ|}���9���z��/�<��	/N����MjK��[hC�%��s1λ�CX^)���#��D����?�ȱP�J�LkD)×�]a��0U*��4��{�'FE.
oG�Cir�>l��M�!�Rdy����α�%uF��)��8��(��]�[ij�1o�A�G�2��G@����kA�v(���s��vNVW]�[u����m��w�o� �w��ίο
�n�E4��I��
��]�M >�d�0��l����-���=:EQ&@t���z��TQ�@֨�@����S��u(�Un�a�?���r���5�$5��?H�G�3nEi���}�Լ-4��.��+P�mٕϪ���R�g���|�m�cf��ĕ��R� ���F����=?�,ޝ�_foj��W�
�F; ?E]�0M�w��R�����z�'���s`�����i�����q��,�\�@�r�A}�ke��8%u��W�*x����T����"�����I]A��{���:��8����%,1�<��L+<�*����#�A�bPXqh�����q�(kHi���y21��P@����~����DS�����D ��&�r���A�[HqiMB�x�%�	�W��Œ�u^{��52�GEU
�Z�eL�#su1�3QBz�kTZ=�OVk��"��Y�EJ:�$B .P���Z����z��jV��.�=�b~���e�����R��ԩm6���Eg����O��<�L��b�_Jӄ,��:�m�΍�"��qۑ�t��\!;G1��B�0w����F��6ې^B�Zbh�Z�-vb>A�a�):a&�V�D �h���״�"��n�%��9�n����=��h#�m�>.i�I�� s�(�� Z���v4����D(���Yi\v���7�������з�-�N�����GH�J� J�:���HkI���Dc�T�P�=��_�m0�7���K�մ�� @�:�VE�:AG�u&.��T`�͜S#8��{��,����1$�M���i���ʨ�R���.0]vG�s�>N��2ɋy��]W����_���i�x�A����}c�B�N�����~8U�`<Ā�W�p��Y��q�$Z�˞4;d�ރUQgj�|�F�N�y�g68#>:�g`� ��A8��G��`�G�g�J����RZٛB� �1P����r�J�Dg�
�:�����aM=:��hw֛�!�����"��
I�ͨ����}Hgݭ��Z�X�f�#�(M��>��N�r��#:p��c������CXC�dy�ML��S��bJ��5�U6��J���9�^e���*�I�5��� ��Z��ĭ�V�Vxm@�K9��B�uEן��Q��y�l��z������|q��a��j���u��X:��r�}��{jm��ll�|ypu�����	P��щԈU���p��{��˲��y����ʓ2MJuO�>�QF��v��,Opۯ>j��f���B�}��}u���`I�,�o�X�ç	�r���������z��[�v�ͼk7��ϵ#�i��$0m=u�[�P���1�#3�l܍VW��}����h��Z�����Ì��N�o�R�et��V܈عb�S��ᘄ@MO�"�N�xbq�Q*J�ŕ�u�=�<�g�߯_����Z�ѧ_5,6���=������X7��+����*-��i2���Z-�_��pҺ���[��s�����VRuV����4�r����th��ٛ~�Xm��F�J��X�z����j�O�+�N�Qn`�i��DCZ`V<�Է��CI�3�im���A�yfY���P�h�1 �uB�i�ĚZ5�s�@S4��|Q�
%�L�K�v��`Ma�"��5�U_���R�_UV��g���"�Ϯ!_�~P��;xq �cG�: G{���{;ݣCy]qJ�G���(sX���
���ȼ5�Ve^�0��s�����[�<��)nm�	������א�W�����4����Cn�h*�?�̅?w�2S/�C�%�c�C����%��D�]��eS�m�� u*G*Ge��+Q��g *!��(������#K�Z0�Tgs�7�딪�pî7H��� [�7�fr7�Ş���n����,���1����W1�@#ET�BB�?Qa��    {(P���)ڷ���;f��_�j�Zd�P�=��= �X��i倍��e.�ߨ�*��#T�$�
�êL�"����Q:G☏�#����*�)��N�������	�X��|�uO���ku��.�u���4:P�������?�,�k��vq�TuRf,���9��^��]����Zoᥘ6!'d�-�*�F	)9�Ȣ_Z��� �W��6���;GL?�}^r�L4
�gR��������ഈ���q\�����iYʖA��!��V#%m��H��5�Q|8��6�p�G�t1�h�\+j$ Ğf΀hV�	�e��L'j��=
;z>;�5�� m?)�L'��@�c��2���G���zx�4��ڛ��2�Z�pH���\ 6�g��(0׍2jeq]C�9�����]�f��`ȘFFy��� ߫�(�]c���v����B�jMO��/3�8<��v�>�"�Ҽ�'6�Օ�l��1�rR�����ͦ=ɿ=S��td��귞�� S-�|{��yҫW��h=�B{ 貞+�4��٭ iM�Q����Ā�É�{��a�;�8+Ml�f2׌\R���a�F�B�qk{�>e�[��)�����ݸ��\��$th�i���H��2RH�,���}#��tجP^�{T�5 i�"N�`G�2��W��Z�C~r�ᢓ���\-����'I�V��zf)��������P���C4����Hx0Uע��{�iN��*M|_N�fɀϐE�s�>�n�cv�O�����3�k���|���6�0�|<�?Z�f�lʝAk�*:Bq�`c�C���,~����QY�<Љ-fG+����fA>:$��E�u��bt�lfT�Vn5A���<�$?�x G����<6孩����h��8|�p���R��2���]���n���ի帺�hs�L��yX�i�W�dF+i���VwFE�^�����*��PΧ:��nb��W�������<]t��9��y����AT2X���ЪS�D{�PVnE0�1B�F�� ��Ԣl�����7��
��Qg=�!.V}����ZP�_|��/���H!��M��j��9�0q�������<yc�GPYF�4��R�y��=tǧ���)[��؁i�m>���gh�+ø���h2�a�u)z'�B(�t@���p)�N��KW
T��A���6<N��oi}\�~��k���x��Z�]��o�/��_���7����p��%~`q�!eq�:ܲ ^��-�;�� Y����ȶw�����Ӱ* ����M�n7 �je~P�D�d����@����Aş��[6�j~�������u{��B�ж�8J�Y�7�0�0I�WD6D�y�h��76ǡ����E	�#��P+�:�-�H���r�*��(i�ap0���+���T0�<̠Z�svW���WqV��Qb��t����=�XD��ު[3����(+76�9`�8ļ���ђ�D�[�f7�N�ɚ���|��yn�0��������t��	  �������f5y�o_�nV�R��2�Z�L�G��s-u�����WgQ�s�:��UGB�&��{��0��:ݰ%���;��D��
5o�+�Q�T���J���	�������n5Rct_߄�{� A*p33@T�sS1�?�L�?�y�.����ۻ��7��O�L��HC��n{G:F���Ǥ_�mĀ;�:��<s���<���\W��t�����1�f_t��]��L9sFL7�9�a�0h���>[^m�v�JS$?�8G�GA�G[�H��s�w�Jm����-�O����ڔYgM��!��`M(��K�-�P�~aH�ף�J�Q$�V��)��XK9�s�v�!`��,�����V��7���ޭ�Q�M��4��Q��c���@�7A�Ɓh���X�UFG�)$������7d�G���kn[�����~S��Hq�z��Y?�]S�5����FE�΅�0�ͅ�.W�u�z\QA�(J�V%W�;��n���YX�ii뜰Z���8q���C�Y0����VH��q���6�����9�!r�Y�e�9ǃ���V/�_��p�۽n�y�	�9��0S)(1�>Q��M"+���}��Qr�:����<� fW��$Q((��.Řv,Acv�zQ8<Yy�Wn����0{��$�d�<@I*��8���R���8 B��4�"ɼX��r�!�k	�"�*�Ӕ|0�403�b U>�'q�^�}��؆is�?mڝs��kd�xd^~�e��:�Z��VY.+�5V6֖���j{�������� ���M\���Q�%����M �Fi����a�h!�u�j�j%ʆ6�X�����*�1�rf����5��wt���Z�k�/�i@�#��8�ol<�'">��c{���
f������X�?"��GM��D�բ�I]��.�����mۉ��Gބ�� �(�Eqʟ������n��|��{yu��T��XI?�J�Q�2�@��W��w'�
�����[wM8�4<�P{T��
2}���v�N���Wu��~p���$2f`2k��˴�n�*y�|�5^�?�V����{���ߎ�)(>�k0�,���iU��O�ֱ��+ʈ��zf
c�aU�j/��]�ۑ@�N�(Gy��
L�$ �-������B�� 
+�
�%;c�W¨�"6������J������su��Nq/��U�Ŏ���-9�s�K_��J�&�1MV�Qo��; ��,���9QV�S�A�Y�j?Q�`��)0v���5�4��:i��[5��d����Lr#!0��B���!��<����{I�����_VYR��^�d�^a��D,�����r�	�"�J]�$��\�4�M��٢?o�G�c0~��D{�>/!'�WQ<�#Ԡr@���~T1ī�O�^�T�L�g::�'O�zԞ��(J�����Pd����wG~�l������RYy�hF�	��s�H�!)'����	S5�Go�)}�C����*�R��D۱!�;|��K&<�a��H�<M�%�ܒ�.��')�����7C

	��UK1�N�\�+!4{���-��y�i�iG!uVUQ���ҲQ�y'�@��q:���	�1K���Yc�b��ߦ;{����`0��NY�T���]>gT�]�YvT��;�fZ�m�M��%K5�����Rj��o��t%���b���f����5��d�Lf��aЏ��F"T�r�kb�Ck/�����2Vn���x��u�Q��T�w���s�A*�j7�F��ݣ�Р����q�}�d���$�gM��\uW�b4(�SC���q�lH��o�c�Hz�x�,����ǖ���/�xv�!"z|l]\�u�"�J1�RY���hWo�A��<P�����L�vs�vRi�7���$�Ũ�A�w.YN���}࿵Z�Ċ
�_r:'a�!�/w?�\ߪ5�6��R٤3\1A��v�/�|�>�4���	wFAʨ|�ٝp@�Z�������������8	q��a���g1)��3���ݷ�ߟ����	=�Đ�ݸ��u'�'O���������Q�wO�ĤlVEҜ��	�?|8�����������6xs��R�ߝ�j�Ӈ9��tݦ����]�ʆQG���t#� qzO�1_�%�j|�4ɸ��N6o��d�4'�ձl4�
��DY��<=�Iڋ[H�G����b/;獒�i�FE�Ϯz�Sl~Z�d	�CTN/�+Q�|���]�d��*�B�H�T#�Q�v�wxyX�,"Fk�;�x�s�������/;χ|kʇ.��_��(E�qj�^'��D��� ����3��A����,�;�a�#n�ѡwpUf�v��PyWj��U�њ*|���rB.b$��#��K���aY�����6�9U�ݽ�k��F���0�CA��
�}/��^�QQ�H���N�G���KZ+�V�v���ƃ!�=x�gv����m&�jv��AU�J<,"XVu�YVHZ�"�-3
��    ;8l�����d�
d�e%����rA�J�?%���OY�o�~��wx�	 ���=S�e
�b8v���0�o�y��_����dI�ց#TJQ���k�
��T��KR�5`��3D�ñY|��@$��5��`��x�*穥t̜U+�����^�.QL�a֩��(	��&��Ш]�?�F�������2୪8�a�5׆S3r���)J�_&� �q��|���G+���tS��,����p����Ԑ�j�,~��M��@jS���L�Fu�%9�5���8�6N��#MA5��Ou��F��=B�/��!U`�X������E�t܊'Cٱ�M�]V6�X{a:/$vV'��V�-w��&ؚ�#sy�{�B�(m7_�H���f1�ҟ��9S<�1�$���1�hO�:ܠ	@�}���O�<����ͳ��������3�-��r��z��K�+�˫��m���Y��L�M����YQM�\o���%���s��ֺ1E�5��Z�uO�	�yp�R�(�S{I�B�N��6���(@+�)��qT�Z��g��h!t?�%�p,T-�HA��!��>Ƥ!�6���>�����}�)fO�-IKfV=6��,O��>< 7V�C�7�ێVۆ?9�#�ȡ^�����v��Lg�u�#vHM��	��f��i껋�h���*�+` <*'�2J{��;�.T��E	��2��{tF҆P���-�y�M!��~vw�Ҽ�f�ݻ���S���)�5l��a�qw`�2��h$a#WI�\ ��j�UVI�I�>�3�ZY �dd�� ���x�^&��X��v	w�a#�Љ�_�7�f�1L��JV��Ғ�!��B�1��.n�!��Ict���*��e\�����M�J�������ڮ=��j�kr��قF�Ͻm�0���r��5�L9T�z��E��c�L��¿cVē���d{�U]DQ�FQZD��^\C&�v�fܼ�~|{�t�t^c��,P/z�+�f��!��C8����e}8nc�~����0W�d
�"g~�RbyYe�3��"����yd�%eVăk!L1z]���s�!pF~}F�!�*d	)j��]P(w�[�P˴�r��t���l���g�����q��@����t'7��K\�Ǘ�(�ϒ@�)�R�	娔�,�jv��ұ/�2�C2���͸�����;�m�q ��ã�����d�U���_99���l9R�k0�2���H�L���g�eZ�3G�2��;wFs�r�*�[AR_"�n�B�
W���a|]�Er�����X#P[<AZ@AixAd��Z�������K�=�6h-�{qb��L�c\��Œ�p�Ey(��#貫���8�>��h�z��+@٬���=���1�J�k&���VTe�}]�q��K�@!��!=��ֹSzHR�Q��gM��v����*���#Ù���QX+��іx�U**��Mu`�Ѿ�9G�V��HN�K���a�3�WUq5~�r�@��٤EH��'��W�[���Sk��fY�X��Y8����$�����\�d��� ���6����y!�b�2-F;_�R��<o����� ��{5�tr�J��y�u���G�P�K�P�� [��D���-��}<�?���i����m쾼g�y����-����_��	�ξ��ם8#��$��n,o�S��u�3��"����d͚�'�S>�
^�	@<x���t^��n ���LEN��,bB��o�6)�=	d5�=�~��I�ZU3ݑՎ���e7Y[�T���e�kJ$��JO����۔��(�(�v	g��i���t�B�]c���$P͈{�9����1�0D�f2��v�����S�&s�y��Ia�wBK��2*{�.��d�o0�����\�!\��پY�k�fg�� L)���R+l��p��v�t-�%aU�K��@���*�c:[���?8t��h����յ��T����޻,7�dY�k��u�HW�hn�{�f�$݃�t�M�{V��H�9`�#��` �#V�ҋ�\��@��rDr�]�Z�d�d�>T�����Ȭj��Tefx�U5}�ǹ�l�0�
����ʹs�zN��Ӑ˟T�)�U���|���3&� ��BH#K����mZb2*�#Y�{���z��	��*���\��?nװj���r}Nߑ��n�C���ռ�V����ǿ����H��e���f�`���Q���`��Tk#�=&�	AM��:�2Ř1���by��(N��T`w[�s5H�^�]��h�QkѻH�pyNaP5�(:�Y� n$\���F�fnv@{΢�<8��t��3`�S�*޲^��F�OÇ2�b֗��5ւ���fvsq�[o�����I\�^y�ך&���|U�/�,�͔�/V�f�����h'{�̭H+�>*��X�	@T�*�2ע��C�b�4)
k͗E9^���w�[�I����ؿx�z�,��VY�����(�J�1>�uq>�BA�&�8��hn����a�bb�I���/�$Z_ �X�hMD�ge��UJB T��G|+	�b��	�(e�{H�v�����(L��̮8�U4{�F����������q�JEC�7�� , [5K�F���~�&Ue/Lw�'��W�w�X��q�J���.�|W��R ,���$�vE�fuo�$�B����o.��<8����V0�]𘍩�E���2����#�����q�E��p~����;55W�Un��~u�/A�M�8���?N������3,;�A����3��"�ƥ�x��O�=�8�gB����������ʶ�V���4��:�9{\\]���W����4���� �ج��Gd�1ak9kG�(~�&IvT���h�;�#{\�S]]�=�5�����D�HK̹,\�Dd�8�8=;9�Ęc�"gy��n���
�).�z7�@�R%���;�>��ʢث^ۣ�e{�ژV��ΖG�IE8O�v�֫"/ RF���(+W��[ȹ��.*�5ZLZ'P�,YF��u&�'&�Ya,��zs� A S�ٰ���ѡ[�I�[wHX��@=�#�#�L@֩�r�P�f,�ard�ɑS��XN��ſ����������>�@�˰��\2f�Y^�U���$"q�bd%N�#�x�J�\�5V=*�x��v����T�?���Dz��ik����q`H�wl+�;r�g��q����(X�%�úL�Z
l�j0p�2�*c���Ea)�~6,sH�V�'�]�tS� u��a��5�Rsfup��:���nN�.��+�ާ��@�����
S	�m�H��K�n		�50�7�>�Lǆi�3b��������Us�����7��o66��!�ay�M�N?��e�\�$N�}�`���R�kAk�
TE���4�
x��w��yXJ�|�a��i��gJ��q��`�,<b�4S�����ڻ~l�X�)qZ�8��'�	���,�g�e{|�����1'�!0��S����$�h�>��rM"0<"��3��Ʃi�o���y'y
�>u���p_�%�����ˌ�/��8��{�1�A�S,c�-�m�7h�X�����K�ܨ`O.O�����V]���rbn��iw0��ꮖ6�3��SC<�����V�X��<̚S#�j3?�2�{�(��h���n�߽Ʒ�`8M�:�X#W�8�s�V.ACX��	�
6=�M#��u�V��
A:�� ��sxz��b�8��h��:g��o�=�����y�.N^z�_n#�T�a'�tT]m�f�����pw,P_�"�=i�g:��@�y����t�������n^�d�?Ԭ�C�@��V���oۦ���o�q�_#m=�<��E|�Lq�8��!�)��~���C}J�GU>8S�5I��d�"͝��+ @^*�$ ��p6�l���k��/ ِ�a�m���<؀O� O.���-�U�2L +�PN+�L�c1��KL�y6�q���>�	H��FS"����K��    58\{��i����/\r����e�"�����_v"�j��k��P�/J�̏h�bw�g}��P9�x!Ô��Y�U!�N�F�h�P�$���w�)8�+�FЬ���q�,�y6U��ěl�@;�ϳR)�5�b�Epz���QY�)'6F�D@I�f��7�`~����a8y�I?�DB5s�P4C&=�ۀoO�1%;圖:��7�`�?e|����E�4�:mV��K�&�pՔ�����{�.)�
�G�<]NvؘE.M����14�.q[똣�,c���)%{sHܩ�$<�`��0�j��CZ�qN�LJ#�V�}����fڶ���|�5�b9�p���C0m��xX���ݺ݁r�Kp�4=�82�>����-���׭qp��Ґ��$S�Ĭt̚7�c��К$�K���Z|��f5'�B.��
1I,�;U+p��κ{�O�����u��*V~s���AV\L�Z��210��`�6�_կ<��U �V�Q�Ʊ���q��3��o `�  p��Rޢg��H�O�t�Ep����Ϲ�-r���CF���~��0��v�H��aYG�S@'7J�썲2���$':�)0t���G��ҪNI�v�&���Ţ�����G�)�@��a��Qx]vZS��J��&I��҂O%�M\
/I�I�v#Mu��];����~a,�b5���!�2 ^;�d0JSc�7M~9�U]��*�J{�!�cyToԘCZ,�⺬e�LJy��NY��ΐ5��G_�������͐�P�Z�D���3�JU:�Ɣ����W�!JH
���:�)���E�m�BP��B�Q%e�eb�V��yE���Ԉ؞vu~h?�?|nv}���Q^��ޒ�7 ��G�Ho��e#�[�ߡ�����=cSYy�u�I�6O�'/`��8*�1^d9y���m�����t=
 ��<��8�"H�� �z���2��aEqN��S"���]H�IA<�\�8j��NL�]�4�``˛0��V׽�y�d�cP� !|�TJ��q�i�ևkvTA\�o�A�tR��^�]VO�n<h��ܩTf��s�OҮR�Ҡ:AR�O��z��r�:/�Wۂ���![�j�e��4��"d5��j�<smV�T�CB��G����{Y=i
�(��������Hg'W�~8�ȟS����&��VBD6.�8�GFnZ�`�`�Ɠ�7'���8�>��d����G"���O���Q����"�@�D?:K�{�Y��g�6!K���%�u�<,'��xկ6��/����J�����}{���^�l��/=f'X�9��!�a��4&pC����mv+R�q�o�oߟ_�yi��4U�t�Xd+M��f*�V�E�0��� MrM\�@B �N=��=Lo?��3SQ�)
��p*+��r����Q��0"|�$>0���5�&KH���p��o�l����~���=���6d� M���1�i�G�B�]�bՂ?�o�o���I:8&CUD7b��=y�F��f�F��a-�1V��խ{�۪��t����k�ԙ�v��r2V��0/-ײ8A���ó�,��pkZȮ@p��ߡE���`��8J��iC4CQZOdXN��G�O*L�e��Qw[��}N+�T�>�b�zqF*���C����G�QqYF�+���	�J�j� �d��<hPT�wWgq���3��3�8(cMٚ:�i_�6F��$NG�Zn� "����P{�r�F�|(Z�J;��ִ6󛧟?�'�G�t�Q�<�=�gL�jQ��B�ֳs0eª��b��!F��Y�'tͰϕ�&�bS���+Y��ǰm�u�)h�`�/:Ño���<��W����ߜ��v�Tg �[��m۪e�����P��7�P�;�΅�S � ̾g�L޾�w���?/���1d��$�<�Z�PV���J��e�sA��7�Xcqi�*�ޗ�����.�u�۔�gЇ���\����e�2��}����1����I�c+�֎���f3�y�>��j��A�?�u�?�%,�Sq���8KJ�D5$�ԡx�$�d��Z3.C��<KD�`�G� �*�&l�1�3aNa��'ˬ��Q���&�r=��z7s��Q&�{��ya�֊� �a�DI��s���,�4�CԊ�O&�z�gjS�>��Ifd� ���sD���	�t� ^��3�,:[0�Уg�?pXzx0�j�EgQ�D�a鴺G�����z��!��@�i�Jlt��Wn���py�g4��|5��S��9L/��߹#J��
 �/�{*�IϪ0�ӸL���I��^����O��'��:�=lM��-ʊ��0�
������O�;L*�G[�M�(̌��~�w�3�Iya���:,�8�a��0hFi������A��{�STW)��hIZiX��xz��ߜ�_� ���r�{�eBu�8*�(�"�ւ�he�_j��C83���\�lg% A�ġB�rH@}YFu�z���a�a�9�W�n�xԂh�H\V�v?Z�E�Ylq�rU�!U�����b
���5���̕�����ɳ�R����4�Fh�H4�*�@0?�7��ǿ�Ҥ�`�e`��^�j��C����� j����z�IDk�*�2�'g��n��A\ήԟon���&�Qʓ�cM����� 
�eq�57���
����!MX��.����rM��@�⊍�ۤ�ް�N����L�d8p���dC�`�����O�f�R�i�k�"��ͺ���r�#��U�m/�&ȫ���PJ��:}(�V���F��Z���`����=-�Y[B��T�y�L��8:N?5�D�:	�m���*�G��x(��M�T����J`���tb-1lZ�=,��2�{�S��� �l�\�=�q����T�u���v��v�3XCk�kOv��j��5���j���p~-~����N��A��|.}�:B,hQO�Z9�z������f�P�ST������`+�,!��u&�]���܀�>,�&�����.�=�oM�ܑ@嚍S��..�%a�|�4�i�8Z�ˡ��rl��&��sмD-<�]�u�k��6�wT���P��Z�,R?��Cޜ�0�c9��z��5� ��X7LTE����������˅é��Vs�|����T��'��"¹O���2���,��C�]X�M���65a���H�����4���Z�T

�Gys	$N�m�G:!Lm�%��ظ򄌛��;ߛ>�	t���:uXր��%Y}�@�4�(/�=�z5�EP��|��C�{�����R˔�=HA�)٧��O��n��T-!2[�q.3���4��z?���
k��H&�c���d���l��[d#UG��(� 4�e �B����I}�#A�W���ཥr�V����Z]d�����֥�"1L���u���g	Q�o���´��ӫo/f�^_�e\�iCOKD��IW�H':����b�p@�+���N�.�9���:9��e�`�ِL	��kjY�q.i�ݳ@/��7�'�fC�g���Q�1?{���c��f���(���9���:�,����[bRS���̎a�|)���L�mi��S��٪��x�y%M;Y�((U�Vz�v�l�}�o0x��V��8�;T~w.X����n�|��$�_�����l_�.�^�����y��jdV�ᕂT
�m��/?�sm]K9%y�.L�U61��&�t�[��ԙ���Dl�3B܁7y��a�gi��5�pC�o�h�|����x�3��2F�� �d3��Ump]*���F��[�A��B�z��k���)�,��KNV��h+��N�b2���L��~��, �4y#Pzi�/
�K�BT I"D��L$TXD����X����U��:(�wTŶ��O7��I�����! c
z��ܯ6X�'�H���������������Ň�S�/��@L9�,O=1lE����S�ZV�;���M>��K,�h-�P�)-�>8�x{~�:C����Ǿ��8��{$5���X�T�:J�    I�-��pY��hdk-�7�2�ܴ�&�P/*�|�͒J�@t��|D226��g[��vj��~so
~Lu���K��JRS�h�R�/���䀈T�p�P�e\��y����x����R��l�	������O>�ى����e�6�o��c���;�1�}��n�V��G*���b_���c�� xCȂR�P���0���&�jaB��F���c�sk���M~3��T�I�"����H��,qkWNnI���V��4�������U��R{N�4�7֚x\��e�*�b��C�K���]-��p�����E��'�A���Q�S0�!p�s���u���K��X��� �+Z�X��ʔ`BZ�V��\C:�ɕ�Ո �lٔ���Fʏ������D�%!*��R 9$&�8��W+[��n����m�K�'��4a��P���]%c�������"��pFj��2RO��=�n�`ט��\����[�5&�	��;���;#��^�f�]�i�������Llg[���
U��2���l��Y-���EZЉ]��PZDuZ䇀�I�1$^8@w9C����r�85�Z>�o]d�Q֟�D/X8�}=�ݭ��V��cP���pPV������}��;���w�r���x����L".@f�¼��ڱ��ք��/YR�QMN�t0�r@tQ���>�a�{>���-ǳkP�I�HQe�,�
�s.L�4'���N��kn= ��{[ �S�3xE�]ߧ{������eQ�'hHFv���S�`�G�?��oreu�zMe>��F�b�a�E��,��Tb<:�>ߜ���'=�]럅��)4�Fz�ux����V�׼�������b��P���	QVe�u'D��$��tp�V����VE���0�G���u���]ԅ�!oi�$Kƌ;�Z^�%A����s������@�̇�Z��a�I��?]㰕����X������Ҳ?��K�"�BT�Za8���˒��G?�ǁ��,W�¢�����Z���*�|�̙����PI�vd���G�a����\���8F��t����G�S;��������08��sښ��=���k����m�`$�E��Ӹ��јD�����)h��6�%�LI��!�r&`A9G���{�3ޜ��χ6&V\�I%_�2�.L6T�Dځ�ʍ�{���w��6�w�*m=�1��u�<�����Y*��*��Z��F��=����3��^v8�r\�!*y[;�(:�{�Y��XB��Ҷ�t�֔� ���%[��UA��.�,�vٚILBU.����9������h�R�1TQ��N�����0����G�G�{�'�2B@��B�Ḍ�k-]���3�ji�Y˅ f�/����V޼]�W�Bb-��^�H�E��{�5A�2b���D�{��|���!�H��'�p2U1�-~��H=����GU�Xfe+ױ��~F�!��K�<y�$&2��#�3�_5����v��ϖ�!���\�=�r`��6�/���۪]���/w�aoM���Fe8 -�NL ���LQ�&WJ�(��Y�&BX����-�)�R���d&�~55<�|`f�)o�!l��������S���*��,y�K6�Ȫ;�M�H��q��r ��r��=o�tX#,r���y7���W����$e�փ��hMuD�Fa	����s�ud��P��{ ��`{ͬ#l����\���b�Qi����ƛ]�66&\����m5J���R� �'��<dedc��\ڨO/X�Lp �C�;bv�B�}"��53<���d��VW��l4��?w�n�O$��x7X>�J��b��Yn��oԍ�n{��ЬUPԯ�4[N����xNk�8��=�3]�SZ�{����q��
��]d�v����oY��e%#=���LԥA��D �ܶ�t�V�4%w\���cb�z@�p���(�-�.ږ�8C���/�_��d��#6��,9���	CG�@R.ؒ�����s�Y�Z��fM:c  T�+��]����6��	f7���A�m�K&^<�m%�ι*2�C��A/� C�EÛ>l"��ٮ�����T��>�"a�C��rY��h
�HUY�e12ݚ��c�^�?���B_@#,��I~)�����ډ�dQ��W?�yq��w�:O`T�]�##H�'������l�"�sn���~	�O���ˎI��Y�!�u�^_�̜Na�>/�DhŠ˲�v�jBL^��L`�럫��}�����H}�����C�G.0�F�L�m�ٷ+.c*����t�|{���	yC%�ت(Q�CTXy`}d���2���yX]�%V��~3�-P�Ru�r-;kA2�0N�,g�zӨ�f��^]��߮��1D��]=@���cZBPٻ3�9o�1��6��K�@.����)��j-�qVЌ��(�F)k��:M�2�_U\��P��B�����Ҩf��X}:q�/vx�0�TjP�e92�,��a�S��_Q0�.rV���J�"+��,TE�a���KK�����2��C��*z��/���5�D�_�Bm�ăC��ґ�U�BWFn\:$�UTN{��A�1C�@�5a3j����V��I���3�y5u��y"m�m#��<�	����>�0ovqvs>��yCIPᩎ��8���&�����,����Ru20���F���d��h�4�$j��w-9y�él��;;����Ua��y6�-ek��o��ΉpCA�0�����ii�C�>��u�hC�q������	�Ck���p��#NP�h����}�L��Q쪻��d֣��*ݼh�a�%��Q���>̄��Ϙ{5{T-�6:i:�ڲ�����H���_�����P�5�u���ek�g���l�J��JH�a
�����Wױ۠�+3'�'�Y�5�V ����+�bʷ.��@�&(�O��@Y�׷�q :�d�=A���Ox�p"<B�O��g�#��@�2�2t�91�㛸={��'��	��A3��ڼH�d��u�Bε,m	YU����+ ��$T2��'��jb�x�K"�rnIA�g����v�s4 1(d�y�o~Ɇ�N�wo?��E`��a"
�(����R�Z����s�@ `9�v2d�Ue�_�	�λ������/Cy��ot�4�h��s3�J��>l%d\��KJ8��EM�,ؔ���08,ݎ�@��p��v� �TJT~o�>rb��~�ATAf���f�esv:hE�q���մ��]5�/Z�������iˬ�~�&����� ؇ ��|;�i-�s�d\�sX%�?,p��~�0��^R�����yu�3��#�?5�s�}Q������� ���4a��Qើ�j�"�$I����/瓏�2���*"�h�VR���"�,
�:�x+"e�Oq�|m��P_�up���p�dJ0C��C_�Kr�5�5a�*.&���i��IRmP�(�x�c��|A�Gw�)��% Pƌ�P����i�H�*�jQ��%-틔�hS
�w����#�1��xhF|(�M�S����A�V�&��+�;�|D]Ѱ>��45��.�ݵwj_�����m+s�HG��j�R�jvۧ?-Y�'QV'�o����2�¸,����{��v�{5�M�cv�9�tn���ǆ�V ���+��sd[3� ��kd�V6�.8_Z[�
tCc�4�c�8��U���ƨ�f�Q��U��~3�|�v4*����\l�D�+t��.�Jv���ʎ�*,�4��1��DS᠓�Z��Mj"H�^В�7ݱ b���U6���ƴ�l!��6�9���8 V��x�K\=k�W��p�VQ�A���o�Q{r��W�S��c��7荌,������@� V�5��JⱰN��i�Ϗ ����Ab+ȳ�.�
T���N��r��8KR��[u�4��ɺ2�X���$:��=��*9;_���~��-�1(�è�*k��,� �@a����#N����L�!*�b��L��Ǭ�ʽ,&7w	�����[2�    Ps���]��d�[
9t� FB�.KK��ҩg�����g���{ޜ�	��0��:��)� R \R�ZdC�0�i�z�w��iW����zZC�a��i2���X�*VE��:��N�4�:f~xBW�2Xp>5l5���
��ȼ8���m�.�] ����b�bHSk��o���|���#��=~w�n<S�c��cD��"�6RQc���N� u�<��)IД7.t�;���l3PE���=��zC��u��j�����zrԟ  ����kB��H2���oK&H̘ga�祎��Ϲ�lk�bp� �IH�#��|i�%v��d5���3���v�f�΋���Q�_����C�Şd��� ^���"l0!�ٴ����ʀH�����oA�ɬ�j��?��}.�7[��w��"d�dc�$��T�'�͚y����	ϫ>��N',����=���R���$`��E����Ӛ���'>Չ�m[�U�����;�|������B燳�!�IL8�l=�Π2*GV�m�ݔ@Z(����^��X���.qN��^�����3���Xh��� $���A2Yy���8l-2w4�/�E��V�=���D���a�ő)�&����0-c%C (����q�O�Fصj����(7�`�����eu�ީ���IL�\�6�' �k��I��k�$�ë8�[���9f-R�X�<I��!��Ψ�����ʰ���lu�ߘ�f^�}���v�[�]��m���& �����<^���ޒ��%��]��T��)/z���#o��ג��yn�h���8:�G����N� �HU�z��r�o��$�
�i�Vd��k�rʕI�UU�y�I�$�)��X�`������l~�:(���Y��)-����K��K�0�jM�BWZ2;������#����%ٚ��+���Τ�,㛋�[�D�Q8:W[�7o��̬`��=o���r��,hҧ��Q�j��	E��,�o�����⬵$�hp���S�
��vߋ���}�i�јR�+¤,*���kͅ�Z�֚�V�`��	Ŧj��px)��_����d��v��՗�����m7�%��A5��	O�1ͦ��&�t�A�aO��dBi�V� �n�+�=Rދ���3b-2�:��e!C.�P^bh�L���&Z/Ix�#Uj[�����E��J<
Y���G�#�S\��_2�ѡVA�Pe>�9(3q��p�dQ����{���H��,\V�Y���K{�?x�B���,G�Ӫ��hP~�	ID���\S���=���o������ɍN=����?��tx`�ϔ��$s;]��Z��cS����1��c5��=�CHu�pL�㔦���&��[0Ee�޵�"��K\Yj%J���:耣8�y��/�\�`��lW��Rכ��* i$��y&�r���n���4"E�sn%9DԭV��׽B�Hy)�=�.n��P{S-�"1ڛjUe��=f):~���H#DA����;��N��w�O�C�A�����18��i������jժkrt�m�j�;��=E����Є�xP�)
�k���t����u0Bz<*߂��^���}֨�|�\=�OB��wT�sT=~N���4�\ǣ�Z�|�����F��'p�q(���;"�$���?ivs�p�*}I%zX^�V�z.�֤(���=���#jB�SӺ!x�#��|���x���ldDW�TEX�#��Ǣ�"}
���y:yO�oN(���23�>8W�Hlظ���dqX�Y~ C�����Fe�����	���2��y�@R�v������+�ҷÀ�����	�԰3��(��F!Da��`�m�I��h?O#�l�IEu$Ҥ��		�4���;=��8�<��)0�����rp��(ښ�E�d��t_e�A�(E� (���B��ԛ��>��y�' ݐ�s:� {bᶘ���h��L�㚶ۃ����ӳ+�˙?]X�+�\���!�z2�C�i����f�G3v}suJ˙Y��N�ր�Y[,��Ҟ��]�q%$,��|l��I|Y�� 5{�5mBP����a�X�I�2�����AC@K�Q�b(?	���d+#�Y����<P�ރ�"�[-+ʇ��D��`�om�6O�n�,w�K�u�3{7{*3�%P�T�������Q�]����yy _��qQ�wf�_�i<_��XN���"J#�sM�P���E�)k�y1��S���/���'��T:贶P���ԡV��<ӚU�AW��;eB���a9`Q{��c�� ���W7�� �h�x�k�����l�|�A�|8�[5��GN8�%%�u���ͻ8����۳�聗���*,�͜���Z�p1�O���I~?kCb��S�l�D�a9�����p�� �����M1�����կ_�TQ�+,�-�*�V��
ym�*K�'�P����hy@�+ɓgԾr�VQBt��רlu_�2v�-�o��T��A�����u����o�uFK���������[(���W�i_���wj��?��VM������DƤ#��1و���ˑ׬�<��<y:X|��Fq�g���ř���\:��������F�����073�؃�.r�3�.#���C�]���.��oԍ2;�z1�R$6�ƪ����g"�9��ʦ����W�/9�O%-�J�+��5�i�f{ށH���ai`b$tԧ�\B�*��{y��� Ȩ$e����(��O��	����RZ)턝��%jm��s�_ͬ��`r�$���V���Pe���1�J$k<���l�ޅiXjo���?C�9�_ci�Ĩ�9�=�]L~��$���`yE� �J/q�3+t�u���͐�����]I��\F�N�m���e!��,��i�B�s��� ']B-Q�X�\v)ǘ~�A}]�F�fz�����8^Z��Vx 4=}P�;��'aCH��"��ݪP�	U4�qd��Oj��~����?������'%��,����ӽV��}��7�]�7yp���(v��`�|ç��w��J?rjr�������\5+�_��x$8��q��[ɮ��g¯ u�:�	N~W.���ڝ�T6�)<��g�W��BB�=.��{/[3���0�h	��8�D��'9��t/{ i7�����@�1��dk�Vc�n�=��a��8�
����$���x8���b�˲��A(��@h5T�C�\��굝�ќ.�U_rV��Ɉ ^a����^#D.�,��Zko=��u!�����vd���6�����Bh�����@.X���6.�ΌK5��G�1�ׯ3b�=�d�i�l �$3`I�BP0JĵAy��$�Q���>Af���)�K�[�
;M�᫪HiWZxent�Y>�wj��;>�8��Y!+3�赖���/�����_�d@���c��hȼ:�����,.Ίl-#�d���g1�K��k��׎�ρE���Gٚ�4�UQO�*�0 l��A��l���Z��q�͕����f[�)��HM����{7��IDΖY%�!�VW�E襩T�t[���8�3Ȼ�F��P����p�@J�ze�tP`E_��>�������LPVeL�vx�"��E�MV��8O�,�u[���Qȴa%O]���?�dk���X�2�ė�w����~�V��^9$#u8��,�*Z���e]��I�.�{��Bn_2�B��^��b�Z-�&���M���4 ˢ4���l%�=M�@�Y�������������E��Qf���1qZ)�ǈ��IN���ۓ�ͩ���c�;�E
rC{ !ȝ2�I�/��3ű��i����@-k7�������#XԿZpF�5�>�0�#�c��Uy<p!�V��y>rÙ;�ӪS#^b���OoZ�Uu� ["���P-- [@?	��aެdA�N��h�9	����K�@e�E �N���k,e�-��A�ڼ�Բ Ǥ�E
~9��E��#����p?�_a�q{�6^��D��y��$)Dn TJ?��X�IKьb�Lnڬt�_{���    �4��A�J݁F�Yh�O=��~�8-
'���~�Q�j��篐N��g�o{8�3~�1��#C�����ե>gp�#7�4:A�ԅ��C�RM�X�P�l������D�!�r�LYR)%�I<��_Y�̫�������]d�tktH���E�|<���dj�L���Ð��b?w����@@�����^c-���z�3fن{�`N=��Ӆ�h��aD�G��E;M�@�3J���/BR�+�fy�x^k)롫�%��%��6�n2È�/?j�$�^6����Ķ�)=(�@��nR�&FkO� =V�K���u���~�)�]u�0���G	F(PI�[ )2���mͭ+�Vz����e��_(8Uw���5�����Ne���^;Z�):�v\�BT21|qvu�.���k��FQY���.[�\�:��n(O5���R5�v��ZLOh��Woe;2�-�d�ir����Z�I��,c>�+�\	��Տ~XQ)�>��흢y�a�WT�o^k!�#�rr�)r�D�6]��s�^J�1⇞
1�L�ް���o�3.x�y$���
������-[ə�!�*��������.�y��x��+�s��H�i��Dy�,��K���	:a�2�	=L�i6QG�֪f�E1���<�W��]�Vʼ�M/��tS_U=<Q���|Oa��"�^2���[H!5T}�.�{.�ա��	5�~���g�'-|��[hH}G�q�E>X\��v�u4�id���;ё�P	})�B��8˼*n���H�o�d����==o��F�í�N]:gT|>3�f�;:����i6B;j��S��^�W�����a;��i-ܰR�L6�J��1z�L��"�#���B��BDaԊ
�g.܁�(��y]f��݉�<qdj@�ɔ9.7&�e�2aiV^��H����C`\f�<.����?��.�Bi`��U�����P�����J+� (KN@ŕ657=�į�G�>E��"���?ǩ ߲�5A���3�I�X��"l�KB�[�������S������^�&���G�H��?wOꡬÈ���O~�!b��`Qq)Jfy�z%n�a���i��<��9�O���ٯv�����j]�齜���u��.��XY�G鶦�r6��L`�sZ��q��:c�c�:���7�#��f=���8��[��J�fX�"�j%��.�M�=���k���(R(�]W8�ϯM�k�"��(/ݤ�AD�S�t��o��#�c{��z�/v�#�z!���T������tp��ֲQ8�&0�5P)�f�M7����޹�����hW\��u�o@�ϣ�Z��c�n4f?����D����I	Ie�~��P3\�R^\"�Z���\G����_'�V�����u���Lj}ь�fq�4�H����`����qV��h�#�@K���O���p=X�����V�:.*��LbL������H=2�,���.����.��ǿh�y����,��	�)0�eYF��^���:6:�E���˭�d�W�s�c8b���WY	�� 6�A��e�T�pQő	"Aؠ�,��loX��0����la�n�����N�ĩ��Zd�0rb׳���'"�Bl;�������7��k�.�5��f�V(�����C��R��z��D �&����k����9}�b�D�VvQ�=��!mYVE\yJ�5ڿ�{��fE��I�O${��V������U�;�oW�|���Y�63ĸ���L4	/3��B��`���7Ӛ9��:*&�v��=�	m�l̋�E#TB4�\���>���_���C��������j����Q9�g;��g_Gِ��d'���uټ	&��4/��`k����	���)M���a��°�q&�܇Uhl�U���@&����i�t�|��~�Q��0��J�%QX�i)�Q@�0v!���fhoV@]�Pd:v�EI�/j ˨{�A�W-�RVtAʦ�ׅ%	Z,j�`M�(wJ����0�撴��_��W�.����|�6	�Yl��
^���c�r �N[��ɩƮ��$��6*u֚
���N�^�<��iٙ� ��� �ϭ�F��S�y3|�� ��X#���^��-J�Z�ɠB�v�}8�[c�p\G�T�ܬ&� ,R'&g�p!�b��~Z'���ê �I�{�vyXK���T����+}KHĘL����Lk���b��M����bv��_gA��W������ 8U?x�P�ӫ������V�.���o�no���Upr1��M�b"V+3�R\a���(Ӹ�,y��X܀i5��C�� 2
�֭|�G����K�e���?+"_��Ka�\E.�>��hJ����0[�!X����8�,CB�2�ߚ��'�]��QcS���;~Jq)���k5�_<\J��*�����`m��8rݾ"���=��zn	i&�;�4�.Z,��Z'��4�OHd�s^ҹK� "о�ԇ�
:�l��$�� HQ�CL�gޫE�~�z���Z�O�WO�.[`��Ruۤ�-&N����>rj!������󋋳7W7�٥����ٻY����- ��fv�E� 3�|���Og'���aI%�l��	F*�(/���VS+'�*5���}͏L���"$�V=���.��Nή���΢�(�b�H����J�$�'�Y��ߚ�p��<e���͢�ݧ-/�6�>j)V+*�)��Yf� P����p9��֫���7�D�q��a����վD�>i��r�)�?'���f��%m��V��x���vb�/�hK���\�Y�#��Z��7m���(J�z��~��̙��މ$��r�g����|��X�i��JB�J �T��򚁔�����Hqn�kK_���YJ[���Po�\!0�3�*�ɈvZ|g����ĵ)��퍯��h�d�>��k͒D.�bbę��
�g����,�B�ip7	��Ppz~��j�� �6�7� ���,�����lk���%��\�!�/P��P}+�K�Ɓ	v��
�;DG���Ƚf���HC �L���������z���U�Y],ۚG�����CiB�֔���9�f�����P�}���y ��Ŗ�� s������t<خ�J �%�'��,Z=��!Ӳ�j���ɍ�z?�h��-���v�ΐ=-G�s���ݐ�U}�ׄ�p�M�H��~�C_m�joRD�N\�d�*�% eҬJ=,c	,����tR&R;�J�	IQI@�	'
##�l�	��-3^���w��з��w����ۿ�ݧ{�)�N
�w���c�j�T6�q�PA@Z�M��8x�^�(�n;�w#�(�n���9�S���s
�7���y|�^9�D���CeÄb$��7�8L��'�����^S߂��^0)���&�����[q�ə�y��e���p
a�n�j�N�*�fG�j�cS�NQS3�[M�����(��Q�;l�˵�] A�ơz�; ���r�}�!�*0�u����^�TO�H7|K��O��[j.�@In}P��2\sc|�Ưf&'M��a�g�}���*1��2_j�wZh�w�rݺ/j��5W����eS)p��n��k��D����Ō�0\�����}��b]�BF,sR=tH~Ѫ�����.��/
�!��_1����B�ɋ�6�y��AdX$y�"���R�d�)u����� 0�� ��^�W8ސQ�"��*��2��'zg�B�ࣿ�#�R[�b�f�r�j#N�bD���m�^��n��As�� ��'7j��_Mfn�>͢��Y]���VN��$W��gW�dţ����s�0����}׻<}����dX!��}u��B�w�OP��X4��Am��֚��ps���7v�1��X S�e���V��r���<Yqif�G����	��и#��%z�	��'���X8w���.<�#���wYeU�A@��� �-�.S��N���\��ơg���/�q���P�E�����V.�&s�_��M�6���7�K��A�$�S�c%i��-DH    �:�'oY����-�3��5��|��֔a���풊7Խ����!��w�����_-�[\�Z7j��?K<W��>����)ǨN��@s��</2F�Y��
T�jE�ʽ�[��S�*��ĺ�p���sp��/���'�� �E���	~�v��h)X�:N�K�pF�g�$���W�^G("vK�o�δ�B�"��a�#�C�1+ő�3���\���Orq��3�H2R�l:��6�;�pJ.�#�ߑ�C=2�P�	�_�[�Ll�2�8�}�{�Ig�*a�\�S�^�E=�g�~�@�b�l�Τx�gu������Ղ��j��#G�uf�%�4H2��x���i2U}�Q�����@��^*L��u�e��;6�{�W�����~5��A��+���"�<���vP=̇� u�����st����ۭ�1�i���)�6�;r9�V4x��
���Q�^3�Ud@������9��d����!e`=�n��j$�bt(n��.��9S�'�`c��Z��IR��Zn!���1Q<�1҃V�X�5�:�l���1,g瞺D>4itG��^�T߁$^�S�����\y�:'��ƶE%��d��敕��1`^(���Q伧dW|�Ё�v��ǆ�-i<�|e�}kg����O� 	���E�qR��Uo�����;�9�8�7q�	��y�D.!��Z��X�f�дh:�P�R学.�;����An��f5����ͪ��5]��qjlGj�K?����� ��'C��ⱱ�F�<���O4j�oaկ`Ø�!� 7ͱ逯{�]�!Ij�u�Oc&U/
���,�Ju�q�m�?(ke�׭nR�ɟ��Yp�S���?��8n���+w( v`u$h.��,�q���&�)򜪩��cC"�؃}cT��{p�S�U��=G�8��Ե�D Liϋ�FzY����Q�UD�ƴ�:�'7��� �ys,�b�k`S� ����֯��X6�5d�g` �|䷧�]'�в���b\_�����e&5�Ce�Ğ�쵖N�B]�v=�@ޤH�˲T�����P��W����ECMn|������v�����@4�M��,.�cя�ڑ�P��:�����j� ���H�%��s��fD7���p��{Z��k�����ϛ@�4��ܴ��5�mM�<�gM��۸Wep�"V�� ����?l��t(p�N����v# �nz�Xn7j�}H���R��KX�f�ӯ��o!�<�]^��8���p�QEn��Fz�<\]�DVY��u��շ�-��=u��*���
�����,/�,Y�g��wb�[�m������NJ�k.��E�|��P�������(���Q��A�ٸ!1�O��������FŚgu��`�Jd�P�g�GU�Ϻ|M��Fe���re��X�N����Qp�ylW�$�9F�+�C�zú��j���ڱ�����t&��U�,n�F��)u���;������#s��{S�h�uX,j���J��N/+�V�9��V���V�sXGZc������!-`�(�Q6��StG(�q=��#H��8��4�+�%8��3��GP;�#C��������L�F?	#�[��7�;ɿbw��.�+�@p�J�'3�D&�@����um2��oC^Ku~��PAYJ&�zq��)[�D&ܠv��<��Vy�S�¦wxt�+���=o,u �n��oԍ�m��T��3���)bB�$�����Fs�1�����|���a��ø߼[��L�a4�@0{}�^bP[s��=߶+0M?���=�u26�JiϚ�RN �&C�:�F�+���h\Ou��ý���j��`�C�wVY�#{˶�2�XW|�$��=2��v�G�C)� L-��̝hM���;T�.�����R���*u(��]���d��i��U=�!j��n�CP��=���\H���5�\}"�NM������qJ��b
�8���:�ش�Ӕ��#�AT;'T�>�pÜ�� �l���~�nٸ�&&��>�f�X�9�O�"�IYǞ'����T�t�%�	���^�-�v��R�So~����QI̴e��2@MP��n��%5�<F_A���[�tя8(�匭�x\��jh���5JZ5�\\cH���+Ԑ�d�Za,�Ŕ�4V�� �r�Ym��P-��I(�Nu�y��H���Ӛ�F�(1��r����>
�.or��q}$�2�W�Zܟ���� c>�:�˿�����w�_�7�0`p0j�e���-�Z9�����~�^#�|T�r2�i5X�1�L�Q�V5���%�*-bWȲ���ꅒ���Ѣ�r1�O� ���?*����?b��eB�$��^R�?�#5�#�O������G�D�zыN��,�S.���iF���x��0J���o��UU��������Gm�L�3
cl�(�z���
|�X�n�N��Up6�<ԵW�QVY����7䀥���BCF�sqg��.�b2Z+9��( ɋ�AW(���Ǫ�q�N.����m��@ �*{X5��F�˩�3�!�)��ìy�6t.�D��q�C�?���c$ވ�E�A'}�$���q�K���@�w�byC�X^�
��;9�1����NN�J+V��q<��p��ǳ�����l�/7�?��%t�L�_}�b	`���bs�8N�Ԗq�\/���۶2��抣X�_28��ovdL��@����d&�����_a��ɆU4����( 6��]�ƛ���P4s�J��2��<JC��$Tp`0�������A\Vs�Di�+��IqAt|�� ���y�]>���)�JT�t�ES�n�M�V��Yw~~��r�<��HY�ր�PBA�K�հ �̐a�3⠝��H�ݠ�&(���C�(�HZx{iR��}K�w)R�J=�2*`����z-�ob�)D�)?5��Υ�Ӽ���Q�Sd)��	�[_��$h��#�R-��16��,��1iI�h_�?��*�.#ô��F�/p�_�:e���r��9MqF|�mP��n~5y���ic������Ǣ��n�f��V����ꉛ�I~����M�'�;��=���Gd���`��\D] ���Fp	�0 ��N����{�涢`���������0�s�^M���H�r��@�*Vǣz;��<+/���J��/�� �k���e � ��{��t}�V����
��p�#5���H�I5�`!�/��0�Q*�;�@[�
��Nzw�{��".�y�&N�~S�J4pR:Q �2�*����F=z���w���w�v CBo�
 }�m45�u��d�4��+9p�+��	X�UZ��0jTc��0��XTJ����Lb/��ԥU�����BTu��G�~��1���yJ�S���I��������8�ޥ����(�����X�x8�1	ɅV2�x�ӏdL�͵�Sc9ݹ�t�pvy%���-�Mg���cD[P4L�?.[�����bb�0�`B�O-����KɑόiF��U��J"�0����B��C��j'M|���\�׳�7�'�N�$���-�wZ��V6��h�TnX��d �!7��uJ�&����`"�ei�!��4�,�I%�Fӽ�"q`��!wOX�&[P��O8� �}Okr��>?xK\���43	j�TI�XSkRB�_WLD�}����,�^�;ܫ���mL�B�{
Īi�!� ��Z7�9W����(j����Bt�V-΅7�����l�Q�|é��E�.�D���̕=�>��a����\��Ơ�߻��ˈc�//�d�5��,��x��&x!���尨�λ�.���Q��	�u�4��T��Sr��%��kb��0䌥�+�۳��+o�`�*�UY>�p�ߚ��D@q�-_,�1�^T��+�C_h���˛15.A��U����6s�-{M�cO�cЃ;����o.5��-�%l,�%��^�!��(���(M��&��4]� 
�1��T��yf&3-&8K��ՉC�t|Q.?���;�y�T��Qj\    ?�����L���h+��#������AJ.����\�V�bL�������e�R��l�,�3�38'�wK�[]*�J����G��<|��>�(���)ct �@\
������WVL�����u���9/	7�yӷ���@���j�PH<�R=p^x��4�"Oƞl-Lq+���$N�i�����
���k-�&@6![*�k}�yP�Ԝ��4DW��,�M���<�o�����i�����"[YSD� �+����
t��R�1!���$+l@�脌P�w=��c�ᲮՁ��/�ʨ�����5P���M'�7�=�X?D�i���3�w�@��B���ռs5A;U	�X�W��@�\ym�_e!Qp�Q�A*r���! �P���R��������uT���J"�:�W�t�??^w�o��
�(
^������'�dfH.P&I�/~�`;gU{gc-�8�h��o!04�y0�a9H��rQ'j
PW�� <_��:�!*���]C ��0���W�%��#g�������1�B�&
7���F,HF���"��W&���P�ρ�g�%w��\E<z ˸
���2�RwZ+�P�#ڼ���ȋ995����=��G��[P#բ�f��]ٯ�@�����%����^�ς��av�|y�o> ��*�̚��)��SⁿsU���̙�~�����������]�LY�IU�	,��fV.��drA��yC�F��f7��g��Y�D.� �H�N!���`���O�^ӎH�Qs���E������C�PTf�c!��]-�O�u����"�'[ |yK$���u�nن�!��ӟ$�!r�T�eT�2�~+�Z��Hu�rzvP$2��W6FR�[��ԏ�U�P����<(���1D(0Ƥk���}\R��.�zx�3Q�8{]:"(�[�"���v{�Ďj���內�HSR�RU�{��ph��*v+�X�0 ��:? )�����l9L��x�TfD��a*#�.K�\��qR��>���n�߇&9���gò��zR?��!#lz����QG�!����l���^���RP;a�E�\�`�+�Co�`���'�ʉ�-��L���IZ��~�	I+	�|���aސ�?B������e/Rd���`2�-��߃ɩ��&��ѣ޺Cˍv3�`H�Z�&�c��S���a�8�ڤ�ϛ��&^���@nk'�����T�](.q�'���k��^��&|��<R��nefJ�ȋ�@2!m��~j�2�	�7�#��txc��|v�"[kp�ց<q�e �~V�Y����8�U�$��E��D{U[���J��P����nC(<��8�x�:=M�4���0+���,��:x��Ǣ�f�=Gݛ(��H�䩫���� ��DU�9�r&���|���48�Fb+f�%QIv�����s���o��	�kBB1S6a�����_y��-uԓ�	�[��s��tm޴Z��yO%T�emՍ�U6���rH<�Yu�w�@ִT���L���ӄ$�z͙�K��wͽ����g ��>�R��s
p�^o��\�$��X�YZ�.(�k-�T��Y4Q��gyb�+�G&&\~ֵb(C:O��=�_�:��Jn� )ؔ���壎ȥ�S
u�X��i�ֲX�D��j���V�n'O3����NxҚ"�(�)ۓ(K�Iw\*�"-$%��,���(m�.�1�L&N�df�����P�s3:8|�y|��b�Q3�Wz��W�W#;d2={}�z3�u$��$�Nk�{o8�c��(�#���b��Ї:v_H>�ߐ�x��W��p~��������KLy?���+o�LgZ�I92��kR�d��uh���a3��ִ5ni^�,����/��7L��A9�g#0��|�zS+hRS�~��qIj��uj�?�枍��βk 8k�����u+?��hR�8�?�j��{�ؤ�`ں��M����L-uҝޜ���Ɣ!�&�Uj^k���@����E���)�� N"г&!�CCУ�Mf:/���)��L�7�0�ӫ��*�����o�n�U�IV�:�2Ms2~�#~�[�u��
���\~ �w 䛿�Ė������ǳ��7�'���
�==S�|?�΂��<�]ק�#�c�⑨���a�̑��ҫ��ũ�m�e��	�x�� C�� ̪�tZ��&��P�ԗ���)	��������ŏ)x �����,��"չH�ŨJ������s�{�}L�:�l�OFC�n51�?�2�8���2&��(&�����ZP.��p��:-�+NK�����+�b���n�#6R���oC\ڰ�
� ������!5�>�ܚ��H�Z�,���cRV/����3�������W�ap��D�"9]�*J_�s�d�d��c�R���/�C�3�����n�����%����k�u��@�F�v�遄W�!�BS��$��\=�Է,�_Q���~�
�"���}6M�Ƚ�e�_J���
�k�2����1H��a%eZ��������'�ſ��0$��b0��ڵ�Կ��^@������d��G�{�C�j�:<+�c �4��:�į��<��
YH�b�	|�p\z�cQlR��̓����]#���QF�YRI$h�(s��g'�~�'w,�bE'jh:�R2���c�Ju *V뾑�]�&��."����N�OR�n,�敐��^XYy���kM���+�X	�3�@��:JbSi���4 ��S!b0�+Od<։�|P�8��枦��'e큿��2v�Q�zT�%���l�<Ϳ��P���A�I�j	o�j�9()M�0�ZS�'����~�ـ��)�\�*M핂x=ƕk���,HQ���F�K*�����>���~��;��4���3�'��RU�7���x (�\s?s�J )^��7#�ßq6��i\�}��&�IQG'`W8m�V 5�ql62��Ƅ mr�)1�7�0�	&6Dzp�/~=�����l��<eZ����T@9hZ�e��� I'���x�F�`dx�ȣ��&�٨�Ճ_鈐�X��r�n�87(ah��V�|֞/hpJ�!8��b�9�Y���7�zFc!,��hA�9]芣�@ 9��H�(Q�?��(�`�g��̂�(,���D�Q����(��[�7�<���(񵅁��zѷ��\��|������/��V��,�Zԉ����gA��||}Ⲛ��~x�v�@ݼ��5j8<K(I���8���=�ǯ^�}��hh?�j���� ����*^���%ג��S��4 $.>� �2f��`\0�����wG�bm�q� $��W��kN�H�BEp�>H~@��*�'���)�!"��iQ�dy��ak�6aTu,xju�	+J��Y�-��g���8�U��!�#{7�����������	��ݫ�~V�Y �T�)���X
H�ȡ�q�L�/�r�!dk��s�q�J
d��*\2����#��} ;�MR�pBm}�9)�>��2���)ݚ'��^D��M
��Ù���h;D�r��w
�!�(��ufJ(����j䵚�2qF[���e�Ֆ�dvs�������$Z	��S����G�B��ڀ׮����=&[A�}~[������1�w��v�����h�e�V�?Кf�D$��h�;(�ֳ%���%)������pG�� �2=v�՛﷘!"o xA9��v���=��f�m��`�+����uk���h�E�s�	�e�h���w˕̂�(�u�7�?�&&�=�#X��x�,��:r 
�� F�k��+�����&Cg��8�¼R{{�{dk����0V$��n._��V�	�C\�Mof�N�=��+Wݸ?��k@g�jE��[߇�ݣ�y����	g߮��Օ'��;E�P�f���ǖ
�^��R(~G]�$��[
T�P�Y����f��lʄ����d5i	��A�Z���� R}p�|ܯ�u>U��ꥩ�`��d�ٌ��O��    L*��2\^�1��n	�Z3�-�ϖ��1���ɷG������1`l;�
������9���g~V��p��O��\=6�f"'������
|4J���5����^�3��0�\P���3W9�(�e2`�aڼ4*�^J�A` �'�o5i�^u�
����D�FM�e�ןW�Q<�⚸��ڍ����֠`�T<V������C�:޽��}/�v�5��G+���|SS��2�i�Z\�c�����m�biɍ��Շ��&�Y����u�$i��H��2b/袰����e�K�^���7��L<#t����W�}hp�qV�E�
�PF��{���;�0�7��؊�N40�GЉ0K�Dx2t�����K�ST��m��e��>�gTE��*�G�F@�Cb�&@8������� Y��#�3�Jq���wW�Fі�=}H��s�YX��'3u��Wޠ*n���nR�5w�c�%)���;4
�8�|��H���,����L'7��(#tZp�nE�V���	�99n�t#��s0U�IԮ���i)�N�<t��!��.8E�-���O�����!a�Nu�a��A��,1���ݏu:P"p����!�j��s��2����ךּ� ���gGf�R�7�W�V*�DUu��q4X��.��� bg+�ً��.�Q��OJH��w�d�˚�YV`͑D���2�|������ �I�2̅�bGK���vuhH����q��;�N��@�k�)@�b����E��~��w����^ќ�K�@�,�(sP���ؕy[�`z��� _�6;7!+�\���<��IzcQF�K��>W�nZ�*�X��j���(�(��:�a /B��j�+t��5v���}��t����Лס�(�b׿����>�[�벻�KA>�]�j9,��/�PoRQ=����,�"ϊʖ�ᒴ�+:*?�6�u1�bx �ى����>�C~G~B9K �k�!7�:�N��r��O\�� ϖ�s0��w�)�.٣�%\��iK��۬��5�:�$s���/[��Q�iR��û:��\���Pc��� ��S|l};,Y's�$$ݠ�S�g��~�ʘ�n�?i&�(�wn�
3}��af��}utр�Ň�	�!'�OM��j8!��"~�8֞M<�tk:Ȅ�"-��Q�~�?P�P*�Dɠ��"���6b�NH`uD�$�g�� ��RX��KsIv&���]����x?�UHV�
8 �V�iDȬJdb2�,v��������U�L+�l������~�#`����1�LR7ᙑ��8��|_2N37P��VqY�i�p�D�R�V�a��}�q��\���_��F��@ф}�@����o�g�C6(:���G��e&��,^���=n�M$�'s|# ��1h=ǒ2�y���Ȝb�'o�1@ap	�6O���P��w�l����VT�	�T��!k�����=��ԉ��P��x����c�/�&S��u�7�8ܷ�@b��Hw��$��D�B���g�%_^.��k"�3+���l�r�Z۠ع�j͎�H������`$�NH@m�z���6�����s��\ԊWޭK.�������.���4�$�������N[;��&�I(���Zې�]�[ߡGC���w�_�CQ��T\���-��[�{���ՙy��H%Te�?�a�6U��
�6��ݣ	��32��\`��}�,Ì�*tSa��θ�
0�������>>Z��0����yZ��՚%AYA*W+?W�=yk����^]i���2*�aו�!H�}��w�~��ɒڊ�mE�\��#�lA_6���������i��-�������P�c�؍"�A�C+Y#�[��R�~����,vs��~At���{�����Q�J���v�
>��
 �q�	��l���}@��G��Ę���Ջ]��^��{o�9 ʲC��vj 6�~?mzȃV��gETG8���UXLO���"�ωƄ��qZ�@�kQ� �JV�1s�| C��Ⱥ�B*�����l�dXn�[cvE��FX3յqI۰�����TI�zl�|�TKu9��#���4Q_7�cy6�B�FR���G�ش_=��{�}�+�P�r^��x�-wo��-[�B3Pt��D���a�V���)����������5� <�ٲ�H�0d�]�6]�����!��#��7N��^<q�Rv��*��-j������S��A�>��Zo�B��>�Nz����� \����*����n�t�����h~~��<{�/��T"w@Z�m2�\kQ뻣�-4%�4mon$����� s�r�x�ޢ�cu�eƵ&ӻ����Ż����Dq�4!P�a�ބ^k�e���������iU��Uc\�����Ռ賹G���h��p�'m�����|2�<�Xx+�?;� ����	����ǝ\�I��������c��f��q�m._�j|��� �()H�s��]��.`c��+}�_ܥ��b�d�C�e��r�����`�@�Z�302ZR'e��X;ol�<���6��V�)Mm�u^�z�lu7����%�.9P��\-*���r�l���=r�S ����h	dxU���h�5R{�Ʊ6׌�&��V��0\l8�YP�Z:p��y�T�I7��B��8[U�L'5Di�>�����4��)jK���
�o)�v'}&��Ǥ e.�����7���؁m5��}ꍥ������.�·lL�$�aXI�䶥��Cp�Sx2 ���LIb,��٥pf��J��Po�����=f�肱�s�5��:i7��΃�ﹰY�e�g��!)6�`X ~��:��ï�(��E�����&Qt��84��T�NW���@nw�1��5��yU�Vc��W\&^�d��?20�� $v4��XVn�1G�f�]�q��F��8��f�� �J����|���;����ٸ-3sJLL�m,U@�!d<���ҫq9�K�7H4Q/�,)�&��C�=��J9c����Ⳙ��7^�|D�
���"�Ȑ�TFޑ�����,��c����u��GR���L8���P�Ǡ�:AG��ы�[s�{��8�������u��W����&��g·H���1!Z����owH�4X��:�Ĺ}�8���q�_��g��y̎�A�^*rW����j3�K%Gkciz���#7��wk�����_���o>֘����r��%�<�-�j,�����th7H��_�d9�\	0���~6��L4���GT���X�8�F�]%�� [ta���� e��雑��C�ެ�D;wg�$���M����Ǚ���ps�ގ�Y �Bܼ1�|�ӊi��l>�����a܊�<��+�eS�$@F��d!�k5v�ww�P�����c/�q��\��Eٌƨ�|�����8<��Bo��e����Ebp_bf25%��eu��+EhY��W�f%�;�2O��K�[�2c1�T���.��$�1��p�!��^rߨ����@fA��C���DfͶȓ�ݧ[�F'6�J��	-~��?��(x*����P'�}��SpKU���т��u��X�a�J5�U�?��"TsL�>���\�OV���ډ��n�n��e��I���V��&�&l#�[�p�#� \`����E@@
.e)!��#�o���Td��O����������Z3a�����vd����h�}B��I��;Ǐ�ܚ�����x�C���>C;{xUmY3��_���ڪ��P�x9>l�l�֟P3��b���]A�ϑ�����S�@�g1 ��t|�֌kK��t�8~�7��9�G��A��T���X1b}�7 ���Ls9�X�����Ȓ$�������9���]�~�CuKtl��]��\��M�|j0��.�7]�:h���zN����BP�#f�����=����yD%>Z`�5�f��ޯ��z(��Q���y�B@}�(e�9��[&YnT�	Ɠ�KE¥���G���:b߄\�'�����3�B`��JtӶ    �Nj�`N7��J���i3�An���24p�\4$r�,RKwVv���QH�Z�~�C7Xa"�ޙ�����(3x+:Ng�{����%:�iSe���C�77���W�P�p�fO`�"e�es+�4����h�6Zl�#:�	�\<�#u���؋�Ɣ'G��ס�H��xd%�Q��6���JhV�&���2��\e3er�M�m�|fI2D��_g}�{��/��-)����Q!`���"�4!sN�����m�T!��km���a��nA�d:� U�x���[{��y�Ԅ��N��.���U]6��T�LeGS���G��d%ј��Wsӹ��ID� 54)��$��d�r�(ی��{��mF�S���*MFH:��o�i;�����rI7�lf �,rXN�Q�ˑ��8�@��U7@6��U�^�%���Z3�w=P�B�ӕR_���1��G�^�>c���Tj�{��\M�$�N�����B)�(�a��)�磣?� ������x���+�f�`&�@��w>�;�Q����`P0"�.jk�-]`ӼQ�N�5@ws
���j���r#�54M!Ѩ6b��r�'&����u�{��v��ޒ{G }�5|_Y�(�*���8^����4�
�0,plD��cG����Ė���D��,�@9̉~��ڇͥ�$[%bA��c[P��f|�Q4g�v�����K9��p�
_;�5�kS2z���MO��c���0��[�h��Hɺ`�a����g#	3F�o�m��J�_�u[�(�0[	t'�����}d��(cc��(�U���"ς������ug�܆��X0��?l�d^�8i-�My���*PJ5N~	z3EVN̻kmm���$�&0��|k*Mu�0�Uڢ����l��uݱ�j�����]�Wdj]���r}��,aQ�˼)�uj-J,���4� F3U�6�W��h[�;�Eߑ@w����2r�a@_��e]w��*˨��|ޱ�j5�TE�
�5�+��  �k���`T�9�*� �7
��[s�W��B��;c�3)��y������˳�L��3���;?A�o�G2,���nU��z���ĥ��#��B�:����t~�_��� p�P�Yꋻ����c�E2;#(�?*�����E�F�ٜ�78���	B�3支W\���[������5/#�����a�hYUk*�4OP���xPC�� ��q�!8Z�C�#f������V�Q}96���$@��Ϡ������#Om
�*���Q�P�L��ᴻԋ+�n��Wr��U��\�&bst��9X�I�TEhR��Z��y6Sf��~^u����{5��2&�@6���G>���U �Y#<zgy�ա��[Yu�Rq�y.���ϔ��f~�aL���R>ņ�?mN����u��,�* 1��bf�o-�''1�),����(�D�/7M��D+�<� �9��YV��_5#�O��Fa�&�F���*W�d�Ld�?Zl�c�E�nX%h`ԉ��9s9 6�}�����:�^$m�u�!b��9
ss$I�i<c��d�$�G���؟�SrGu]�UY�)���S�Ŵt�Y��=����Q��$� 3:	W���\t<�A(p�aȪN��5e�x>u����g�J��8�{a\ͼ [�K��/+ ^��ן\��MeS�qw��e�����<���8��c���v���f31_i����E���󝼽!�U�-���~��#"�^��n���K��B��F�eQa��k�(i!7d��^'ދ�� Z�������И�{���f�N߼�i!���,���B�V��B��A3$%�5OcGӢ��6ˈ֑eMx�xe+�5Ł!�ÅV�M����f"?,��G0R.��#0ӳu��&�ZO�秋��7pb�LdYe0�o�Yޖǭ ? JE�1#���[%\���3�c,6oP�|:`�/cc��=�t����jK���r������]��a|�om)�-𑢚A�_u:�y������j��W���Kُt]�8����� R"�4���5'j�4���4�g�kȏ�戓KB]���^
��٤�+I�pJ�I}�s'�J� \���<�,IC7�RJX�ReJ����婮E�c�����\��&78#�X�@f,�Eȯ%��p�����Qrf��W_7����$�^i�)��9�`{lf�S�E�<}�5(���^H%�!����  �x3e��h-�֪�֢%�I�6�3p����@'{�A�G��x�;	U,��*>qn;���|͜��f o��l���>�a�c��S�b��z�m!��������_�bg!n\a �$Uq�h�1z�cޠ�X�TYh�@��zU�ԩ�SX/��z�P�L`a`4z�VÐ�	�V�m���&�Џ�:v@N9n@4n�{�XQ&X�:ejIE�?�,�/���/�j9r%��
��B�d�DV�}  yz��?�D���1����n%B�r����!�Ӟu��O�'�H�=y\��dqkf�-�W�T3t�s���V
����b��y� �ܜ5���Z�MM��E�qu�q7�g�U�7�3���>�ä(���PL��J�����µ�y�v�C�$��AԌ�-�e��޸����n���){_k�eG��c:rn��&�k��&�U��9#�?�E9�<nL��������f������E��@����]���G��c�֟I�q +q�5�rǛ{c�J��G�,��V4��_:����u��ND?Z���	��!���yt����$[��֠�9Q�M]�M���f63'���,L�׮0+tP�Ǽ���'Gײ:y������oW���9+��^�k��,(���ٛ��%�w��Z.>@/k�p��sq�"� �B9�jy�H���%cZ<��
�{��"{
�`��Y�e)�3�{=�9�@ԡf�sPՀN�q�v7fH�TU�;�̬��Ԗ��'�e�2;_�b��΢�=Cϭ�i��w�<z{yq<�������{uq].�K�����x��W���._���<z5?��|y9�^b���0�e��_�9ua~���^_�6���w����w�ϯ�E������w���7u[��x7��7uF�A�ݔ�������V�� .1$Ϯ!8��2��������Z�V�vb+ƊF+dڈ���TDjD�O�����n���7?|{��ԫ�EolEq]��X�n�7�{$�5�%�F��Kf4���~й�I�^�)��I2z�����D-��d����z��
Mh����$�dZ�+%��{#�,�6l�$6�n��NG�Z��*���}�M3��A�h�_��Bx�1i�P
4�L����� N�����^k�e-������@����2/����x~���!���T�D�I8^���Lˬy�/�!*��j����������iY��yf�d}��a����8J��T�X6�gr�Ux�J`n�ў�=\i6.|c	*���z��[�$5�GV�+�G�V��k���������	�^�ޯ�����{ 􆭮��w��B��͌�_!x�B0"A|dm^F&�I�� i%$"�����@�ÒJ����(!ܨ�/W������A��WjE@���pv�=��k�)99=����{�%!Ў��j4�����фߩ=r�6W��]���*�@f��~Gg��5����9�tm�)��Ζ%Q�<95L�E��З���K:9��X$P.�r��(�D�Y��ne�F�ar�˗�Ȉ�ȋTH S{�b>�t����ǵ/N�=��Ag��a,���_�>h-��]=�ܕT��#�F���5g�=.\u��JS�O�R�'��(wۍC_��RԷ���$�@�	_	 w�q��|S�#}K��Ȯ���'r�b���V­ô
��a�$��,G���&��`��n�oN"*S�J��Y}���Iq<�,���p�}����%Lڷ�T���m��u��3|�����~D8:�y ۹�b�8��*K    ǷO���I�q)(�fy�<U�V��-GS����j@q@M_���hc�k��gS0��7M(f`+ƕo(�K&4񯳳�R���r�Pd[�Pe�F.!�sB3G<�|��m`�����T�{��%�V}P�Z���zi@%�L1ļk�i�V�Ze暩Yf~Y�'�����G��k����v�#.�cH�N���ӑ�qҶi�l�f��C�8� �	yfsOD�G�ꌑɭ�|gh�0
��|्��zJ�S��FF�bu�u^�7��u��f��MK3�����7��x�Z����t)�oi���q^+E��d�S)Ǖ�C<��7�ߡ���PQf���ÿB��/�#�O۟(M�V�PP�5'd��ٷu����Iѷ�'b��k��8<��X�'] �gVf��^5����N�~j�pO�3:���~�r��ͮP�pm�aq(U��l�bM�6U02�j�1׹����u�k��g��i�?��ܙ�S�i�-a��W��̐�+O�,<���JS����dSYK���Xj�f���P��:�"�v�4���\Z���L�_�>��*Z�y;�ci�Ho�Z�Ӳj!˲X:|�0,|I��"ˤ@�~3B$�<�O�<������z��; �e\�i����U�z+R�u^Vw��A[ߚ�K�w�ы5-8ܟW�5���������0����ҹ� ������*���2�.�����fdㄯyk��A��M"�t�N����Aƫ��<+����[�X���Q��Ŋ�IƑ�)�"U
�`�L�6�TUHP����W^���4Ď��FS�M�������¶��̴�}���~:��\�Q��]���X�Xq�{�μ�mй����4m�^+����-%d*�<�;&n�$��o��f���{$'B�ܻ��4*y�u��!�]��,�'fڵ�FrF�Qi�̖{�w�v�j��t6%��O�bе)D
�Y�65e�XDZU�@)�_�+��سN�'�o�Ȑ�I��F��~o��{��P�1���,Fǝn,��F����R��l���}ƅKJ�C�=��m&��Pc�fa�l�Z��&."�����ۮ�d3[m�4�_}�1�P	��Y�E;�]��4�	����`!ؙ9

�0�����+�m�<�	%�p�����̰�E� �y��U��ԭYR�f�R������%�.qf�lwV�b:�p��w�f JY�J�����O�[� &J	Z&ML���ڰN�oe)���y;��D(A����Nh�s���$��T�G�~���a�q� =!����3+�n��yQ6�A!V E���!�XS���2�̵�H��u��V��Ɗ6[͊�em����Z��C��L�pϕ+-Z[r�����#��ц;�+��qId8{E����xh�{�53ߖiP�['.[1� �HP,])�&��R����+���uQř�zT��g���	o��'8�'�Bv���pZ�rm��x�e��o%����P�VS���lI%�N<^(��S�hX�A�Ҳ��B{��3o�ƹ1Z�0r�[�,�5�ׁY4%��4'��%�W��	�A��Q�Y>&�ѭ!A@���"
�z')*B��΁������LD�Icq��ѓ3�}D�<�A�$~��f�ۛ�i`��Q6�B ~��Ҥ�1��� �m�2HI/�#�%�E�0���B�|;��t{C���EB@��	�1����$���ۡ�s���~ck�,f�j��C�8y9�G��㛇�����Mɬ�g�?��f<à��u���a�[}L/�TO������HwF7�T��8]����[cY�@K�B��$e0a=�C�����qQ��ε
2�bp�ᕚ��~�!r��7F�d\�������0F+D4�������'H� q0�ԯ�s_�Q�!3���n�=�bn�/߸ϙ�\�'����O�j�ٖ��%\���:�=~�& ~�N�9���S��]s�>���:��#�w7�?R��6�`x4�����f�<��f����I�
27���rcRxh�,E>�����Z!R.���Lfw�a+���=�\�ף�����A0�d��q#=��?c�t�-���VGQ��8Rw͆�ݎ��]'�S�͊ \�Y�����ŗ�����w��@��rj5�UC+@��NY]4�Ӷ�ɪܲ�d�:�%U�o�
�u9S����]b�۽ ��E� ��g�rs�QG<��m9R+z0�V}\�خ�oq�[fh8��z�>���T�C8Deq��ӳ���Ķ�콥����c��%h�$�f
����/:�n2����C�WrmI@��ʬ�խ?�ke�>r7akk7�n���ß���L��Wk~o��B�+���u(�A���(@����6�}�+����yۡ�Ú!�\������Л�p�����n�`��w\�qUTJ�_i��+�_�>�2�B���΃C�o-�;I�fv�Qt��ŗ��G�DC3�o���#��0��o���b)�E�
����WW:`��J��N���y!�p�޺�F��j�_�X�>����D1�V�Ih�8ii�m;�(*(oq��� ǏxPxļ��~���1i����
s�dUA^k���eI2�8��`/�M�A�p��H@XZ�H�)�c��n��Qx��װl�c��?���_$i\������Y?����hG�֘��
("��*������n`S ��j���g����t�tQ")��#�~���Ff�l	Fi��'��Z�����06u�`�B�!�{JO�P������˴hǐ?�Z&�O�\M8�,�cv]W��_����a�����)8w��:ɓ|4��U��Y"\h�S߼l�]��9�}t��܌dl,���K<S�v��j����f1ۭ5�^�[�����#�i��W`�{�{Lׯ�hH�7��A�n ΅޺?z�H@QC�$��~��I�Z(�s
��Q}�d���R�YV��a[=6K$	9x%��s��#=T�th����UpD%)��o�=�v^i��d$��,������C�AS����9F��a�����Ia�q��"x�p�[:����W������`�=�Tq�����]��������W���-��m����2?��ď�0��¯(�Te3c�J95�P�v�!gMR�"��I*��:l�)�@��1�����*�-�����G����I����2^��e�b�W��o6,�RI}�]bFlcb6tH������8z+��o�,�Ď��-j?Qπ�ʃ�=z*р5�����R�w$u�6	����a�c��X����HHd�C��X��	��Ǐ��NV	��7בG ����^���qt�t��
X_��G���HZ5~r��9��2��p#BĤu!]��t�䁌*w�*����g]���/�#~��)�i ���H�R�˽D�=�w]jґT5�z0�[�	PO,�^?n�+�������Lp�����ˍ�֎�c��W�+,�ט�ep��@R]q:2��Ӯ�kp�0lGVT\��&$��"�����DYw�{�>�94Q�>�em�謚Ƶy�R�d���?��b��K�����8�D+�0G�"���1өf`�GẨ����A9�Hc㚤����ş&��s��p�\o�c���7�k[d 2�C�G����?̦K>�������QL񢴎۴L�4�j��&O%Wu {�*�SGna����#s)2�¬kK|>vDQ�B,t� ����>q��Pt���2�\�Z�c�g��=��N���Љ�/��"�s�z�цIxu�,5�� ޻�n�
��!�ǒ%�I,�9	�A+�0�lr��=�1bf�ܛn�X1T����r��JKx�KAb#+�$-�r�u���
�,�f�p�m$�Q �H�����DJγ�1`Ԁl@���Af�#W񑿽8WbX�k��;G���l|ھ��s��WHK���i��最u�r�v��x���O=��!���f.d�{G��R�Ԛ�t�sIZ���n�N��ދ2*�l���Ê��'�7H1��`r%>u(�S�p�5UC�O&*�xm���;�Y_��s�    �1E�T�:L8ԣ���-�1���V�nH�;.�8���/�6S�-�z-$��Ȫx"��� ̊�!~舨���Т�tCOi��{9�,�����#yռTlTqd��1@P翘�� ��`4]%�j�{W�9:<ԡ�T�P���+�*��ޠ�
��i1K���c-�����0�ʽ����o	M ��\c�6��ߎXp�)�����Ɏ����g��G4k����yff���i-2��)�����pݱp�?�e�y�����{�I>x�@,�������W�J�nF�K5��g�ϲlƬtq�ߎ�ó�R� �?��88�3���?B���8=�A� d�,����]R)�0��L�pv�>�q-�,:��������V,�#l�UDۘw����o��4��]��R����d��T�(����0t7�?9Ȭ1]��G\-�-�c�z�=��y�ǲ�Ք�-o��U�C��>T��t���88�d+Nx�6c��_8�ë{*xS����W�W��3�yN��级P��$IM�վ�DV01>�4�M劢�`�a��|�n��떾r��3۵�Tx��n�Z)�"�I��V��B���*�U.��YAY2�oe��6����'�j%K���6�{G�'��T��!o��.�t���@w���i�+ޓ�G�~OZ�pq�s7��|���ѣ>�=�(AT!UhR���ҭexBU�.%\���/9�����8���U�C�e��VBwT8.�3�f�����60���.4�]Q�6*�U���W��3�K)�|q�:E09^k�e�s�2v�@��y):'��f������i�.���B� gg�� ���=A&�$џL3��2�N��0f�{��fX�b�����I�H�efKn�܍�)��	���|o�s���f���ю�*�H$gIф�X7�����c@�8[�F)$�F������%*��Y���J_R*l���<qw�d};P���=Y��(��CZ��f����~R���t?���ߎ�e�!ze^f~EP�Zh&�,Ogg�82t��m��5:���Φ<��}����/{ =C�2P�j��/�	Z�D��2c_*>e3m�[���>�鰖WH%��"����T���\�H.=�?��p��q��e�`������fy0N���{�~r��ciN�	$6�Dqqf�����:o���Z�����?�EG���@�<
/���_�����O3�I	�f�
��(�0���������`;�L�q�	�����^�0�_���b���8*�TBga��y����
#�Q
���M���읲JAȋ�#v�����w��@��ئ�<�i
�eC�t^{﷔�7���Qž�ڹ��G�o�1�5��^�#^ �㿜��>׀�M�"ٮ��m�U"�),����H�zԅ�-��9�v��^=���j,\3{���}j���ʚ sRH� �W]5Z5�뙣FD��V@`}�ݮ]�����tZ
5�q�V|=ے�����l?%L��i Kh���	7µ2�J�bs�� N��kX6��V*!<��a�,��M��y�_C�7��,�z��Uk�0G��E2��ǎ@�	�a{p��,�$Z�L����H9̮�X��33�N�P���w���߮�㏋1��g���i� 2�UR�� �ʲ�v"R�t%vQ?(�q�^MN���a*�	�Qx�ӛ�]S~Λ�H`~���3�o���S�6�߯�Z��"c/��Gm:�R�_�\�篎��󛘉�����]�m��}��K�5d����x�㶕.ɪ�M(���/��p�$?h�9Tqx��������~w��>^�?
~oV�~[��%Xz�Z.�\y{ȱ/����#v$�I��&,�eo���m���X���lp7x!���?�A���j�H�N��*���+�p��������<<cr���вʐyƘ�u�8��� ��0���t0A��O\?F����ߟ��άD�+@n�I��A����3�bF�u���- {`��eڌߍ�ѳW}�@�7�E����0��e�y�l��p�������`�B�<���\.�qX�[�M���gk���Yr������L�o'G �/|�yN$?f�0
)F`>�\���}�ҌqQ��htc�z�Py�2�zw�l����?�s$<>x�rX�0�� ���ߵ��~����� �0��^�W�8R4{��c��oO�0�N�LR�Г_!��\I`z�9yE���w�r'��st��b����9��׆PȢ.�t��u���~�J�B�}@��A�v�S��}������%5F������("��
��Am���3y�0��AY�qut�����J+߶r�T~����I��}Z�hఱ�@SsЋ�G�H���%�:T�@�du >�7f�����S�@g�����8z)�[�+$r;��7J�p��<UG+��%�83��n��V�`��k�?��d@�UV��N�'���6po՞�X(�����LC�(�����2v#�׷R@�cY8�~��P(%$C
�� �%��( M��LP0x�m��<�_�f�Ex��fh�03#u8)R�q�V���|�X����n��l�g�o)�O���D��^��-�i��8����+o!rp�&V�}�$M�[E#�r���{qVei�ZK��,3ȉ�Ǽ�UA�����n��'}�`���������y�P�2<Ρ�-���iR�e���<��|��ē����&Xr	R���b@Bbب?�Q_!��Oap .�¼����oe���3U0O@0m�ñBW���It?�-z`���<�gQ� �xG�Ь)0��;�	J��%Q��I��V�VJ8Ǽ�g=����$B���`}��r�"�y���j�5�R+��"����S]�RJ="0��h�T�1�P�VB��I岘Q�����(��@�
���4aم���n�P0g�u�lqq>�<�:�cwҖ�hYa�����^'�ڐz]��e<�|��1vm��$4�r����q�=/�}����Y¬ ]����k����<Kg��KLVl�;s����(3(��]!Ľ��M��Ѹ������#�k�����\�/߯����R�>?���2���j���G��| �[p<K;����窼�Id��FӋde�*$��8}Qj)H쳇&��e_����������q���k+���1��.c�ً#X3�GQ%�J(l7���؂�R;�uOI�B���Z:�4^��X����y�s�i�')nc�$��zk?h��k�����3�>�=��pJ�ϒ���+��	)�a؂.� �7�BZ6�����I�U�,��H����b~эoB�t�|�'�����q�C��#���p"𼖝T�Zd����pL�3%y�IZ7@&�C{jȑd���`U����U�V<G�
,�XU5.I ��)g��{<|�����r�����8��dTn|ul�¶��DkL�.P[K�X@�ף<]cP��L���?ϓ<��ҲE�s�ġ�\ٺ���p�A�O�[)��j��F�	9G��ۉ��\sz�ɧ�g�����8�,J;M���o����&��P7:Ϛ4�A@v��mR3��_T��%L I&ZF�ׯND�����W/��������'�
owK�$���'p���EE��|cv?�$��,�g���ɸJ
^�~G��A��� �Ǡ�Vw��X|YM�%�����I����W+?'X�h1����?��A�ѣ<s۫��@�T�uU��}��!h�$йA[�x�+q��M��-
P�Z%���:����b��H��?���q�Y
�۹��p;Z��0���k�X���i֋Pg�r�X|�wA
���$.��C�vRˣI��P5�_�rJ������3��?��>��-6?�A�OG���}om��Qu�_M��(�Б���em��2��Z�v�*]F�)x�c�ං�<����<��tE蛰G��4�G՘�mf+�~��]oa3�O����Dc� }����1���$�O�1��Z <0i���a_kp��,��L��\o�������=�W��GS(�    da`������ؖ��]�P1{��S�dY3���"@�&/��D�j	*r��@�8(�R�#���,�~
u[!v�0�ф?�Z��['N?g���5#��,�:�*jMi����	���`�eSw��5І�M�T�l�֔��E����K���##��;��@e�i�a��KZw�+q����M�7�P
�c:�:�I��u�i��E�O�IZ�)c�ff�����òՎݤ~�B���pŚ=��:�*���1����e�ªBN�q����2��ukr-չH|�K�4e�<�\��8E�軷��"�{rq��_E�����?s2�ޝc6+z{y�������Y������udN�o�:�_��c��T9M&ͥ��������;�p�
�63�u�X[4o͎^}\)����z�(.T����휘&��"��ս��?Z��&fz����,�+tNl4��VWP����罥%�J�!&�h7���C���
Yz��W��<��8:ẘ8��|���f���:Ut�kv��'���F�:�mNzw@��ļ5O���!��ʓ���[��#���]�Uh��暠��~��>,�����)c#�?Q���u��:}���*�!����l}"㇃,�/��/�ljו��G�Q�� ��ȶ��-�#F�o)��I��'H���	E��U����/�V�|]�uT$�Q�X�B�b�;g���v��������ù��I�/�l�:�j����2��h7X���6��*�0���q�@(�o��3F[b,����wQ�fm�	��ꚏ�l��䐙��~1���Q4��-������k%��a{O��/D����N�@4�/���a���W��1k�
?�d�y8b��7~�G���(�ms�C-����3���	HK*]j����=�~�3l~�������~��6k��L1��m��)c�dI�{4c��)6O���N��MM&��T�SY��%|<��IZ�,�����<�'�al�D-�6m_�4l��V�ʚĦGv������IL6�H�H}c�j��\�
��p<M�^(B�8z㊫�"~֒j�U�_#��0V�0����+�h��#4��E���{��-p�0@�3�,�p���!S9��^r��0��
T[m�Yݍ;��B	�[$����o��#r�!��|1�U{��"�����T�Ew�`�9�?���=P3�`*�0����~]��?qp�� ��� �n`�B�g�@���,�&�kjr��|����"W8G-J�=4�=D�F0TD�Rͦ�-)'����:�x���XU��=ƒ��Pu��S����_h���TU@V��mY�6}'ZZ��9-�R�Uݸ@$�!IR� e�ԣYh���;L44;?=	.�V��*��
/_$\�I�Wm����}��.���d�"���H���Y	I��6n�(�QBFYĵqcr}f���˧� �����,��kJ)o�x}҅� �Wojq���9~�5-�~�H�k�'&B+�������Q"���T��7�l�v:��D�^-'/��?~3�.H$��>�}�W��s�����;ن�@�ڏ_�A���M���<�V��.k��W�@%��ac��|�������������E�/�Y��AN�dך��&��	p�~1מH��(뙾��C������]{�����v�k͝nA�7ϊ�]���T���'��'�}�\�3 js�LDXG@�n#*�a���#�=�c(���Amm��E��#>Z�H���]�������2iQ�M��O�����,z�+m�3�p?|�T�:"���bu!y���ذ����,�}�����x:PA�8TߖMS��%@l�aY�m��@E����rk��4�ˊ/u�zY[�k?BD�Ӽ��Zuq�� hj@���ۼ�[���a�5�J��qbY�̩�r�0��b��v�de������G�Ǒ�T�!��>��Uc�i6���U8(՚�l��[i��9���
y�g������)��o��5�<���l��Q�h������h�(�
/ˀ�:h%�)�m�z�?���� �n\� �f�4�r2�#�x�%r^���Y�|��W��j��s��&/Ӏ�7h��;�V_Ut�h�}�B!I��_[�O6T��Q1�`u@@q�
iv��ֵHp�2˭� ��a�Z&kk��d*�w����,��9˞>������k�~\x8Y��N���� O�^R�1?���*³�9��I��M��迓�/L�B�y��<�؎���/wu
�a�	I�[�98I�!A���xSH�r�f�W��ȭ�i����&%��� �:'��bK��,���g�zQ��Ds� ^!����_��8i���ᴨ��*��XY¹a|�F�Ă�x��D{���\v�Ƣ�0�z���qD�zB�>A&H�U-�Ti��5��A�'�� ƘH�k\� ��Y��y��	Pľq�[O���Ǌ����K���U�u�Ak�G����tvg�3���}Z��t����,��I�`��X#���'��s����o�?�4�rx � ��fP���`�<�C�Ƚ�9Q���/��Z&���m��D����lQ�<�P:N9����|��	ƛ��a�@�
z�a�o�^]^>�u�T��M!1�`r~Aw��UB{!o�F��U�cԭ-3y� +�/�"���5B@|\��	17IP���%����$��6���N�O`�`��K��E��Y�`;0����Jŉh����Y�s���p�a�bpQM����T�w��e�]C���8����f>�-���УO�E�:g�ZAT�SX���*�8x5U�-цL4j0���m4�Zfie�~��� �+f�ڻ�r�\��66���-��~B��i���H��o���M ���%)����(�Xذtv�gV��Q�~x�"uZ���_����j[���^^���Il��"�����:���6G���_��n�ۏ8_In��Ӗ�ETYJp��W��^�Mt4.�¦C��(�,_�U��q����%z�&�I��/ܠ�o�iH<�腌��4cm:Ր��� \.%���Q�=A�6)K�� O�xj��)S�p-Oa'��TI�9�n���햱̈́Ev_F��G��tʝ��� Bn�증�mm3m���agk�QӿZ��=\!�;TJ���F�u�o��|T<�F�VI2C�M���=��%�ө�'9ׄ����։f�e��T�փ����<j- }b|��*o�$k`�/3��.O�Q�������M/�2G.���΍�k�2`cpe����p����1�g���u���>��<�W.��_���cJ�����:�������ٴ@
iKapL���sbt1^�q�![|���G+�J�0֨~������S��r����X��	����#�����[��4���1��oo�dT��%m������y� (8�հ��@>ޅ�3����:�Qdyam���3/�re`��]�S�q���0����<)ʀ�"hmQ7��1f�� r�z�ʙg�\����ȦY�..��=1߅A��.��^�'O8_Y$q]�i5*�T�Y��鴝�L�:D��P}MV�P��Ngr��wv�B��k����F�^��Ӝ.��\�<�S�*�.�g�D��38F�\��9f��X����Wz��A�;N��tk���%�Gd��ÙUw�%���V����OP�U.����p��<Bo:��=���=�X�b._A��[4x�)�6�����+�[A��`�.8uq]�u3:TTk��*)���ꞗ��J{~�������g?�/�߽�3{k�?���� )fU��(��<1�-L�i ���jZ�!5{޶�w.&>��(a���w�����XW=3�7v�wk
�.T�K�ϯ�ϓT���GI�<�0#�(�vyP�c�F9O������8����=��N�˺�'�  [al�d4� �TMZ%���Ѧ6=����ã�I�D�%|T����a�5�P��|�N3xJX<BG/�ПpA<�+�Ŏ]ɤ��Z�
�A�3�    e�<d���h����q����eS�:_<OQT  YM�U���%WX��L�vq�A��g+)����=ϗ��$�{ FsFE�a��%9B�=H�Eiݘ�Ym&@�u��)
Wpq�ƾ˴�a��O8!��?B"�@�[�/����U`a����?�\�y4	Ȉ;+0uSԗ �(�־�@�*Ie�	埂	�L\O'f�-�?�>�T	� �k2B�;L���=�Y�6J�Z�ׅCDf��xYE�z��&q��҇8MBǶ51蟺ÝWo������U�.G��4-ꉮ�F"�����R�TD\�[�D�����Pu:��=��i��cw�K��H�(�8��+e�u��K���G�o^ �r��H�Fw�;�")����@�ټ�KP�;^�"Lo: ?��fs߯�uU�$7�!g����n�X�)���"{uzq�gWM��q���/P�.J]��E��߹G����H��}1�k#�}���4�o�.�4M�vl�������K��̃2nu�]��W��}���=d�)����ʮIc�B�җ; `�f�C�$�70��m	!�Q�;5�I����b5	�f*3N_�'&)6�G��z���o3_�ߝ�u��r���U���+������n���l(��Eοk�^������آ#^J��2q�r(����7����Ft�DTu^���r*��-β$�����L�F�Z/��uoI��6<�'��s�O{"XV���'�>>KW�r���+i��5I�fbi��1�������Θ.����2.^Ƿ�b��؉�Ζ8�����X�-��wP��+(ݝ��r�J3��U/x��t��Et�x�ݢƥ,1G��@6P�y孱<sAU�(I�����{����y�.���s�q�ԏ�
�kc2�#2��׸9#�������v�63Ł�G�;|�����XA Hn��h�
��� k�� 幸Pv��ff�{Ԥ��|��?{�9kX@�-�����E��B��.����岕��\Q�i�Sf�/��<���f�ok����I�:`Z+M���&������1^����d��������Z�Tٜ�%|�ET�U���D����D�6O�д�Z霰�+�hoUo��g��Zk��EȂ��	L�F�2����7+Y����u?�0��M�W�m������$��b��S� �C�β�toD��W��v�� p���Z��E�u����O�.��������?�=t�|���u�s9dY�WU�LljۚR�R:���h�\g�����  Pɋ�w��7T���W=��Vt�'ܣt��H�❊�|tMw�4��&��ͮ�*h����H���Ђ9�:9���@
��A}�&�:��y���- ���b� d�&���Ӳ�zv%S�f�흢��/F@�/rv�X@S���9���6��HE�$Ɔ6���:��h�����o�4U<�t�;����re*��:,�Y�K��G荌�(���������U��Jfl�uUѻ�c�-�7pXR��@�ڹy�;$>dBX���I�`̋,=@�5��n[W���Y��[e�a�D�tL���5�VO�

���b�GW��۸���9�����ؿg���+��+)�}yb�9Jk�M兝�}�mel���ޟbŠЉ��p��)sHC��~�����Zڴ(F�nm�k�Hfs�ԑ��Zb�Һ�O�Q�#���{�y�t���@� ~�\���!�u�Jac�]EE6{��T� R�Q�����5��U�s��l�2���E�[EV�rSE.��D����>�R)?NL���X�HV�A�wW/�0��v��P 7M���%�Q�v�z�6���������.��sr�ۛ�_�Q�>��m�C<#3���F>3m��������c���e\�m ����g";H~D���/���)�^�bc�lF�ش������� ��\X��&e��6�n-9�/Xݢ���21����W_;\&N�X}wk�&�lw�$^�_�jW�y�Jת׭0�#)1� �Q��:C��@���9��O1��Kʡ�t�Ws�m#M�.�	�+�R<-s�?AGӤ�G�a�Zg���d�a{u�Ǎԑ��٭�~̑x�"1Pų]+���6�뺵
�q|**��8e:}����Js��Q����fu(k���JeЏ����2�Z*�ʙe�������Et�7��U�n�'�skUEd��EMiZ�GƷӴ�߽�z;�e�8*^PL���.�������Nc��"���U��}�a��� r��D���|�3�W
�� ױ��_^�\���i��h�Q�k�X�Y���[�]�!���� �~OH.���ZBWa�%&˭�t���<郻��!d׶e�m�@O�I��5��m�E�})d�VE�/[f��GL�C��}	b_����B&��n�νƳ�u7�WX���e޶ꂃ�I�b�I�4VR��b����r���}&c�6��zi� �w�L�\�"ޘN�]���G�}	��/_���S���<�ނ""�2u��!��)��-�����KKk�e�YQ$U�c�e�f	��;Zw�*�;��
����֡b5tv4U�{�ږ�Pa$���n�x�����Uwpo����44>�=`��;��<(_D�y��:��`6�!p��wȌ�vC�"Y�0���../��-��Ȍ�P7㷘c�=5���R��A���l��Z�؆� ��G�~��t
�\P�����$���
 !���ӕ"X��(y󣨪��5������;?}=����Q���w:��^ DQ�,%��Ԫ���<����Ձ����n �u��@�_��N�q��x"�}��V�;�&	� x���p'�<N?5󺃨���N�:������(ީvuG���\�A��&���<�P
��-�B"����u��5����%tU-ç�/hI�Y�?�~-ל�q�f av�����a���>u��|a��Bv+���;q�����\.N���;�E 2.�)JH��IU�����/Y7�5��������Jj��64!�`�K�&��qA�1K/o��m5��c>t�����=�m��B8xzJ@���*||k|���p�5����F�X���4x�����i�q�j��: Dn��Z��=)����\OJ��>��P�(2��j��dE���z���uQ�:;�'�\)c~����}`O(L`n�"+�9�x�M�W�A9�2Gئ�)�7�R|����T�(���J�n�^d9�\2��:���j�t�A��c,/ʢwߵR���[���.�� |=�Z� ."�|�7�d9J����83����o�\�=��~pE �u���(X�����6���+z&�ԕ�F���iV_��N �ឣ���*��kh���� �x��Xv�(�= �Ne��!ApnVX]'�9M^`�1��+�م�X}��#oN�?y���_h�9{�~Jzxt�D�U�m�8�2n��T���YN�f�'2�;|��s`�j��V�X�4�?s(L��1��a��qÒjⵖX�VBቧ��՚�b�i��eQr�_Ϟ�B��,Z%�8bn�K�(L\ut��N���Т����S*m?Yf�AdZ����HFUC�\ݦE9�d
��oY\�a�]�sR���W_Ĺp�_RL�/J���m/a[҂#f �m謾6ř�r�|4�K=��¼�lt�V��*�Z?�"+�luH����t�	�	�.��|�R�o7�n#F�ړ@�ҿd�Sk^ӏ?9z���X͗�I^����U��ke�|$�].���$������E���[���M�l��,F�gֺ}E��ֹ�O�Rh����HR�E��p�����Х��%��S�y5��-fgЄ��=t�k�>�J5QK�Pţ���R���`�e����1
��b��Y���9��A*�c�[�0�b8���,��̻H����n�3�<K��Ҷ�k�x͐M���i[�-�;	�������DUDk�$�3ɬ�Go��}��e�-�6AVE^�Aϩt�4W!p���+�    �BJW��u'l9o����T<@�B�Cvͫ�}�����������o��*{~x��nտ����l�&���wݽ�h�tl�"j��l�����=�[�/+�f����č���� d�9�e���B�'�p	�>���I����)���<*�����E�ٜ|�ߐ�,Y� /g��+��IX$������%$���!t� �� ��zC *�h�ssyHr��8�f�
=GX�f_���e|������ ��w��O�I]�%�"^���w�����	�>����z�����t��}1���7�s�;��	�C��~�`�Ң9[�R�j�SC�/����p��-����ā���B�w�!�&J���"�KA:,�֨��+E�6m�.\��tG���
��IgJ�C�v!�5b�����+�\0�
���6*d����c3��A���l�,}�"�E�b]�^�#���j���Et7���5M *�/���e��o�r e�P��y9���4^�+��Zw���v�s�0�4I+}�j7pԔ �˷
�v�l��.J�Q-�Z���T�5g�O�\����G�P��o�7i���x �W/���/�����.�Oo^DmR�5�O��^�#ٹߚWAӢb�riPg�I�p�Ni|��5{�Ͳ�-�XIRsJ�ܩZ��Ǹ��Bt|{ߢ�:|�?s*�O��W�k|���$��xqIbnw�[iU�o���,P4.��J��H%�ɞz���J�*/�%w�FUI�|�dܰ�c}J��ȧv�*b�r��RB8
����Ʒ�x���ͮ7K�#� �aXH`��i.<��<�ʐ�uO�>X�{Ӓ��;��s�=޼nf/-������s����.{R�J���x���2�Va�AU >��Χ�^�i�fq��$�x^k�O�Fpg�����@�{�f�:��'~sy����UG�q�8�F�5�$o�Q�Z�+���//.��@\�`�#%��֊m�	mJ?= I���;�	����ywD�1Uv����#״xo��c.�ݎ�	:x	���z Q�@���k�7�Zb��4w�1FF�A�Rܸ���%CE�(����
�U��K�~�e���)�vO�\��U�N���B �;�!���ӄ
^HmĞ��#�@k$i}5��{`�>�ހ�����=�T��ZE���>��<K�������}��%����p��L�˯W���=k|�#Yt<<��ٲ�#�MӸ4~dҎ��Z���i����8��E�'����S����7RB��B�{��a�O(+�"�a�����3Y�RN|��$)�1>I�D��8کE��212f�/��ة��I�z�Ms�L�;��#Ze��I�V��Mf�>�Xv������vC�1 �������Ȥ1���k��0��]��#��k����^m*��eWE�~�y1�Wj'���C�a���[���o�׻���=!^�3��Ar̜x��2׭u�o#s[y��KȖ�
����	��������r�T����*��F��"��p�aUeUO�Z�$�1m.�1fE�x0�,� ����p��H�Aa��KsFA��\oa�r��Y�L�ض�|��q1�vX&Hty���)�U8Fº(���y���סָ�2ˤ�|���<�wo���{[%Z�^�5S:
"fY�T0���0�/'*p�a�!p��˚��S%rd��Kj־�X(RіNSJ�!\���!㝏|0����4̰Dl��!+t�G4��0 �_$�<q����G�dVE[��-�[�è)D&�(ʎ"�U�GQ�EyO��a&!>�}��Z8Kk��9�����ٹG����gX#�UӞY�D��R�4��7����Pڰ�ꈽ�NK���n�u��&���u��K�0�Ć!�m�h���f7�L���/N����l��J��[(��x�H�ib�e�[��5k&�y�fu���v�tZW&�vF6�7��Gg������!o	�K���xv��.S�n�4��e�Z��"��ބ�u9��d�/��r[rf�|�c���ݪ�v����y(�C��VZ��5�f$G���Z$�K�@	G�Ǫ:��z�$;����~e��σ��y�9m�p(+4C��a�I�����iVӴ��>z�bO�|U�h"��SC����l�]�a��3j��MlvȏЪ��)�ָ��ЪZ����_�`�MLa�CuQ�7Ma���ŏ����u����7���pM�Z� 1LQn�)�`�~7�:���~r ��Ӈl�|�P�~ �>��r��iR+�I �&kK�WӜ4��2B,Zޙq��lK���������!o%�/��_w{�C��a�;��?_+M5%��U��0����G�,1?�Z��NgWR5M�#���!4�f������u3��YkF�5�\Q^)���~k�A���*<�ě�թ�mM�f	3���z#�;�	P���^�\� �ȳ�
��V3�¯�Ƒ��;q( ����Ѳ�LTҔ�xXƒ�a�Y�X$3����Ւ���\�F��o��]w6(*d�9�X����2h � }%zud��O:
����t�|��
�x3��ہe�!Qv�U���V�t�c/M��P&,��oK��A+�f����o���7��[sq��&~7_X�d�cn.s����v�S`&��"M��!� �[Zq
���,�%���ds�A�/�Ts�x���L�H(e�@_$q,�6��U�5���yH�ő�{ �W��.��0��#�dq! �9��9���Ͱ�z�t����5�;[�A{̉Oc$�������'W�i�!��4�i��I����S�Ҫ�<�6� M��^�>Z�͡�^��s�S5����=�1�N���N��C�kxT���\��r��p�iD�� �*m|2�&8������������>윺0���u$����?������#�X���G�Bѡ�	����WkM�_q�#	�8o���"��L��U�k8v&�9�
q��&�����)��GYu���,�8R���
���*-��-�Z�tZ���ܫp��l4tfWtB�?�Dn'?����q��c0������>���0t�'�n�������J-�r,#��vK��Mf��#̏�`hY����A[��@�g�FQ`}>0dIQ76:�al��
�b����+8�H�Ta��s�/۞��ɅK�Z����'Ʋ�a��xse>2T+W���t"��߆�d0���z�"X��`yb�E������7�Wo糳w�PT�u�D'�X>@N2*�խ�0�8b���R*��j)���yj!B��Or���{�n��o��Q"Ƙ1����.aBVi�OZ��`�S�p|+(���X��;��N���Y�k�-����ǰ��ݝ��J��zb��l�4��r�Yu+;A��g1зl�^t�OU|���A�5뀩��,�P���>v1�q�6�i�n��%�Xʙ�Z-�`w���ZH}�;=Y��.�]��m��m�ѭ��\��y5���Ċ��|bE��3��C>��b��;���,-�-�����T1�/�<r�;Ln�$�uw kCw  +��2iF�'�l �7�L�¨%N��Ɛ����l�R}��!�AZ���z�ӌ�%xН�d�����\��N�+�έ�'ɵGJb����9�K��h&�����͓�R#�b�f�7�Q��tݿ$�i� �z����<=��k��90+Tyh$��u[���s��s�%�Y��I��~�,͏m�&��ȃ.43���Ȃ��G2v2z'�/f�-�2�s����*�ᬂtJSeuռֺ
���!�r��X�M��w���Q<��b��I[r�������2 W:�UX�����ֆ�2�L��IKD����3u+�{�	��|�v��e���'X^'y5�M�.�,����!i�]{sӭ�q]�S:��>>��z`�M��4��fmَ����f3,�`��'X-���7*�3;�9���~�.������Y��|���u�.9%D&ؓ�}������l�r���i���w�4��Q�����4���v��Q;�͎qH�?�L�d��O_c6`ǡ    zǸU�1��\�0�a�c	�O�7f'%�����!'�ꋱ�ho�.������A\�=�K�E� ��� �I�"�e��"'����>H�(���E���"��~=1?��}�V���7�"l;D��d*9�����Q9�[^���a�� Γ4���\kg��)KkX�	�Z\@���$��5���[�J^������2��	|\�UΪ�Xe���AI���! �u����~�L���w����ɬm����FYI�i���a�A�=�x���;+��%)A�"��˭Q$kg�%o��j\/�(}>�q�����ֲO�#Y�X��UzN�{\�M����e#0h��\4�<e�Y��&�{&*V���Bk�V�@h��i�R�p�S)n����N:�s��'��
�t�.)ن����F�>$�'^gAEB	菌_6�@�")�L��D���D�&8����,��F	A���O$Y���2��@U�c��I�G�j��@��̋<�>�'��Q�p�����ZF�Y�ڑ�u4�az�kG#2����\���|�ÿ,��H�`���Y���k3a"�&��"�g�-�LKW
��J[���e�\����O%��݀Qo��o���Ż�μӤ��,$�!j@�����)�7zA�<}�>(���*��g������8�)!��)ڠ,���WP��]���4a�n�]�����#�\[;m
��a�՟��ÚD���YYa�*�$3�������(��$�3�������D�mN_�jʼ��;> B�'s�n��S�1�I��*o�oO�N񊲯	0_���]��(7�Z�Dg �����'/h��V�/8���*C�9N�����i�t=\a��m�Yz�DɊ�{C��b�pY��/{��Ir�>��� mvTECEE���Y�, �$n���EeF���Ȅ�R]����aL�bG|Xk���>������q�H �Z��JM<3���/�����~+�X��\U���#&;�X��g�O�����������%j�`�Q*��A*M��#K��d�ɂ_�͡3'	���>��e���}1�'��E�5"�uV�6%�{H�M^e*x���J�8�L6V��~����� [#F��4�~�~Q5jd	����gs�AbjgNs���Za2
Pͽ�J����#��;�{{y�A�P�\�훗*A�B	22yR5L^�)�FI�_�	�'t)w�E��YA�3��QG� tz=�p��8�8����� ;Ks��-��^����8C�B�)�;��ċG�ءG�������@^ �]]�z)[��.�7#gWd
��l�z~U���~�-�@����nV*�wƵ�VZٔ]�ۀ��2�;L�X	K9��0�8����/�scPR��~"�A��
.�B�׬w(��������+������5��.����Lf�*�9�I3X���ȁ�h�`��2a���2��}o�5i�	^$��&[�0ߌ�}���D��:� gt¥�
���� 
���5����R"W͈�RH�r?��M;]�߁�h��w���$����M]�b����"���/$��qx�Y0���x�qI�,X=�YC�Ut$��;�������&>�\�J��MZT�8 Sq�8)���g����1�>}Z��a�J�x2�y~K(���}v~��y�X� �l=a�~�xv��M�����m\��"��,�ztJ���I���~{��kE��۞+���.�����dNlDwk��%��n��_�襎*T'��2��T���9��4/S	�ˋ����&�3���	�#S��j�������M�e�S�p0AY*н�d��fD���k'�������;3$Y����I8Jl�\�O�hٮ#c��IY60.��i��E6"���Ұ���f;��nYX��x�'����6I�8)�㉪
\}��u��uo�5*m�Bq]ײ�X��3���������ٸ�H�x��OS�� )�@#�B���sc8���+��Y�7I��k5zDֆ)���.��x�}�!��!
K�<���G����)���c (�Bc"�6ߚ����'D:�2%�m���"O� U����ň�4#ޖI���ۋ��j2>=������g�������8�D�����"� ��8���):�/\���{L|�4�������`ȏ��󋫳����<�����V9J��U�Z� /]�!�s�oH�C�գ�e�&o�zw�¼�����A���F.�Cp �EF!)[#ٙ���L�f#
��법Czn=���5��$��ݭle������E������'t�nEC�MO >�7/���`�4�=�q0�ޫ�w�<����24T�����ϐ^bL���� #"��)�9�[�L������}0����j�b P�L��s��ԡO�ۙc�����ѷ:����7v�4I�"�����4md.��FoV��m�j�L��6���9�����u�в"C*�����4z<Df�w�[x�K �<Z���^Y���4��Ӑހ��Y-�w0��"z��;%���p �G���F�a�%
)�n�-�^�"m�&��<�H�+)��&�0>~��bu�����7�}�nu��;Z�v�n�X�/�C���z�4��2�~笷�e+GW�E��xE��^�o���H5����=w'�o�aj�m$-��s�j����v�\Ǉћ�ѯ�_FǓ��qt6���'���||�������+}m�Z��>\q0Tڌ���V�>��қ���;��f��%v\��.0�z�B���ʉ;��������R�WET��e`B�J$�򺋒T���'�n���y����v��5C=���]��ງ���>�	��5kQ')h�<0	pyBm�2�O����I�B�|�͈��N���ru��bw�7 �^���r�f����3�dN�9��E�� �֠� b�U�س����&R��K&���r�0�tFP�g<���9A�}��V��v;��2�y,����55x��ʲ({�^�z�5yY\�,�aF�~#rv���� =��O����_�V����(�̒W�����o&�s�pm�o��iK_�0/=vI�% F�;f��2P6���£�ݐBɒ��.����!S���Y��U�������bȖ�Y`�D���9	*ù����<R9�1�'�@<�Ր�כ#�c�/T��c�F�ܽ�b�I�h@�����dRj��c��)��:QH~�%e�~��Cte��"�T�o��d�ʊ�N�/�u���"&�̚�MⷼN�CL{�]_]U�e�ZJ(*0e��i�Є��Z�� ����`���[:���{F�aW
X�Yb+���6R�;�2��7��,�3����sKm|�� b�%�%n0�h�92J�>n���Yv�ϵ���y.Q�L��y�q�֚}d�r4j)�����n�ku�b��D=���K���1�$V��7(�QuH��&1�}�G�H懃CE��M�����GL�	�� G��,\��-��e��G�M� UvGR�kض6�W�*g�3K�ƕl�AGU֌����5(����zkP�w$<�$�X���/ݢ��^�4?@�!j��ݱ
�����Eh����hk5�ӆ�Y�� �U5��`�3p�G��|��GS���[m�x�7l���b24��AS��k�f=CJ��!U5��iz��e>��~�:L^�ġ��t���r������O/�OJ�L�?5)���%T��x�7FeK�[��}rYx0(��\%�5h�3���tt<�d��� �of/6Y����ۦnn��C�2���8��R����Wh�^���nX	9�R]N��Z�@� �ݽGq3�Z=�ߩM{��=���x^¯V�����D�d�o����ӵ~O���#�
�.�˃���>c텗�a�+k��v�޲h�������G�$"A�!n��ڙm�2N����<�H��eh©5���k׎�8�)� �t�k%��ER��V~k�<��u�"��	uÄ�6X+$��z��|�-��l��N��z�T6�7�Z��0����W>X�    Y�N�S ˕��z��hTY�u-�Xc��H=���q��� 4���)$�}������Ǻx��N��̐�F����ß��h)D0�pr����K�%16ӵ�ъ�X�`p'���tS��_#J<����gN^ ,�{tlz�J�q�vfL}��*ɪ����(T+�P��z�3U�Lv�B&Pj�{%YRQR���ا��~��g�u��O�@֭S��T�3���O�фt��7�~ȦBP͞aK�X� N��,�:M�4�J�,��&-3	�h��,&� KDvVg��'���CM�w�k���B�@����&�����lb�Vix��ƌ`[���'��������
�E?󟾟��%E���'�ۅ�g��`��I}��֮�f��w��⪩�fx:�����^�����7ؿad+�~�t]ӓ\_Iy�$�#^��`��ͨ�/��P6�n�����n��p�����ƃ4P���Hf��������/���d �u�uw�	x�c��hv�$i-���k�N|��� >�Je ��bYC��h}-e���{�X��-q8a�;De������v�o��I�l��,zm:Vf&JB*����0Z����a^���Xj9[?�8T���Q�ק%[+TT$�H/�Y�VZ��lo,�#��T8uq"'):D%3�g������I�,+�a5u��,�ak +����� ��~�>�Q(z�Wn*�I�c���~�.�Q��P��hbm����6��Ҏ/��A��xZ`�1B	�9�Ǒ`��������2Kù�Z�p��ɗ���8��i�ݭW��VpNoQ��4\��Mn�'���D�*�Ʃ4�򰳢5K������rf��E�rhs1B���K�L���Y͑��U����w�e��/G�'x?�:�<멄ҡ*XǬ$���Nȏ���=+�����!
�[��K~�_D���q49�.�\O�>����?_,���䭪H`�k��nʠ���ə/�j�}|sq��ߊ�o�t.,�G�ڽ�Ml<n��%���9���Y^���-�jT�[���c[�NDA�b�����o�Ţ�z����3u�\k�(��2z�h(�6�����[�$�"��<[�I���8+��g@Z��w�K�'�'0m���O�Z�A?2_zu� Q����ꔭM��2_��x/k�"l,Ҡ��j�^`�7!ι� ��Y	R�D`��$>fsAXpe	a�Y:,�t��	A� ��y@���dͥ\�fd�1\�HÔ��,H^.YF�(�搎����S{j5� f����V%��EZ� ��L���%������2aӧ!Vs�8�B�j ��M���0�V"��JU�H���� <�E��fs��e}U5	�Vɚ�;�8Wdիct D���;�S�YA���(�����\iI��^��e��K�qgm� =J��� vDai� �g$HQN���2Ij?��f+J�!^W���������i�\�a�	!�9���A��߈������2I��V5h-�������$S��u����V����Xw��`O[��&������������8Xde\�e�f�V#��6�-�n03�<3�iE��L"�n9�ÚNؿ��#E�u�/�5��%G�����
f΅�N}Z\�b��"ee�M�(��.�m�{s�Y�ꘁҔH2�r������Q�8�q�d�ʭ�rP���U��0+������3����H�(q��'���R�IV��*��U:9z�<��3|.�v�3��+ ì-5��Z*��5��Ii�)��1ur��z& �; �$�c�Z#LmOÎ�p]�L���i]c庫a��a�u���^L��� Ӹ���Qs�wt�;d�
��d�1a舎��z~;K�B߀ߌ� ��n�۱�!�P�>�� 7�V*�k-j�2�+�����ى��ؖ?̸�� ��B|���O�y�DU�7�8�����j�K���QjT�P�Ҫ�N
Բ�eȗ��{���p��G?��Ok+�9W*�#�ak���/RF���$)�NO�Ga.��9��g"nC�{G��*�@�:l͛���h&���m!Ե֝�_OpH�Й��M^�^�lc�nױ�B6�JBۛ�L��)q�Yֆ����W�Y>����W\0�*�\ɲ���	m���M���pRD�IU&�/[s?��5#��}3��f ��9�F�6�jQS4M/4Kϱz;(6���t�m��aP�`�(TF���~
�t�O�s��@̪���)T�[����!��JFLl��P��+�h�0y�~�/*^���- 8���z�Ηy6�vm��wm�IXs�z iP�$)Sd�r 8�eQ��F6i��5�^��'�d�Oe	_���4)�Ш��U*~
��ӯڤÂ��rCLʆ�������'o_͕�����륋�.����H��7���%A��,���F ��N��K�� =߹���9������Й�j��!�|�jf��Fk;�9�C�\�D����g�!��A˳����� #�,뇘��u���[{̂��:S2�'���خ�Kc�H^u}��)��#�\8���!^�vѻv�}�~��'�����@��0#a��(�]TuY�	�����k<s5J8߅��z�z���r�_|2�6$�2�,[+�����������⫊����v�E�ȽT>�-���P��?tVe�3賭���a�cx%���g�h��\̧�3*�K��=�:���f�M��jT~�\����:P�?�G���f��R��9��U�$�P�*���؁��֞��R�Y�W����5gG�����O���u��5� ���Q���l/����%�H�qc��ͪ�C�#��먗��(��_�}��?�x>l�%,G���:��?�p@��6yV&Cõ�^�K�0Ji��eq�hg�F�y٭��F�gwPe�B�T�Il�\Ϫ�㖺���^�.��#2n��m�R���B�
���͠Ǽ�^��!���8��<m9���N&��r?��܌O�'�+i\lu�æ�V���R�"Oz[/G.f�sin!"�rM��tc�{���������@F5����"���a����rFNA���/�����^�,�����{�B�,��W�^1b�^hz����-P8,K�&	_�ת�΃�z�LH���:KHؖ	[�������_z}J�N�u��NA�X�����OX*��I��B��o��e��&�jC?/�SH��n���vP3m.����h`�ⁱ�+���qt	��?�od�vK}�̭2wP*MEh��a�уcޭ/-i=P�NfyZ����H�1|��OX��,��7������u'Ɩw�1ո���Ї�7������?�ԝ���R��y(��� S�p�+D���۟}���}���~=�c����Ѝڳ��|3������ux��W��8-Rj���8���/	[�I(���${� �� �8?�<A�یI$�����p7|�F�@����L�]F�@L �6���w��'vo6�R ˔o�Ӫo6J��-�C{=�C�!Uu���,�uH��h��RR`e˝�%����D*��8F5,���P���Yܳ ǥ�pzF�ך�O^{aVc��,�|0��Tx�47@��4YSu�[U���/��~��z~<9�?[}������J� �
�(�<��F~��m=s"�c7XD�ۻv�d��{9]�o�)����B��m-��o�z��7��f����^��R��x����
Di#3˛�w�{�e8c�O6Q�z6��9����\8�`m��f��Z��:�u1�o�;AXd57�Wp�@�2zeq�6iޛn�ZK�k�4F�\����0���c�o&��ӆ��
7��
�ף���$9��x�T��A��(��n+��1!��^�l�XPiU���}_�� Cb���rc}�Q��p#c7q}�s;�t�����m���L�L0_pG��������� �xt�W�>: U��ˢt�q2_��?c�y��B�S�h��i^������t)
��f�2�&��]    �j��Ӝ�-Jg~�����嬣�n�Dg��JP��@���G�E�gw���]�%N��+��G6�x��^]���Y@�����q�E6���3t'�*�nY�W`���7_�x��")��f�%%�y@�|���,/!8d𷬬��kjF�����J��1��M^�wc4�0_苅9��\é�*���TW��1�j?��"��-V��#U<��;�eOI:����jM=g�E=sO�G� td�̚�|�}YÖ@�(�����Nj��(�=�:'��K�i�#:�6��G�eJ�#~-wFwFp������0�I�*�w�:7�mH#�b�ȫ���z&�|.ws�1�H�v_�_y��_��A;�
�b.�֧��q� �k��Hz�l�k��Ӥ���BhO��F���=��(�Y�/cs�f�d�����L�&��>���|K`2TI������)��I��^VXÑm�g�p���i�xr�Y�կ� ��8���_���2(D�TsQf*([K/2\���f���<����fZ�u"5[���~8��z��@�rt�����gp�Hd�rl�odlU\%��zg�h���2��]��@����L�$GW�����K���B�%����ʿ�с�O��Cw�m���odle�L��B�5 ���#�,����ֲw4���85��3�Z�7W��X)E�*��Qk�Ǫt4^tk2s�<�a��D��&���;�v?�k���f�.�9i>�r�`�������������L���F�PЯ;vn0���'x=8Tͼ�O׫OP���Ǐu�D�xϐ���y�'��Z�n������Y4���'�c�K��֖���W&�����*�������؍�C��� �Ek m��c��(�f4q��*���c�������v	�v�9�B�z�IW!�)�N�?�O�{�\u���}<�w��^�~�q��gn�VnM�>lK5D7W��s��KqzCΡJ_���E��/Q���@H�`䫉��*�!�C��x*�d~;�hw���Z�ď,U��ˢSM���f�W;%)KV����@�K��s)@�P����"����r�!Fxqu����D������Q!�H�M��wY�V������c��GfR��,��h�\�e�l<[ 1��qVr\R�9���������=��v9��%P�f�*�?��J瘩B�ʿ��ɢ퀳<��b�;��&I���EYX��\GBr��p��h���h��y� >�&��/�u������M���ڹa�u��t̺�G$�BT�ćk~��t�*�i5�ALke`�<��8��ɴҷ<�m��5��@b7��G��Ki�Q���9����E�5��������a�l�`����N/[���^Ֆ|�j�\��mt�X��s:�N�H<R(�mz���X��Vȣ���P.�{^.G҆
��g��V?W5(F�m׳.v%�z���O�(���B;�T-��}�������.%�W��E�V�V�Ӄ$��/�<&��տD/?�r�n�(��"�#Am��V�5�NW���8���Q)�CKH5u��lM!Z/ǆ����
��e�I���o�RNV���f�#Z��|9w���3�7MfB��0�[�/�u�S?NYp̧�ʴw���L�eu:�g/�w8f���eO��&I�����/�=��urs��Ԧ`����mf�f���|9] ;)v��O�ﰒL��uM�*B�����_����AT)��?�6�&� �B�oLH����*zKE��U0(%�(�i��Y�G~�P�W�H�^�>Gh��%�k���^��f��	7H�u��|�3)�H�4���_8pdoĚ�b�-!���0:�<6?��t�Oщ���O�\����P^g�_d/��U���Dљ�-�$@J=��ᷖ�������Yt|2Ƽ������Ϗ&�c�����Et99?�߷���	�i��0:����x;��N��3��Ӌ�è�j�\b�#v{�`2�J��&��{c�1�e����8��, ���JH2iS>Sq�UY��	ZK�(�.!��
<���� T��!�K������
5�􆵇
v�ǄS�,�^�(׊�zo��b�x�V�g���p�����[������'���`���������5��)U-ۯ��Q��ÿ��8������y��/zo��`d\��7aZ��~��-��͕m/Гxi�����B;=z�S-�·��Ĝ��O�ǟL�E���,	j{��������(�f�ۺN}?����F}�ܘ���t7��`1j�DϠ��j�_��l �[du�}�F����&���(׊��V�]��&
qXF#�AJ���n��+̆	��Ն=ˑ�(MT��V�l-Ri�5�j)P� A;��6T��y�&Ea���!�Ŗ(�oq �~׫�X�����F��
l��a([�Jn�4�A �a��ٵJ����9}�楪�ݑ���Qkrƨ�j9oX�������#�/����q��e�Mr��Vt�����ṷx{��x2�B��� 8�J�C��%��
�e����ʈ4xO{�v�n *�"�<ݤ ��t��z�<Gi]� ���7.��[K�	�m�� ���v�9t�9�a���!�[��a"����Z���D?qbA@��<07�V?���	�R��!����~���MU��(R���V�Le�[��I����5�v���B��#zy��3�Vu�H%[��Bm�Ќ���xr�At�*�?��Ռ�2������'��%�v�J�.�[�� �PeUv�F6�
�]�W��.<��n��fЉe� vc�# ���b樍�JXc�|3W�A��_/�0ϴ��m��*��$�T���VXnU5�>�UɎ0^Te����G��y��|�|\�t����,��aH��X*;�:־K�������/�fd����Ν�&a���ޢsZf
$^���m�T�r �L����~1�g#�x���ҧ'��cm�-W��_q@˧-R�[��ӎc��Y:0�H�S6U����i%(�WT���������|3]�!p/���=��Vl�D����<�)��.�O,�u�P���|��7�[���d���?;�5d�P{gM�X��c�p��@�3q�ٰ�9F8�֡d����~�^혠�.�C2gaה��T9 NW�u~!w��� <%L`���.[��?e���u+�~��"�ҍ�m?���&
�x�zCzO��E�>�?��<��^!�>�2�e�� :�z�}�dݾ�����1��i�,��!ɾ��O��
��re3؛ч�b���_���^��/.: % ���1�PF���D��;��u�J��IUTr82J�oO�� ���W�������=�d�b��o&��Ǔ�_�a�v㞅f���,��0=�E��`=����7��������}���ۖ����v�#��ܘ<�U��G}�)��������4�R�&�v���]� ���"�6��P_�������9� �]]|�ć%6%�H�������+|�^?�4D��6X�_��[������!C������-��q�gnU�VF[q���yɻa�k!�"���G2a�,x&�3�7��ȥ�@!���Y���k>3I�������\]D	� �M�$��嵪Lx�e����D�7Qk�	���G׮ӯ�og����(h;?���"�-���£$�۝NNN���A]5�U����̨�������/�6Z�zQH�32�櫗���E�T=j)�j< �����Y'��C?} �)�-ѷzu]�	���W`�M�`I<���I� >C�3n��3���dV���~.0��@��۽$�. b�u{r<��z��
̐�I�*��d+s��w\���}�^{���]v�O��i% ?p�a$���i�۶��ҊFW`�����m+�ȥ��W؛��۶�
� Q�Я�.U�P�~r��T�6�	4RM= �DK�㐶ݧ7���޷���l��Y/K�vcH��2��ī��͌7KR?4(.G��7��
�Ἠ˴g���\�6�u%�wZ�C�    aQ�ZZ�uC��d������S� ���0pܥHUǪ��d��u�Jyˡ��,B�M�g�.W�+�seLK����^\ J�fl�dR[�98�>�[��bP(+}�����)���GnU�$���������8�e�AK�����ҿAA����\�ʇ��� N��k�tF�����?Pj�ċ��`��GT�{�0��IK�/��Ta��:��*5��UT�>���Վ����:���u4YނU�����X��-��_t�'k1�|Q������(��6��!��ep��H�?&ŪT5M*��4M��ղ�Qz��_LzT�d>D�{�����{��0TW��;� <`O8��KKpeR͏���NfbR�to��w �VB�� ���9�@&��Dq�޲l4�ֶ̋���]�a>%�gM�W��2�w&�H
w��$Hផe���[���+Go�GOIati�/s1�v���Z�q�L{4�q	P����MR�<�>�F�=�r����TL|��~���������%�5���"Cnq)5�!� ���\qH<�0$��0ek�E�Rs�>"cm�m����w�Q�&WHkr����z4 ����V���a��1�L�������WX��T�L
�����,C��&�Ux�x��$��Kr�>��p|��όr���_@�p�z=>�x���d�<����%E��o�k�8Qj��Y:�A�.�)Y~j=�L�]�s��F�7c�9{d�Z��.��be���7��ے4j Ot���*ϱ��_��m�?	T��y�vq{5yy����-���$G��!2�o�(a���3˲@w4l-
��g#����y�����=��E�&�w�.�7���b�i`1�"bМ�Ə�L��B7�&���P������G��{�0zޒ�4p�c*W�H���Clxw6��f�#o
�2̠mU�������:����V�����!.��CXFh���� ��L4�n�ƿ?����WT�Yi��mT[c3��~�.±�8`��I����ZT��s.���kc��͞T>�+,g12*�K�]*�[�����`�P߂�+5���<��Ϝ��Ak�x����j���L<�D`��!�+��GQRBE�1����D��D��@-fУ0R1����	}��|�o	���+dH�h���*�1��g�q��ef� 0'6����Z;��Z�Y2�򧏫��qe[���Xs9��e)����N𙫺�qBԁ qex����*/�/(�qJYcv���_󍵴C��z�X���̧In���[S.�rW[m���._�myt��2�9Ȗpz�OJ1����띑7�2�o˽79=����H�7�5)D��ކhM�2I�$��� ��1`1NȜ������&��3��>��S�1�x=R#uc��8K��V��ϣX��w�e�b�A�`��#�̦�m0q'��^�~6���Z��IB��2ߠE���h�W3��i/����@�l=gⵧ�5��ɪ���y���,�)U6:ZA}��,[r8�F_Y�hC�|3��K�I�_D��C|~��� ϼA�&�A4`ѷ(G�l���F�Cm��x��5��Y	�MY��Ak]x���%F��N�V۽;�A�0���Cf�>xK�h���*T1A���n;��x��Tm)WRg�
j��VS�E6�*�\�\����-gL�2kGI��0�"bܤ ,�+ϗ���[��6�7S�*p��$zoZ�Ty�/e��ŎtP�7�L��Otϙ��#8��d�&O򾫝f�o7�d���]����i�������Ԟ�6@mQ֪PIAkῪʀE�(�����d"O��ﭧp?��A�v�}�� /��	���@?mk���l˱Xݚhez�k���k+y�I�+!.�gȂE>ET�ǬzG�~�# ;��j��P��������J�XA���[��FJd�y�=�6\�����ȷ��Q���c����]P����N�;ȭ�T�,UmU����:���.#��@Tl��D��k��H�[�Yb�%�4���&�ܡ�ᜟ�z�c�t�y<l-�"�O
��?�V�9e��׭�]��(�p�U�\���W�J�U��>��l�B!�v;��D�g�K
r8]����]TU�vj#,���͠-i�Lb�dI���aP�#|D�X��s��>@�/>��z�X=��8i�hP�
+`����V����C`���1Ri�=�Y򰨋�Ȉ��G��N
CjV0��6��$��?�&��c@˕F���T�o�L�*�5�*��̋}�/B�Xu��M�t�!���ς� %I�HV�K��P@'-��8�:4����Z�n���d ]��n
.j��U�m��#��
����C}�T�������M�O�@+�CPz8�5��`��s[�S^�$$9�^*���F%�g�jL~��Ɓt�ß �O7?�q}���@�-��]�:G�V^�|��
��o�$�#��X���=�UU#�t�7����;.�:zU�$9�^Sve����/��Ԟw#iD��,��1R'��$:&�0��]7��Syxq	�c����/��o���y�5��x_��2�[������?�
π�f�5F�Gl��O'��4(J�E����83����Y��l�˔p`��� ���>(�5�}�^�ʴ�C���P�\U���Vg�P��*�a��4z]\�{��j|��"��\���E�Y7T�Dz"w+�.Z�*�C��������rҽt�@�?9���9��IU�冀��pJ�"�<(�J���^/ؚ˕� �"�?.O�H��E&\�jّ����*~�uw����£o�a��ڿ9�D��@vs3��K\���<��v�9��ܳ����&FT��i��eZ�y�,�0/˺ˬ}�!�,�������7kP���$S��O��&Vr?fʣ�Ŵ�x*ہ/Oå�������sE�x�>�׻Zd��Н8�?JЛ��S}�5u�C�e�x�P��vՊ9m��]?��/���b>�� *�ʕj��qb�:��??f��	wa���|���&��^TMu�`�����>�j,�g�6:Z�����Aq6Iq��G>n���� �G����:���KM���8#u͆-Y�^����J�9�$0�[�	��ChCg'��WW�@�_�ޢ-��ԇ	P��K��a�j�}��a�Z-���Q�'O�4Y!|@���س7��]�n���a(}����xD�Ph�({;(1 ���I�(8
7�fd��>�-��X�JŞ��UX�o�}r 2����k�#_�^\{�@YB}��^���I��'��}Ia��^�;$5�m��߳��ى��&�����8̆��{c����c,J��k��w�xq�qV���t��ȅ�Z:��p��EZm��a�<!Ը�c�����(P�,G�ۢ�J�(UJ��V��1d7^�{�خw �!�\�u��!����=w  ͏�P��v�-[��b���Jh*?���S��S�b
j��7k&8��=�=���]��|	R�X�u�t��>iŊD�^�V* �����4`��5X&Mf�p���c���|OĎ��a�����=�����JÌ{)<�A�x>k`6.�,��Z���
��E6��g䰐���K�$ZƷ�z� ����	o�B� ���ϻ3Y#7F�QZ.��V�5�*�����L���M��@O).[�B+U6�	;��,�_.["��+~>��?K���~��#���|����x�`|��"���������m:��a4��"����Ι��Mo�(���8$n7�F�@��ᘈ���-A1-���j��)����!MT]�(����f�<�e� ː1�ob�0�N��.!��ཏ�F%�;4E�I�Gm�^�\���������ԇ`���?�r*Ve�
J4c� O����oܝ�*����Z+��1����S���@+E�x\��2݇������c�RwP�z�h��p���}��L��+քml]�#��^�6r��>��8�?a������MP��6R��, �y�Ȩ�k�:	S�i�!���M�X{�]7    ��N7�Q�p�������>�~5��{��̒&�=7N\���ŒI�8r4�|�B��y�9{뢜�=�A����v��J��e�R* E9�Ӊp|a�k�+=���QeԚ����:W��%���Q�����^h���U��|ut�D�G\�,s6EJ��[ 7��3ŧE�[a�)�id�둑^���������8JLZQ�[�eP�؟Rת��SZ&�1)�Qq[�Md@���q�2A�u���z�jF{�c�e���5z�l@�H5����*[)�o�e�m��AI��T��K��r����rca�+� M����-�-!����T���vw40ch�x�t�e�/�b�-��OC�Z�@�C%q�؂���\b��,6t�)����=���V���
�V��
.ؠ�򒨥���}V����B�v&��%��;��3����n8D�TLɇ`�����tL�N$�8���u��M�O��J|>ΰ�/�-��B��^�zw]���kG���O�P2 S���/�� ���p��k_�ސ*�*ʴ�u��I7�f��j����FUݤi�$e��)�k����{�B�=�!��2�|�&Q̺�O��S��*�ҼL���\k@�Z�@чs����ө�@�Η3rVd����c@���M���+��B�ReEo9���'J*�f�׽)ئeL+cޝT���K�%y�~y�86�����ve��|�Ί�2�U��*� �6r$e�7f{b�>��~�~vU�(K�25U�J�,'�k�U����I�&)eOb�%{"�ĨE����ѳ�)�D�ߜG��0��TŦW��#�#��k={ `+��)���dHZM�˵��?����׳6 6����Z�FZ�U�r0w�o6�ko,zn�ۡv_��G��26��C������ YH;}��(h�=pd����Q `9�ve&�Gq@�5�� ���CA��}��M�Y��p9�1�����&m�?Nءh|��ҍ!����y�s�wN$�*�e�T�d��7l��<E2s�4�I�z���x��ʋu����с+p��Խ�*�"pUn�wa��^.2����f�y��ƃ�S<��S_EL;���o0*R��/c[Y��LK��Y2`0|o�<��S�<���i�b�	�ȷ-^�U|}r�6���]t}y5����Utt�6:z=>=��8��٩�F�~>����ʅ!��7����!	�:���Ꮫ����\.3C��V��t%~�_�
�"!���bG�j���/j\fU��Y�ZH.ز���!^@b{���Rz�4C�]��������EtyAW�7Gc���q���U'��q=�'Bl������pi�d�
�mV�g�B���??�g��&O�H��oM��P��\�D�]�?�*F��r$���c���9&�sIx�wT}yy�����^�I�&ɪ�j�����%y��7h��*�E�釖���x�P|{ۿ�w?��#i����O��B7V�؇�n��~���[~�5`�?�_��^k-~���)���N�k�,��s8P:0>=����Õ�}��Ӧ	0v�5cVW�)����+K؛3��@��?0� ����pC������p(�DeV�S{e���K�]�M����>�u�/�r޾��j��|��&��fϱ��w�1^WE��v<�yZ�9!*N:*Usu�j$�i�Е%�D
!L-b>����1��F2hw��XB�b颱6L��-�~��������7Wz�oN.�1d��w+]���A��bB��Mx�~û;�̠%�|�>���B��g�~���8���U�T
�aJ��E\4�k��o���GQ*��\)�?Š�z=m��d�o*ߛ:�E�o�#V�2"Zz?0��J�X�����,#�A��ۏ��S���+�N �r�xI�ަ���in�����4RX�G������[�I�1v�M�M���n`��E%��*I�E�z�~��&m��c!��v��0�Rd��A	t99�\��LA��( .T��#Ak��A��������FR�$��~���ӣɫ�o�L[��
҂)��͐�L�� �'8���s	���R[�yޘJ	~�eG�� �7�3 mF7z�~;�^���:ɚ���CZ_ t�5��{����6��Mʸ񘸢#���ͨ��|�T�1S����s,9dRJ߀U���G���u��l}�Q�����Y�0M�u_0���F����/}��#}=��6GV
m��e��ޭh�Sce�?��s+{��C���Y��3�*Ί����rևZ�uS*K�[��L�riv[:}��g;t�\0lj��9�8�ͣ�"�jr}-륭9��]�f�
�5^k�)-s��ʋm22� ��
�o��1���	�[!@_g�`�@A�Pb�� |�s��F�C�����c��9��Cy�g�{G�+;`(ޥr���[��f�Q��ʫ�	� �-?CɁ`m��{&�xx7�<�W����ʆ���f�+����?�p���#��]O;�
w%+ ��
n;��(�����&J��'}��r�>�!ȋ�酾�O.�_?e�2U�DsR�{�g���C��lMeZ�>c�Cf0I��~1](^"����~�D7(���uQW�'Z��,���41:n{�PM�LD��2Jc%`6����{�e�ԋ��?FQ�bޑ�`�ڈ��Z=\Af�N�E��p~J�ҖM��C�gZ�,��٧8\{Δ�EYH�������J�T[��
⌀r�8����:A��6�p��ұ�\h{��O��8E�,�U]4��@9g�N�޷�����v?�],�?KV�~"(�����Mw[����jCfN���bǁ�O�v�٫0�������&���Ȧ1���d��������8�8�N��$�N�y�!x����7��Dp�a���}0p���7�M�	��sg;K�3��8I"x�{�G���T}���P'�fT�&�O��֥42�����nP�ؖ�a*�#��6A��.��
PI@>9�����<�! ��
@���n�,�7��«=m8�ف��̑\[@m@@E�אۻ��^��W�X�//�� �{S-[�!��.�L���(:Za1����x ��� ����+��s$XZ������v��	���9�f���b1�������Z�����왪M[Yi�[�Y��B��$ʪ�w���A��lf[{���
/�⬟������W�m��7�ܮ�~���|qTP�p��s�Y^$C�o[U%9$��WX�+�QT:�KAz���M�Դ�F14:!ؾc@�&@�����-����Ț��oTB�)FVW|_��y��S蒄X��5�jU�U�U~k�V~ئ)$ƌ��Я�r��Z���6qi�h@^��R�}<sp9J��:�-(�Z��ઑ�P�� z�C�G�wt�F̯,�ɝ}Ԓkg	�pM�&��~� xP��6y��V��O`��m�F��J��y��\�k)��|�� ��HbK�ӹNt*G۫n�=0�e���ߛF�r��m�xһ���@���s�ގ	m�������v��u:���;5��ך�?����Ħ\q59ц��ү {!��1kB7�Ǉ�b�ٖ�>��x50�W�����.+ˡ7`[��L1bf�B������6
*�?�?��|]�Y�|�w�wCE&�n�y���W�&��F; �}_��0u�U(a��8w��d����$��G�'N��������"z;���f����뛫���"�FZ����1�r_\E��(���9���af]";=�~3y3���&:�ON�'LRS��o�N�ޟ��YJ�]�ն�^�u^h��2�_�o.� U�20�^��o��^�����˫������4:�RH�lvsg�����Y$ZjFN����UtMT�P�uwD7]�K<�C�����k�/��&��4,M@H���e�HJ���&@>������n;�2�ʁ� �6�RJ�O���vtAm[�c��t�R�3�{�� �y�o.�nN�^��9��Q2�ų�I��@=4L��c�%u�+
�Ǜ�S>?�q����Hq�2��� S��N�	��|D�^�    o�ئc0hT'j�fH�m�D�<G,��	�������>0Eج��,�$ѫ���)����"V*�I#�Z�/�6�M~Z�� ��]xh��tT���%�����1�++�Y ���*���2��XY���zt9�&Kp�ݚU~�|h�62��P���[�<�u@�����L q|ew�p	#||�qP�y[/S��{�?��Ro̺�S�1�D�s�%3T�v�����`d�#�RGs���f��X�u"dv��6����7�>]1#|]q�W��yF\'
�	��4���i,@�21i3�i2@4��#sf�<͆������ ����LzV��ӊ��i�!�[�!�[[�`��(X�	�������H��DR$`%����Qc�rh~��s����*���>ۢcLv/菁|�fǕ7�r�'�M��iS���k�� U�Ajb�\Xv?�DV����Jo�{����~�#���#	� ǧ �N��j�����@~TD����e7��<"	$�2����P�ZI��J����	�b����v�|���R�"�TV�y��t�⊯��9�(.%��w(�>�"��OĲ�d�Q-���4<�V��S0�J��-g�Y�0m�6h�;��;Ɓ��i���b��	�������<�9��=KrP�E���*�ן����f��ⲃ×�w�b&���O{��N���W~2��P�Z�F�Y��_�c%�7�>��X{������N��L%��'ͭ =럨��4��]��{=u=�r���1���iۧ�VV6RX�$ܨ�lj���lzI?f2��g:xLt�e`��qY$���R*77[!Y0+�7竻��k��T�>��9#��B���/[X�vk">�Pe���_ t[�1��~$�@���5���M[c��VJ�)�Ӗ�S���26+�����Q#Y��hi�9�F� ���V�-s(�� ]�׌i��<�� ~D�xa=D΄fIuV����@ l�K_X�)������Ĥ��E{��,I���g��o����2���/��j� q[�����n��w��|��*��
_Íekj�
��O��( �'�����ЮX�E�z���.?I㩔� =��@ώ�N��!7.Ѡ`�j7]��,Ժ���x}��nͳ�|�Ǡ��<�<sѽ j��&r�����~d� 0,XҶ[�1����B"�V��.H�y�+*�y�f@7y�E �!����Z�:�޴� L�݆2�t\�E
�J��d�Ct�G��-l�i���:���k�^}u�z�� ��'j���ۭ�����N�� `��*v���r���{c��6�+���SP���<
~�v|}�b�}E�$�[F�ȵcH��w�b�v�)���ʁ�Q��2�4Z�{��j�i�B��8�9��nQ��7yg�o��;�b�|D\�uO��Rs-7����ƙr��#���h�xr{W���W�x��fm�z�]���:J�e����dJ�	�Q���*nʢ���G�6i�ʱg�-l[6����tgěZmq|6��Ҹ�]�	��Jjd�R��zq>�Z���Hr=�! `F�k�w�s�y	[+yBL; |�[�/�!���r_y1l�����f�h�K�p��Km��v�� �J�$��O�u�ߵg�o��P�5�-�u���յ���ke�FW����x*�v���&ʶ�y�:KҰh�`x]�3| HU1ة?y��l�Qr�c=2�/���01v��d5�����W��Ǘ����E����^+�ih��0x�2�%�_�;ϒ�w0O1[i�X�4+^'� �$�U�%��֨ �����@��o^�!�Wif{8 ��b�u6�e�!(�l��֊�
���l�aZ�c�fr:9������I�UZ�*�h��A��f�R�?��)����-��~E��J�9d��vO�tԕ�`/ b��mW�3��[����a.C
�AD^��/�_��S~�w�Z����S#������2?�K��蝮����a|�����^Əalg�z!����XO���B2�DUY����m��:Qv�� �)�3�P����$T��D����<�h�;X��8-�瑽�â _#����vLn��V_V���%��9����=ڸn�1�?sY���� �����.pـPx�4ioGVH�^�y��Ic@��Tj4.�������.j$7[ZK$��!(:�O����V���=BZ��� �l��C�����������'5�h" G
FE�h�lk�Ŧ�rB����Pd����>����ϖ���}�pQ�����A��a����	�jŰ[Ѥ���朲O�9���-{�7�!��M�ͦ<�(ך&�WP�#�,����^#K�>���a����5�� ކ�^�����G!`�C7;��L���13��eJX��.��K�l�^X&���5w ���mlZ�s t�p��6 >@�V͙!�p|���q��~|)77�'k��i���$+�dk��L�%���Baj\_6�h�]�9k9b#	 GZ�d�� �z���Vx�X���*��:� ��|��4�ׄ���-C׮��\�|��	B�Ak�[u2�0�P����M�^I��mk�#�D���5ߘ������ �%3Y�7W���m ء2D;�ݯc�C
C$���c��7���KJ��qݣ�F��߸�.���	©~y�����$�a�	�mV�>�c��/AW�)�e�p��S�ū�K�49�?�(�/����z6�nƿԦ�¿����mkW.nN> �������.�_z=�0�d�5�O�s���������LV���0GP:@�omd����x<�Z��tW���Y�sJ)�3}i�Ĺ�؋����r2[�Ϭ��{�xb'$�gI/h���PZĩblPn.�|t�m P!��b��q"6��%��iA<nnh`�*����}���&��Ev�V��,2�U��$Q� ��k��Н�j5<��$5d�������k�����&��VN��MY���r���������B��3�e����e�W�����9�K���/2U:EAk����ʅx�)Iu�g@Bb{��pw�%7�3���gC�����d[�GcH3m(ei�	XE��-F4��k�Rι6 �7�
Ha������)0�j�:g���8G�3����R�@��T���%�Bƶ�������A�p�і���*qUeJٶ�R��R�hB��T�@!3�cB|Ҵ�tˁ��ߝ�Mo����w;\U� Oy	Zvӹ7
��)�ɓ<j��JևU�r8fm;�x�	$#(D��(dY�� l�q@B%lmխ�:)`�ߟʌq���2ƨ>��l-��qy:���/fs�����E��r�Bl��D���4ukK]d`ACV��K}R�b�0���渐<K�Ye\h�8qc;��aGoO��Ƨ������<������ �d����>o$�G�������A!1���]ɕ�;W�r��h$�]y靵�K	��D^d��tu���
���*5D����EFg�\�IV��(����F�/��M b��8m�*�ᦾ� �Qy�5�ғ_�~���z0z�n�t��b�$lPҺO����j� ��0}�fu�X�{E-\�su������{ޮ�	tI�&�y�������w���/�ߓv��G �u�M[&��+r���̳��?����6�Fo� P�*���jIIE@!���rl2����9��$��궭(g w��~qo�Hj(�ɽ�a)���$���E
��ؼU�뽏[;�m\����c�Ç����4�s��x��w��q����]P��b�=�̀�)�Y����i���r��=�2���ִA�9�,V����Q�8s��7r��,v�O �������ɬ(�A���.��V�	{�@��|zq��*IB#f��U���]�.������<�g}ڇ?p�
���Dɣ�!�RA@%+��1��g���30Eݷ���k    i�t���g<�U0���d���ֆ��V\�5��+Hu�YQUa$K�֩4��f4`Σ���AE��'x
�1o����%��G����8*U���a��z*P���2�+(H��[�;�;DE����>	B�����+څ^н���)E�ǴwT���hbV�"sI\�U��:RU&�e�;#-53ڋ��-l}�؇F<�����Ŋ[�'GP�V�e@z��20l���n�1zy��&@i~ݢ}������EK��OAr6&b����e� .��6֧N�q-TZ�dE\*�fN�Fs�W\�� `$
��Η�Gž5{C�j��?�ݚ�h��: �
Z+ρ(
�O�3z�'�ݝXp�lm�̤�?�����ׯ�N�k0o��;�e&Tݍd�X��s}�,�U� �G���Mñ!�XۃYZ�&{��iԘ+1��	/s^��G��E�z�(ʑI���r���
p<�"U� �� ��N��{A�O����Z�)%�{��"�K+.��(<��Fhr ��$G���k�,l�ՕB��s��؃�X=��@� ��]Ex�˨��L1$R'u@�H��F��$��JŒ���0����y�x�L�$3̣�5����p<y�@a#��UY��Q�[��.�t46��ZFZ����������Li�y=+����^��>d�ڤJ�ѐ4�K�$��9�;�u�m�
�1i�A	rH��}K�pY���c���6�������Y���"�#1Fa�~���[�vh����fKKj�MI�Yk�T_O�!g��x��� �D����`3 �T�XR�㏥�\��j,6��+8nm�kWIe	�40shUT}�') �릔�wX3M�IW@!Z{�o�?�떦�9��*���1
֕v�T�H�n^���0 � F�l~k�	�gA���� b[~�d#�GA��݌�´���1`u�.�Xa
��|��I(	��5OY���!|0��Ω�a|���SH��N3��^a4�?�J�\�
��`A���F6� 8>J�
ݺ����NN��
�:���Wc�6^�X�T|�|˰�z���k�� ��`��.�,!y���B��cJ��54�qP�f���Q!|��א�Ll�0�"����X�E���w8��s�qG�^2�8���D[���\����Mp��.B�a] ����v#+
	M�r�>v.Y�5sT�����,�)������"N�W'Q��^�FH]B��Ĳ��T���	Y�"��"�g�N�S��Mt�g��3��Y˜)�,T1�:��#�AӇ���������F�Kq�ˎ��_|~����9`0�J��Y���]̺���ku�DoO�#�̫�
���0�dV���&�A�;����_��U���:�0�#��m��k�5�o`�}�O�N��0rV��Brx�r��2n��Sx���]�Z�Gea����5�ߺ��n�̤��^N�6"Z;�Y���/��%MSj��s������]�f� U��_��xJN�Ÿ^-pV��"�Bv���]�˼d�=�i&/��AN���קE/L��e�;�AB W��H7��w�/����9\��,���3,��&��Ԓ��Z���z��W�H8% xƣ���}Jn�DWP�
��Nrpsa��E 2c��@��½><�m0F��N�	r�Ak�E@�Tʍ�=���R���h"�g:�_�nI�{@kzH���ث]6�^�z,����������w�'����"]�3V}��W�J���wT�h��	��x��9=�k@��LN'��������]��
��.��wr���')��U���Ѓ��0�|E��]7 �՞��������p*���4t�M�(��<�gZ��\�B������lZ0�� �s_lAN��ȋ�0�Fo� T�z&HU�)�	8B:B�{�_�k1�D(��<fm�«%|�`]}D��*�J����zYUU�����X��T?��Z��{�}}���c�� ���d^�ޅlmR�eT��$��E.�VK(Z�"n˧��/bQ"���h��{� \����Ȼ�R%� �,VM�dC/ʶ��b�ߪ%��b���:�^u����7d�~yP��뤷l����h�>C2X�
G����'ޥ��w��k�H�@o��{�q�*+|���]�[bvW��wDņhdm��h�?�gS �Z�����m0_�r��!��P��@��P�>&��h�f6G��[�S)->���k;�udP�}O�0�p)�=����VR��T�Ak��|$�HYk"�徸��7�5��$zq��+�l��Is:���n�C���7B��Oz�m֟dտ�MX'²���<@�BGt4�i��Uh�fX���q����
�T����g�c��(�~�{�{J[ $�i!���CJy�7���?��c��|���[}��]��w�����~?�����gjHG���'5��Ȏf���.J�|A{�Is��1���"#�sT�����_��l-���cN�1❗Oч&���nێ��G���>�틩��n�n{�,Aϧ�˴-��h}r/�nr7� }"A���eа��{�Vg�q~� ǣ�Wx;��dK�'D���"��<����= �Rt�u���`�6�߱��#��V�����j3�R�E%�AI��*v�J�s�����e��g��nъHݸ��a�F������g���ד�T99���\__\���N����~
��9F���c%���W*{��ǐq��^B�V��~����\5ʃQ���ܢLL\#&�yy3��0	��t�����Vl���P$��I\�
�±�J���<�d]�p
�u{�	B��N�d���@.�g�z|%5��]�\��@��4KO�j2�<��Z[��l��hr�ùI6P��G?/��&���ے,�S�U0����V�<�wڂ�f7M9�Z?�_�BխQXx��*�)^+��Q>mYКg^��C�)��b>��U
�8�U�CF{�h�c9���Dߦ�j�Z��{�����BR��BFv�!�jf~ }�{�J�"��}||�mvr���{��i��g��gP"��Aњg��Д#
�J���̀�s�*�����\�R���=�J����E�����{�:��i���'�}Z Э��	Y�z��r9u�f��O�.��ݜ��+8����!��3 �K��A���� K�#�>>��j��!M��A��#���L"?�z4]}Z�"d3)@&���֑�T�_�Q�Ɇg��`誒=��8z�^�P�8M�*�ʪ7�J�� c��,�=r�)���s1Wт�]T����4�� ����Y{���a8>��H��}�s���2���B�dwv�8�է:��c�P=`8g��M�#/R��H`
2"XY�AU $�ӝzj����Q�2ɕ�xz_@�w��v�1�7&��*k6Q�5pv��&��L���3�� �y"�����:��4�7"T��ƣ'���i�跪�S@P�i\Ԡr��P�Pv��+�;~���Pl4�Vϖ�y^��:C�RX�8d�(�.�B�яl�뎡� br����w���-����=T�y���/SAT������u�;�C<�������\�gxW�\$Y�
��/�	%�=x4Eo��t[I��=��x�g�r�f�nf��w�gi���
p5�,.�J�cӌl�H_�;�^:S�-�iP�$���%Ä)�i�)?�x*�^ Dw�IR�n�2��ay��HS��#Ɔ�ʌ�G.
g$���]Ƞ��v����s���+O��r�QD�Y���>�� 2GO�c�I�oLW*Z��M�YD�����<�v��Zg���������ZcY.ho~��w1] ���ﺏ,�Y;\���ճ��@��e���c�����ū�������\�α�{���L�EU�a�e+�ij��Ke����F�ԓ[,�D��?�| ��ްn-����O��@�1T��ܹ�L�M���}�p<����ld�F��
73�bD�.�C ��*;`�ѝ����%W�0^̪"��Qq����'lq�fKDP�J��L�    :L��|*HL�M�R6��J�O�vp9�o��?��7�-���?�K�K�&����BC�+���﬍��A2���$�!	�'�"³#2�潫��Z[	�Ҭj��V�l���%:{3� Y�`�q��%-�������k�I�)����Z������4�i���˟���W��G��{ܡ.�k"&�wE����¤���Z�S ZU���$��l؊�.zy���]�����:�4�K�@aQ	g��qG�'1�,ns�`�)D�|�O�@���N��L=U��4�"tTk��R�v�q��ѡM=�S���/fAD���u��%VB�.o}宵xtB�眨��έԛ��U�uR؍��h�;��pYr��K�9������D+&��,i�W{���9~��Ơ��0�D��=��s�+��|�Rc�ᚄ����OϠ03Iw@x�7�2d~(O��'L���D�M7	�����2�]R�����::�����0��,����������Jn�y��3�����D6F�UET)�4� 0DVd ��e0�eKO��äǑ�p�}���Z�nm����`o���%�,�I�w�~� ´�$�I|tN�L������tmK�QF�����.�H�=#$�����h�WX�������ݓ�:��ɬ�M��^y�����hr���<��ǵ.��Ÿ��4I�}ꈈ��"����~�<R;�#.�܏�F��VYTI�Ӵ"5�v�OڗĤ�ѷFπ=��J��U��M����^�^Q�H��R��%,��������|vqy};�!Ш�(u` "g�-֌�z��U�$��Lwz)�`a3�W�d��~?����EF5���&+`�pzv~	��&g���γ�,��"�QgɁ[�H�u��c��I:����܍~<B�����	8QG���l%%*ա<�� ��칊�TYqm�|�$K�ś㗔��(뢝��G�{X��n8`$�,�.|J3�4�9r$M�� ��� kZ�?�+Gg�hCS>5�Ң�,�e��cbL[a�x��D�v�D]�&K��	"[���u<��ֈZx�$���Fח�ΎG����ݓs�.�Ƹ�;hM��ެ�U1��|���Q�������W�(�c0`~� T�$�J�a�\+�%+�'\��p���腪@����ܒ�V���#��v�--� _#��!��J�f�Z��K���+�,�Zr��c����R���gX���R�\瀙b�J��]��ܮ�d��`X$��NI�#��)�U�FV3�7S�;�m�[�os��+�3�+�$RQ�V�?�\3��[��Ԟt�#���b�|�m�O�!.T��X`�l)W��-3�/geRUe8m��֔�wK�0Bo�l+�7���CM��N<o�O	�m�:U�e�6�c�u���U�ֈcr9xI�^>�;qp*3����K�p]���u���3a5�|HɊWs~y濘�((NZ4*p�������S���COQx�O��GJ�]݄�a������ty1斊͙��s�s��;~�n�0������U2���e�:��u�����ז��I����G� �!�'��?fю�G��ߞ~8�CVm�D*ӴH�1��h�*�&W��v9(�j�^�JI0����h$i���\kQyJ'o���.ʪ�����8�EQ�dR�-������g�s�I3�����������d��3Bٕ��Ȳ]�:I���v��'簄����|CX�	��n*aC�d�p����8'�����SB 8��]�ْ���r���V�=�}���Qrf0H��Ǫ�kl�n&��q8��#���H 3b#{u��Zd��`�9��Ûh(����[I3	]����S�S�@SB��A��Ȃ&������.��"�,͋jd�lk�/��b	5@�(Rh�fBbU��a�ީ4�^65Gk@rsij���Ӌ��Y����b��g׳�����}���?��^o4υ��a�u'�,��{M5��~�\n��%P�ь��C�~����&y�J56�t���hI�
J�݅��F3�O�����9����l{����� �&�e�ֈ��5`�p���BPRAnF����w�����/�,�b��'I�
�$Ţ�|�<����K�(N��Q��"!q�6a�X��k\.���V_ �
Y`s)W������?�3LuJ�P����� ����z}Id���r��`WeUx��<��꬘��Km`�"B`�:1�)�:Q�nk�a9>�����^V&�/e?��\���0�RiF#�����Z98W���c�>��W�h�a,a9MBa۞?"oa,>����[%���[�<� ��U�[X��k:׷�߫ӛ�و�d~7O���D��J��.׫��������.95��7��?��0ix%y�y�js�HPS�/}*i�h+W'l�2�KǌO:����A ���M�M3�2�4l@i;������~���tr2�pz"��"�/T��q%[���=�<�������i�9���g:&MGtm�>�X�XWo�h���>�~xu���v�s�%�W"t���0�&[k� 0ʯΕ���J��X��DK)�o�_�.���������k�($UQ��Z�I�����C>�K�	E�����چ�[��l�����:��i
��Ś�L�b�o�s�\~}����˾�`/5��8MI�k���g,�{oO��1���U*P��lrO[x��pA�q7�*��/pu�Fx�"�d&�˯��{aF���M�1>#��ߖ#�ʺf$YNNE�M[m�!��4������ζg@�\�O�����s�q9VD��ʓ19��oRUx�u�$x:�c���S���Vć:��Q�~�`A����0Z*b㪄ơC��@"�劜��y*omP�q�:x|G�����`p�=s2G��_�����AU�E���"v��j��%�+?[�56/n��ɺ��X���ΝW`�KX�H����}�U���.�.r��?̂��Z�yV�E>�k���Bn�tޜ���Σ)'bz ]REyxt���ۂR���9VZ$@�,-t��GH��3T���6FК)���f���<:9�Y ����Y\~Zn]��A��������ک~�9dE&lБ;`�eEE1H=8RU�@�#������g�!���p���bI���~KO>J�_��������?L\��Zi��F�i07f4��(����4�����9VQ �f�$ZV�+˲�ʉ�;����o@��ֺ5,u���o��oX%�ES5�,��{���1�"��-[��@�5V�����B�n�	���F���[}ݶ@<x�kY�j0$��C��o֘�I��9\���`�;��|���>��c,C8#u�-��P0R?��+�!�ՍKP "z�W��s1/����_́Oq��_t�!\Qw�培ԺӉF�~%B$�@�H�v����xe�5:��b�G�<k�6c��2��􅍏�D��L��a%=͞����ԗ�E	�N�*�9@��Q��g?�J��H̜)xB��y��s��f;Ex��pO7��㉦"���h�Ŀ�#2j�(���)uo��EY�̊fL�"�\-��p����7�kxc�@������~�@\�����.m�k��ق��5:��q�D,� ���lͥ��".M��܅c-�	7��a�q0��D�gy��o[O@�.��A4��H?����D�_v��$l���=لNj���(0́Ym/��Ht��r���rc��*Љ��Vi:�k�3ŷUb\�d��3��'�/�{��,Hā싉[nZf�ǳ�Lg'uf�-p�H�7̡��X��쀠��~����|v=p�p���;��b褹ּ�<J�HYSE� �<�*@�������\�r���������U�#���<�������1C�p�-4��PD�g�
a�>헆bd'r��0�_1Y$w��^k>�7�ORX��M:�Y�.��Oφs���`E^�8�	b���d�N����8�?,^�/�M�Wnߌ�;���B��iU]�K�1Uq��!o�����~���o�zXn>�� _�    ��qy���@�L��s�l�ފw0[N�N1���_���=���@�&����Hc�JD.��#�!@`�p�A�(&gt�R�����[u�}��+6��S4�8�j��+�s�������������&���dhh-�+��E����_��ɴi?�u���8@��vI��F:.ZX���E*�d������I��O�d����T�qС��#�Ӱ0'�9+�L�Qt3;ƿQM�%r���Y]�e62�4�$B�HV�CD�׏/�~��Ch�}=�\R���IP:\T�eq������ �T�V&F|�6]ߧ˔(�Л�%a���FDwpv�=�N���\�&|w��,���\a�8���O͒���1������t��2��u�ˀu�D��;z�
�ox/�NT7�y`��_!����D��.����¤\���/��w�:h
:- �4�m�پ��[L�i�_]_�������������ɯ�A�"��X�	�BEK=�T�j6�X����)����Wg��7���	Ti�M8����i��,���z�����	2^�-�C���7�C����]�R4�4�[`��I��W�\'
��ȇ ��������e|��UK�a] �a����8�����% NP��pH��,.P:�(�4NJ�	�`�������27	����
L�"p�vB��Q���.�W�k��[����fF3�T+�j@C\���:��
�9l���v�ll��qY {�����Z?�����f��h���X��hvv;���7����%4�oϣ����"�R�������%
n09���s�t��Ȫ0"[-��pey��3ǹ6��t�6��)bd
�5�S^�3&����N?o'��b�j\��NP��&>���)̋OE�5���bU������x��H��I��%���4�������2`w��i�3g��k��|Mb$��d�02j�9p�-�Q�0���k�^H�r��@Zv�w)���/`,��}@t��vb��):)愔�Ŵ��"���;.F�+h�Ǒ�~-� �]{�<<��=���uYD�0�8��w����|�>�9�,&�:\X�Eϩ��������53��q �2�$�7 !�g�'���=�x�D��7�G�e�y�K��P��oHDbi���.�F���������+bx4q話Pqu����Y�,����׍�N��G��x�0�^��^�ӄ+v�$���h��������6 #�Ay��fʨ�@0�a0&�؍:��,�ɵ7�F�gt%��jҺ.�,av��ν�Y���`J�[T�]"��;c��4-�aq�_��Օ�^ KndSDfg��Q�4[�Jaև��)�X�?V�����3��<�r�؏M�N�+ĵ���ٻ-k��/��[G����O�8�"��
7�3���Sq֣�v �y�wD,���r��Ԉ��{'i�b���kN�X"��L�?��*��*�,ӊ��e�L��>�A.#�r���>+�4��
Z��"���;U��Y�<�y���;<[�\=�����|~��5*mk�&NUZ�X&�W���o��k��a��=O��7E�%���}E/.��C�M�9�wAr�iT����h�oz�;� (���ܒ�����k�s����]�)^�pح�W��P5V��;u�P��ZCId�:�Do~�r�?���sܢ�D���VJ��"��)�<|�?c�oYT�L�z���:_L�5�o�Ù=��lYz�s��:�:�d'���vꜨ��;sc��7j��Pr!We���>�Z+�f�H�N�!%U<
,�(v8����MSG���[T_H��f�_��Z�\�GW�~`����$x��d|i��!-�Z�YP#Ti�"���
�PW�a_��5&��"�Mu�ЦNi�q�	�_��:��&�����d��V�I,#���r��PE������#C���j,eJ�/˦�&�Q���j"<sz�U[��δ��J���(h-3ݮ��LÚ����is�S��ϲ���\HlA��;�P5��˙��AHN|�G]f-�4/�p�x��wuU�fD��OiS�+��1G�I����4����US#<|�׹�P0W��*�Ц���%�&�)r�L��Aŷ��z��Nq:
���v�X�mV$[ R3��$,4ٚg~h�B�c����6��P�s���7�ݟ�ϯ�O�H3�)w���`)�V?yU'��N�jC$��j	��KQ�68����8�g���^.����6`Ӥ�#V��+�6�t"�]���p8��GD�S�57d���r#�*�ݷR3�Y7����=�Z|;����a�E�⣳�	�$�Z� �V���r�F}��S�{��Ff�ЭdO՘��	?�$�HEm�1�g>I�7�@�85�ȵc�.'�p�):�Y����(��u�D����_e=
�X�n��Gl֡���l]��;���m�x�(���=G/����Tj�1e+�e]�Y�kjA���$�`G���}���2�U�����u6��e���v�u1Ayeľy@>��6,���V�^���@��\��?��ȷ���D9f��y�� �� �(��D����)ٚ����.>��[�c�"y��#���!�8�������?ĂpN��C�E�5�Q��(�du�
Zk������HI��L���v �>�w�@���_��.�g�`��(7�եƶ�?#�A\y��ә:u.0Ђg�c��n�|�,?��)F���Q��b�����\�F܀�W�­�_Q_袱E�۟{��ޑ%���JB�	B�#G"ü(�"� ���Mr�x��.�� k;�lPxT�`�B��5F����AJvV��*p�VOQ���D��,I}�Z0L泴�`��S8�z{V�z��6o�n�����������j�R��h�ە��g�d>v+-��"�L:��7p]���'�jf�> *�Gl�����=�D�����	��p*���كǹ�"��`^C��d�<z,\�pyx璹�~����
�d����e�	�� ��4ڬ%�0Êl��*[�w�U��u�#�����U�|���Yq1���0�:X?����j��6��~�;7��r�ҧ�f��Ϗ}y����������7`E�uGFڸ|�C���~ټ��y����:�;֤'A,�E�j2�C�W{�xe�ȧE�
�bA<R��T|���;���� �4��>��T����X�៪���U�OOV�O���8̬�]_g����h�ZN>�{�8Z>��s8 d�U�����lc��dSLLryPϠKڬi�5f��l��a���v#5i(!��)��ޞ��� �jK1�k�y�O�ܹ�n5 Z�*D�,���������i|�N����]����<��vpM����Oǈ|���)H�͓�B"%��(NR����ª�x��~��`aF���KǁƐ�*@[e X��u�F��$�ဩ��f��N��,�.�͗#�ٖa��U���3mb�4�2<��lF'-'�4{�a�Ӥ��!��܎�LX���
r͏��[̞�1@2.x���G��{#1��� ��>qb��~�{�Gk��=<���s��p���\�'�/����Z1ڭm�t	�`Ĝ����_~cGV�Gm]黻��E��Lr��K�lY��Zy���s<|��Lb��:���]�4M�񗴗Wݓ�������;�{���PƓz�E�F:9V+C�B%�Å{~?jX��lGw�Q�GB~���A��eJQ���+�b�Y�Y
�t���_�&m҂)�-����?/���$�+����5<�5^z_Ŭ������+ڵ�dq����ۻ]=�Sz'OK2���Y�.�c����Q�D�'	)�С�;q�'f�hi4BL�?y�ԇ�E���y7��IS��J�8�����dhM��-����<K]�F�Vsamm�Q贘��ø�k�=C�f��r��\�p]�Iď�{���5�}���u�4�8`&ufB9�Go�hN���J7KJ#8
TVA /l��frơ�!�kd��wT�8C+r��b~Z!L�Ӥʃ��ߨ�4ւl�    D�����SHO���v����)���[-��ݬ�'
�7�*U���Ӵ�#�Q+?�8Rr�F$�/,E1�P��1N����@N����ɱ�_�<�s�S��M����n�jd��jrk��6�Q[h⹌��0�;��Ϻ��3n㢝K����c�8�r�Yз:S�G��W&G���)�*��&J�<N�Wt��QD�O9b�i(��E�nd�\7b��M���������↗ֳA�b�T�7�qt�i�C��_kDc���U6���qn�C�<)�oY^h�"E�J�^b�Y>�yd�?ٷ �OX
K+��06����
�j�L�0����B��ZJV�&)&:1�N�`��B��,�!:�����:�s^���۔agR��.�S�o�t�<s3j��{8��Ȣ��v�m�d0�J�>�����!8ʊ*; �'��~�|[�5٠��X���?1��8��Oono��N&�"WU���+l����&���;�8�	�Dhf0�7�ִ�h�<���wcH~���xmY�#ݷ�6�߸�b���i���HA���ⴻѻ��`��3T�W�{И3�R�mY�k���1yt$�w����ˀ���������*��gY��k4�m��X�6���"�z0s�XE6��}�`�{M�ԓ�_�B~q'�ƴ~$�v2�q�5��(j����%���5�I�cu�́V�dQ���������xE��2�3�A�@Z&F�-�'�O��^�go粮�v�;E�!�p�Q6Ak��6�AZj����ʄ.��9��\��k�QC���S��<��$jHd�oFc[�������4z[F�5�`!�d�����{]����>*.
6�݂5FI�"͕$n��� ���Sw�imC�p�-���mٝ�jd�Xw[�v:�~��ոM:Ȕ�'�w.��P?�J�jd�9�㪺�Қ���a�- 9a��rD����	,���2��eZ g�x��2��"S Ԥ%sϙ�r���#�	�g�-FL��m��Ɔ�Rs5��"��^��S#@Ek�ۄ��+�j���(#�eY%�3���^� ��R�c-vo8�t���g��4¢X[ 0
�a[e2�_zM�v�ǐݳ��{�d������,G�0� [���!�[�[.j��E������U��
?�z��w滢��0E�\�{6���DYX]4}V�ʙgIƉ5E�ٹ�<К?C:�N
`qxof�R�>�t2uw���$�O�s�,�p�I`=��f摭��>�w�����tTo��h���x�?٥4��V��?iڍ'�����\ENMDU�&i����K�	}��`"
��.�2�mdk�xkSe�0��d���5���uu���?��N5�y �
zX*�-(�@ȷ{�,�)��0]�G|&��A��K�C�q���g8h�I���J�e�A���]L��؍7 ����2��2��(ߵ,v�c�b(��U��?���r�`,^�w��	Z�/^���K��|�0DO�Ԙ%���?��l{ (C�ݿ����k��@ڛ��ݗ��ۏ��PA&�$�6�v�+����?<S�L�X�{m3���S�!��G���yA���:���������8I�K��	v��1�
i�ەA7Va�����skJŁ�U���3��B��OˡiQ�:1=%j���[�"��)pb�(Ӫ�p�Z{�eM*�Сj��4�ɚ�n��#��i$L���#Z��'�v�c6�w|�\������Ϊ`8Hފ��q��J{�.(�ʉ'��4�6l/#D�����lL�,t)��
c���#Z� ���!%�$��6���p��.Ф��QͱsK->���o50�@t�2�tⴱ���,��;�T�Q�������;x,��8��[L;�'�t�C�}����g|�i����`51Sz�3��2A����,1<p#Y���S9������}��dFp3bDO�:y{�5b4����X#�fa��aݛ-�k�ޝ{k=��U�e���^k&TCEx�U�0��������C�����77�i]��/o���<N����NK�0���6pz�¦D``?����^	�#{S�w$l ^�{�,�2���SSY%dPv�f��~�z�!���).!%8�E ���`"��Y2�47�'Ҕz^�&�҆��(��I�t�F�d�����p����?5�=4a�dk)�k�,�\햦h_�>�^��UJbW7��D�p��߃�κs5���_���'�))�B#��:���Y	�����C��g�o�t��^��w�:Ŕ�ˤu�+���^e�S�t�O�nѽ��ٳ�Tݮ�m���{�T��~k��s��-"aq�oꐌ��t���ҕ
�ۺ,G�˶V^w��	�+�����!θ%mR�PZQ�p";}�1$2�����)̳җ�
[u��������-����Ң|9�ǽ��h ��v�ZJbT�C` *l{��i�Jï��4����Ɛ��B���.�����>��u�h����[*O| b�ZI��&k&V����~�W!1����!nο]X�fo�q�8q�����?cA�
kz�fd���R�Fɇ�*�|�3��E�m�PP,^O�'):n��~�� �|�)��\c�H!5'��MZ#E�=�ӳ��ev��zyfc�������o]/5;���ϑ��X5�y��u޶zu�`�����̤`7�閻���j�\0��
�.����A��Y��7{���v �LL�W:��靨���{smƜ��1�Wv���$�YL]���I68�ek��Q6yn��hq����4�!���k_(�J�3,_���̃xΡ�5�4V�k\Y�jp�P+���M��5y11x4�� ^r��&����7�ʾ��7�C*�����V�	3:�'3�cl%��(�	ڦ�p�>@���zR�U�A���/>Ls�e��X��$�&R����d٤� � o-�]��M��!����S��XY���3�&�S��fĭ�(�L���p��2-��r4�8A?��,J��g�o&brk�Uv���r�Ԁ���w��Pr����i�^�P�м��*U� �֢�YO���P&A�:a�	6��|�^v
��&C&�xp�M�ʤ��(a|D#��X�ѥ��̠Ԁ"���⣖�lx�A�W�&�kfv}|z��<��<�y�r<Y�6>}�ߪ���"y���^G��~(�ܲ�Es�UJ��%���t�H��:�w���O+Og�By�O�P�Ɔx4����3�[��e�%�7��|P6cP�*��Ɬ�&uN����|��dd^\FW�g�^֙6S�
�*0d�p|�U)�(<#���O,a�+"���M�����QILLy�G^	A��v5F�����6~���NU9c� _8g����N�a��ͬ;^O~��NIu��9�	�����=�!xʅħμ�(WP��rII��K��&&��$�^E�U�L+��cH2%���ʖ�����l����W�`�ǲk��@M�)r|�whs9��0��n�1�Ju���Ng48�~�F�������2͛p ��`�JN|i؋\�/����@��F�������]\SxD�&�~�L��薤xX�h�h�Z����N�e>U5m�h�Xn>{
 �
̨Y}%�Q0�_X�-+��	�,��LE/���%O�Pn��|����R�j�e��	��A�$y�� �h�ڥ�����⩰��i���8I���' OL��T���>�p0h.�)�L�c��.�~��jf�XP*��?����D���~����~�;~Y�M\zn����A����4=�&L}<m��m����1���K��@�-$�������5+e4�(���!�5<b'�I�:x��6ľ_�O/��8��X���N�4.�z�SRY�iZy�I�!�4/��C��Gٻ��_����
���������wq� ��/�ֽ�� 6kʜ���m5��^I�[�լ��F�rTB�Co�Ky�.���K��`�o�-a��ק�3o@�NI6L������WS�.�� +d���m8��@[��ffV�(`���L��jǧ�԰`
��r�n�����?}� >    y^���� �@|�jvB;�=?������ŀ�d���<標8���ݙpd��o̬Q,b�1�@5D�0� k	ED�-v�__����W^F�3p�E�����'Zj�dB� ��`�:�\�o�l'��l�_(���,u���t�)	T�L�a���
�����D�BZ/\��
67t>Kw�b\�`�rJ*I�ƺd[uN�u	1�z�i�U����r��⨂vje����7A�U8X}���x��NݨF���F�w89��T��_�F���m0{�g�7��9���Y��`�B��۟��h�����7s/����K�VM��ꗪ�g�_nM!����l_=b>c?�;����i ��Xc��� ��0^<�Z��m�B�G��m�j��2����#L�Sq�ud,�� M����>efj߬9A1`�n�*��/�f�_}�CT��r&����I�	��GC��7��RC㧊���|�թ�[$�4�Uz�Vlj�uf9�P�Ol�����/��8:�����Dח'קo��o��'�7��I夺������sc�M�_Y#�v3 �R�y!�ߙ���^=k1�$)_��؆��"Q�H���P�RC�=��
Z��2	�R�s��hEՄP�8D5dM��	M'A�̆U�Y?B�n ^'l<�p-ѕ�7��rQ�(Ë1h�����vTя����%�Њ�,3�a`��z:󩦤?P+�	4�u��#��2GO�ZS�i�8�ȃ���	�3�w���T����B~G���;8�YU��akT���D���S���c+T/�p,bcf���4<A����#Ŏ�7�h�@,�zs^La�ǈad�����
Z�2�*�8�%8{X�Ud�����C�)�É��<'�<�m���[����b�`t���'��8_
�;"������v,���Z����F�5t���� /�a�ɏl���L;n5|�+�+�7�r�zo����&Ί&���V�eוFn��O˝߿;��Ή��Oѽ��Mœ� #ͼs�n��\]p�a����Pk��\�L%�-jⵤ��6�Ccf��Bi�ņ��-;�1>#3B�҇��;���f�|���j���FM�^k ��T��n��O�"W��N�$����s�f��G�Z)E���ۑɕ��Wp\��oR���?p�n�֦����W��X���16��1��p�m�l��ݮ�@Bl�t,}���5�<�z���r��$!Ca���h�_N�|j�Y�#Yj��1�w?K��o�8/����2�l�j&�v�R��/ϣ�����a�׳��K���H�ȉ����b7
G��g�O�~=mu_�0�4�ϔ���2?MUM4����Z2g�/��J�i�Yi��u�u(��ه%�-��Fwia�iPRP��vv���X*���8-��fGY�	�&�RuMUj_<T�Wv�Br	����|�^���ב�o��sO���&�5"O��N����옞����\�L(�����5�x��=$ܪ�Wqtb��O"�A�V��|�n=��Q��U�W�Z�.���6�`�<��S}3��F�j�}X��A�����
���Z=�j;��Ơ$�`ʤ((Ċ�p;�D�*yR�(��|Yx��n��E[������hۈ�d8�c�v�5l$_z�g9�E��t".��R���(B�HR��4Wh`&ޅ
��R�C�T��LSZ� �Wu�[Wl��+3�� �Q�*���D��2�i#3��UmjLe�
�goO/F4#c��۹�dN��g.���q�I^$M��(� �V�z,ufr�=�q����2�&�˝�4�p}P E�灥`��%����>��={.���=hY���<�Uo3ES'. �،�s�=�|�Y�)Y���xX���AR�F���dڢ��y(Q����y�]��������G�x����=.�GY5&�>|��1똻HK2�m�n�(��D��&)��*r�M�mN�"�q�%n�G�&�ۥTTz\�T1����+����԰�n��#���r�ɛ�هSzJ"5(b��������Ȓ&�<�.&�u��T1i��D���u��Џc��+�����w˅���$(!Ҽ[�v�����彞d�X�Ж�j��|���v��қ���P�3�*�ZTU�ʠ�{��h�BM�}��3',�i6����gA'S�.B�Sd�Z�HS��js�!��L�����~eH�^�U3�^Ȧ�`y��b���M]ڌ*l�ҿ��q�Z+�R�[��>/�<bP��/����ӳq����"��L��GbkCa`�Ȍ�i��]'�;��fy���to/I"�D��cXp��^�axT��D�,����.�=8�3��4Uut�b*R˜��tT�YVj��#8ޒ4-��(��NO��|��"�,���ftL��$u�SIݭʪ��gT�}�v��28K=.�X�b�3��Uӡ��2oPt|�ބ�"
�A$[�%�'�2��y�ⰶV`є��uS�@)�#gژ���t��'<���X˂��w���J��H�l��P���VQ�р��W
���@������H��>wcď`!ېfz��5/�.�1dnZo>�j9x�m5Ǯc�t_R]Q'�8�Bh�;�]	��=YT��hak �4��.�-6Q�s@+EPo�?�u����cRt7<zDk����I�X���D��5��{�-Q��a@4�,0F��2Qw/H)�5��r=�5�C��N
����g[+?X_�Y�����|�o4��l�(F�P���:k@	�M��4T��2s*&|�1Cq�]�#�~=���VN��E�Uʊ��Dۧh��k����Z�]�% 1b��L��ab"���q�b�|'��r*`�ˇ�Ϝy�2�`����('R�$�x�(�2�&.stV�	8̅%T�}�	�P#�K� �&�QV<,����S���GW	z�t����)�(�A��f�7����Y,_(� j�, ����*մ�D�*�����ڵ4
b�ꌈ$1���3��In�j��y���6򱳒Fl��.J�ߓ����ΰؓe*s'�{3�=��x���Aa�$�a�z��^�UY�E�?�:]^���=i\���'��mp�=߹�!q�#$է�~�=�n������-�	�NK�Յ�z�X�hg?$��=������b���Qy!Qùp�~$�)�C����w���y��B����^	�6!,`�b��Q��8|�3r�c��\x� 1�	ŀ5�l-<�IS��\o�K�����U�E3���&��-,4��њ@*�Te~b/h͵�@����{VO�%���g8�&!��T�\봡��"~0����#re��I���i�C��#�IZ1��7�s�t������E�&>�UЪ�<�I%I:�v��K�6��L���X���>J���L�����C!c�k���N��h�;��z^PE���T���4�adj�E�Դ�V�/�F`?��/2����������rQ�f}��leF�dH���RB���5�t���薢�/����:}_$iGuܕCcz���2��],R�,J�-'���I��|r�����[[�n����%�Zz�Tb(Z�q� 8,�lm|�,{3f�g��~�,|����� �f�e���"��_܏Q�Ƒ�O.����;�mi������;7,b���a�t�ޘ�F�*6n�X�O��5�����#Ƭa>�'����cL�J�Ҳ(U�m�����BG+�Q�����|mT�nF쵇�_�	�|n�Φ&��w_U��k���*­���M0胱�7��ъ$̶���hp��&UpX(+gcu���l^�ͳ��C?~���^!�o���(p�<"�	��^g�1�9����MΛb�<�F��m-� ���}��&<��#��+c�s���I��X�u�ۆˍP�����¸��#a\��79,gg�~`�y�J��=D�ʲ�;Z3��3��b�RbX���|�$А�>_��jBA!�K���#	J��3��H_� hM��#LCS4$����j�3��;�����,�a
��		t_���ᢩF    Fb[��I��A�a��!��WΞ�V�p>x#M��d7��[�àH�F+n��v{߭zo����8)�&�-��&�$K0B���H7�K�����}�@[=�<!s?�>���*)+��rd�Ϋ$�)��a4l
����|~z=c�##ʵ�M�j�+,Pzw�����a��>N��"�h��)N���/lR�������j����������YY��������˿��]�:U,)�TJy~y{��������m�nX[��y�m�s�^�#:��TR�o�_�̼a��o֯�r�I1&5>&pa���cj=_lZ]��ǜ�����\?��/�9<�:�(j�ݓ�a+\p� �G@U��3�E�2o�i�N��7��ͳ,�D����!�f�M?�<����2?;������ B�82,`�h����խ�Ӱ��t��w���H�ŲhD�p26��K-R�L�fpC���!���,fi��br���d8��d�;w�t�Cݞ�Ӵ%�(�/D\H�89�۟�Mؗ�gIUAt�o-�4�S�	�(�ZK&I6��C���֞�;���x;.�H��d�ؠoL���'�h-g���`���^��X����?�}l���/�gY]f��I����9Q��L��q��-���୘p��`�LS4�4	V5S���a7�gcdY��:x7������*0���������Jx���԰�+$cD`��e=ش�U+0�N+�T\��%����Q1v�D[���䕾�5��H���*�UZ�y�J�֪�=����-�5C�����'r�۵WK���0������=ϊ�p�h��פ&��N9��Uy i�g����6.����/H���\�
����{��W�Z}w_Iq��~vC�0{�D�`R&I��Ak��*_����)+�t���f˓��cw�r\4�nL���||Ce!�pm�����La��.Н6Eyb��1rh"�X��{��0m������k;k-�=���ie��r�f���Ӵʋp�^k�T1�jUZ:c��OFV�����b d� ��+#��e'I@��aB8�\�/f���R��dY\�yY��dkSc�X�CӮ���h|w�BE�N\�(��--F(�u\'u]��kհ4gӨZG�kSF��Db&�X���������3)�i��*�Q#�����	H���A� 里�>��N
snAcQ�/,I&���A�D��k�zI��ti�u�6���e}��Pݏ{����c�u�eS~GK\Y�kr���rI������T:Ǣф�wLE�M�Xc�dl�c�BA��$�Є�j���+��[�A��PY�;!�r�GTe�	��.'�P#x9���-��!�8jg����BZZAkNY:���������p�-�@�`�6*��~Dh�z��y�gl��<�	��V��i�H��b*��v̄��~���E�iר����u5�#?���0�[��etng2��	����s��%p����y�j�,vS�i=8�E�
�Da��-�G�,��ٕǭr2_��0`��d����X��_�6�u�Ū�b�j��?�Zk%��,�oz@�&u$������
�)0�\��֖�����!:���v+�5����Ӕi�	����]Z1�� ��jh{��",��v��y=�t���tKwkY�%
bb�H8�v��l�����ZBMl������� ���^��kc$��_n�q�U�_-��l`�D�*�{]2	MGt4�����oʟw�����s%>c��L���n�ym�ܐy��Q��h�����0y��M�Ιm��㬩�B�N�z"�'Ϸ8aD��ẺY��x~�� �j���^�4�)���	@]d��Q�î')���I��yLJ3Y����.�q���D����#��`0�~�d�}��r�7(5�"����4��Śi���́q�a���Q�bS%�g�������|`���EAPWr�Z��	t�ԱҀW����^��?;���'��4�+_�r�A�,�`�00�tj_ע{��B�s�j�Yx�k�Î��X�0[i��X3�-r;�œ�����'����D$��]�mh㒳���'
��<Ca��Aa=/'W�1"MF�#/h�~8���_w/
f/XI�d3�T��������$�s�YW���š+�̒q��e��8Z��i��)��%DMt׀c��<il����Y��R��x�����*G>n@�s����~�0U������\eո'�6(�Vx�S?��^������}<��,�y����p�U/��8t	��jS�'ZQF!����ju���LX.3R��*C���륯����NH�;�x5p�Q���<�+Hg�
[x4��|6?j�h��5�U���)p�e�Ƌdb��x�i�n'�E�h���%G3"��"������Ԫe�i����"=װD�F�\�T��ke�]텩EMS��lR/W8������~�t�����ECNӄ�q���e 'tƺ�Rz�J:�OXcM0�3߄A�z�<�w3T]/�����k-+�[ߚ'�-�3*���V�X�^������z�'���GzeZ���T��y�G��׆��%;���D����@���T+o����5O�y��*��d�=�i�ā���Y���sB�P:�WyF �:.����D>q��� ��^o8��*/���4k�����(�5G�Q��zv��2:��x��{]���^#�4������2��[[T��՜��SS�%���e�F�2L��@E��W8�����[k%*�a����		�O�����#X]O�N=�|��h�F�zxw��*-���"z񚔌�:�z]><���e��L�s���~?�3_U�p���l�����,����0"^�M?�V��/�����af���RF���8���m��u
V��)}rJp�=@���$ٵ	�3�`e��M0����N��Uf�2�h�2��*��q��Iӛ�˔��oE��1;ES�A5h-�g��:�Ow��O���~�������ױŽ����'_�1�zLb�tr�����f`��]��c�# ����*�)E�/�'�qm�M�g��|�7_��{^�J�,'5e}/���Jz�ٻ�(������Y�x���F���(x7�g��i���ȏ��5x���jvvy�`���XKy85չ!��L�	\j3��\cB!��2������r�D< ��+
����x������gq\h�|����(|��^�O.ON����_\�H0ć䩪Ź�$��%y^���B��:<S�''��x� G�0Y7<�_FLi(����E)gd=�DC�Wy��h*3��L�)N��*���n(�0%}A�if��Ԉ�#��?�Q���ƳMe���C��2B
�u>2����$�fi����sD�1���u8h�IK�JY|�n�o���~�Q�5��㢪�L�[C�Xʽir��X7�:΢����������0����,,1��i,5�!��X�6Zn�:����w�o7�ϡ\������i��z�3�v���ұ^^�:k�(�_1�ɡX��k>�x�~�D�P5B��������𩌫l���������p4XN��)���Ɍ���z7f��8z˹yQ���w"�H*D1�dܩv�ER�+�)���� �%.�����l0FfEF��f���.����t5��0m^��SpAV�d2��*��*�&0�{�v}�Ɋ�pP�  �.�{���a<��?���t���+���I��edo�
'��e}))/I������f1�l�?�b��6ö�tf��q��9���Q��h.$�Yڵ�s�I�]����Ti݋/����5Ԝq��������-�c�W䙎_A��8�hI:��P]"�����P¶�jg	 �ƛn��#��ΔY�hޡ&b��^��Kwcd��s�sԔ�I�,��)��W��	�8�S2o�G_"t�!mi��pp.�ج�T�w�Zd ��}�g��	C=��ѽ|�l��Ik+l ^-|d�����    ��9�r#�a+���#������E�YPu��-N��PD̀C]s��a��0ժx�RI�[6*<o����Q�L��~����s�ffmb������Ɗ��A-9�iv;�
|ߣ[o�ӽ�������;`DO}���r���^KQh]�I5��3R쪒�LjS�HGMY��[Iu���(���;
I<�1��~'Q�a�N|\�[����E~y�5���KUVaTB�VI�G��E�)��z�
��J�z����V��*�dK\[h�g�����E�4���B^��Z�ד6�T%ZB&k�B6D�Ŗ,�~g3�|&�,e�"�0�N�O8�_��(�JU7���������ԅA���i��A�G`\8��L�@|�l�>�	MCD�]��˝�[B�Y:=�����(�z��q����ak�b���������}�p]�c��'��2�4��:Z��M��#D�;|^4�O�p<Xu^��]��AF��&c�@8 %�%�Q	�����ŀt[�LCȷ�>*C,��%l�<ܔ^���n�nL�tw���fJO�-��4I��{�1fc�};���L|��d�@pJ��(F����A��!iK~����>��妯��8�G6ؿ�0��B�������`�L~"��'H�ؘ´�Б�%�#��-�e	������/��u���<�Y̮��Z��>�#!��*���6z2�N�W
����(Ry\X�8�|�|�����@������(I�4	��~�f4*��[5��l��G)ʳ����������#�=�붳�5;�x��<L��L�~��ȩ�oЪ����*�e�VR^y�|n�-�0��y�����bi�������?m���HUt�zP��j�A��q	F���8��^URxHU������v5�t�Q!��#� ��*�� �Q����ɧ�A���uљ%�aZWd4Hz8��c%�����OU-vA����]鴒5KG
߾u�!��5�1�����ޘC�fY�.M���>���.�Vה�t�� ��ǈ���4�[��pFOd�k��,I*��
1��,3UdOAk���N'����^Pj�y,�\��"��L��!��$"^tO��d�dHrB��]]��K�|j��M�dYx�y�+X)b�'�:�3Flv�N,�&��ǽ�|�������e�)I�l�w'�|׭�nƺ`�M��e�M��*�ȓ����^ϯ=v,�{Ԫ*�o8�HW�]$�1m��/뉗�(9����7cC�bZxI< �&1uqX���7��!:��T��ظ�z�:���d����^!���ևa	��K���G�"���&z}}|�yw�?����8<��E�27�y	j<jȰSy�d�4P�q�̾:���Ư�N�i@����;`���?�|�`��(�&n��rz��%u��k��A|]�e�*�&	��MS�Ix{���8�u��{��@����=����{"�����}dB/.�&�![A�C����FKLݞ��g��P`�
�Qa�g7ਗ#cv�Mi�4�|ri�%F_2EC�Ɋ����HiE�<03��=0��b�I�X��^%ݺ����Qfgg�8���o��׈(��&��3E�*��"(����#KX���,Y��l��B�E���79�ک��TxKz�E���d�4�EC�ˏ���%i��"��%���1̤&O'So$O�5/�
���ɋ̶ߡ��(�H�)'����Ӣ	\���*��
U�WO�fi�}�zP�0^����S�uz2?�Ubj��JӴ��{��|v׽c�ﶄZ%[�TӺ�k�f�6ՈK�{��$�A�n��F>���.�ޤB��c���pЫf�}��uP�ܤSBۺ�����3��㡗�[g~�%��+����4 ��M�o��>X��*�|� 8�2+lj�$<e��T+���R쎡O�=3���ۺ<q���ͽ��8l5�s����v�L����NiUc�<u�o���&��-���qϩy�^��s&�b�sS��~{\�Q��k�+��.h�R\���hJ��ۯ�O�<vD�@x&á#O/X����^�h��m5S9�^���R�Kr��f^�V�!)�i���5�J�a�۫�A�s�i�<,=F��0�a�_�۔�_
�9_-?uw��Lj���u<9�A��c�"�ୄtZ,����PA4Rdy�G{�iHR�k�Ҽ�`f&��na��!vs��d�&�C090%��p�(cӠ�c��ь.u�5�v�K����E濍*�VV��
n����9g���_��{�1K1��/H�Y;Q�|L �:#^�k��N�
��姍�v����ݘs}M*���G� ��S%��`���d��G��v��ǟ�mgBl*0��~�ꕽh	�?����-F�m�W�Z��{b}��Q���!�Ql#�bﰺ��u�&��G�8*UX�[�և���Z�	x+�Q��&K�:<�S�������d���T��<�>�ݴc�]Zw�r�Zi�d	�k�Rtg�+�=�0>�4��3s���!0�mޤ>�!l,�p �Os�Z�mIv�R(7���&V*������7�c�at�Veԓ`,�����mQD,<�2b*��:;�l+�}��&�V��#��x�./��M�{_�(v���&2�
�u�?��w/�e�Ē��,�t���8|u�@;�],�b �����F�[���׿18Y:�� #[ÕD�ռG�zz�U�c��0��IY�����G$�%�nR��_����u����U�u̲&IB��k����N���1{��O�~�	\
�ēK�'�j#�on��)�A�߶�,2�����_�!#��".��ۣ�e�#T.���L(�|��s�Ov���R�W/�9���J��f�/������ʃ�\��99�L����%fi|Po�	@>��N���.k9�3�����r0��n��>LP��v����p	U58IDk=8Hrs�l��	���8�sP\4��S�< ��q'�����C94�g�o1~x99o��/��1��Q��u���y:l59�L+�u",�}0(N�.�)��~n��� c��X�2��
�X�e�3�Y�#�iR�m�u1����}kUm��Asg<{&f�t���le$�_�Fbǅ�T��ȸ���T�?.��UTf5=�����v5A����(�*
���*k��Fv���`2ZH��3�0QV.�O�ӧV��j�m���|�+ʳ�8+�\J�5OtQ��J�O��[f�r&-?���d��5�Wd��V�7|�y;����������5O�RT�����a��b��`�=�7<|����;�zZ@������+SM����U����z��߲�!�7=�
�\��T=8�Dk�RoJ��w4?,7�c�Pt<K��-5�S1�wS��$-;��Y398?u'�1�ia�H�KZ�pX��IG�z�g7�i욥1�bk��]�Dkӓ��?��p�ptv1�������o1�B�V�Q�^R����d��o��W
N|���kZL��t�'^��?�+�_km	������Ξ�:����ֺnSI}A40T)`��x��Z��ÈN���>��6R!�M��.��UN~�������O����V��^��׈cӼ�ɹ!�DR����G�3lǤ4�]#M�~�ٲ�#Yf��=U�ߎJu2�*}PO�Zk�5��%+�i�I~�B�]��
0H���R��Z�y��=�����_"����i����#n8k��b�SB��&,��Xm�ˀ��T�5n�:C���
������ݣL���,�zV����C�w4��,Q�\fl�8ٿB:�]���ۚ�-�n��ޕc�DFa;%�ҧ>za���i�N�'F3#�_2e�4�%K��DRAo���Y��^R(R%V���'�I�B�y������:��$�2�x����1��=C�87I��#���Fc3�ԓ��N�g,QΦ���JJ���_#Zz��Zu�;8����@��7�o~cԦ�Xh]h#����S�_e���k�8��R���W��2    أ�����Aԏ�8�����*|��n:D�CLX4C��2F����B��;:�1�	 �C*���{�	���-��	փl,��\KV�J��(�3�j���
�,�[�D����(���ł���P��ߙ����p�,e�,F�cZ�@W�n��uu���ē�:j����a2߶V#���䚈�4��˟u����f~}1C͞`Sf;N��tP ��m�e����p�<�e�(��Â�<թX.��¿`l�&+zV�v,w�!�lIuc�� qbn�aZp ^�V���*�%��Z�WӸpF-���?�QV�IZE�W�K����
ںw�},����]~|����B�#~���ii��0�xu���|j����M/T�C|��,�,'��M��ժ��e��㻭��q�Ɉ�iY1<���~���"����܁}��F�\���U=Ѷ�.��x�q5�:0=Xo�`��G�BE��ZNd֚t�I���Y²�T��,=�[�����~��l�(G��֢F��p����D��*m��^��Ҝx�ł3+��h�D!���(�K0��Cm�2�Gނk��Ro�*I�˃���<D�g��!p�t����F����9N�^Bc|45ȹ6�C�y�d�������%���Κ���Λ�4��"�d0�:Z��˂C�uVs�Ҩx�=����1��FOX��X�������e�*�D%z\L�XUuV�ޥgh׬�J�I{���a;�ك����*���&�i�V�!�G���g���
�;�,N�.�~��H_f"�,@��ہ�c�1��t�c�.�c%8�ōۇ�Q�+j��M�j�>�=\�%Rdc͕
mS��(��X�j<?�9ef������k��[��y�£5C/)/�4ɭ�AT�*��\V����j�|�5�H+�^7�6w48�rMvc|��Ø����1�-f�8�`/qpp�y�"~@kI�l~�ӱ3�"���p�#�����;8خ�G"���f`�j�a��������ݱj�����7R��堐COy�%3�^92a9L����OW3��"c�jV*��q���/�*%�҄s:\��ITa43��G�~�� ����#Bm�2����㵭�ގ�fk�lr,����Uq��V.�1Zz��;�w��L�޾~�&�S�*~f�d��%��z�=d����,�bP������u�~ɍ�c��KYC���2q�����+Z��%&2�y�l�.�{[K�	�P�WB����;B��@ʜ:���*'��2��V�\���V�+s#�486�1��&��I����ڰ/d�^d6�SӚk� ��1a�S�0Ag��Q�;�+;?����^^|������|v|:?��;bYcW���c��爀)����:����2"6*���yt��0T0z���_|����T��Hs�c���1���Z�[��=�B�+�B��X��g��T��1E�|�a<���ϒ� �aX�ꄞc�0�Q�n7��=�s��?l���8����U$��%�#�|���R������l�+�o�Lu��YeqJ<&T7���na*Ö�����o�@c�]�"I�S�X��H!���g�;^P&�I��Q�F-ee4��zrV�,���|�V/Q�c���� Ћ@|v��� �lQS��B��O����f��{i֤�`��ʔ���9N�5���#�|�4$Z�`�w�,��ϟp�5��w���.ִ��'����Up�'6���J��Ia8��~>�p>��۹��U�K`�=�ګ�Ȫjdnj��4I��V\7����J���I6�P���f@8m?�u�I�u�E"B5!ܸ���w��� 8�en�Sl�КRty�n�KU��ِ�#"*$[s�՟��d�qZ���z|�/Mۚ>�I���>� �E^���$�(�{>�Ff���l��8�^A0�F�i6�k,k����Gɛ�&�s��<��UhE
�Qϭח��y#�t;^k^ξ(_Pz��r������ֲi�߹��� uF�
��)$H��e�A�d"��̥��P��^�Z1$�Ch&A7�)`/Qԟ�@Md�P���o����h��!�5@vЀ��SE�d�+C(N��fM�hz��AUK�+���C�u+8��e3�E���hwާ�goO/����Q�|'�4UӴ��qY�CS��s���[&
�b���_\�sS#oYg�Jn07����<7�*��y���{`�`6�#���+��wg���Y�?6�b��~����8���
)y��H³��$�s��[�Ǚ�՘�!`��;i����s?Z��R��g�ߚ�߼,F��<��{\�U���y(�h����F)eK�c�¢E�
�@�����Wi�<�<�K��\�i�g�s�0�u�s���N�����@����I��D8
���}D�n���Z|b�r����:ի�:o���7%�شf�i��#\Q�:,�bp�+��fC�~	�^�?YL�d��M[��h�i�6p	�Ɗu�Kb��)������o7����a�T��4V^'��s�V޹�R�HJ��v���_ͭ��4��{�@2�m,�8N�n��q��B�|�,�aF?I��D�hru�L��7hpQf}@��>s�����zE�>G� w�C�ћ�pF`BO/f�7S�	��y$�X��&�$Υ5Vd� �_u˅9�+��ѝ���S7�F��:(l	�	�	�E�sw�"�l��ކ9>���̽1�Ⱦ���,�A2D���l���<�
���dS���(M�ߗ9-�Pw���|^���I�3�F(��[	���ڸ0�?,Zs	� *����!�V���`��G�_t�~��D;�]��OR/�-�s�ӿ�kgN���������,�
 &f����*z�|��	e��)+�l���ɛ��+���x��~�ln͆��YM���$�F���S�D�������-?������of׳��g��ߟ͂��I<8�Jd}�j9��	�-��5#���g�'����"O�h����yb�����u<�Rm6Hׯ�	lp��������i���$��X��8dklѢ84�Ş��F��y�:�-K���jь����r;�꿇^A$��,I�|�|5U�Ԧe9q�nd�ˑY�˝��%�e��s_테+�j������a��A��"���-�����!��&���OX>�m1+��<x���`z{������6�OɊv����.���/�hQ�T��:O$A�:�-��3�����3�d�gVk�M�&N󮲕S�������t۰:�d V�	ڞ.c�m0��D�.����n9�A��a�5����*�<�l�+�=.���u�Ibt��=���ͪo���2�:P��[��%7�뺆����B� ��~pv����&�C�b��		�Q����jZ�+/��}e�ͬB�r�B3�	2��q�#n�a�0�Aܡ�����.Zl�m}u�9��Wp�贠�#HL�Da�ꌄ�з�:"�J�K�Y<��}� ��Бŀ��q�E�1�e5�կ��<1O6.E��՟a!��/�-�U^�S�����Sorڙ�h�yqM:�rn�c�/E�<0|�/�X�Ŀ@����˶��)�E\�U��� ���$g�)��������/�׻�O���&z�y��d��m�S8��-��������?�ڙI�'XD��դg�ts������U��[U�������hG�)�z�+�J[m�I*{UI���D�n�Vk\� ��z!�Ac�\�Ji�I L+�x�򷯗lX�����L��)3�$��GZ�n�J7K�d*W���C<����@��}o��!���-R���&�2��[m���n]�*Nз�D�1�:M�|�V{�Vyk;�`!+Gc?:ܭ���#ߺ�R�5���`���}�5�I5UR���([D��y��a։���eU�9 =�_��am݂?��8�`��lZ4S/ɶ��r��ٵ,Ď��2�����Z.w��w���:�o�? 0��·|��g�ןI��cIi5��c[3ƒ7���D��I�|��p]&���    }��^��cו쯯�K�#)����ZC���N��w[^tREyh�c�������(�Vc���qQZ�풺�6g��ެ�S�������?E�f
����y��Ǉ�����{�ì�ͼ�\MT�sGs"+`*�rjc�Y�4�a[�I�UY��3cV|��z��A��{ɔ�y��9/��|`�������'GQ21(�ԗ5-hp�oN�W�i�+�X	�M䰧Vmِ<Dۦe>�m͜�Y����)H�`߽�?�Q�3��1��sD�R	^i���H���;h��&q=���*өa�Á{�Sh2����g�ʑ��N!en^(��"��\�ӓ��o���Ri��5c� ����!^|S}k�پ'��nM�X>n����(��x��ޠP^R�^�jM���)�Br� �+,ʲ���E�פ�Ą`�pX[�G���c}�1T��ɩ\^S�V��|(5-_Qۯ]��fI�q�5In=�U�*� �碜}�J�}%K�*BQ���yk.9n�2�{�*�'�hJ�����S�`P�T�?>�f�Qaī9+�
?M��І��O� RJȊ�֨3of+�$Nf��G�Kĳf&cՅ�._4~�Yyx(z-H>������׭�$jS�Ҫ���O�:<�b��{��S�U>�$��f����e]ո�"i�����7��w�����u1� F�F|I�:5��5U]�ƙnm$��棞��+�	�s)�`P3X9�Df�"�X�=��u�/�v�4�tح�u�7���s���cUv^��ub�f}OP#X�o���v��x{tqx��C'hg��U�S���-��X%䫧`l��0c��q�,�<��#VR{ Ιf��|!���R�ns�*ϭ�3��{�;�Ğh�=�q�̭۟��ɑ
;�K-/'V�k�T�;6��8q�l!q<|�����/��ӫ��������ɕ��o�2S��b��>���k��#� FX�`��D�ٶ%m�<:O.��3���/T���Z�A6a&��'L���yl�c*+����2�лޔ`���M���S8�Xp.�a��k��ޚ�=k�a�b�>kN~�B�M�ʦ�9��d ��!T��F�u��+��Z>g�H�'LW�2�sm�|��fl�mF��g��o1����5a�7I���:T9�$æ`5L�l���G�ܼ縯m�*��&sp�Dƽ&.Ҵ�U�6s�����*�4A
,8!,}'��0�j�"�Tsa�q�Np"b���̎�}�O,C��G�ۊ݅n�e��j�#�{"�{R,���O���~l�����톬1Y	�S�3ʈ��Q�Κ���菶�W���:3���libu�>\�,a����b�j9�V������|f��� ����1�����[�?Y�}-s
���O�_���&������������[o��9�qߦuR��խ�f����WgT�M+#f1�B�85\(�`�[Tn�f�[go��
�}�?��+����
g�S׼O��y���bʹ[}��J�P)�
�uQ���M�_�e^z���D����@N&�fcO����{](�;���F41��������m��67e�Z�^�S0��3�?�~�Q��i�%��}'�R��,W�}l���;Q7�y�bt8�S������Mj��fJ�ٛ�#�X6���{s1ׇ�oiZ]��?��/���uh���*@�u'��Ų޸�����Zk������MJN��n���\H�q��ɽ���@F��I�p�uk����({¨!���<\�7=
�:�n���~^s��t���~=��Z���8�{>HSw�N��ˢL�ӓ%	���+�e�����`�%r���?�F�W������;؈C�%��aެl���֖-δ���'�{�J{�\�a���*����d�����V�9C:&�H>9��)Aɴ� �Zh��no=�d�)yìqe��J���fy�'�4el4|j�Q=�h`ЩOC�@c)نpÅk=��N�S��2�i�������������"
��mZ��Ըmk�k����d��ݢyDh�w�(�${�r%��rx�I�����;N��.} hm*���G�E��!rcD'�����T-��r��t��'ze��t��k#O��ƣ�	�]�yQL�ڵ֣QW��j-L�k�}*���6�D@w��;�RL�J�0���#��+:+'��F[�a���w�"3�teIs̪s�X�J�8�$I�.���i�`e:#�X)��!0	3TIȏ����������k���V� k�6o�V穲���s1�}uv���r	K~���_�/ϣ+��WW��2�Y���ߢ%����b�6B*k���Uty]�~��_��'W77�w��������������K<7#R%A̽�;��ɓ�yPl�6�-��	�Y�PA4�
zt]�\�z��X���ήΣ���nߝ�{��?��8ғ��o��߯7��xy;�K��軫�e�/���"�'�ֲ��r����J�jv�P�!9�U�rJ�6%�;�2��?w���}^�NK"MҲ	{�[��!�8a���̎����WX�a(:���׼�#��~��[�?,� R��6<ݍ�OB�\<�7��٦s¯#4�������(%/��EH�on4���B)j�j���Z%���}�<M�n�J�2L���j�F��x����@��/�3��$~ �MT�!���p2�$��y����/1��'¥�r�7��Zdy;�rTk�Ձq�U�Z�y$k���c�?�VY��A�(F�I�%+ԑ_nC���z����7� lVpp�$�A���ߕ�wFo ���U���O�@`V*�(�c�;ji$/�K݋b@K��	���3z���|�F�Y"j�����o����`��C��q�2�og\Y�c��ΌҶ͈��
,������x.7U�R+��f�M��W����}g����%a	�&�֊-�O���j�P|�I�n�{N��
8z��x�cm~^4��ԭ�����b�^h�;?,j(�}�����̣߮����a��R�"���
�	QO����N��¤���1�)�Nq�,�������:��/�xی"
����FQ����5�<���째�8$ޟ�+��L1�k'U�7-)}��ų�ۄ�
0i9d[u�3iO3�z��~I8�n��ȱ�/������ݭ�#g���S�1��dj��&j���2�g�
?r{G�Ł�_ �p���P=�4S��,�BBG�0�f�7���A#N�ѧ��l0��������eg���9�m���o_����d<I�����]75ƛ$�Cj�"�mޠU,��$I��=̱4�8.`��~�}�t�hl����J��;`S"q]�
5������M+�$��D+��(�ʍ��$�CLN��S�����+vD�U׿�=M��F�8��"	BrA�X�n�I=��d�$Z���ۓ�Km�-gA�F�3�LQ^�Ȁ,e�Gdo�Ǹɳ ��`T���6�yq�ǿ�rߑ�H(��~`D6 XR6�Im���Q w���_ѩ�m�)� �������w����ցn����4�aOXgz�ߙ ����t���g
ƙ����u��/mw���W�p������G'I��E�-Rk�req���s�'"J�M��ҢE�W	�f��"�,� ǯM��T��Z��sI�m<�~|�����8hO!�ƋL�	j��Mf�q��z�Y�K%�c����z�J�0�G5��_��`��tJ�\¶���`��E�K�9���u����a��E��F�!M&fI�*8C�VM�ʝ,+Q2�c
�hP6e�֑ń�冈��=`��1V�A���h�����»+Rv����`i� }�9a����b�з��=�o���I]���)��������FmWi���A���˲n���~��$�����[.������ľr���{Y��Q����#i��L�mҤӃ���Mj_��\б�E���0H$N<���a�|k'"��H�T��8״|GB�,x�z*jE`����i��n��j� o�0mJW�w��ϲ��^�`���y5`k�ėp    �w�l`�i�RC+�%4������ΆrbTH��E>Z��C�`Yl-4N��1�n��%��{�x%}v�_���ԕr��Ү"g���x�0f�t5 X�nԓO�>�A5鮙��N���獶gi��Sd���	�T��?_��`�U0])B"�ь'ӵ��Z;c���u$Ӟ��a��K�|u;�Θ��L�����l��kϕĉp�g�Z�Nq�t�
3��o����:�'��'�n>�q1'M^��0Z�X�[�3)�X���DS�Y'�?�W�P�*��.M8�q���o��O�P��������E�U��i[Mm^i͒$�k30�w>Kt0%dEuy^O�'��=:��h�0����߅��#�,�eK*�y��S/̶��dv�z�R,	JKkSl�g��u�p��β�fX��n��<6ԥAZ���/��&<B�t�VKUdų٣.Ċ����ՠӇ��e��fP7V���ϗ��6����gK0�V[���n��Ҍ$�n٣B)����nʼ�F�n���3�4)?`@k?�2���{������%	�����B:	j���:�YhU�S�R����yw�$�U�1 MMdR�:**as';��H�q�z�d�V�|:��]uHyb�a����q��t�E8�T��&id���*H��l�߹��kR6����rq�c��W�D{��>�_�Bu)�M�}8䮥�[� ���=�]�3�>��{�Ĉl+{5z{־�EPaO7����0�i~�����
�- C�w�v���-�D�����Q�\���p/5���sZ�CC�&�oL�?�S'��x4ڸj��ϕ����嫫��h�����6{躕e�s7�vv#$�M^��I�l��� �@p����mŌ���[��&��?U�eKJRɟE��g��*bo�)�ٕͱT��2�Y��>���#hZ�ݢ	�����fY�/�{���7���Ezr��r���o�ղ<���	r�~k+E�;+R�����r�ˌ�v�s#�\�+Cb8��H�"�WFe�e���U�*��T`E6�G5Rڷ��<F�����²j�m���BTcE�#e1�>�jl#~,z���GD��,�n_�I*�K��AA;�0D�[T�?���U���<�,�6A�/C����0,����Q�����'��+8*� ����W�e�B��</C2X��偊��L���ݢ�����O
j2�OT�ټM}��<�BE���"�`Ş�̥��:BqLh��獗��6�োp2tc3�|�������+O���-L��<W=*rbh<0������>�iY��}V͓d4��x����%�,Njp��pT��_t�����j��Z7�UX�;$2
�7���|^��;�����)A��u�f�ծZ��R7�zv��'�B$�f�l�N�~=R%�>����'�PQ�zá	��� w�|��0��Ӹ�� �O�E�n+���M��]GY�aď����ak�sN��|��?�-��8���e��Ix�x�E�K��캣
��=w��Mh����_���3Υ��C�ry��׵�o�Th�^�C���c,=����1�L����N����7��ie�m���	Hk�(_X�U歁��j�3˧G�$33<�=���2��@�k>l���iR�����(���gќ�`�D�,U"��1]4����me\��@�X�(���۫�SmԐ�@���85���I����pI��t�c=LHA��O;�6����i
ZS�>��~�θ+�\yҎWd���������8�TA|eT↍|
�\`�[*>w����~V��Ta;�3���˅�{��D82�hz�wpd;�����f���h}�rI�7�H.���0�{���V٣��o+�o��ϱ��[?��!8�Ǌ1y#e";��H�bbrrlM�$��
��C}ޜ�\����C�%��GLɳ9R�VY߯�8�-r���R�$�s�{��WMК�8~DV��×�o��3#�r7Mh���b�PaY��[�_S��K��Șk"�-�h#�' R��'�5�T����'�<>	K�&�j?=����_���^X���b�7��ۍnrs��j`�BevE�>Z��#A��E^���zX�#�.���j�Q���L3� ���G�%�i�d�:�#�����M��BIk�`
�#h%���ӗ�~|�D�̛��]� ��Q�LH�;+�H��E���J�n;��5W����E0p�	X%�c�wv���G����V�h�7���&��.Z#%`�x��P�6A@�J�f2q|U��Y�W��ag<��άp��1����/�d��厰(X��4�R�����#g���5�Sy5֚at��4�t�0���t?�.��@�$�qF }H��A���Y��:�8��Y߯0d5� �0��h�"�!F���(:���Q��n�ݤ�r�:/4�8�67� ?�����P#��V�����d�?�u}gݐ��Э<qY�3?M��N��˷�`�&�O�O(kSd���6jU6;�XƚX�?ogov1��َ��5�[?�}�N��!ܘw�$]'0�jw<�&S���=o�@�
�%�k(�aBz���!�m���E�{��FR{��u���L�p����
k�TlG?	e�2�8���Ȱ���m���3���Y&>j��S΃�<���#_#���s�Z�����
�����O��0���l�qyf>�u~/��i��w��g,R{�fm^7�����R�6����2��e�����Ҍ/6k�����%��f$�d�L���Bh�o���H�z���DXĶ6�z�	Е0�,��fF�z�=�^���gXj;| �'���'���G.nt�u��C��ݫH1��娺WUiQ����jD�'W�����AX^}e�<�����ԏe;z��3'ʌΗ�B'I��W�-�-le�B�V\���6�^����OܚJ$j�<"�^(�1��uooz�oCE��&�LS�~d;l���x�gЫ5wj����L?#/��g�}Z�H�ƱRn��)��(��xg����Y�J��\��L|"�����9�CD�#�/�"*�����C�U��7���vMhU�l~���p���	X��#�O�N��Y+;� �U�Z;�mf7cV�^���F�+aN�o��6a|לk�,�Ӛ��փY�Ƒa(FM}�YU~*>��}�V�+�\Jd�"uk3Vn�2*�UM�{{G��R�Ѭ0��6I��? K	���`Y����}���t�v	��48���Ɉ	��C���s_�ĺ�k�vq�������[�s��N��!m[�4�e�Tu��_��ʚ���Rgj펮JUQŞa�cc���dn|^&[T���ۂ	I�`1)�t���I�|�{�u������2�w`\O2�y�P�=O-C������tf{�e�v�9�l��Fo�X�7�^/N�|ɭ���ډ�IR�yKW���_b�'�5�;@{ypp|��eEp�}�H���i�!��WK��Oo�_+Ҫ�(ސ떶OV����A�5M�Ʈ��SUp�*u8����	z����d��#8D"��Str�G�_�O,T����u��.�*�T���Z��[�L�N��9��ݮ��w�pW�A`��s�·/3�����6���W�'�(�arw7w��&Z;X��`���ӫ���.n�I�����������)����m%gd�X�7"�y�6 ,F7q5Z��*�}���U��W���f0I��O�>��J)=��=PZ��G{~���T"cg[��_6.��,cxיw����$�a�T���'�'��P�S��t�,�ő��	\@g�p����&C�ZbC��� �����\�P��}�[b���z�r�_Q҄�(�YT>Z�ZgU`���h����6��_�>s�����Eo���"��*���׭�~����V���>0�lי���Hk��խY��=�R�W5���5:	��&ގ�:18�&�ld��n�g��#` �'�ͬ�gR�����Gt����Tf(���^����~��DbĢ�1��� Y  ��5�ze�C�-z�n�}� t4'��1��f��>�iJao�b�-z�h�0ٕ��
b�M�8�|�[�IX��Fǖjm�ʏ�Ԇg0-�
T<l�9Y�.���֕X�ZW
<M=�1՗!���������Lv�.,V��0��rb��?��ү)m��������1̈�����g�;GS�OW	���q��{���r �颋:��C^��s�p�x�PJ�E�dU�C���2�L�aw�`�p[���<r�+a��jM{1Y�{��P�I*�iH�q��b�Y�	��q֦�s�ڴ��ng7p�?���:,���}�\=`���Џ�a�Ta�Z^�`1�J��J�ZF��eVLt׶�!����!j�91�c��|e�*D�z�9++�"i��4��.
d�����̵|&X���t�۫�B�9F>\��
Y�u8$����\�֪M� H��%!���aR6wZ��@<��Q��E���0[>HJ�f�ݞ#��|fJ[�y-�����Y��c����t��)jd�M�䣽�2�A�%�Cck�Ęߛ���FfRp��+[�@�D�
!0A�*58�襙�~��t����r{�vq�Z��a�@��<	�%�U�]�NS�lT�2*��^�	��mv?v��j��J����=!��?L|�r*���x{q������)R�ь��gO��q
�,o�~�E=q[I�骳�����L���g.�%�3����	���Y��rk!���)�`䆈�"��G��|�}��I͓#n"^4f~�o�+Һ�;rG љ5�-����x�/R�����/�e����`j=�(��T�o��*�j��Oα'W�������8��            x�3�LO-J������ O�            x������ � �         .  x�u�M��6���)|��%�w�L�E	�,482������dr�\#EY�(zg�߳[|UlW��W�x\]�����񛪔�����#����0�`�����;�a����;�`�C���f�k7M�Ы�[�	��� $w��I��A���"�ޣ���y7�x����^���N������Bj����1�Q����������J��F>� zx ��lZ������v����nVm���gt��F2���2��I�~a���[%דou��H�pޙ!�	����K�8�yW	����ը�龎t盖S�<���8O��L�4��'�ӟ��f��/5��7ayF7p��%G���F��.N9��+�|��{����ƺ��/9�*PH�Dɧ@E$�=
�����\�qP��T��n �i�$Ap1ĭENd����;�Bo���7������n#�>Q�FJ�Ą7	Q����]������^cmg(V��a]g.V��ɚ�T���4�>�~:����3�
��N�v����RAN3$c)"ۙH�c)�{����]�;�Y�B0<�7�� y�x2�MF{��rr>�~2g{UUh(��7I�T�dFB1�ڊ�H$$y8-�Ѿ�ܬ�����ARv� Cv�=?�"B�r� '�a�mk�è��FNiFo!O��UIC��&���B֛�$'����L��Ӎ��B%�tS r$�tC NDGPt3 ���ڛ�B;q��A��ɼi���`^��VÓ�5q�����݇�ѕ�I��.h�O�^���
Ex�Z��U��j!	�QP-w�>���
����.��l^�w@�̿��	����ݬ��<ΏѴfPuhH��{RIE�X!S%!�f!�*���"N��N���Z�[̵��Sy�o�o�t>����J� r�T:_I͉~��0v���mwt�ƪ:����V��DK/ɡ<�ӮKrQ.����KRQM������.�4�]kTM���^��*Ee�w1V��8�\\��2S�R�\*��t�թ���К��<r��^�Epd;q���L�w�\������r0�oĠN0�n�DU`(4܈p�l���i�l��Eա�^����/�
�(*ㅫ ����"V����Vr�uW�/tɬC'yʡ����}� 2�	h/()�p�a��/���i2�ݩ�+���]�͍לB��bZ�JHl��Q-*�,�.Ĵ�����j*�����?�(߂� ���{N$5Ph�3��?��FWoGG@T���d5p�+ω�
]yF��^�Y�4h��u�?�<7�
�%+r���ad�G�������n         i  x��V[���}f~�M��nHN�Q���KNr�ME����O�����3��	P�е�j�*�-�٠�%;�	`�J��Sr���]5+fF
?L���vu�6F��%��S.�C/��I�b�f��@�Ho�@RR�,PdHހ�m�}zg�G��&f�q\��@��7�y�T�U�^@/P��A����Z�^�u�@��2jfZ�Q��Mi��[�ꚞZ�Q�u��q��A����|dB��x�ϊ�0�l�%i��J���?���n�z��=/�+����Dq*��A�b����y��1�O HR��@|������r��-�U�����A�6��b,�;��'�2��Q�SZQCOZZNG�JE�XY�@�wt���r���ׂ�M��ۿa�o��,-e�XF�%Xb@�{�'�ho`y'9�9��`,��*��ow�[9�v�5&g'ٴ�>��hm?c`�AAƲ:����p�B�����o���}�՘�� a((�0�e�{ �m��P�87�LZ{����a�&'4�uF׾T}�����u�1QM�?��7xHTp�"��3wL�����=��X�Ǖ��޹,����),�����%S��ݯ��"8�E� ��Ŷs���8O�����x��.�7����A�N�i����B�wQET@�P�ODq̃��n�A�Ƨ�LkF (�r ���?xtF��~�;WQ�Fne]�"9�#�K�Գ�qӅ�Ҫ��lC�6�go�
�*� 2��E^~c�nxvN�0����wf#��%��"J�VK?SǮMW�2�M\���a�ẇ�0�*�xe,Zݶ��7!���.��._X�d��c�f�D
!�t���(,3���k<l��'��A�JK8
D����NI��o���|8�+Om�A�va4�zr�u:���r���iE��-V�P��(�ј�ìC7t�L���͊j�G��*�*�1 �߻��t���7|��*} 9�)"i7!�X]������������Nk�1Yi����zE3)B"@�fd��fpp=�亥�iw�7����st����H���Q�'r!w��#U.1�]�b�}l4�0�<�{:�̽l�V���j��_�J<`��*���┵�B�i�W��渼�&L�>����M��$@�e~���m��]ޟ'�J8�ֱ��^�ј��4n��	��n�
���c��N>˄��CpS*�n��;7w���8?B��<��ޔ��ʭH~�f�8�S{[)N>�f�I�Z}�)�b����6�˓�즭���9W�9�e0�NB�}����}V�~3�Id�nR����煿�T�M/�lƄ�2��+(�=�y+:.�%-ƕ����ͫ����Ig��ڭ^6Y��:���w�ks�V����P� , ��P-tb�q�g��$ʮ&�0�)��͟��YD�� +3xL�T�r��d8q���'�1���y|��'hN��~9��I�5��t�r#��'�D**��hcZLj�Y��Y^�Fy�;Q�OJ%b���&�Y�&3��ll�QnZ���������������eA�Ӻn���{���{�.4��-s��wf�3.��+��cs,T��QőU��1&��oE��J����c"�ѕ�HD�P|��+�����i}�            x������ � �            x������ � �      B      x������ � �      :   !  x�uV�r�0����8��(!����H��
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
�P�8*�!�������Ihh���"v�R�$T���c��ՑȆ7?m�5Oq�)WCRv/��_HBIz�n�<�޸֢�9^~t�m���D�ew�q      @      x������ � �      )      x��}�rɕ�:�a�1k�5��;	�0͗���Ym�@��m@&�	�4��]�|�lm3�d��-�d�d�O�d�TI* d��~�����p�x%�^��x��zsu�_+��"-d\(��S�N���9S�̪Z�x*T��E%��gZ�A�\���ow�n�~�~�Y��כ/�k[}x�\���e]/���X�ja��:���X���ǋ���.���z��2B������cE�Bҏ�R)�{x�R�L�3�k'u��ĩ��e%ÙvgBՆ~��]<}^�V�����n��_U�{��_]��j�~���-+�z������js����r�a��[����fE/B�]/��Q�"�8{�E�i^D�����g*�iU��Ez:�3kδ���ȫ�o.��_������m���TG�3�k/e��{]�k=�c��V˃xD�G�F�}��k�����X��V���ju�����z{Wݬ?�v�͗���]U���nw�}M��O�����zR����Uu�������{��l�-��I�m�!�ҝ�PK/��a�JtH�Q�`�@�x|v�8�B��O�dچ�g�3�Q+�������cM�]��oV�&���v�~���D�����|����X�To^���)�&
�у0g����!)�dę�����[]��X��ح�������p��W�X�/���B��	���_EH��|)TRCD�X��rH��u�T�ci��f��'leh�=^'�(3���*mH���/��ƀ�&�6D=�΄��i6����D��vs����N�6�� �\�� ���=��Z�M|B�B�/�"�t���~ LO��tܮV7�0էm-�O=��g�"�n
��-�T��&�=������Hn"����j߉�!#�U���B�psI�2oG�tK���]b�&��za|���Q��2<J�����%-1[{��(d�3	I���*m��,_�
�����t�7�+f�V�����D��1X�.��Hk�����Od=�Z���5������]u���/F��+s(��YF㘓�6LQXwf	b�2�tǬ�g
{�?��|��jO��Zzz��݀	T�G�d?ce�2�v��M�/o�$�^�z�#�݀tP���Bg�*�z"E��uQ��u���������6A0��DR{B)��t�8�VX_�@�7�z�4V����Sb	Cm��MHaY���A̜�]w���R���*)���8Hb8Mq��Ь���&m��ݪ�̸�,�!�ׇtd�w�H!�FX�}�|�K�~�iK�������۾�]�-�����L�j���5Q��-�6C'�8M���}��?8�3k��Ąe��$	I�0=mi5£����ѻ�Nϗ��vղ��ڭ?�����#�۬�w�1Tz����2�V��/eb<�U��_���W��ј���Cn����V�D2)V��??�7���s3�}B��nfN�5�8��}�xO&+��Jca�ad`+A�>��F�y�e�j�T7I�.�> h{���@8G\a�H�c�mP�{�5:�������=�	
�ç�~K��~����G���~b�[���E�� ," m��~�V����T��xF|E���"MN��27��_~9B��|�ds7Y��A���*�Xp˚��r
�W�a�jg](X���Y�O��>.�����`5l@�?�|q���/Ή@d���`J[IN�]H�����[������^�6��9���zz�����E���՗?'��	�&o���%�5c{�kR�l�G���HÄ�Uk�[�����8(�m��,�)և>�SN� ��bANI��d��(G��P����7:�)~,9�c�
��a���q9)����ӱ(�[5�Q�]�҈\�D#XD
�M�0=��%oP	/�h�ը[4���g8�`z�����O�n_H�G-Fp��5�5�},@�0�L������X�zq���W����9Z[� �R[F(�UݠxMb��jMʙ<�Wϟ�Ӫ����Fgӏ?>�I�ݯ7����/�����?�C�]2K������˿�i0%t4���`�bd���J>	�d����##EX9f]G��Q���C��nu�������ޓ�n��˛eH�>՜X�@%��y��;¬�y�#�>j=¬�
���y�F�恾��<�m��yB6��$}�B
��*�֝�uGn�r+�:�= ¬m>KLr6qa	l�.Ztz�N�N���3��B�! Eg' B�ɹ2�H��ud�%@�ph���dE��� ��"\�ɒ�O��>�ZTo��C��\�hJ���F��( 
m�ɱ�&����ЍPzZ���������5لV�I26Y�i8������A)��%��Ci�p�#�CC]�b>����jX0=�,P&"�L�d�C%Q�Bm�1�Q,��zdP&)�$������/�%�6�����	�p�'��������D�&BR��U�fUj��pfѝJ �P��c�đ�����W4�wi[#/;m5ѝzF0T2��ݼ�"�T�{Z�7���H"8�p�Os���!I���H�[@ɷ^1��� v`b���C�f�^�hc���m�]� A��i� �����׻N�FP4���,�&��x����9YJW//�h��I�4���%,�62C�
�-°�d�o���었������*��;��?%���	�����Ob�A�JwjH�gH���NTt� 2��X�H2����M�S�`���a��jՊ�~�\����}=�����3�_[�V���A�X��7Tv��t�5�'�m��)��f���t�����O�F���ڼ�;���c��/�q��o�Fo������@B��A�-#ȴ�ʌ\ �B����!oj�n q !�,P#�����gO��%)���. ���g�	�^O�9q��	I�~O�h?�:�'a!e=�@��vB��=�q{�P�,G�i9��i�i��
�!s�,Q/.������:��p*ɲ � �tz�*��y�5��a��[؀�����I��X�u��F?k5�~u;��7�i�z�ɪ�M�C��#�f�����X�;$Ӑ�w7���=8�S@V�`3�l>��)��:�F$&�&$�%�&At9D����X����V�9�ؤ�rP��%ojĐ>x����,��x+��`$�¼�.���t1Hv��|l�>�!��t�a�Y�d�r���3I'�H��������[Ng6ۮ�eէ����D���X ��eO'��)r2:�X��h��P�d��'�N�l��O� '����"۪;�
��jI�vu�4��&�h�9�M�|hAM �	I��W����H�Cд�"��h�D��n��,��L�i�p��S�mAFg@.����%���{�2r�U��Z��EF���&(��%--�,`d��������ZU�t�W�-�L%�l�J1�XBeb_C�6�}=/�|U9b�f5e�<���j�xA�m���@�Ļ�Ց��(�2{�Ia_򯢛B1�R�&T�v���fE����� �*uB����Te,���i���&�x��A3c�C�r�y�oC9$�?����<̑��	䊝�裵/I���W�#QR�D#��Z��M�M�|;=�	$���cr�����޻�=t�|��I��h��C�NF���1�m��i��J'{�}9�j�O�Yv�CV�.DdCvB1 !5Q�y"�d��	�\=�0ͪ���q-��<З�^�xٶl�'A"/���	T_92>D��OfS�i`~��W�����%W!%a��{@��ue����SN��Z�-Y3�s\&E�3�L`��tG��Y��3|ϵt'd�A�8��4�´��3�kz3�9f���P^��^#|�{\T؉asBv++�s�S����1���7�E��FZ}3.yU�u(Ub�'k;%\��j�*�I��!�y�5���Z��\ꫫ=7�0*En�)��Ȟ :#3��e4D#�h4#��L��e�C�����+�H)Ԃ";/��]`���9��/�8?�;��aIe8b�:    �J��V:���$��~������2�D��n�ř�<xs��d$�e�.�eɞ׍@�y���R�E�(w�e2���.7�IS�=.����qla:��$M�G[v�f��ԥ�ۑ�ۦQ��}X������� K��nE�����'�_��7+.���n=[6�?g,�aܜ�)#1oFg2�<B|nxbő5�2_�zb��n�������n�����f�a��>1�c!ٜ��ƨQ±]E�2�����=�]���At��j"�'dA�7u0��RB��t�4<P��lA�Ъ��&1ר��ϫ��?�g��S;ո�1ON�¨��	j�#$�1(�!����,�j-|�Yy,=M���vNS�9.g�8d'�ԆX��#�iU�+@�=�A5������Qх�Z6\�����R�ZG�p5s���Z�ERTSP��~�&��p���
�z@�=� �'}|g��*���m�m�V�%�>��,r09'k�������'�r�Z�t�S
�݁�bf���	�%p b4qc�J�|���c8=.�OPj��M~d�I��K�I]kA�nr:$��i�t]X���Emw+����\[�T����n{�p��a�Q��2qC�*B�����`4&���*ma:�����d�Y=�WW�+5���L 	~X~��:��3ɵ���	��Ud��,L�v��P�N�¬����{Al>�X	[�d�'�M�oIIɸ�	\r��e�֚`K�8v�PD���d�(jFN�r	ؚ�l=9�|��OU{��	�A��rFE(힚�ʨPD��\8�����q�������ݓi#!� ��&v��ZLE0I<��E6S�*�g�(�(��5jƻ�S����!<w��(S-�X��SKf0����&�*j�
��9��G Ur���3��%g��n���]	XA�6�q*�F��� �rW�L?HɎ��ܑ_��e/�9$�I�5��]dCM�g F6`�Mu�bB��R2��*�C��%*)�lI�z8���¤���d�9���$P��'�a�r)X'h� �Pd��_7A��r�BQX�,}���h�c�|�eqA,|QH�|���IQ齙X�PJ�A��=ld�MR%�AJ�;(�#�:'J;�XV�;=k�LJ I�C�A��k��\	0SRV�r�[�f��׈[" }�#�F.V��#���(>��y�\�6_},>I���&I�a3Sv��"G�P&cȋ��x���h�H�n7��
��헿��������˷%�աh�G��S^L>G��x!�"ѭtT�8�J��H_���dj��j'�bᤠɒMe����t�����^RP!�,����,˒]W�3h���F�Q`�IV�t�:�(#�2va��J	��?T�t���Cu����������ˍXE������q�_!���vy��6��6�������o�꧋��WO/ϫ���_U�/�T�L>����ūw�����˷�Ϋ��D�SOP0�W���'eX��3���]�ldhr ���k�wQ#�����q��1J:LTz�[�H�q�(>��iYn�;�Y�����|d/��QR����� �z������ho��.X�.����W��:;odƖ�*��1���w�љ�&�M5�Q����8��R5&�\,�m��*�bw�L�����y������Q�՟V�;�ԑ�ͬ��1M���Qz|�Վ#�\�L.�%h��+�01��N@�0R���Q-,�����J�x˼�	���W�0ig��z��^�J̮ٮu81�L`�A�F{�W?���j�X7i��rfև��WM�
�m��>4���<BF�·�9�#b"�N�Q�*t�?w(��i,�V#�)�;�c���:O�Lϵd��RuU�L���C�a��o+����8����R&�r���BIX[r�f�ed�pb��&�j^�S��IB�ޓ���h�ٯ�Ha��<,Q����I�G�����L�c$�2ǀ����H�rqx[��Џ�$\n�v;:��%��0qR%�$γh@Q���}�E�r��dO�)P�z�c����(��5M&r�{�!��	T���&�@RC�̬H�$�!m#�L���2���F�aB�Qɇ���|F�W(`"^���o��;���jв�����ʅp�1�10i��tMz���g�6��i��hmۭX�pA�E.+
7R���"C�@��!�jm�8�E�1H%*�f#CS8�[7���aK�2I�Sˢ��3�+��19��5>ίW����3:�S�Î F��}�Q�h9��~A�`r|��$��AzN�1C��]�S�<G�m,���P�-�I/P�o��(Ƈ'�P�p�O�U����3��/�>-aI�S�����PP��ǣ7�<�Jʸ#]�S�&٠�gB��L&��e�gPjh�����@�?BZ&��٪C8��6�?�{q����~����]#"Û����]<Cwl����˔]���pt&N^�� ��|eQ��}|9�V��&K�0���|(��5��j��6&��I1����el��"����ǂ��sl ��[�)���S�m�@YZ��m�0�V&��Gr���G��2@�.`�\��ɶw߁�U�x=&�6!,�����ZJ���9���&�N�=8Od>�ڮ6T�,��(��.�2X�`���y��s.0ܘF��W�&-B`%t}�0 ��@�0��w��;E�@T���ˏ#�!=�qq¨���k�y��
.I-�F������KT�����i�PIO
"�:�nK��
?�e��g����M��jS����X��E�!�V�9�>/���G�3�euEi5���8����&0���D����4i2Z�)R�V�����&�(�˘*��}��)(��V}c��Y%e�ސ�i��MkU78�����Ck 	���:&MuC�^аmO
��a�V7�xP����v}����R����vI_����˺z��m��W�֟�w��t��ś��PrrS�jX�7��r��W٫��4�
��վ�hO1�c��F���1��G�`*�f���M�d�
m�o�E����� �a��e��������$�9)&g��j=ʯ�F)��ӎ��@!D��pbs���7�5���$�u�*����N�{FJ
����ڊ��i_2	�.A�N�C�Tרkp8��Ad�ʕ]7T,:R���'4�+}�8&�6+	�m�X��d��������CbZ���(��1����`��6�P���UE�]?6
�&9�v�Il�!pd5)J��Tq��%!�1��K��C=-��ZJ������V�?������?f>��|&CFj��L7�(�4!��To��yh7^�|�<�Xy�|L%�M��y�������َhՐ�����|QCz|��!/E�x^%sC�ڲ���V��=��x�����nk�OJ����(��a���vH�q���  ���,0y�j�Ɋ�Z���f�����F6�"߮�4ǩ1�4k�IG��T���^�btG��ow���NF�����1���V<i�0飡��F��EJ��_�I�%�֞��Q��j���pp����>�~}�&�N߭��ㆋooƅ�y賥,􎳇�tp�-�����Yl��� 6mL�� &�nvm������08��!4�"��h+3Aȫ�u��0��� ��Ni8�<�sd�;%K�0����m9�Oݐ�4���p��dXq�8wd����#�5wZb�Px�|ȰPIɫ5��y��ǭr��� ���q��QU��v(ٴq�yՒ�ޙb�eN����P��G'@8��Vv"#y���ro���7�a���6�D�3F���J�SB��	�D���HT���C�DWQ�,�i��1ؔ�=>I�+�t�N��Ͳi5U�h�Z�m{� B�ͽ����R�����)G�
P$��H?�\I���^������:E#�*z��/8+�h��_��ڟ�ݰ^ 4�>bG�B�1��U�����(zaF�2�S�$J����&��ё�����St�&    [;7'��o�o�� ����#��b n����35�V#0��9�����$��1"�����H����Mb5fszҚFZ�9�!m�P^�(�eԂX�d錞���.�#��쫱=-%�4 �L|���3}iV��IuFQ-��)��K��<�UA�M� BL"�Tw�mU4��Fm�1�yy��+{��66��U�����[����"2?�1��찌���y$j�j���<�K���.o����ڵ4>`�ʵ�ct4�(�q�<�6eG%�\J�+��U����'�z��8�b�]�q3��$�`�i����uz��x�&�7vp�U��A������=��j�;bP��}0���T�4b<��{0JX��%X�{��Qmwͻ4���%@�PJZ��#Z�o����1�a��]��l�t�ݧ�Tb����Ex����5W��⎪�5�b��4�я�x���*G���X?��*�?/][�],k�i&�(�N I��a�U����HF��� X�Tۃ�iF�ZJa��u��}��#�f��F���<� =Sy#���#l�=a��㇘�f��6Bo�$jV��oD��j�]��'�A�/��8+R�(�2�jn�9N��ԙ�LVK�,Z��2΍�O�S�ٔ�� .�)-
���� �f���U�~���쾯=�^I�z��m�\J�6��/����7�Xw�c�u#�F�����_�فp��]�Qۭ�����!�i�p��n�i��*i���Ǫ�m�7`�����o8��M��ۅ�I&�j�n����	��]9�m��e��< F�v�c�*a��@�d��gJf���j�NT5 �\����<D�$��%L�/�C�Y}���Crƴ,�@2���!��b�	�J��˒x��p�������4b�������&�ݧ"��d,m�a��;���9֕2Gf��]���JE۫6��nu�p��[z4f�dX�)9#7�w �`�=΂��Lr�U�(3�ա�rQ��A���9��"C`� ��Z?�g0����Wd/���h��7$1���싒�6㢆fAE��>>�v��%��p�h֢�"��v�Ҩ-ԇ�2�rk��!f�� }�LkD�1��E�j�%�ckǆ�q�z�E�	8����g���	'��c�t�~�ɾ����Ų�r�o 8<i�k9�!�A�kz>���L
��%�ն�ģбsD����WR,=:'����ڄ�&��*����[��?���t��~[dC.ن��Zr{��@�G
��\�U�wMQ.���>_��1 �I�y]��!�4eU�P87i@BSm!��^����N��\��T�L��if��Ʒn��	���D���>��3U,�S0Ȣ�����kt��,�_o.(Q	$�P����I�*_m8�Sf�W?�~�9�@�vU�d �qN����d�~q$<�����3����C�D�"��	�`�r8��v�>�д���7�[|UO8�|3ey����KEx]�*���w����7��f|{�rJ$hL%@���l�2��QY��`
�"{�^�6�<T�}�Bh�U��9�f�T\~*uPc֬��=�.�������8Ɍ�l����U��΋�NN��d���SGD�斑ӛ�U��oGۈ�I��vB.Ǳ"pTLh��!���f�T��K�hz$t��ѐ�Ch�����yϣ?���f�g�x���B�#Є�L�������$�&����~a�]=�h�M�ݩA{�'?��O5�lV5\��q%�h�y��,mq��<�[{m�d�[�.}k�>�4�I37
4�8(�ڋ�עflW7�|���D�#G�x�k w�@�RU�@����T���n��H�C�Y�ذ���L�U?O�5��褲��Y_ ��z�C"\�֧���mJtP�-Fۘ29�Y�:�3n
�V�%�w�t,]O��5å3��IYkL�TDxImz:���U�[�<��d"��=�v��Bo9h4�=�'F�˓�+�a��|��#�b"����]��u��:�"!�19��(M4��2��}�����8��-�:�fV�WT��@W�F�[o:x��K�&��8��dX]b��ed�Á=����Z�g�����ru�ߣ��:w�nW����	�|�J�k\.LTやn�	ӈ����z��質-@�l������_7c�8��K��<����S�l�k�npgQ�g�{`�i��ޮ�7���,3���3U�|���A\`��x>L�*�����ԙ�G��!V�^��T�c�yn9�~<3�Y\�)�;�'�C�B��k�X&�T��
WUcJU��eiG�<W"E�e��vd�
W2��Ј����i���&S)\�Ig��Q���~��t��7�J?�i�:=/E���Lxm���y�٩n(&H)��M�0|�@��IHEV.(!��5v�hV%+�H�ڛ����vXB]/�&D�l��
�3|3A��g���Y���z���A\z����ı@�!s�H��\��r%[���+�۶�2珯��\M毣&�d��蛼�G@�U|��HQ�)T�DU2�l�մ����v�*X<��W�׏�v��J�橸�����/i���j� �٩�d;dSqS�dG��9���A��N~�jA�8X�[��XQY-˳E.Lj��j]Y�vǫ�%���oz��ܶ$cw�/ӬZ��I��3��砀.�R���s˂-oRN��e���Oܺ9E��YA�I�2��~&Ry�M<AΟ|;ssf���#Ӡ���U�r"���C����T�QG�&�̸byQ̃�Ȧ�~\�Ѭį�1텩O��ϫ���=����A�ݫM|����可_T/ޞ��cp�}R����j\4�nV��@|�*.�qP�bG�*�^��~���"Y���Dr�e�Jx���TN��-ӑ�j�q�b 7�y9�M�o��G��-+�/b�@��e����`�,�'{�Ӆ��7�sQׅ[ѝI���5��w�M�_�T�"��g��j���%���n<NOF��ovΜ�faϚ�O;&�j���F�����}{ wd��oJ#���e܅����R��pYn�'+d\��-ZLJ'�Ӱh* /����4��Lx��FL5���Pkb,P9uw����ˀ�<�˳-l	��b���}�c:øx��0����j�@��Ye�^K��j%�|B6���֪�z���ε�y�<j�!nR�Yz���
���������Wd(R�=��cJR���E揂*c�H�iy8�_+7�:\g�齸�6$��@PV��$J� `������{�bV���#__�i:�0��7q����o�]��i_W�z9�R��R����6���o��;�q�����eiW�]���p�|oc<�.�[ȟT�k����>oo���i��|<-%�HF���yu�|�a��ۿ_X�)^ݜn�s7� a�~��v��x�v"�`�&��1���Ʉ���F81�
=͚]��JԸ1�k�yb����n}2Yd�̚������8\�c�#+q��C�Ԇ.��s}���D����[>п鰐�ݏ !)�����m�R{!61
�{��ͺمO�~��ٰ�r\)��򵟲��*�� �`[���ѯ�;��3�1��cȞh����+��F)��܇�mSՠ~H�f��3�Iچ�{�5�6%h�F��on�&lA��C��2,H�k�F°�p��[���˲G
��3��'#�4�A��������8�@�����p��*.�Ѯ�86I�#�F�����ő�����C=���<Kc`�,Z�ȒPҶ����'828�t�g�������/�%0�˭p��i���.�<�>8��Ѻ�n�� e�ڧ��zѫє��*F7z�����7옐0�t4�1���b`<�hㄳy�!��fR���хҩ!�MZJ�@gv��eU�n0B�'�
i���c�
N�mI��)�D6�l�+1���#��M�xc�4'vqq
���$�)�f��!p�f.�'�˻��ڧ5V�FI���Q��ua
l%&2*YN�,\?>vG3�㈱���rjD�,��#��68mǮ� �  �pȄC¡}�(��s$b�8�7	���>�( sB{��m�{�MP��
9Ү�=1�,oi{�#�0���ŏW��"]]���ޚ���B�gz5��@�&rl���oPZ�N�nsOW���zs����u`;k=���$4�dc�?\;�_ݢ1�f�䶟b5��Bn���{t���N�IR"�Қ׏�MjB�x��[��8���C��.k�< ��n��U�z�o��n���l�3cp���3����񣺺���%�O�<�֟�8�|��� ��x�����\h��j.X�Ve�G77s��t�U�����~���A%&��"F�j�LMNK47���=&�K7>*�j+˺�ѧ.ҙ�M<�"�֞�?O���<}b���"ԑQ�c�-���,Y�~
�_m���������o���j?���/��yʳ���z]������,��ߧ���i���mM_�!͗�i����/������<}�      1      x������ � �      J   W   x�3�40�70�720��4�0007��u�q�;�~�ٟ���D��� 	s������������P�k�g�#� ӂӐ+F��� 9      !   �   x��1� �z9��E�P~��0Y�q��9tl_��C�xu)�r֏�ߢ]�Y������}�����>�e4�y3{�ֺ!ܨ�({�q��3V$�Ln��rM���:\��;gћ�V�;��QJ}˶#�      #   �  x��Vˎ�6<����2��ȭ%�6���P�rY`A�\r�ߧ(��ȳ,,��`�d�Y]UM%i�)Ix���6JJ�+K1t��B�R|DQUb��QI�:�Y`�y��LF��f��Ԇq�J��%���&��n�['f���F-��{#?qt˅L�K�U� H7������vT�A�Z�j���b�,��.�%�J��JM�7�G��Y��� jP���=jmŕQd�kx^<�RYI��׻�V�2�*�=�����M���1TN�O�ӫ�������?����rSѕc���n����Z�L>pk�z<�w��,��u	Q�~p�����k�m\����6��ꟶu�<��n����:ߣ���Χ0�A�xۑ�}��m�C���,r�RJj�D\B�O��UJ/�l��H=<�����J��.���"�i!U�?9������Xx���bH��g�ҹ��V�0�s�L"�s���`�{F����<������n7���~� �^��Т�V��ض�a
����
팤4Ww9�"ClsD�ӎ-S� aC�6� �1��ė����Ek��&� �*ר���@��8OBn�x����r�zxC�+sV㟩�k�_W��fGun蔶�3��9�	��P�[�4��D���eQ�M�ߦ�f$T���ɡдǷ��ZT�{H{�1ԸO2mdj=ڌ|���>saD��j�LY���imy�+��1�`��E(��L�S'T��G�͈�RK�����H��-3g��V[%]��t��^֡qq�"b@xQ���c�ZֹTfJ ?��������-�W�e/	�kp H`3T<�ۋ��jXS׊�D���)id��4��)J�3���3 �3N�\��2Ͼ��A�E�h�HS�q���t1i�}L����`6y41����z��0h�"x���X�}���� �\5@�7c@%�4S�ͧh�:^R��.7�Ӏ�%J����7����'w<'[��Bo�A) ��f��T!b�=m���3����M�U�r>
�쏟wFÄwpY\V�hqN�#aΪ��q|�x�������| d�����'��
��JCͶ���Z��_����_�<�W�������_D���>����w/ڌv'�x�VW߿�ɇk��R������p���E�      %   }   x�]���0Dg�+����$4#TQ;P��#��(�u�v�l�|AD�M��|tr=U=�N�ݷ_9��:��p;6��6�]�y�蘉�S�`����f6���#��A��B�d�'`��d#6�J�CUoL�/�            x��\�n�Ȓ��<�_������)������v��9;06��@�<��rp�<����۪��H5��e��|UMv]�n^��O���M��D�	c��?3Q������4��?�����mn_O���_?�����}�Մ� r!�\W'�R�rH)��"�.�f������R+Q)��g��w�7������k���輪�wǈMJl'�W����e�6�aO\�=����� ŷ��C��J7��˯���/�fq�������l�X�o_��o����X�RȉT�R?���z��˲�k:�~ȓ�ʸ Y<4�0%i�rU23���XM�U��͗����\�]�DȊy��QY��"Cl*-%��f{?J*�����)ڣ����z5J�:jW2X�M���6Oۢn�؀����JӇfy;�k��r����������<��,9גv2G�{�nVr9�M��T��o~�<�_����Sn�J�'�O$�ȺȶY���|�ϐ��K2�zy��y3$lH��ZXv��o��)5ع�<s�?i?��?o��vӬ��bo1$4�M���w�	����^q�n�+�2�����>47��zH
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
&/�Y������h��j��+Ҿ~[n[�/BT��]�pO�WK����rŏ�Ss^i��:����`iVg�O�},1���1 6�P���� �I��[�(����\P\����Q�O����-:�X      6      x��َ�F�6zm?E��N�<p.�.YG�����;�d08A�ӟ�`����t_no�d�%���5|k��(��e�>���G�n}+�Q�*��ksSoo����v})���o����v����7}�����՗�o�����|Vo/=��e������7����y����R}�>U�����<��M'ZV�����J�O���>�eܤ�7�5nݣ�O���������%;���W�\�Ѭ��k�������E�����e��𙷏��/�̵�U��7p�����'|}�����=oa�<�����^���|j�������� ~��c�����+I�P6/}�� )H������O�y�A��@�Q\<�T+�fI'�mR3^��A9��������+��_���u��^���o۽�M����ʛ���ڄܕ��>~�o��Vp�^p�E>_������x{v/�	���f?ٻ��~s�����~y�d��/�Ip�	�=�Dȅp�Q1�-�D�2]�J�m��Ҫ���S��/8�d�/�A,",�	��YM�5�0�1��1��>���J�[�=;!=���|�Wu'��pb��=� �|t�h��7��Jp��K���[}G��w��YF��ͽ�o�)��:��|@׏oյ������a���������`�A��k)�^�>ˬ�pA�wq=!|�Aln	�b-+Oў�*je۰�JN�y�!g��	9�qR}[�mdr��VɊ�[��<Gx��������_��I�	���"��-k�<*�hn�:p���3\m11u�=0�
G��p�����h���������2�@�2s�V�	E��ʿ!���Ʌ�C�f��"�6�B��)O�	L9�[�Û�>o/�q���6w�~y��/^�>~ 7�D��������"������sQ�����,�=�������7���8{j�/�4	T7u�׏N��_�/��>2 �D����5a�i����'���@��Lܤ�Ը�q.�
/8 /�� �	�}U��6O����ױ��&�Z���c8�Cl�O�_�^pXZ��`�@7B�%��9*z��Qڶ�\���2�n*���$�F�,:eEaʶ�S�M�O}FՀ~�s	���q١���K�N����l�9٤=�����)�H
#�j��3��RL��s����*ˋ���T�#���"�Ch`���e�7sV�N�q�R��E�ޫ3��.ߒO�\���m�����f�L:�+��L��ù��)����+���/o�}��n���F�rV�LỊ��uw$�>��O��A��B�XW%���������Z-;]\и�mp�J�E��q�)�����k�{�|���&îN���|�I��.o���֮�Y�F%(�Y�6�)�"�.�G����Q���UEfZ�T����[Ϧ�r�algx]p��L�殮�f����]p�������l��e��%�ߞ���~�W������y�����.��@�:W�з���KY�\0�>sf�8W􋾫�����E%�ءR|�l�����NeU_H2,3�3������9'}TE�0�]�ĤUu�̶�n���
�E�O���8`�J��LU�|;��}�PM�ޥZ`1�+�O�=�4(�i �"d\2�h��e9�}�-�ͺi������8��"���d�t��J�*�����0��~/O0��KT����� 
��	���<+��k$'M�ޘI�=�����|�[��|�ZU'}Rk�g�ǥ�H�ׂ6�_���H���S}��BQ�\6Z�He=�����Q%�=[���u�}�"���r|x�иhZ�U�L�0^�h,ץ��`Slð�g��}b�t�] ?�C]�=���v��5 4Ȇ�����T�p��"p\B�uu*��+1�V�I[;�z΢(=+#NJNv���b��ې���*ۏj�X�Q=t6�]�V{v�|���}�r%Y�1^N5�I$����eI��tq�/(��s ��A���"]4�s�Ŷ���@�������q�&p���~4����0�"U�(�P/X���r�WG#��sq�	c�~?�l����[��djˎ��p�Z�W�C�x0U�5�ѧ�"���8��9���¸Z2��ks����{�
!�0��Y��F��m��Z�j�7j��"�
v�W�#�a���VJq�.�v�n���j�u�w�M6���q�.Ɣ��EY K�*��P���+�( ���Ϩ�^5w!ՙ*��c��D}�S�˒~�.B�)��n3�3�d�����|��L��A��)��*�`TC�r�T6�*�����̩q����|҅.������<���r4&s���Tt��\��_����֓�kf�T.�^��l�A�JU��$��)8��C�}�3U*/�"�UE�a�]�y9IP��8�[�J=ë3]�*�]U"���c:���:��E6�pED6��Ō~���]��#^p�g]���K7,�M7��������eX�"��qvB�������+:F���4IGwM4�l�܌ͩ]���|;��<��5.B򠗶)�m+�F�x#-�Y�����Ή�c�&L����p����ܹ85����E����Y��3�S��.y �"�a�kY�+�)��䠚�~�Y�����/�q��!���� 8��A]<�]��yij�l���7��GՇ�Q_��5yaG��W�/3��t"oL4��Y?	��ٙu��t�i����J;�HY�u;Lt+-ncP����;�fn*q�Vߚ_�;�;(���x'����s��������\?ޚ�����ɟ�q�jpW_�M��������9�k�������r���	7�Wt�\ 	�q@<zG-��`��s��`���ڨ+lK^șu��*B~:���vt?�EZ��|5mN�:r��%�M�%<����pķ�fF��~�Y	��z�,'Q��Hk�ahA�!W�zΞ0� 
$ì�SKӪ��tĄw�&(�KK�r�Ϝ�`��"Dи����Q'`5�`d�ې�F�ܞ�����gn�0b!�S�t��}k�%�����Z�V�u9�;��~|���8�����ma�>�6���c���v
�}����D����Ǎ�d�L�=L��BK^5g�EpZO���W�4��8Ȃ���,��$%���vi���{m�����  �;�;��d39�#�ќ��nv8�m���cujܣ_�7�``*<���X����s�$XZ�6�5t۫l���{!��D��PVZT�F���IU=*�W��k>'lNS}������\��Y&R�UM��<�.M�)��Џ�4�"w �����z{.���i�� ���f���+��WU��K���˫��Vp��и//��_>~u�����v{���U���&.�wI�ݚ������ԛ$����x"ȹ�!8Dy�a#���3O,n�%Rimm^ħƅ�*����$f�ps��C��f���;�L��V�ڎKW�E��J�1����J����b0]�����d�&_ˬ�ÉH�+K~����4��ZWwU�qLZ��k�Ϋ�Ф�=��i΁����k��\��"�vO��'zHpo��g�04�Q�M��峮�G���,9X�d]g6.Ŗ�kk9T�|�}�'
��l�����
}��1^��%�&��mb����%(�b��#���5�w�sO�����(g@���#�3�|I�F�
e��X�~����`Ƀ�3Q5� R)�p�l<�DY��&��W׸0y��i�����جX2�R���CR�T����ҿ<=�Cn��+��v�}�.9�p��ڌ�˷���ݒ���
�t����ٮ�I-��fiS�؛���zn���@tv�	.n�{9�)#<�;�b<r��Xf=��Dgglx����ULՒ�e�]3E�k��<��)��%���G~�F~��e\�0U�e�[�"aG(ַjKL���ѧ����c����Bh;=�b�ݘ�Ӵ��Lt6��E��ZhΖ���|̝K2.kd���L�wi�+���0x��=�N� 4�$A�    Hǹ$ʠ5qI���"�f���	̚��ƽ3A�P�� ?�/M�d��[F��F\�;����ۮ;��]v<�e��+����XN�8�����Fg��-2�N*����CП���B�`���@�m��&�s#]&DL�^tK��Sv������ЅH��AˠU=F@�=/W�7�λ�#)s����C?ȯLS������Z�s�!�h��h���D�,5�I��]taE	����P.�T�S\��aU����zģ���99{ԇ�FeB]�z�B���8�f���i���D���e�j0��t�M:���&�O�1��QMR���D	 ���Ť�E��� 'Dy�]�b㙼����;kY6�9/���<�Iaj8����);/;|N���܅b���QzIw�A����<��V�zn3 Ow�;� �_g��h��KR �T
f�v,���)�� Eُ�	���!���Cv\�m��
0�2�U�J�	��k1���)��w!VP�1
 �u���G1��GHmTnl�Q3TLF�r^����yRHp��SJB#�6dDՂUla��l�REe�z���"01Q �1M�c>κ��]�^�i˫%Ɯsy�>d�]L(/D`|��F79ϻ؈6�F�v��"#��S�w�*$�����3[�(Y�]�~��6���JTƒ��{�;�Q|B��1���%��m�:Y@�Xk"�͆�xҖ�~�w�`S�qI��&�Q��=HR;Y��Y���
l��mJ�S����ص�����ٰ����ŌUBwZ�C��`<�.�N����N��٣��S_��*N�IMy���DTa�e�pb��6��N��+��D�#J�m�i��h�ǖ���g��QdY�9��.;O]��"$����'�
M�M"Z=fD�e��l0>*���(}% K�aкh$��N�!��4D1��+�Q��Y�����F��@.DX,ی:PB�5�6VY�'h�)�p�����aL/��c�sX�����`�2��PB"�T.<�S$�)�wّ�g�~�����n��|�z�#��fl�+"L�)��eG�(�`rHk�Xjآr��q�F��ei���|N?}����"� � ��)�Ij���h�Z�4�J�[Y��{��1�#������הE(5X���<��-.n((�Sv�����Q8�Y���868I�e�ⱐ�n�!��fŻ�0�;b��#�*@�t�Pex����&n�k1�;0��lh0r+0�C�A�'e�d%:����f�L8�7T��JZ�p�?���f��o�q���嗗Rݜ�ݚo���n�ԝ\�߿�~5����OлO����O����U�7U���|{I���{煽�$���J�?Ɏ���((���$�
?�9�$hE��q�S� Q��Qj+���sRz�E��P
q���:�#g��D� ��(ڶt���"����ᓐY��Q��Y��2���zJ�fC�Z�i�~��n��S3�ݹ�o���7��{x�@�\���������������hu���b���O���w���ߖ��b��_��+m㝪Q�4����˺X���{]^^e����������t��:�>���Z���We}}���}��T���U�ՙr�
{}��7oJ������]v��>��P3��؛LW�ւ+�s�����V2K��4������<�5u�N���!M�HUk��]�hS-�i�ufEj=ì������0���4��,��rk�&��h�4����@Y����y�(ʡ��� �4�]Ւ$,�y���ᔜ��,\˘�i~�]��/;.0�e�Ǫ�E=J<���M�������N*U��w������� ,�
�q�z0��i�5�[��4�r��z���~��s�\��_��?Z��zOz�4U��XD;�JJ,����f��<��xB~������A��4�E���:�@J�cg��l}I��~u��K��]����a ��|��|�����4�~
�(������d���߽5_�����ÿ�7�Mn��,o��#�͇�?��:���޿���߿�;v��w���B2�ٙ㡏ʾJ����dRq5��.�%A���F����(8;z��2[����r�m�lq�Tٶ��=g��>κXA�HŜ�vCu����)T#`�h6����//�3_~nn��}����[��2���3�\����+���Wg�?��D~���m��z�7�6o�����7��t�6tU�������r_���J���/�g��f��q��X(�.�l�h���,��x�f��V�~s��pEߜ/��ß��\�~���+����vz�������U�?����o���	���j��ſ㫽5��x}���}��\�
���_�7gK�'��sB���wٱ�U2�\�1	x�
(A?�	_	���ɀE&�2��E��˳��m�S�?��r�I��tI�wi��P�)�і� �[-��fqhW�p؏ �Y�(@�U[�԰�(��Ӵ�P�����(A�B��נ�9�B�����o��רk��uLRv�pR��������r�׏���w����>��,��ݫ���!��)������[ف?��s������?������[84�������g?'ֳ}��|�x7�l���YB� �p�����Ќbɶ,��-���-�-hb�X0J�qw�s9��� ;�[�8U�!�2�(6P���A�3���Y/;O�.��,d!|s;�5]i7Dl*�@\�I�+;wk���.�N�����?A%8�w�����;]G2q�����T�ng��
��dHxN�š���
VTOy�ǝI�m[5�!�YQ��޽�ge�Y���10;��\f� dy�$�2���XO�L��w�څ��c��R���tv�iG\���$�p��Ƭ�e��2ه�?6�,<���j�EBAY�;5��zO�j�Q+. &cl��8�{y�ό>�Z�T�8H�\JC���u�\�^~ڮ��w��v!yw_�ۿo�����O�\�w/���OۛJ���K�<}�=?��E��Y�ζ\J�տL����B.����;%&:��Ѵ%\��: q�صӼO�lW|����M�Q0�P��"eӌ[۶)�D����Nhl6�d8��Qq���SI1hY���^����ӡ�:%�Jԩv�m�h�� 9��aZ"]ŔiZ�T�Loec'[S���Y5�ـ�|6K.�#ytz"��i>�l,@:�&#������;L��-xzB�B�2@��Z]\]���U�
�*-�l��E"�G��W>��ȆbG�s��~�dK� �i��j�Cɚ�0]~x{q!¹ګ*���	1Mla,1�]9w�6ν�Pr�_^��?��?�u}�D����B�N����}t!���~����^>Wo͇��`�������􎅬�z���B F�DE�,ha�7T�8�٬�A�]>L�T���Q�
G;��8'���՘�}L���Vj����m"k���Uc�ɀ�@� ��3��b]��5����X{R�<�%Y�S��ϲ�A��\�5�y�;Sm3��,�ذ������G���ZvaB2�wC���Ui��n�����Ⱥz�U-��j�{g�0��l���d9��Nd�҄,{�ֲڸr�ꑜ6�c��E<F)9:�zB�\�K�%sBx%���d؈����r�һ��ɾ}��=�[}�is{u��%�7'÷�������5��Ի?�}yu�9�A�/�sI�/�]���c9�~uv�0�À~�j���?Nа\�U�S���08��2�b!��S�-�VKSY}���
|,�:�B.XpF�1����hSVO������j��m�t�����͈��\���ݤʺX74f%,Y�u#���=������w���X�k��([3�8"i�њ���X�b��R�a��~���{�4o���zC�\v��~�����|����O
����l�'��%A��~{q~��������;z{u���1���,�C���嫽W�l��I8��D��#�!mB�<��t�l�,��M_l`�����
���Ąƪ�;cѼf Z�i�Y)�a��΅��v��AQ��K8�G��Ld�Mm�    �1C�mO34�L��7}�.�z����Td�e��b�1rI3Qڷ�/ᴞ���T��K�N��c�x��.�6��MɊ��H�Q���Fg6�N�9�]^��GRQ���=��L�2�i�tH����S��d�d��EYW�:s�v�+݀%�]((��\���$t��U��;��ǵ�&͍��`PH���IK1ΪfoO�=�)���G����v4�92����Vٴ��)�>�Ϡ=s�߷R��ǡ d��z�1|��+Ų6Mژ<h�|���'>	z6g1�g�(d��6��d�L%�n!��h�Λ�^�y۟���Q_C!��)��q�#��EZLX4;�ek�ekg�Ȓ��z�=�,�~j�:jw���2y5��geշJ��:�ғ��(�̈ ? 1E��b�չ�}����F��Zo��W)$��w���z'�,
����}�܂jnh�[o���_+A8�jdQ,����&�������,�n�ٲ��j�ɖe-�#Q'��@7���1��.���R��	J�d�5S�X��NL> ߓ���j�)���Α�pHP�����J���Υnz����T,�7���f��,5�P�]�45J�,�Z�x���'�`U9�g�8l60�Q����$�W�7[����"UK��vi��(r	�j�s& �۱�YO,�/r|\K�[�!5�Y<��OH�L&=t�RE��9��y
�����u�ޥ�r�jJ��� �"��Xn[����wAv��'�~��@��g�e�㛮�8�yU��VI2����e�f���B�!
=2�k�<�Y��q�Ӻ��b��|��r���3�@q�p~�>E�����Ҥ-�[H��1lȒf���Ի�(,��7ɂ�~�xk�d���6��j��1ż,�\�?zd�@y���޴��N�.I7���o5�h�!Ȇe��yY�؜��80Aq��ѯ��-�����cUl�Vd�A� �?|�kS���d�`rԠ6a���E��e[��V$�M+��i��fBm�I�y�UƬ�Y=�SIؾ�S�o|��B�^�yLO����A��)�H���(��Pl��3J�dn�/{�6�:�ݿ��Q_
G!$!Tlrf3Z�n^8��^Ӭ�6�Xn,9KP�d�=���@*�1���#n�ba+���m�K��X�"iq��!��q��mw�GqM�P��Z��c���JLD�a<�Q��9/��c«]�/�=�M1���XD�6h�J0E��V<��>O�E;�yۢݪ�i[����iJ`6fۆu��:ϒ}���щ�7�P�e���1����6�y2eE2i֏p���`�a��Oˢ!�,x��\x�ء�U��.����xS�N.�?tg]� �#U��U;����@����C���.f�#g�~P�'�yl<
v������Y���{���B�ޱS9�	�����N����P)�L�=�����V]����J��Bg26,r�8�Dwr�Y��Q��'.�@pи3@�_�5�E^5d�S[�&��x8�V�zYN3)���X�q[��`�}�%�� �~ݘ�g�'�CF��'Y��¬��*S%ļ�l��"ͱv&��A'�{oVxF�@/9�ǹ&%R$Z�6���i�"��ddb�P� ��D�}�np)٘	��x�I�T��@51� O�{c�2������e���H��%���2.M݈�L*����O������co�UBU����a�Ǝ!��<ڷ�����j�C}mJ����7V,zZ�,��h�L�9��d���y��0k�ܝ�n�N$:��EN3{���耲MH�g��E��!��w�zf^��Q��%��tޑ�L	�:i���h�}B$Qg!�}$ �޹��A�A5�U3!Z�͞��$���̳IDVtݩv����*|b.��0F�z�1�̙���R��ٚ|Z�&�����f(�Ł���a�-Q��Xڱ��4�l�)�4��I����B6K�/�� ��V�3g�<Y�wY6fx����9��C*�cP^0��(k=	�Pf��TMV��N��Y���H c<0N��%��[5��[�Y��eC��Ɩz�N�}okaV\����E��~��2(ڥ4l�6C_��|B���f^�R8��Ic\o��Q���1-D��o:�D���Șyw�Y���ゲКη�1�z�5���ݦ������>�x��h�w�C���)T��D8��-����V�Y�b�ӻ��\���//.$���p����o�wsU?y:������կ���g'�����M͊O���������R;(O�oޞ?���Ws���t��W��ѭ�>_�����9X�\� tp{T\�YWQ74Y^�V�`���Ի�Q��wNvrr�'��r��԰]pYv�J��H���0'��)mg���ъ�~(�	�E�d	�V+��p��zwT�\���q,E,m�t��Rn�P3Х���]Qs���H�(Dbvl0�1!�0�����{�L|���U�y���6T���K�����=��N�֡}.��ln�vY
5m��
��}qa�?d�4s2�ӆj	�5K-}Vd EC��g�x�ͺ0�r�p���/R`\&)h�6�� ��d����� "?g� �S�m��r�{i���D1S��qـd|6��{��7��0��q&�/�0��j, y�M^L������N��q/;�wNv�Cy̢dCّ��4s$��J�X��)��(����ќ��( 	_��y��0�GԈv��V;t���\\���ۖ�U��%;l=Qz��A�@��� 3:1��ض���[������X���Px��{'��z26�$�`#���mv�� �0j|�s#T�f�[��4n�U�ј��4�s��h��)�0>��ɲ' .cFC�.�w�6���I����%�AT�hԜ�������+��_���u����A�{�r�S_��ٟ��MH9�����4�)��\��?cy{�����k��V:���ܜ����������\_>����ɜ��y
�����B
��꬯�H3>�D	U�j8���{h�(�G�l���h�F2NM�,�@ӝ�lͅ�漻�}���p��z��
�-Pnu3o#mhbF���h�����mV�����X��Nk�Վ��`�Topı�ʴ�'�{Ċp��s�R��F�f���P���Rۥ�R/���Y���0J���籠t���Y���t��f	����φSt��^�~n�2���ǽ�<�7�wy;g�t�M4iu��E����]�V���D|%��Av;�#ܶEiZ�oӆ⮭R^���ͧ��;d��u(Ɉ<����>�Dl͘�Vo�"k�,q��h<)�oΆu(��!tL������	V�F�&�j���^�xD�S�B:����</���@cmӶk����)k��-��A��YFy��G<���wWS;(�ds���gJ�"K���nA$�GtZ��F�32�/��#�jJ�n C��쒲hx�UV�q�d��bC�,\^�.b���X<%nZ�^m6����l���w�T������`q��,���@9����I����L��W���𱖒�xk	��xQ8+��ب�,)��jk|V�By�?2�.q4zp��JE/�5�ֈ-�qY��uStg�,DY�VTFR��BK�b3�Zy�����Vgl�(cS�3V<R=��#�Pdqj�$�uG
u�4؋���h������KxP^ ��\FtQ�oM�g9\P��(�b�UQ
{A��v���	y�
)����u_�qTK��U�~$�ԃ�z̞z��A��"=�E��l���Id(hA����6��c���ˎyvY�.�� Y,������+�l�m�-q��&�'F	��Y�w���8t+�mES
j��m�TT��1J�y\ǉ��ٝ�'�pi�B�
�Uq�i������{���O�8��Ի��|�w+��N.��'���~Ii���"�i9�X��߽W������c? �=ޣ���FF�*�Q v��t����	��o�1$��>������݈N)d��    Ҹt��O�޽w+D�V8��P�A��MI��-LVNl�쨞MTŕ��o��᣻��I�ouh�����~u��~{��:l������+��{��)����'��)�.UN�_��X�����R��ܸ<vw�;�D����~���� r�0��aؚD4A���,) e�@7��z»�2
�Nt@0ȏG;i�A�t��K��ե����t$����՘�#=�_ &�8�c��HF�(2�X�Mի���մ:!J(}r���y �CPu���ۦEǕM��=Ha�Bf���=�[��s��.mU��ؗ���:����:(In�_}�\m��^���D���O(8�raᓳ��=�/���nk�uY�9���߅������|��ρ��S����W��E �W�9�xc�ŝ���CoSl�i֬���� ;m6@�P�r(�vz��feR �KB2�iEʲ.Ӽ��DU��v��N��5�~�Aa����z�%(��*5�Z��2.��O����A���#�B�<�(�B�5-QR�t��u��z�����C��;�}�%^����P�w�8�E�j�sδ�}>�@+C8e0�.��r�s^��d�>�Ԯq�oN��Ի߉>i�3" w� 3�Ὅ��W�M�f�M��-ܒ���=L��:�+P���l�Z<5�y�,u;8�g6�c������,	���K� ��
�@��}/���uw�l�ԶgV�h0�� \0Ǵlj%�YU�:IL����H�(�����`�,��;@I������l�����`�\8�|}���|�M����)\F>��O����fsf�}�����[��KZ�|���W������U�d����c���k�� ��qǪ�&V�8DUU¸��~�W��ݝڻp������|���~
r�;����o�f���՟��^t���s1έxW�9s�xGo���_�l���,�A�@�������;z����B������P�L����gh����5C;�uq������ewq�Ӄ����=",kH�Z]�Ek8�I��0�DF����xp'(&踰m�Z�%�"�'�F��7D5�-�������~��yYL]���1���H�,%�ۏM�<�:�C�N�=z���Q�wRy��b�2���'����A;Ю�{���߅M����[=���<EWL�R%#3[Nc���M�s���ɡu�yB����ȏ��"��&O� �i�XBæ��9�����~�	�؉�B��s��<�l"�:d}��m=L��&�}�g����F�'� �\��g%]�&W3�v�zR��VU��x�ʨ:m6�;� F!�")�,�lo�bE�oQ��B)�5��ڦr��Y�{�E��\�Ϗ!@��[�9���0�X�L*T,�$ﺤ�:�����|�~}џ����g���HI'tC�SMg��&��6=cEhV����g� ��cJ7��9�f��$��O{�N�E�]^��=�x ��]�倐Pp'b�e>-�A��(k1�� `�%��9{wT��`ti�H��쀥��6���y9�]@8�9y�����*C=IŅDf�v�e�鲭M[`EQ_'f����zhq�:6+��b���Ge!F�)�F�5\�rNMS�E�׻:��;���^�RZ|���,Ӣ)&�o-�1U�E��vPظ@�삿zw4B�v�7�١�}��hۑ�5ړe`e^�Ĝ)��+����A��X؁�9��nAc	A/&�K��0��<g��O���,ܜ% q�Q������U�VRf
�ɜ��9��	��о;�� ����0��Za"��Tsc1o�I�ԻE����c~��P6.ˑ)��^uېĪ3)�F9�=C��{�{ROG~�HZ���K6��J9^�umjnF��no�ܵꜨ3Pa*�"�wz��!;NZ���j�wS���lŴ�sn��0 /��G����x1]�@��U-01#����ي�f_�&~t��+B��#TA�o
W=4-/�8�u5O�٢9c��d~�] @�v�JH�(�5�0oACv�0���l�\%{om��_��숳d�MmU�eTY3Y��i7w�l3��ũw���8J�Ka��c���V�ۣ��#�WUΠ���d뒞��PF�~�B�[!�����PI` ����R>4Ť��Q#�茳��Y����0��i�T��	�d!���e�S�bfN�{��X�G%~�߉E�q�IJ@���FՂ�ܖY�Py���&�P�FKP�:Ơ@�DU��b�jͨjֵ�!w[��^����cc�/�ǝ�|�E�GeNIl�e�Xle��qAZ�S���d�߇����q��)�s�w�s�K�I�qEd^�4ό��s�8��q�"?��iлQƅ���"N�|�{�P������\�߽{Fh߮���^�nj̸�d��m>�o�� �y��{�,P�y�Et��|�<�۸\�XDhZ4A�=�����B�_�cO�]$e�(�	�{�v$W�.u�G8I�,�e�j��4�w� O��D�	Ip(��I;��R�5�y�%�=@9܇eO��g�L!a��GB ȏ�٩Bv�f�ʦH�e��n-��:������a�R�Z������P�B�6�c;'8��y���V�a;���'��crQ���R�A�;M�Gh�h;�ՊN�}�#��(�ND��l���.S2����&X�	�	��Β���	�R���沲��Չ�������5�$Kjh�*���߅X�Y_��	 ���2��;H��"]v�6MIL-*4���a� P��;�$��q���y��J3�Ή��
nv.#s����w?���1D���Ҩ�����w���!��^63d��+��/�y�@t�N�X�v����[»��U���8��.éw�[��	��q��Lɻ^�-\�-���5�乶�L��w�u������7�����ᗏo�{����=����������{��|�g��n�S���_��1ϴ������f������؛{��|y��υ�wW��z��#
l�肜|���&aKd#��k�eQ����QM�[vް�~;5`�/LbH�8
GQ����Y�V���I�E��Թyd�=��A���6�#r�a�J�i/��o�.�y�w'�{߮�aR\ H�|�7���˲�B4M#c��q��uk	�h}�����Y�1
�P�㖠��w�8W��K�ʪ�2/��5yzb���,	�Oz�X���Y)�Y��ҡ�2�u��"��9���&�?��������%�Zl�I'Ҥ5���7.�)0�?8Ym��㰊�={��r[�w�C�ߥ.�Ы��\���6��	�]��6��ڽ]��?7o����)�W��}���9��0��+��~uX����
���8
�wg	������֍&��Z�.pF��2���v����.�:��b#���V�U��Z��d����_{W�c��e�ɯ�_��y�.'�T�1���%��E��7I�g;����F������%�t_4��b�w�E߅�,��U{2j8�=+nۃ8"�� �I����1CNF�}G :'@�4Y���>��U�����L�����?�QPP!\�eR�JsS��P�&-Y��l���4Hua�롡_6�1IO�E`�l��噁߇�����&�t�U��5w���0����ˬ�DE_�����Jo�Y��c.����A�� ��n��2�E˽(��8/�%_+�W��N�c=��b-`����	�ݶ��c�p��%G�뾋1������\����bhs���6�d�5�IM'�����hw0���B&%d�Z@O�����S�����w;����8��(� ���� �����43}��5i&A*�PNV�E����o�m�,~��
t�7��݈>o��ɍ'G;6�]@B.?�
s2ԍ	�T�X]�ke��5��42��f�1�ӵ��џ2�(�c':�ܑ[8P�>�w�)m�anTo�k�E\#?p*b9�F%C�����Ŕ�����	�I�LU����/?�s��HB�Q�{��d�X�*[H�;&K�V�EK�簉������{y"o/O�����7    ��/��}�r�����$yz�L��g���O?;��{��^Uޅs������/����?��Y?�/A�=�W���3zE�?ɃR*
�� ��*Y��̴h�bղ��?'!��(g铅	Р@n�p~Ҡ斃	)=sh��e����\������uw� =�	� *�����yjڣ �3�SS�#s�0���G���cp�X��S	py��q^	�W�ha/Y�9UCs���[�4�T@���Ğtdt���1KZ�m�v�L��X�+��n6n��q��{�;��	a�X�^f���:�i�Rj�Kt��#GEh���D`GcJHV͇��Xӣ�"I`]�lW��{JFHX���'e4u�e��]#�'�ԕCO��)�/��o�
c~#\г5;�ezh+Ű4y�K\��$�q�߷��X�d�;5�l{J�v�]u���c���,��g�)�O-��(�m�	�3����8%SF{��tʋ���3���EAr�n��w�(^#����A
>�J����I�JLrͯԏ�YX^�%���jꓴ��HѴ�.���F��/H���gc|G��q���7m�����N:e�(�2�vZ$K��%�~y{��g?�juA������=}���;¿����}���yl�¼W�o�����׏�U���ߐ�5��>C>'B��ܧ��˟ޟ�����G��!�g�]�|V�,���YCH#2D�Z�.I;U�Ы,��]Jw�w��h͝���T��;��<]K�n˳��K&FT�r)�є�}����7B ���r;��:K���
&f�l+Q�ڒ_����AY��w�F���]��5�\�����s�V#�:����ݱ��nQ�ݑ�`y���L��L�V�d(p]A�^ۢ�d��d�2K19�(E1�+��I��mkz�s�r�:Oy}a�.�mS�;����`)��PK%5�YZQ'�:vv����(���yr޿��~��<���'��/���#y~�9��ɵ����o�+>���.�~z��犙���o�S���_��[�w���u3�������~=~Ď�6YP�����^�}���Ў���^qT�-��a`q��\^��c�j�o�#Q�SuQ�|(PS��4I�@G/�����,>�>����y��%o���侮0����j�>�y��ҧ���(O�[���"�>AAQ�M}��d�x��4T2������W���c������Ŏ�6�y�?�g^�cx���2s�2�J�/�[(����5�����|�B���e=�P���T�@�����S~эO�"
�aQ	_���^�$����i��)��zr�Q%b����(2+ �ɨ�N.J�R�cb��*��)�fEU���(X��ܛdA+�m�;%�f�!�eA�&Ӌ��%s�
=�Sn�U4��Cw��AG[���W��]��d�
�έx=.��o4d�?��q�)T��L��{��.U[]�)!��^f�%#a��Cq��4�nT�%nv3I�iў�ӆ�L�K������2�P G,�'XetK������͕�>�=�]3�t��>�BChG�7;zZ�C&4�T��Oa�ZY�d]_���$hT�@X��O*�"��E���z����3�sYWm��^Qq8�<d���T!��8�l�����u�l�ۅ�-lqu����=��4w$��~d��]�W�&J5A-�Ȟ�t��.v�p���P��S%>��3�>����>)�~T��\6:o���Φ���(gt�`��tiOJR�ɦ~���pe{��ew߻�(2Q �g�G9x�#�n�i�U���-�Qkŋ��<�A(y��s�l�F�	.kv����A�Լ6b����*�z��U����(�������y)���}-
;t���͆�䪵�����I�"�L��U��"�(]
�ڵ)�3��Qk����,޷Cg�Mz���h�3R�-O�eNu%%���YƢ��ev��rn�C7�]�cm�"QI6�}1��`j�T?,�=�+!�G6R)�b-y�ȲX��pH�b%3X���a�\d�;zPd:��*�џ��%���]
l�.�:�OQ�BM
5)U�ԥ��.��ex,*�iLfE�8SƘ�-�hQ�0N$_v��\.�m����&��,��gh٨�ׁ�i�B��ew������x ���$��--0����Nn����o�N_�݃�"��2(�<�cȐ��2kM�G�3ؠCn��\��K.�v����g��s��d&]i�)eGeˤ($��c9��n�h(��d�R%���]�v���	�˲2�I��,�l����J@�.�i�6z��#�̂V�����(�Zѵ.��Ki�Ѭ\۫��Q� ;���m���v\XyTiG��n>������w6�1���gEa�ybflƽ������tEM_]���v�q���HN�5Qx�%��еKvu���r�<��߁����E-7�@ �yE'�H�cߤ���i��w����V�!W	�ݑXF��Sj,�F�O�Z�Ȕ�s���(��n�����;�O/����G���=�S��;�~�џ\���>V��L����������_���8��b����*l{�B�����������������v�ATn�oD�S��V�҅�u��:�Q�{���\�]4;�)�4`�����n,r�K<�����������;��ه��q�L�u,�Y��5�Tb��sC��꠭f�1 �v��������	�'�[��*�s5�m�;��ȻyG�/�D���B�(N�ʈ�8�ni��8I��m�ٶ9,��>V����fIh�"p�aqjt���r��.�d��Y�,�6����P���('v(�
R2�#�s�Yzes]/u���F��UEzǶ6�������	��]����]&��?7�>$�����M��x���/����=��{}�T����)v>|��{,�{%�W��>������{�xߵ�(�b�X��;D(���١�܎�)�ج/:ڠ������B�{x�Ȃ��
�E�n"��t�ҁ|#LMi�2�I�����A%�@Q�D_!̢3 ��M��t�vܗ���'s������M&n�Rtr>aZ �m��h��l�q�̸:�����G�bk��+��,�m���Զ#�kzM������S������Ҡ�����%=����� 5r�S��n�smW§�r�w��T� �F88�Z��.C]lY馫ܠ�:�|�P���@|�hpQ��7�w��������ח��f诽_���?}���������S���>y���������ß������x��!��/�������Ƹ���刊s�}���"�3U�)zS�h�;�Z����f�(A�Bvw��;R�&�-$�{s��rޒt�5��E�h����g����d�X�3����Xѱ2��cv���v��.�߳0r�d�c>r�M*��u����Vi+F=_����x(�Q~�sc��6ub�����d&f���dg#m.�V�C`���v� %�(��MJij��T! �VC{l"MP{a�,����f7*%F1�����!�4�ZN����+������d*g6Q�c9���b�܏���Jؒ����W)Ǉ>.�<�307�);�n�Q�i^o-����5�;ވ���&/�gVF�qD�SZ6+�,M"����,%����LA �]�����(������b`,-^����`��Z�l��LeY��f���nva�=���]&`�f�yXq\����lۦlG�moI���f�;�w��I�;p��fujV0���v�`MR��K���B
���P[���@]񶘕[�igu�t5�(k���]\�FH��p���#Ք6H���̨����SX�	��
��;LO�c���PQ嵛zb�i�e����m]׊�O񰻻*/�����;Pv)��4��u��q����t��~yRu���5�hq�+>�������?��"�w�w�)L�����������z�K��?��ߵ�ᝇω<n^��W�ٿ�^�S�]���bo{��ѴQ����MH�΍d�"+:!�G��^�en��I��&@]T�o1
{ �  �-�Q��.�WH|4�C��z��܎���<��u@�Յ���p� z��Q��2Y��y��]�Ea@;��H5��~���}GAH+g�ĮY�d�<[�~Z��:k��������vfy���7tQb:[U>�y�@<m������1�R=��^�����
G}@'bl�9�����*��.�H��i,�K������1*��|6��+��;��N�8&k��/9%�8�;�.R�n���g- C4us/%�	���&yv0YMUs��w���@@z�����m��LK���vÜ$�L&�]9��@Z|
�?7C�tK�C/he�"
$�$3)�"+r���ɨ*�:I^T	���q$wŤv��c톷bl�����s99d�ԃN��,���2C���
�.7+�M��*�Ѕ�g�y���f�!���om�@��} �'Yua�����܄������;�-ɗ���2�#�.��.��{`uȉ�	ǝv�:��s.�%�,�M��D�:��u��{`�E0�z�I�<F��gU�Ӌ�-�ێ�jj٠/�cG��� �T�B�Dyq4rh�]k�dm��L�L=�X?b�՘r�pQ���1�kb�9I�ܗ���d�Eq��;��0��+ߕ&�[�@�J�@�U���+3���]�=��q�ݟY���&C��k�Ȱ��U�|.�i��������;���"<��xf��虩2=v����������z6Swaw�E?��
����~�fY�4��ku�ԅ)�[(�����F��ř�wԧd�Ȩ����E�o�j�����^b7�������z����f[�i�l�V;h��
��.��@���d����X��]���8� '�i3��Z�5�U]w��"NC����1p˶z�Z����q<X*�Ӣdv�b�қ@����� �SG;�X�X���أ����o��g:��,�L���֥YpEF������ñ4�h������َ�
���q�|����_�_�^�      +   ,  x�}�K��E��U���?A-�'o��^A�?���l�)�(G��@ �ط������o�]lWi��C���r�ͷ?_�oD&��E�?��4v;i�<���ɵj�f1�����=�g��h�i�7ز8섕��3�4q�ol7iaݻ���P��������y�qw�_&^W�"�����f�e>���oʝ���lp2N���~ʝGC�I���n��px��+�À�q�0��e��4I���F�5�s��n�,�{mx.�o�]dWn4�b�R;RN���y��N����L�+��*�iO�:�X�l��l�ʦ�������e*��?ҍ����hi�q�lI�6��
GTO���!ݙy��'��GH,<��3�`H�=/<���P��^���U��<��!��i����n:�(��LD/����ۧ�4"�<`e�-<�RXvV�(?ؗ�qz���^b�y��/9�ș&62���9􉳘z�_ߌ����]G�Noz��	2
o����2��)��F��B��P"m�'�5"uʎSF�'M��/Y2��˨�f0흉����ߘ�Q�g	K�O&��T� s[�ާ\y��ޔ�Y3+Q���R�`e�R�չ�Nҽ'�f����q'����i�M曅\J���|��^Td���cd���P�V��/�2���J5Ѕ����WwQ$�|����BEO�̍~Kso$����}�	W�p�Sv����*L7�!�k�츆?�XѪ�)�;MwB��e�},�cx�0P�7,/=��9�ep��_4�!�h�i�c1L��"=�3w_M?���\����2rړ����{��pn8A��Ņ����y��p�|���i���t�/�c�G&�p��U�h3�w8d5�F_p�?1��ת������(]8V��Jq��կ'�C��/Z���	�=-�s�2\8mj|��w�"e���o�f�cȸV��=툃	�B�Ҫ7%�w.4�I�<A)^{Xg�G��4�
�9 V~���])�|{~�b�H����_K�Y�u��xG˼��� 5����bZI3U��y�<��g�GX	XJ�=k��)}i۞�0���NIn�4�WA��h52��]��J�m��e��Gs�81�m��`-��L��2��� �z����l�΀U�&�Uԃ&�c�8�����t���v�w�%��ȳ(��PB�g�/$F�D7�צ1���M���b%ԳR|j1T[�����?��D���~q$�2[K���e[\U���Ր_4l�# \���p��@�z;�C�-m6LSZ�SahQw�*~O���`�5g��n�r���)��#i,�}�e��6x��X��y&�z��V�lWŋ�@�z{�]|�!
I1<i�Q2����!�!�up�X��#��W������K<��c��	S�%
�e�W��H?+w�pH��킫Y�JnQ$)��X�9�%�a��0�c>��t�6��k���+n�ѕj��yZW_(p��1�_���8|�ŋ�E�m|Nh$����@����&�zO�17\D��R�OOQ�����;nx���"5SUP1��� ����+e��S��^_cP>(�~���^}h�!��~�Q�u���l��\���Ë��.��> ��{}�xZ03��ex��qx��'Hb��\�4Ϯ�ό������˧��f��K�T�~�_M\Q���cq�ꂫʘ0���E��@�<mo�ydjW1_��S�����ֹ��hQ1�X�Ӽn �~�r�_��|��֍���\�t���[5�5Z�N �z-����(@�j���:�4i���u�0B�ip�Z�����&�L      L   �  x�m�ݑ*;��!
8.�K�Xn�qܖ��]�'�+Yn���MH��?���~���ء��&u�\!��+�s�H�@r�bK�4|�����@��㕱�	�����8[�[�R��8,BO��~Au�Г�cӸ
����AuP�˴l���8 1}����<T6ş����V�����~�"��4��T!�z�n
'f����ٔ}P��Q#mJ�D�R\+7k�����+3�&�O-j*�P���c��V��J�����j�y�|�g�E	}�j�e�ٖ5�W�sY�Y��%�I�Q�(Y��c�_�K��!}۔8O����.��Q}��s�0!���x��[&�jS�C~i_�cu��V5zi͑?�c�����؍���z_�Eq��a{�W٘B���W
���,s�1(�%�{�	a��Ӧ}�^~�C�Ath`=D���sD��a���M��Rz�c�[�r��M3��J	)�ڳ��!��?qk�#�R?���ѸR.��9T[G�2�r9�?���zS�`�j��ލg;|��_(�"5���}PZ� ������?�}�����{�&/���[�*"#��c�A�w���Ԕ�(,Q�h��YEC�D��ڄ�\[����R���#�WC�B)T:5���+�x~N����V^���9卷������[z�^ǖ~�zFt��-=LHx\ƪ�.<����*�X��qٶ�額O2U!B#W��nW
��Et�+�8�_�X\��6�5W
�1#2�Z0��dŻ���g�=F�/�/<�zZ"z���Tv�ؘ�m�M��P"�E1w-�,��C���/����NrU�3�R����=yI���?k���T?x;4r��V"�JA/��g��P�h�^��;�3����xSg-L�����Z�(�/���֋i�o��D��QoJ����H�~��;�+�U�߉�c��ޔ�ˇ'�p��M�^��/�H��S�m�ߺ���M�ܹ      N      x������ � �      P      x������ � �      R      x������ � �      T      x������ � �      -      x�Ľˎ$;�%���
Eo�
���#6	535w�W��{xj3�j����zQ���������+�JQ�jw�*���
?G��)"�y��w�zv�o��:�����ӌ#8�vF�J����e<�WǷ�z���(}b�b�;����5{"��#��TE�wξ3�[�#��W��ew���M�R��IE��"��rh��b�ެOy*�G�;��	�f�TV�y]/��� ��ԋ���[�e�����O$t����80���N�wI�).��៨�~*TÂ=�����s4�
$�d$(�gA,לxT�ш�b�{n6����ҥRp\�*v\�e1�64G@� ͧ6���B�f�/"��fH��x�$�8��>5y�T�w?G�>�+F�9Й�e��sO����Sh��a�l�s�x���J8���R��%�ف�ܚd��,a̎�$#�Z��,� �e}\�����#���iQ;�f��=7Gg�꼨$Q3�_0!�[��B�a��~wv���Z6�Ϸf��o��IVr����}��o_̡���n�I��idF4�n�*؃�i<x�|S��������#H8��%�˶p�ج���9����O��"�G�:KT $�Lh��X���F�M����04�-;UW�z��D!�l�ǡ�޼8�f��D�ј)ýq����r߲z�v���!����E	3\�YD��߭�������Ol�l�X�����q����j{%�̾�Ӝ�����q�����y����k�~mp�S����a=�i""��9Bo�W�LB헙t�Gi��N<�9�>�	��:?����i��\J�.��C�{�(��7�y�m��?����.*�ܵY�~F�����~���p���ιs_�)�զ���B:|:���:.���J�O�KK�IX؁F�����G�#�0:��y�c&�Cg�b�x���)�<��rulv�Z��T��ە�Z�X�֧x�ɡ��Ʀ�ڴ� k�kI2-^��ŏ�C��d/�(�����d����b���~&�Mta`F)nǲ�a}>���y���g�7�w��}�E����W������iӲ'����Z�}�N�Y�zZF�h�4-��V[CeV�?i��AC鸴�Ӣ���Gk1�,��K˅�-Zyi'��e�b�Zzdk�6���;��J��aWddZ,�5D֝�
/r��B���ȷ�Q��[H�@b�m��T^8����-���*/�*�[�Z�d)26���˼�?Ny�YN��ߺ���aʛ�W"o˩��a�Jd#�jOy5H�ݞ��
�tHѴں��*�inI?�����f�;��Ī-[j��Kn/{��3^����{IJ�#�g���9a��#�OT�e��.�7e�a��-���n�;�A���s�H��z��΂?Q]Q��a�r���'�n�/[��}x���?z�G�	��{��8���b�K�M;:��qqñ9��}�����.�W�D2WvBZ���0w�>1�Uߥ��Cܭ���aRC����ŗ'�����>��h��G�1
I���]�u��z:&γi���;ϒ�Ȝ �m����'�b�qƦ���uv�o�Y�5�T���_<�s��s���v|���82<@�j;%z������M������i�_�blk��=TԽ.ƞ[�c=� R�� "�p4��^������X�!�)�@�}8=D��T �4�h%SyM���<�G�j�D3PNy�ӱi���L#,�g�cb{ʛa��~%����v��@9�+Q	�!�NѺ��F��ؘaGfR{95(�@��ؘa�"҆�5��X[��Ћ?�$J��j;6&+��/���l-��=��͹�������'H�9��������`6!U�}�>d�� ?(���+�ч��Ds�?�s���Ư�����Ήb����E��E�..m�>��:�{p`�`a�Ƞ��Y�ÀAڌ#��d�v*��1���iD�]�)E���D3Qg�}�� :ٳ�����I9�L�&�I��D�9/��	v��sbD�Wn�ȯO���IS07
��� ����Bt�NI�N^(�uE��@yC�T7�dT
m��ֳV�X�FQh;Ґ�߿a1c�Vh;͐�ۧTP�cŘV 4�T4G�Y��o%��ԧ���S�)�%ڧ��d�HId)���e�(�%YJ}j���RvzӜ�ʌB�yJ�yqP���h�(O	n��� �!GcD
�6D�*szD�G��X�(��:�)d�h���,�B�Ӭ�:� �f(
�f���VŘ�͘!�S;�ڡeY�t��]�
4r�Y�@^(�W�B䤳�4}�T��é���������(F�sD�C9��sD�� �s9����
E!:�I.ί��AB��2f��_��q�����E졚�}��{�\Ԡ�x�}"����G�%������F%�8OJ�sy6�G	��9�\���ñ9���O���p�-l����k��͢9,9Lbw�j�����TT9����]qH�zd�r�6��9�6��@!�t~���j�x��X8�zs_$�H�#��\/�e�N�ع�u��rRzK��q�Z���4�䒳��������>92�{4�GmS3��s.>�{J�!��i�vLv��ӌ�mn��g�����O�����<��8�>V��e:��m��(r6�g#��i
}�����=��ۅ�o�k����f�3ծ~�?���o��ڮ�0ЅD�Q\����G�f�>'t!�vUo�L9�������bu�BHZ�ћՑ,}��O�u��Y�,�K��B�v�ĳ��?�?�0�}�1�"�ݞ>Q�j���u?� �Y�G5]�ǳ��?��������6���N�-�"##�:>� �����[s�Q�F��ݾ�s�	7���B���95n�;�g�t�E-�z ���dL���B�r{�x�K�}ړ[��:��ۤ�[U�pf�*�S�j��ˇ��{֠Essܧ5)1�(I��6�J�O��n�6'��_�C�������:� v\_I�"q:�ӎ�T�R{��̀J�ð��6�d)�) ��L�-�/���*mV�}���qs��������(��凋J	�H��0:���7\��	k����凟b�ϝT�E�����>:�*5�.R��N"\å]��\mUjS�]���G�8|<�2����)�ٓGO���`��lrECx�'���ե�1�d��*R��gm�̀�pd�fb|Di�T�5�F�b��_�)�(��Um�{��<`����B��\\�{i���.��"�	���ī���M3�1��%33��~��;c҈NfU[4/45��P�%����YC҈��NJ�n3~�"}�ds�ˏ�/��](�P8��I#rJT[Ho�酧A7��`1<�\|7�����F��:�)���f��u���ШN��n�z*��=p%yH�=�:��z� \���}6Y�x�Q�m�n+i��G�{�H{�xD��NI)��OS'�@���_r�HJ�Q����a�Q9Ց���&��#��1�HKu��Q�)�$E�`(���HK�<ah�W~&r3�E��֠#Z#N�4�Cz���������b��l��E�C��j�Dikn�	��@��(ђ5�G�Q�i �
�F�bM*����n���}E#Z�&�ѻpx�����(ъ5Y�>hU���g����J��d��S24!c7�X8r2�졽5F�8��$e�&�֍�`�� ���\��;�G���W�y�4]�Y�~� ,�F$�6!��su��,���ME#RQ�PQɅ4��,�"�b������%��.��'1ߥ�.�7E����K'��k������m5B�}�r�Bl~z����WP�����?�{��pb
�b� �7�a��	�m�A���\Ө����;Y�T*d5�HT�M�J����2�X�4�	2		�$�����"�f����[�"�	bXD�bNTg�8Cb��j�}������g��Y��ͷĸ��M�w3v�m�{;�-gj!��\oYG�����[�_TU��~���֠�����l��q��7�_������m���Ͽ�E�ވ-���1    ��/��-w.<���Wې�f��C��� �E�,	o������<�Y��ϥ�ޏ�lddqC>�����Ҝo�[�_>��ʬ���u}��D�07|��b<B"��<��~E4e~|8������hL#&
�D&|:&:�䉸YS�Ó'��&��e�@G��C']L@M����?�W���G�̂�_�%�xh��.��cѰi�[�>0�`�Е�?Kf8:��W@�{��'��#�����ҍo<��J�:x�W��,���v,��
�᧴�q���O>#���|�i
X�N��ى��O ���R96l�B��W�M��_^95���7|���f�;�*��{�e0�,:�QDzd����=����ILr����0�Pض����
���m���_��&��9��i"���H6��M/���DSh���JpJ��B��Jn~����V��q�NΚ<����Ye��ս�Iy�9��˺:7'��US]"�p�&%p�y����"�k�r�? ��}�����]x�%�**���hOXQt��'�:�is�+�����]s�����,��mN����i��L�t����[��|��U���#��[,��&
N����b�[����jQS­�y�m^@#���>�s�(7���x!k� y��zF��k"3,�,�����Fڕuۧ�����u�?��G��ވ<s�_<b�&�2���J��5�ǚU�Q�#�t;y̟�����E�{ʌ��-rM\X#�_�*��sN�2�<��j��1�g����?�$ԇW��8ߝ����S�n����@����Y���>G(���f�+U(?���/Sh_�0i�%���V�o=
�D�@�#���\��&"e�Riol���Kt�D��	��Y�H���R�f�;���,�F�%�Re"�5f�+��4f�ڹLD��T�?���*��54��6&�x�}��d$������ӯ!d�(Kg��{o4]d$�	ð`\��LT|�d$�)Ӽ���ql"�X���M���E&�$Fy�4�x�P\� �M��2���}����M;�ɤ��j�0R�Pd��@&��=�a��d�LJp��ҳA�ȳt�+���җT�6��\��M$}
-ħ�� ��&Jld
+��Ob9�i��F���,c/��u0R�Pl"�QI!l�54��z�q�<`է�W�xW�6H�C���O����@f�a�
q���o�6���d���S�O�?lF\PQQS}:��6?<�1u8*�a
�s��	솉�Ñ����0l��"�P:��-2�� C�h��w~<��������;+ſ�W\�!�B��ݧ0i/Y7������͔LR���	U���@�ň�UM3�R�.��&5NJv[L�p�w��IJr���\�I�'�_�~��Ő,]��nQ!5��)�%�]�(J�N�o%�/VB��(E�gRܚB����4�/=��EtR"�^��7�`��Q��a��S�(	�C�HJ��c��O��ej#��p�"/Ǥu��1��P��yR��O��ѦvD���[.�Ƒ;j�E�I�u�B�p\�ź�8i��f��_�Td�	���ژ�n^sK���px���Cɥ�m�B��)�>2��o`ơ��{}l^�c1CV�ᙱ$3K1�^���43:��}T<3�VP��Lؑ��ٌ[��N�Y��� f��0#if�y���æ����h����I��m=F����8r���"X�.��np�#7p�Ƀ�q 0w�;=��I�[�!��
�a���!(����	��}& ŷ ����˷#�x�O��T#�`;�a\�~:�n��O��c����-�}0�T"�IB���M�"��ꇯG_��whw�b���� /8r3,���<�HsX�_���vh��Z��%{_{x�l7\ߥz����q<�����H���27�f���@���A��hS��(ɔ���0���5�YUU����ׇ�<Z�%�IN� f���t5Q�Y2���A6C�8hf:ͬK��� C^�����Vc�SA�i�*�Vvs��7����ج၅]�
��Toj�u���Z|��|�����P��X��dNu[���n�~ɞ
|��C�=���àh	��zHu�"B�˘�]ި[/�7�����
�����q[�#!�=�v���A�oFz+���ނ�St����yg�ü��0�ӕo�[�z�:|T�S�Œ����U����^�{�a��.G�,��s����k�}5r�u������6����ڸctɠ~9_��ϱ��ԎR�V��#h^�G K���ν��7С�YAaW�=ó*D�gy<�ŧ�D� 5%{zw8_�V��1;d�c�6��u�=�<�Mͻ�C8�е���<2��C��n"_7a�4Z���.�Tv^m��llP����<e�����P�币P��25��F����$�[��-{�Ǚ��"Vm:«ٶ^�ec�+:;�m��/���w�2C�� d��OQ�~�H�[��H����V&�w&�1}�������^����э��h���`��.�!/o;��	��j�h�\��KBwp�P�����y�K݇����?���6���l���'��ko_�
�7!���%Mۡsp���~�׭w�-�� Z�<���ܶ։�Lť���x����Nyj�Ӌ�������D���<-c���N�.������0%�%�]W&ny��sk�e�r,l��w2!r�l������و��L����k�.OWLq�M��Uv)�c��A���$s}�J]�l�+�H��$sU����8�G�G�K��W���J��7Ġ�y��A���I�j!#�h�>�W���l/%����E�
���za��]>�[B��b����ҧ3~��-����sYW�ǉ���4����q?qC"/_��y�2�?h���Z}��m�U\u]��pjE��M��R�'���������w�.����$	�޵ ^'�F6��>��,���.�ݴ�wE���%�n�%An7�Z.����=HR2��L������C���f���أ��̆�e#kM���N���R�ǶY2��a���lC<�t���#K���D�}�_�j[�ӿ�~-O[���Y��?q�o���Ls����,W����z��/�]SQ�.W;R�i)��i��̮y ����z�������f��TG�ݯ�u:�ᑾ�P��y�|Wc��x�>gs=|���E,�Vihx"��W�X��nr������Wu"F�f6w+���~�,�����������S����[��:l�N�0%�����`�Fk8�%��¿op
L(����	\%�i��A��g��\D����X�B0�O���GPS�w�{���������@P��]�ؿ=���a�D�ˀ�sp�l�̳ _!�U�S|���wa���;�<���!�O�ߧ�7���D30��@�
t�u(H�>���b/���9���Ѓ|���SP��o&������+8 �C��sث�#H�:����@��b|�Ma�y���>ջ�:�%���QNc��D�;&_����l���s�CfxpbaK��3tQ�����P�Ae���2�����_������ለƌ��D|��׈���X��A0 �M�	���`�8����M�"&���
�2����^D���A�_�(�*O��W�)Q�mE�6���m띓6�go�eN�A��4�m�Lsra�>6Vk!���A���{�ڟo��u�J+m�U������:&%g�#�W;��7u�]����S\1J�(:J�.��K��s��
Nt>���>C��Q�F�et��ˣ-�7����S���/_�ߢ��ŵ�/��gd�,V��*xѵ:�T���c�{�S�)ӌ:;X��-v|��mZt-cYt_&-߇�͉�ajY��*G'N"N|���M���U��Jf�H��߄F�!Ұ�Fo�[BC���D��,�z�'blfزqvpˆ��&QB�\����|��j�1��    C��0i���D�|	�A�ʨ��FFI*<���4LR����h;��m=|��R����A{�rxxm�G���-��s�]�8���0��o ��<8N2�4L��
��m@qR���̄W!\+'q$��N��'\M��isC՚x�wɏ�d#N]c�݈s�Fn����k&E�8�S��b��+�Xw�)�q1P��Z0�|�����:��LG�����k��F:.�w����I#�t���p�/�����:���p�8N��ˁ�:'���H��@�><C6�Aqb��ˁ:n��!;��8E:.�vB��=���S��r��[�#� �Z�N�fʁ:n�~�|��)�L9�$�xG6��q�4S�q�z;!��H3�0g��I �	�)��a:�H8ZD�8�S��j��3�u���A%�1L�Y8YC6#D��G2��I7#~�#[��8E��{��,�S$�j�tkȋ��wĥ�#�VϭYXj#n'<�n5P��U��q�"�VC��s�����Z�@�7�����=��͹�������QPAkD9�4ǅ]�$�>;�8(sM?#��h�HO4ˍ��bL�x�����������h]j��.&�A�� 2ǀa��A|�B����A�u�����k�dg"ǮF�x&f4�q���c]��&REƛ��	��EƥƊ��-��ʢ�c�R|gf��y^c.����$�՘�Q�frRh$zSF1����^ssF2`rRH��j�)�LF
W|�9���{h丛r4mN
E��t���?#i�����	� ��A��P"-�9�p�<�0�O�l�=�г`<����h�s���ߊؼ&�"�D�l���F�qƈ�j�A��(�j̇���{1sc�ޙ�9��v-��g"4Gȭ�ݝ1�l����n��&s�yK�z��w&x%.�H��b�^���ւ���A�P��c��XC��M}j��͹:85T�!ⴢ���ϕ/���R��q���r��9d
��Gd���� �����>�z_=��ls�Hn�sC�u���IL��*'v+������0�k&i���s4�'�%�lf��W����u��Xo���
U�I*xU��o?������q��uS���J��e�p�:B���.1��D������җF�ȵ��:�j�B��>M%�t-n�����g�lL	c�7��ll�m����l)`�M���	�i���ǉd����z��q�����}.e�%Aù������vù0!|��T#�E���/�)�-�̅~�/��,�5_����􄾮gF����U�%�.�7����(<јE��/>%���A>pPO�U�~��;#ߴ
"�54%��m��J��iR���Lo��p.���P;|����>4�Il�p�IB9dpQ ��c��c�t�è�ԗ�N���٦YC����v��8s��lp�� iB�X圩�G����/��i�8��!#S��:��%gX�~���
s,�y-`��K0,�C��dXH���+�(��2ol��������ma<\��L��[�\t+�����椡��r7@Ù�8�Z.�F�^:�<KC{�Tj����,h�9(�	�h�fD�� �f�h�/�h+hlC=�BAш$T�%����4�څ�]XJ��И�s)^(�����vX�z��G�HEE[E�)��!�F$��-��+������ȫ��4̈*%�I�WQ�W�QE�l7Ȟ�΍`�U4�U�2��.d�4FT��_ʬ��4FT�(Pʬ�R��܌��Q��Y�̫�QE�T@)�*�4��h�i���Q���y�a� U4]�%odQZ��I�Y��)j������̪(e~P,REQ4"�I�ύ�R�{
�F�����q�����+�$!���/i�Q�H^P��g	�֌����K��>~C������F���|)e(ѪQ��^@������G�lT>�g^S)��
�G�nT>�Wگd� ���P������(�Q��Tz��z���=��Ϟ�<sE�5�t�,+-�&��Z��)�6�CB��1溍���p3�s�F���7�ᇆZ�^3r��t���F G�,�z�tT�@=-<��{�O�)A)�e@��;]�$�+ख)d���u���<�I%��(�݀�?|:5����q\7~R1,<{b
^gnŔ�4��b�Y��g�W�l���7��G}\���lS�'@6�mO>�/ː����δt�*|J�N�az��ߥ.���ۤT�	ߋ�(�m�ewbi��B��m�Фȭ/���<�|}��#>�VT�U����z�@��c�z�v��*G>4�%/B�����H_*ϥ�6Ϩ<���fB�}�A�t�q)��2�G�[��O'���"�>:aZ�����d}:7.ާ�#G�(&�y���0.���#�	-��C�qA��(��oY�� �Ϗ����������xD>��؃_�-��G�|~��S	σ���xDzj�z�6�y ��#�۳y=5�Ǧ��(���|�l�_�rD=�o�l^O���T������"y=5ʟ]��4�߃ʳ�=�<�#�it���y~���4��S��Rz#�itŧHVO���QO�;>E��)�T ��4��2����RO����V���A���u�C!�ţ��� ���u��S���*��S�&���S�HO)�̑{ ��#�S��Sg��)���xDzJ�z�o�nROQ<"=�Y=�КNF���(��+����?�;�&�(_`AJ`�r ��
 ����1U	E`�<�$��Օ ��!O������/���������J ��4��!w���}�.ܗHD�f	n���x
�
��~���-RŒ7&���'AM)��P�$�I9�P�$�IM"a��IPS�t���"*���&�IT6*O��!��IP�>�8�;ˠ#�@�|�j���D�Fǰ��n�����`��1,"���cTȋ8��"��{X���?�ׇM�Qi�>��e���Q"���]���
�o�y�Ee�c�%�h�}�̣����(������#O���0ChXd�pv��VE�� æ��f8:�#�ΈBC K�T:!Yu�5�6,ȵR@D"�L�*!"�AN�"�Dy	^Bd��"3�J�RT��/!2HS��l��A����W�A�ʑ7�%D)+G^�����MV9LY���%D�)+򖱄�@�������"Ôy�WBd��";�Q��� ��K�SV�]�Jg4��f�����Z@d��"oK���U�&+r�����F�nr��;�(5LY��%D�)+򦯄�0eU�9R@���|�:2��F)+��H��A����:�"�����,��CN ��n�~Q?C{/.K@ET�>�!��1�oė�K,��8 ����g��K�l��~�߱Q2�:��Vwl>�I`������
�m[?߿�L�mH��ns���,��	l�~[b�4{5U������m'�N�;ޱ�D�)Y3�6�ҝ䔪�wd�%��%eR���w)��rK�.LI"�M.�߬P%�%�)Mc�+��1s��3�e����zK/@mR�nJ}�@��=%c���f�crJ�^^�&�Z�N{O�#���Qٔ���~�R�}~�BJ��]S��^&����L���j{�O�a]���/���c�ڮ��N���r� ���Y�����c��;�<^#����ӥ��M����֧�J�d�n	�WŗC��o�O7 d^mϳ���,��X�d��Q2�ԇ����̏y��Ym?�(�R8���ǾZ7?ҥ �t~9�����y��g{�������86�
��3��Zgk|�i��&l�s �����Z�����f���B�_w7��?t	��~�)���7(Q�?��C���;-���Ws���sS!Q�]�kߝz�W��_wp66�����/zs�K��l��`XM���Y�,AY6o'��Qh�F�����e<�WǷ��ï->�����4���緔��'s��-&L�j�0���S1�&�f�#����Y��ɬ���;    Vm6���ؐ�g�I[|<��̐��S+��s,���%���\���#��LC.�)�!�xuM�o�*İ��t��e��9@�S���6�g ��:%pJ�vZ\p��&��ʄ� Z��T����<7@�cX$M�L����د��lt^�
T̗�lk���
�R၊�2��j8GIFx2&�df����6�X2Р_�Q��q�?������Q�O�!�����i���-	f�__�=SEa� �[���<7��ݗ�T�F&����"J9,�r��H�Q�į��K]�����[z�8V�T�����J�շ~P��۶k+�X�Qa9�̙X��֍ծ^Gcűګt "PD��P�VT|������甅��z삕=ַ��L�.��c�N�m@g�7Kd�_D�=ϩݍ�ec�L�ıY���&fm29���	��L��[����^6��X*��R��Ry~���zW�y�u.e�]���T�-����.�
ֹ�A�Tfo�RY��{�ְ��,�����k���yR�|k:���n���S�����~SW�Eš;p�q8N`�n{.��T��\����p��p�{K��uq�8�b�Q�h��`�C�+�����5���Ra{���:�T���cb����U�҇%�ĚN���kNl��Dǿ Ȑ��%t� :��=�l��4�)�A����%j��$.��ө^�"g񬨂#l`��Dİ���-J�3T;��FQ�%:����p��8J&�ĆP���K3�Q�%>L����ԀtV�����D�MI�$%�5���G��@���(+��0�fa.��p�b&��7g���E.�	��G�+E)�� ��]78H]BQ������j�|"G)r��0�V�JHg EIE��7<R��ԥh�S��ۄ�Q�H�ǩa�ퟸftD]"�������_Qh�ǩa�퟽f�Gfp��=NTo?p�*u܆����*PBΥt^��5��C8ա��F����1����>;,�$��ⓤZT�0�6>8A6��Y'�H�0�f^"��s(J,Rm=L��r�e�8J�j�a����!�q��ů��6��$��G)Rm=L�y8�S���#���T[��C�6�R$�z�jK�%d����@�+6�7�"�D��$���8��4�Sn��6d���9��=G¢}�Sn�}$d4�ҵ�n��0��a��I�UDg�p�0nȽ�����od��:�l���&�%t��~o���Օ�LJ�[0�]��g�-�����,����u,5&KJ&�����#R��\,�Q Pu7"��5�4kx�pD
�t�,K�F��+���G����"�j�E;mV�)��lD
�+k��-=G����u�vL
�oh����^��$���N׷�O�srC��zF�(�Ґ�@B��)��	C�))v:�(�7KC�����HC�	N��^�!���D[���X�E�-��d�C��(D�Ԇ���'�X��s.DG�fՑAC�)D�H���a#R�ԑ���-�1)D�H��#R���"�Qc*�H�i^���=���W��LC���ZE!RG�p�_�P�2U���z{86���XC���>5���\(�4?.N���of�h�T��jq���V�}VcDͦ�m)�l��-v�f��+�����d�c�R�	�4o�/�,!�z��W;�b~z��!� �J	������y��8���X?ȣ��tY�V�i��3�v<��ٟf��˟�C�X�����\XB��&�x��L�����[s?�\��!������������Q�f� J(i4�#Jd���ȣU���~-ݥņ�B���٘��Pb�G�\fՙ�0V�W� ��	�R,�oiU�ą��?`s��uJ]��s���9|��mB�U��"y.ox�C�Q�c�P	��.�6'����K�Z�g�����a�!s�%������p��`�;� Ӽ�:N%�Q�
q���9���	.��pn��%��xD�Wy{�x��,p<���k�0.8�
�#:�5�dy@~�ぼY��#
��� ���]��xD� =��yj�<Ɯ�QD*���T�1�<�B��<t�1�i��GO����Rg�(Fy=�����r+n����h��椡�P��ҹ ���\-��;��l]���OC�����E#u��&Y��f�@��H�E[K��SCs?(|L��hK�àxkHƼ�3�EY#R0�V҈<^�h ���ш6������4�^*�F������
29G#��d[Fhxkpf\J�F�^�����!�#5�@:�(�J�="hXf=���l�����eD1�o#dREob�à�(��L�h���1����գ�kh�!���ш�գ��27�EV��hD*�R**���{
�sYe����J��e�((�#�h|K��*z�*�n_W�{YK[Et����N_��?�G_u�ϗ_hC�����.�w)�]�h? ��[��O�H���́p�k���u?�D�>k��'�������wa��`O���\�'@��s���2���q ��z[��,���ܧ�`դKy���Q�b�l?�����y~��uM�<j]GQ�!Ϣ+ PƋ����~�X~kط���\��v��oI�z3 ee�hKW����(�����"�@�6�E�*�c�;�8ц�I���
\�����??;=�l�����2����+��� ��sI��Px�\i�Ã�O��k�����yZ#��x�׼��q6ű���F�^]������.�V<����e@ъ��.���P�"�R�RZ��E+r7� ��Lk�=.[M�n��oz�үh�3��e����H{��)�-�s~8Z�n���xߜ����C��g�ʰ��z�u�b-�q54�Hw �"��L�u�a^ w�ȏ7�l�jd��6%KJ)!��J4�4�G7��q˟G��K�,X�����#�E�{Gm6<���� �1o��nË<'A��!�~E��L1x�����A����C��
d!
�N}�<��IPM
�gX����X��I`A�_�j	I}�Eo���+�K��3x}�LK�J�L�OϿu��t���zC�͂gv`ha ;0RW�l:�O-9��H���Q�t���D�T�<�X��gK��uX }e���lI�?�{f<�@�(���g<vf<�#�bю�ᝁ܈P�7�X�=vKsG���*�@�(���R�o��d܀bю,Mig����7�7'A""�_���?�ֻ�znv�ѹ�}Hx���y̎����ǲ��O�i�ڥݦ��~ʖv<��/���ŗS%���Q	��^���W3!��tF����=0+!?��K�K��aDp����F�ad�� J��AD�G]%D�0"���F���ÈL�#L#2���aʊ<,!2HY�.�ei",Ad��j�d- 2HY��o�zW�}�ߗ���#0ٗ���]x&���.!�����Ï��ܰKLGB�������őB�ĔI��{�9�/C�,
@�#N@-����$�����?�O�A��ˤ�%�8�,�9L���x��A�޹��ޯk5Z�<P��[Z������ �t��Ie	�Me�|9=�ߎ �{nG�HI��C�l��b�w�(R"����P���"�������S)���y�/ ���F�b*d<4|2�a.&��M�LY� 2��TH�����}:��q��%D���ƼD���w	QBdX�'9,xGV<��#;������"Ô��ZBd����V�0eE&����ȳ�"���#b��aʊLS,!���mnw5��-�e�N��z��u^�Վ�@�&�I\+x��Z6��/md3x����~�,������Ċe�H���h.�ԥ�7�E�R�4�-dމ,������@�Z��E��z�4��,�$��}d�ؿ=�5���<>�l���h�"P`Q�+�@�ND�d� K@ ��
�-bH0��`":w.��]�#�ӹ~/��2x�m21T0����z�y0�t�����ޛu"A��B^!!�S�o��G�|�(    �0������&`���`���Ή �R��	`M���u=ϝ#X81�hY����a>�FYc���C3�#�����~�v3:�c�|�y�E��-ү�Y6'��Я�6#�f��t��2�z�<�m*� ��r1�:��?�lS�h��'��d��ks�d��m2���e3�e2�۟�}�p� ��[Qy2��nլC=|��@2����_#��=w�1����a�v��s������E�.R��Ox��y#>I y����^|!�����{x^��1�O��~_:t	�A�S�G|=2�EٟB4������m�7}y�
�|Bo_�|��L�,��(��ۍ���3Ҳ�-)0K�Ͷ���-�m"�,*b���q��g�<,d����F�3B��X��6�z6�#�6�G6�� �
����|`C�mp�%I�^]~��&���#o\c�"6��5�X��p7Sl h b���.S��cNt��N���Y&Zz:(Y.�3D���:(,�3D���S[g�"�=�"��"�D�����2:4��0������$��[G#E9�Mr�Q�A��
��T�:t��,�O�T�:�\d�UY�=�Q�b��,�����t|_��R��J@��q�;�8��1�|[�R��[>��|6���{T�?ȗI���c}�*yR{F� b}�*�����9��:w���=N��ЎР*2�A�Q��I���܅��=����>Rp��TÛh#r�1����<Ð�"���r�H��cځ���ޞ��aT}p�T�!���ψb�d�c>ܞ8��N��N*�S���X'B'�#9�:�:ip/"9�:��:��b��9��'Bq��"9�:ɓ:	����Ol�#�����ֈ�Obm�����J�p����Ζ�`�ld�2-��&@��`�<0L�!�'⣐|�?����F�So�c�� t�?��������\A'!�a%��j�@5�.�v+��
��5�e0��/���e���]��xp�J��=�N@#!��(%,���;X@�%`�<>)a����Bz�S����],��,��%%,�/�t�By�Ӊ�H:Y[ �d��*�u�h�?��¯T�M]���#�,�g���,c��L���T��F;�,��Y�"z������^��B;�eL`�KX$����R���/'	�5`	��#xW��H�,!�|�D�p��H>'z'�+ث�ɷDH��1�lF�6���0'4*H*�|D�n��f���i8$}Ξ�r`����uatX��/�C)zr˰�R�����2p�����t�s��!h���Q�.��}A�{2e��.����mO��9��:֋1^GCc��|/��hc|1*�FS����&s�\�y#��f����d�?�)@�͌*�N�������P}��n���;�r°�y ���2؎6� +����rR�K�H����ѱ�%�ؗ�}=�L���È�tK���mÌ��m�}Rn���9�ʩp�Ո�]��?"��>?�_oÚn9b����6I2�ٔJl2�bD��S����������U�w��+�%�������o/����m�wZ|Ø��}�p��_3v���9��������g�@g�O�a�;	��)�5<E��/����IHH��M0$��ĳ:��#��!aH�Wڦ�k��\$p�'P$�;m��4��~A�^C��/�mw����	\�d��V�����P�x�s��Z��uQ{�$��^�fERxqƵǐ�H �Y�dM1;2�lN1�$FS̎ �SLC��M1;r�lV1�����4�X1mF1���k@N�=4(�h�n��)�(�tS�SM8���u�F$���J�����v_H�|��;=�4��k��	8M<��87���Cg�t�G&��N��nJu�&�فWB�[��r�R
�6�����nl��)���s����a#�h��M8pd�L��'�y�S�wB	�������u0;ҁ(g=_�'�m���y�D xP_���\��ơ-|�蠾��ˡZ췇�g��`���l~�k���z�A���;˥�d��*��OД��c,1w�_��4<�� #������D�"����΍2�k���Kg���`�0,\O��:;�_���
��xT��2
���o��Z1�(����������
Ⱦ1X枣���t��ۉ��"��c�|b/�}7E��O*\�=c2� ��ܧ~N�bj�WB�G��V:��S�\N��9b��J���D�I�Hted���̙��x���Y�P#c��>�#Lh(����r�ǭ�~��^/(O�u���L�*=�҃#&Ӊ�4��L��1	p��#����U\����#J�{W��T	x_��	Ǽ'p5��[.��M{mA������/5d�wx��Y�O �݋�{N�1GV����;�lG��a����M��J����C�߈�@������ٝ���t�w잴OΕ6�>ż�WF˸����^^iu�Fs��b�B��U�o��v[Gƶ����c�,��ꨜ��,�Zj����/ӉH�o��iI��!=ӣ��M���1�a#�<\
��lov�6��S|��<ˌi�1�hȌf���ܬb6<;o	ԌX�b�x9�����\G��!1;���3���86�J2�%[�N�i�W�f�^��	��t�3>q��� ���?���P��wdO���K��	s�H���� B�yB	O�ʙ��77���8��.���7�T���*��Ƙ��π$K87&�;Sߤ�"��#G��I����/�����6G�nf��R�DuE�w��K����6�#K#ܮcCfj���[x�P����a4Ԏ���-�����c��s�{�'��k>��]n^mϳ������}���X����<ǀ~<����IP!m����j�w��<���8��5� ۳9M�����WB",Ө2��y�P_�.�����R+��� �AJq��oա~��c�vɓ����^�L�3�)�;
f�3�~�l�B����d�M�����q2[�ޱ���/��d�]�S[����v��h�]��v]*Y�d��/�ˬy3�7Ӯ3V�������8ܛ?��j��.d�X����۩��R-.%dk�����p����VI�	�������3�*�;�����_��~],�3�0*`ץ�Vr����nn�j��&��;ıY��y�hȶǩ���t�M��u��:�݁^��O��z[{yy�z�Ի�/��3�K����j��w�f}�'Ń��V���U���l�/�����O�ה��q_mO. �3�8Ai��L,X���*�s#���P\�ߝ�y��>9���nn������}r@�N����ɳ�a�i�o�����l�F±�<-w�l��I`�����SHk��6#7�JXprg�iv��}u~Y�~�eu�7�7t^�0M�/�뭈DJ�V/��E׎/cF����:6�}K���;��sc`v��2������A���ty���rQ#cv����q�BE���m����3���z��$y6�u|H���GG]n�3�AL��3I��y�N��x����Y�-c�vi��@��ⲭ�$���9֋�~�t*�������f�1Wd�Y:�����s=_o��z���
�!c������QC**	����o%����o�=�~?a����|��ޡ�s?���N�7&9#����.S@��j��۟.{'������N����u����C}>���f����1Pe�;�� ��.�~��9��Hȅ_}��]y�J�Ss�������:���߂��˿��'���^�\�d�����,cJ�AI��nр]���$�ܕ�A/1��G2_�wp�2t�b���K�o����J<�J|g�;�߄VB��Щ���L7���{�Ta�9kD�6����L��:�d���v�5vǩ'[Xs"�%[L���3�ƝO�UFv�|n�W�n��O�j�9/;6E����~����ih���v��A���A훊B���}	?|z��&H��B15`䋰�H��5�3�UoN��׿�[����������    �����������NJ���z�~����~�rG�|X�81]���������+z���C��;�]\��L���_��b|Ўc�=�?w��:чv*�����Z�`����9T��I���8�!/����y�H���v���u�L �u���$�I@u�A��& �R#����n�c*�.?���O{��� 4��i��m����әy�sJ3'N;�N�D��|ҥ�p��M'�K��,6f����]�a8����df��9I珺 MW<��]!n�ݣA�n]�kH=�v�,�XޥMn��cX��b�\&y"��L���=v~$��j���>'D�:�p�w߈A7m�T�1��Dc�>ַ�c}�
��?eh��ۥUn���}j\j������ř�P��U��V.╫��֦�Tl�H�&��X[;l�|9�9eV����Y�<!_�._���$�]���Ek&�w�o���<�'w�ĸ�t�O�Wva�0���5�!6�2�D>��y� i�e�]����!�t�2�Β	�O���"��\�&n�B�Ee8���W�k%�4��Lhu��RT
���]jf!��D/��R">=}�aS�N��W���.xrs"��%��^Rө��.���-1�V���=�d�D���0��v�i������p���A�&��DI����Y��Y��YR���V9�b�,� �~���M���P~}!?��M\&:_[�6�S$���N�p���su�i�����p��?X_nlZB�8C*cd���͟#j�`�O_�Ym�OTV[el��.�w<�������Ї�(�{9�pJWT�*B�z��<���'ݽ���e��&�zym�5��:+-�d��[�[��ȴ����R𾘣 ��`*X���n����ޭ���d%��WPI�0̲Vw�vN�0�$yև]����N�����z����|��]�'���CAtz��~��s!�o������^v��w9B��X��Y\�l����?�R�$��&�콺!�]S��k[�|[���>ZWN�$�]����O1G��<G����!�$r�jA�x?��0�ͩٽ�7��k�$�P�-q�њ�D�Z�/P�P��U �w�����9�w�c¦�9�������Yz]�6�"P��I[���ɐŭ|�1]@�w&�s�	5�|#��O�A�$�(5���B�N]sS^I��<��e��ўGd�i;s=�B�y˸�]b�v���8Y�o.I�N\~ԅ-#��s�ϩ��3uh��E��gN~��u�t*D�ݧ��O��ӱ�g��-{�+0DZg�vV�:�
d�U�3�j,�ʵޝ��~WQ��L�1W���Y�ܥ^N.�����?U��E�sA�`�l��_}���J��%U�Em�f�>�de��|~ܟ_�c���$�d���ɫ��b���%�n,��4�7\�X��F�Q@�V9շ+���{���2�/"��I��W��
0�$ۼ]~�I�w��丆+�u�'�_n�r��9�:�-WHAt�`�ZT�(?�U@��ƭ�"25L^(X�	����pFc�0�f�8����1��"��ó~�.��
s�XD ���}e��m�DR��jxq���W�+(*���ԫ�b��N�/9�NnY�L�Z�B|և�0Lp��v�ߥ��������ܜ�GP-*-���Ԏ� ��:�4��j,��b�)5Z���1'&t�K��4�]i������X�P�CW�����fԹ��w��D�K�wҁD��'�l'�%/W�����Ml·B_�w�)-7�ݏjy�S����5��g�� ��`��t�rS�ymΕVp�ל�><�w�h4UF��$���r�������v��y�M�
��x�BӊY�Ŗ�S+����)����e�-��w���������59- �:��l�����R�L_��هNo�u��v����Y9&����v�`꫋!"��z��a)̺v+�Q��x��r"��[L"Q�D�
���eR:��>,�]/��:4ǳº�����MElL��-�M8�}k0tb��o�S�f'g� ��v�4K�C:�-�T?򗟷���G�VȊ�o��5���o�j�p��~ �JHF}͏�Q!a�>���:�O@y��rllv:׻eUo��fr�{7�
J%xXr�����-u��B�) E/��R�A
2�ꅤS@�^H6�鼔�v��(*��RJ".�hڥ�I��� R���c�iKZ�w"W�`�`�׮��$�L�Fp�-��'�.�x�E�<p~��<u[��o�3�e�e�*�īy*�x�UqWE�J�U2p���eZ$�"�$����s��S��z�<\�L�ຼ1x��8��Pқ����2���*|���`h����G���ʦWlÂBXޓI�۾^�g�c��1�����g�~;A���� ���W��UB���,~��+C��A���̗˗��dк��q;o���m2d!�k�����i����-��'���^�uU1���B�����W��R��i
��~ɷ�d�^�� ??<ȠE)\�Rx�r���ݸ���xc�"�e|��S�Eg���$�'��xr��Y�K��R���h�����o�����0�J�)�P��ae�Q񃄷_�ǹ���S`���Ե��萜�'�z2&ƞ��6u��O�qA���47���&+���Jʒ���h\�'Ig�8��:�NP��D,�p�����!�S�2���\�{4x�n�����R�ɒ/�vٟ)܇���#	�J� �z�Μ�RXv���k��� ��h��U�Z��,)=���n�p;�)�qG��Q�u�mP!6m�o�Ss�W�^�������C`B�"�Ry������sb�CnL63����}��>6���x~�7.RzY��\��˸Yb�E�8�Y�����i�Bd�B6|�鼼]�𹿼�^\�֛�&״a��iC�����{���s%�SQηKn�D�"O��r
x��WS�s4��^�����\�����h������8�e`��s.{��4>wPQo��NҞ�A�K�FᶅQ��(n��@᠊���S2���6���=p�_��
�e},)�X*V�~S�N�z�٤�b-�D�|	7��:�é�D���$xnS+"���Ȝ��_B5��P#�f����9[F"V�~Kd�D�X?�Id�D	;�D&-���(�|���?13�F��bF:1	����3N`	�$�Q�hb�H���Ō,��"�g�2�g��23�u����9߻����4�����__���t^����xy;���7R����t��s�z��@ل����WB�����S�v<��}���;M|�	�y^m15�탪���>
��1�VϽOgef��� �FPK�����^��ڧ�g���#��w^���\��2D{?|]Ϸ�����l��5g��?᳧��/��빮�N_�'H�9�������\�{���S5��E��`ڦ�����f�0rr��'�C�
��]�s.�B�va3ne��MBb�[IsAW���x΅("�f�Ӣ������켨\P8sk�RJ�^Fq�$fT8[����2�C�'Vy"����D��~⁇�����`���?�P�#u\��H�=�`��>���A�<��<�<z\�㒛E<8���v
m�D�ܺ-�!�<��
�$���R�����N�ܶ�A�����4�&��4�m��k{q�P?.)���Rҋ+= �p�l���j^�e㝆���ׄ��A�fґ�/�"]�ɓج�x\I_<���![��-o�]eV�/g��b�xqSO*����K��l�2����@{��_VM0"h?Q�ˈ��[T��$v�����E����ς��ܗ���jo{�h��?�O(h=64�@S_���p�Z M�ؼ˽�g�^�t���T��x�eae*�u�:T[��j7[���Eo5����$}���qG��:�˺�����[C�`8?�O�|s>�=C�����Lo&��y�U��)cd����_�$/�������2�	��Fv+3�椫��YIV-w���c��C$c��    �>��Lm��̛�{l�:>Զ�ޡ�x'[���=0y\��Y>����B����2�ɔ��̅)O���.d��4�23��e��H{�������#E�0���K(���S�t�"xћ?~��/z���ؙ�2ldI_;53s7���Jͼ�ϧq�|GsH�B�K�E��ǔ�}L���B���u=kѼ����k�(j�3��k���ӎr*z�>ƙ�&������U�;vN����uXo�&G�#�SiM�[�>��ۇC��9=��V�M;*��|��d:����vӎ�n��(�?���oѼ�Ў:䡗O�6����Dٵ���uT�E�s�ޜ��?��Z�Ip|�@d�'���/�7k%\��Wo�t@!��\�k0�̔	��}W e������`/ռ�t.�i�j��fZ\{�H	�|�@�����V*<ό��o��YBf�_/�#����w���>=�Dܙ�/|�I��U�_u��A������v��T�S���\gb%sA���؃�2���)���Xbv:��d%�W�<?��
��Ǥ�#�_���|�����t��|�	�U4%>F'�������GԿ"�����9%>J�P�i�W$3@P�?£�g�"�կU�3%>��#~�}E��S�յ�L��*)X�8g؅�6s� ������x�^��=E�{���j�u��Յ%��2+�ى�/0�l��(-ă*7���_n�7�a��,�'�a�T���[�@)\���mE_��\0'�Ш�A�ɥ���w��J�G�� �K�C]'��T�*g��au:��P+����ö��bX��D����q�m�v�����[�X�wg�[˾���%�,���$�"����1}��5��]r��G����R���}Z�Uz��L:ݑ�3�2*��KE)w�δ�c S[�,�=��tO��T����';	D���rS�� BN� Q}(:�) ş�hcL��2NK�-�]$\�0-	����á$����n�ج/�� � �=QD�1��9R_-��rbI����>|��������2�����a��Le�4�Ϭ����D*�O��}����>y.�?YF�G��N���_pb0�늢d��7�D��i���@���6!	��Mm���uY�MM")}�$8�D�ˇHuYa��g�Mz\ɑ�ϳ��З5�"��җ��E��')��{�� ��N��14ҵ��4:�=k��U�*e?7�F#iK�v!ܨ��k X�0�A��oD�:�Aؑ����˜ =&fD�1���N��m1/����2m��,�*����"�p_Ch�
�m-;Pf\��K�ܑ�Trd����j��8��+G�T-�R��e:r�zDo[ɶh�|D����jat����h��S�ж����
��n �F��#e�GSf)h���ˑ4�x�!e"��'�����(ӅD���6������po�N�,��Ƚ/� ���P/ی@4@�'�`�f�����iB�;�h�|�qF� � q�O4�����B�!
 ��B@�;���i�I&���w8���@j[ȴI�@�}`/��y�>~�7C��sGbG#�$�Fb�X$�DI,�
WV�yձ�,�u,�~E��$qczOrgJmn7���n�}핫�4����5��ҍ	Kdw�(e�D��x������ɻ��Ѽ��^�ݿ�}�Î�� E��9�IC-*��O�����R��������G�[���ZP8lT%X�K�ʷQӴ��*8լ�兜�4���1�7�Nl�R8��i�Tu��h�P(�2�#-c͕cn�<
��
<�U{2��*�ZUIv)Ƙڒүiqi3Ŏ#���D�V,����۽�7wz�B�2����(6�wjh��S�l�J��`�1�.U�X"��05 ����J���@�@�H��$h����A�0�9��I%�1����2O�.�t�`E�B�ģH�L��9Q�G��p��7U���[�5(�r���>�^b˧
���uZ#+���Pz�Y�b���:�^6֍�Y�����u�0�P����`�ou�,�T�$@�Jd��Q5����=uXd`E_SJǠ���(DK�A�׀�C��vJJ�O�j~�G��Q�5������>h ]޶n�[6D?/�ߏ ���
�i"���R���w{��r�^�VYJ���2m��_luTA܊�����ϟ�/M4��)�Z����廭��:����H��x�\�c�r�$Fz���I��-t�GPk��J���|C����`7�;�t��Ia&.����=��ɴQ����d�[�����}s8M�埓�׌�(��Bg	Y�J<Y�APB��$@�� X�
��A�-�|���6ujO6O6u"&��tz�Ԕ�:m�5u�ⶊ���&_2�Ry{�&L��5/+�#��u3Q�������	Tm��=�!��t8�����A�xFp�d��#Y�x��W'����X��:�?_;�
����q��/�G/�yvc/�Q����0�ѻ�*�����~�x��۹���L=��wSo�����gV�-<7�F�1��O��o����X��b�Fm~�x��53_rt�W�/�zǟ`�л�*�V��x3���Y=���|=�������u����p�~�]�׉/�z�3��f~���[�"�Ǭ���$�b6�J�(��@�R`3�N<f����f�N<f�������2��׉�F���b�Mc�X�ߝgsw\^Ζ�T	@;@��TX�y�}X�yk�{^�^�"u�%V��B�eIi~����������=nH���N�/��v�~��������B�~�� $��T��y#?JG�Jp�F*�PN�t�t��}x�Ļfz�� bx%K����/z����en�3�<~�z�2˯�H�A�m�>�(dמH$��;�%3f�k$���v"L��F�ڄ�D��p�ZS���]�H��v/Lgn�-#K��i#�6�!�f;P�m#F"���!��:\�j�
�YO2zm�C#u����m�8d׆:�F�AȈ����,�3�ma:�����%�6��*�����"����
�����|/<��RҎ��l#6��{ �&�c�B�m��U~�����ϐ�Y��W�=��qz/"K'H�ɲ=ָB� Fd�h�$�7U�*U����!F9?���ݷ����f��6T�:U���z��1��gI�(���#��~�*��&RА���9<V��׉B?�h(���T���r{��Ty�^wj �B���W��Z��/�r�{�)t�
�$�l�I�͕w�u�PP�%���k�Y��e0}�3G��qٜO�;Ń\�K_�~P&ĝ�S~�[<��gP+6�����|yӱ�]	�芛�u�w�Mǔ�t%U~�c�q_.���MǬw�0L���0����]0[ F��BR�zsɜ�n:6��.5u ��K�|w�yb�("����t�q7	ϵ����_�&粛�}�S��Y�w�bٜ�n�݁4��R��*��vBFr~z�O{�+���1sߥL�C�ӏ��SAa,������M�}+�oPDd�N⚅�4�ʣ�%��$��
��頥�t��SA~���A�򧩂ħǑ���UQtRK�?g�J=Й�G6�*ȡzY;�M��_:���a��U�`�H�
�׋/{�W�+�{"Ǳ~��w�AZp��ŗ?�As�^dfh��s,��b4Az��ľ��˞��w�X�^|هA��TΗ=�	�s�ЃϿ�#� �vJ�����A��!К�[|�×}������J�_:k:}��.�����{�~|��A��T���}��O4���?T�˞~���l��خ���;\v��nv0�c@i��x��V��`"�o������`2��x�S��'�qV����<P4�Y�t��q0�c=�5Ǡ��h6�����o0N"`}m�����,�s=?��O���7K�=0y.��Q@�iN(�5���ྜྷ���� _[�I(�I�- h�M���?�>7�gkw��Y��6�%�O��(��{����g@���40;of�TO�"�1�71    p�m�W�c@@�w����_G��w ����3�-��)�Q'��`�2�l~@�`Ӗ{}D�ώ��r�-��<�ZQn�ԥ�����2%�ݾђ��tE��BR�ӟd��hCD�:���O=�^.�?�h��pJBܤ���<%=b���k���[:>;忺Fn��U�%4�~ȑ���ݱ�Ա�_�>������S>#���#�w:*���U��K�Q$ݎ��v�B7���iV�����o:�'��X'U�]��b�ьF�,�9.�2�o03��T���]��?3ړ >Ӛ��3C PRj��)����C�}��:����ӷFh4A�}����Z���LuO��U��Y!�1;��0}����:O�$���n���M�K0(is�<��8?-��M�D�↋u0�Y���ϗ/��^RK���0��Q�[OHIѶ:٢p<�o*�s�a�|��v����Ǘ�9?q6��`��t���IU0�~���\���ffLg�j|T�˟��a�H9*�fvֈ���X�|o̭/��2s5*rGGm�t�e�E�EZT��Wrw$r{|J?���{ 1�7��H�p	���0:P�Ñ�1F'��'�w�q��H"O*���I��N:oڪI�%C�O����cYH��$�=�@b��H"�$�i¬lאD^Er$�yl�V��~&r�atF�I��Un�����8U$�����2�"�5�ʮ��N�"�ib�a�c̓~&���$7T��3�4tP�rxl:��IO���l+�!�gc�7�lא�6���c%���R�jHb���kǯbk�[qH?ˈ�V������Ȫ��2�Z�YY(c;�((}=Y���((}�;h����1P�ZgSlpRP�td�5)�>��_�!�@���r�f�(=m�o�'�EKK�I�c-�E�!�ҹۊ%i%Y�y����3<	j�IT �h5r,P�X�(,��k�0ς�*�~f�YE\���0�����B:5��$LS�C⼩����9��}�0dK�ʝA|J���c���.9��>Pr:�^D��C��a��o�SN�|�=O��g"�<�0��
KD˶螇v�@Xcݺ!��NB�x��ة�
��ͨ�-%vX�B�y5*����n$�P�����V��A�9����b���Ũ; y�:o��cĒ�����#��},*����a�k���Q�?� 7)=]X
�*Z���{%��I#��*0�9�Ŀ�@	�,I��4J?{
1�Z	�:�~��o�I�:G%IߋP�%��ѯ��ܦ-�Y6ӥ�$�s����[Kg�>��z±��@���z������_6�(#�m�v8�o����d�]�����AP�箟��3�' �Ol���rv��g�h�M�<D͏{��0� ��n�sӟ�Np��֦C�l2�:#�!�Y�_���f����\0"���j.���B���r;]���h�*�d���x����b�\̓^�| �3=��M˔l<ZA>K�r�d��B����?��C�&�+T�жH��ڗ|�!��h���#��q?��Q(��C�B�C᠍�
rY>W�j����B�4���y����0��w�0�!�PR���KId}f$7�������X�1�#��e.Ge����uq�Fe���<��X4�e�[�`"�9��g�׋�����iy��.�vץ�m��u�g���t�-���dſ)6��'�b�-���Y�N�s�
c�{!���,:���B�F��"�q�>g���>���\_��ok�!ܽp�?�IY�E���۫�th21���;$�[��2�J��Q��3;e���H���lG�^@�_�ٔ��=Qxqs���<��!�3IR����Q�bc��g��b6�<�=��y���SxoTF#D7��"���䜹z�Khe��Kݿ�v�S[e��)"�x�a�gk4��Z�(e��m�0a1݉v�F1q��k�lc(����6��_�1)9�J�=����y5=*6y���:#d����I��4����Qȏv?�s�;�8�����m"�'�sx����s!�$�G+����JN�ĕ`P�R��gY���g��_��^�і��?&ҍ�����*b]���̜�z���3��R�I���3+��y�ڹ(��3�;�#�&���mv��lz�oW��O����V�?����-]33"c�k�*�p�d�xrU�݃3�ʭ`j�9Ⱦ��_�N��n?ub/�����c�9�'�����Z��)�����>�Ѕ��Qq-���R�(��'ȫF�/Iߎ{Q�*G�h�0��%���N������7�K�+���K :�Gd�s�dV�R7�*N�w��';�ݤK��#��u���nҡ*5HG�\뤧�ݾ���	���.q�<MC+
7������z$ثR~��˽|��SJ}���ک�����~��x>��R~��K���|$��N~��ѽ|�a�|$J�&�}�?��o[������ٽ*�m���!I�Y���~Z���������߶}Q�K/�~U���/����G�n+�gza5�Â�f}��c-��t��	��VIOw�j����UғM
��	h����Uғ�����e�걈�:�hp�]��0FC�Gp2��#>D#8�G���K�P�l�~/.=��Z�imJ��G������(���>nEի �7_���R-z���\��+�F�ۧ��;\���n�Es�u�Z��%�c�����"��*��f��pDm��8��,4�G�����"��c6�vt,�l&3j�?�8:��gm>Ne�q��U�c:8
Oez�Td,le��"*�玿��sr�p(��๤<>���-��n�
Osj���H���t��s���Yb�iO�2+<��G���2�,m{؝��5�
�zz/a=b�y��Y�O<ʇ�C�!x��Y�P�<&�b�y��Y�P��Ҟ�΅<��D��w�<
Y�<��'G=�@#�d}��}Ƴ�Z�	<��)���t�{G��<K$�Wi"��Y�tt�@�;2f8y��WFx�L����if�J"]�DiP8�
IJ�?��
CE�9���c@h�2�,������a���y�aZ��aK��!�#@@|W�ܤb�i�raL���(�����j�5↹l�pֈ(�t�#���	�t��J%IΈ>����$�:̌^�K�儖�$�4%�����v�a�ʂ��"�-=9�?/��HW�IOW��_��_f���dG"����'/�7z�6䉜�v4#q�hh���2� $�N:M7���?M�}��t1;��j���?��:LO��f5������ř(�&#�B4���a)/3��{��O7�xחq(q����CnK�y�c�^a)h��K�,���l$�W�4f�Z~��ܨ Ӗ_�R���Z$��!�Q2�a�^�CYO�z��$��U0̑����7[�����.�db��ޅZC�v,O@�TD���b�M.�����O`D�7�m�%�M8	�3�	�|�
���f�e��A�'6�y�eK�o�R[<n_��a�f�� ��.M��+��D��[�FtFG��a�q�H&����~��d�&��SESB����6�J�����
rS����mPA��u~'B&��>�� �e�d��~���I�����5�������Ld�FW�1 Ғj*5����:�"�������sOV�߀2�}L�;;�����݉%Q!1��h@?~ف����Y?"#R�� �,O'�ra�1&݋�Z��/��1��QOñ�1�Q� ��a˾'��1ўLȳk_&cb=���׾L1���lj��מL�ĘJ�6�mdX@c�[�l�2��Rb0���V9�M#c�D�e�YH��j�ZJ��r!��#����(f�U�=8Q�r�th���cVZw�tݪ���κk�������k�s�3��{F� (MF���)�Ӽ�I�pq�.���by7��#v�b4`	��X<��vRǮ�bЪ^�Ӛ!#`��3��(k��V}���c02��v��n:
I&�j��Tޥ�d�]���|I8�3���^m'mԡ3yw���6*���    ��4�1a(�;�ݜ�1ah�r]�9l7�-}�2%F�/�y����y��:Ϛ�M�W��J<r3�����`����Em�u-������U��v���*��u�~�K��nޘ�X�g��E�|:	���ʻ�&�S\]"��X:�Y�T�7љ���8<��;�6U��N[v����&����P&
L(1<#�c����eD�k�zv�̖���h�(8�\���iz��_�`N�vu�f���s*M�{ k~6&���*��ڂ8F�6c�������i�i�e��p0QD�:�~h�]�Ng�؇�>����1�D͝Ka$��L.��0[�_��P�mN�ߍ�,;:�9��n��|��K�"?!�X� ���r��5���P��٘�79���6����9����9���l�{^�g �f�h[���v�$�u1�I����Z�&����~1]Q����������kF����[y�4F5%�-j����୒��������M��t�9-��-<�����O�~9;��������
�Ζ��P�zt���]�i�R�N���Q� ���i����f3��U������A%���������k:Ml�PZ�&|~�0w�ith%�m��|����4�@��ݡ 0]HF�(`�6OS��6�%֥7`��OS�\$�)h
�M���4)BEXg�����4�������1o{H�~P���'��B�� ��:@�d��Wc ���n.f�5��,�;;M�ۆs���+�����E�f�m����ږ���[��t�|!k�*��MBm;����N*
����,�A�[����̃4���ѧ���c%��7T�*O���ڭ��\�E��+-�\���ȭ�f�E[�|�L��C��
~q�~�~�N�zcz��}�zt�_�S(�:�}hDt��k����S���,�c��)��k;m��s	@.���Q���F��6ܸ">:�ӡ�2aK��t������Z-l�3T!�q�4�=������R4���9ZE��Vb�
�T��}6Nhɻb)���3�>�d�f��7��l�+�������A/���룾.�kn=�7��L9^~K�w�V���h,�X
���.���x޽���6�B����-�P,!ܯ�Z	��qsXMObKȄKb�����"]4@4E��i��/���4�M�k'��&��X�?Z�"�pJr��q��"r
r�������'�_n�2���BB'�#j����w��_G�߱��W�!�"x��G[Q� qo+D��'R%̡��K��9�����B���,��pXvݿϦ�Ŕ;+6�G8!!,N

%�|��L=��F��"4������F�4�t�<J3�n�︌s�7]@ؾ�w���C�MNܐ<�q�6�o�L�l�9�J�#T�J3�P��\�Q��엪q��
�)29�X�GZ���o)7���5�6f�D��y�T�oT��N\2֏��e}pzy�襨~D/�����R�g"��y��o�YJq���1�z;�4
�}JM����g��U��Cy�C�I�O��?#����v�g.�{��V���e�	�]��S%�փ@&��^�?�YJ���5d��b+^���P瞭χ��{�lD������Uש�sm�����ZzF_|-�˱�ۧ�:��>��j).�9;�zh�jbmv{�S�	x��Z�5�Z��#�����d7WT~�e�O��m$H��	���7H�)���X��/��F$�K�������odA����Y�� ��F$&K��Fd����w,n_$��|���eA��w�n_$z���v��2߱��<}�b,H������˂�G�o�]�~�W*ƂDE�o���,H����U�g�c,H�����˂�8��JrGP�*���{�dsU��yUC��QK̓����0��-)ช���[�>n��iD=�Aqɂ����,3i7���H�b]*(TZ&N�<tQ�HS�*�[�^1׾��
�A��!)EU�~��1�Ӟ���D[���)��O��tk����ݞE�̒.��|��y����ҩ*.Z�Í��k���� _ � �ripX4���b��l#��c�b\=�b&��P(f�oȠ�OR�$�n�C��� �Ē�C#BU��w�H�1R�8�x�M�����4���v����ڭ"H��{���;z��r�ǽ���ĺp(2y�q�(3<J�g"ɩ�[��ݫNn�9��]i�W���f��_���a�wy�)ldu+k���$�;]��z�h��t"�~���Ф#�@���:����@5�?mp�c�8��z!?���M�ж ��=��#���Y)��.�$�<����B��}�2�a+�&�b�2�$�˹��h�{md;F�8w+�r�\��*������#@O����1�ź��34ΩgpQꁆ~�F�iD����r�iM?����8�,*&�#w��<<��U��c�k.X<M�?�]>z����fyq����/�3����g�d/ؒ�Ӿ�0P�-#|q"晁�0'n'���uuu/�i
j��g�k��ˏ����n�u^�0U2
�o~l��:a���|̈3�n=�~8-��t{��N��F͝.G�۪��hZ�����ً��vE�K���hk�:��i��� �O����Nߛj��B����W^t~����~��3d�ps>��1��6�Bf����x��2�J0Jz%��p��8Ͷ����Ts��9Yl�~�ڜ��/��rG&5T���r�͏����iwP5�����T��ݹ]���c�~)·�~�ɏ��Ii�S�����ǩ�4LE3�T�S[�2c9A��ס�̔d�_K��%��n�U�A�7ha��2�oX~a
l�H߽��������
���W�g�~�:
@:��l�E�Y��������Q���`�I��y��T5(I��(P�P��'ĳ<�����5Sԭ~�$�徚$k����X���>i�~��(�d�t�����P��P��W�$��>�����4/�٪�u�s���j�}�D�?��X���O�T�q���pbP���������	����y�$`�u�]Hu��� ����3�S;�B�b����a:M߾k%�WR!��Z@Z؄�?��B�$-��B��N�)����(YU^t錠F���dWN�����{��+)���*�F�\9I�Sr���'���$��	��]��M)p�oJH�����M��6%Y�)��W��z۔d����}+�ƗxfN�;���$-�E,5���+�ݨǢ�T�S����f�
dԓI�0��]v���~�J��'w�RZჟ������� ���qS�c��[����I�9�N��6%?�wS��Az�Xp�en�
�/���*���<a�� �� ?�1�b<9wG(� ���*]2 A�U�MF��ҿ�-3����-�z	��豮B��%s���X7��J슳Fh��9W���1��հq�w�oj��H�1s禚{�C����y�z��&(� L¤!�����Ɓ�Z��&�E��铴�I$9̉�&"k�> �vg������u�V:�@(�HqE���<^�F06�X����́�b�G��B�g�6ϩB1��8�3��hP��C?��P��o��0o7� 	��#H�>_ȅ@�F�h�v	v!���JX��͐s�$��AEN�M5����;�`)V�G��ȑ�fv�[B/�Bܗ�#�DTǑhe�胘0"!}#sV'���L�^�Œ�J�v`L�H���L��~�o��l��F��X= g��v��Ϋn��
�~��a5��0����%iW��Z�M}��ݿ�x�q���@��t�� @M
�G��p�a���_M�$�ı���z��ό���^7���7N�p+&%�K��~�y���M(G�5 Vө@���������J���u��V��j��9�yIhhTɴ�������$[�����Q�_ր�.���ful�?��\�8W��Eܮ��n����[?�j+�b��	[��i��3}�%��9  s���g ��zm�pU�\h�    =L��nA%�w�����ͱv0�x2������EO�|X�x3�x�k�	X����jX�x9�x["^�ĳA���ǚ�),�a??����>��G���ݏ��#\d���g���)��Z��x����ؤZ��x?=�8%&�^��T�Qb*�VJ?�I	b2+1X�	��FK���EǋB����e�>��ZFb'�R��-���`[AbM��&Dɘ(ORV�*�/�l߭8��2���^�|:�	y�f����?hr��u_ ���i� �h1�:�z��_�O� J���U�ך�]�N�CR�n�f��jA"��E���!�WHZpwT�~t#�T�	������IM��2�'�;�I>��
��{8�w�P�+��Q�/J���O��2F)u��[�f"IߨR���_�N1�Εnz�nx6��Q�D�12^Lf6�a�Ʉ�*�Ġ�r��ol�dC�?���Q+�{JS��;5�L���̘����a��7m�t&X��l��>A��u����f���|�����qoq6��"Q�0���+���)6�D�, @s
 �FR�'eD�3��w8rΦb�K5�K3(׏��� J�P8kH"	V�ܧ�6o#�0V��(1�@`��k�(�\����HD�EWϣ-�H�%w-eJJ���Q�(��`E��щ"	V�X�ш"�1V�ޱ��byE\�4��b)YV]u�����)���G�Rl�EW�!ŶYd����
���%�{<���	�}q®� ��h�K��Ċ�o�x�!D\|�P�+Q���G���E��k�=u�A��#V̔C@`��3�s������x��ׯX�5���)*���?��(]GM��
�Y�ٖ�����.r����r]o�М6��:66�����jk5���B6>4��R �Cc�s34�[jhh�B������ȏ�B�+� ��
�"JѨxތ
:-� 2�#����>*��ʏ��{lD�)�׉ڬ�DT8��M�4A��n ЕR��P��S+�!w"�_�>R׉G,%Tm,%��� ��J݌�A�� $6�W��u �Q��'�i
�f�_��H�0Y��2D3���Z �
6йj��b)4����EVG�g^�8��`���v�D�:�sI�q��׿���u����{!�I�Q(���Kq*�~���EԄ�= �ׅ|H0��1� �8��u�j�����������kd���a?��p�)�*���A���4��F��K�A� 3�b����3��RXv&K�Š���E�:U*��Աxi�aɀ�$"�,�*�t�

Qjl��Z�{����!ј�4���d�&.�=�OX�����֤$۫Z�L���Im��o�|�ˏņ"ֽ!,���<�L���ɰ)s�����M��HO�X��M[�7{16���#�|�E,��Q�Վ�{:����B)BR�b^���.k�A��gsq�y~�z����\�l�0Tқ)�Y\�ܸ�<CWDx Mn�8*/7W��Z���o�q������HV	ɯ^n8�~{�G��Ą���3CjGT�5q���fe:��S�h"KJ����FfSh)i�j�R���k�E��������~���$��N�ݳKWټ��,J�!W��9��k{�=Vt�1#lPL�
����yEq��x�B5�QD��h�G��o�e߽����
}=��u��3�+TX����y꼓�|5�,g�,��P[�h�O6 ��y�D\4���x�e���w7���\/�J<�s�P/,�A�k��@(�10Q��G�:iU�w@���:�O& �Jt�F
:��Ҋj-Q���%�.�?5[���0țn�?������;���ڻ���Y�����B��o�䥽F��[)���~?:���[7^��lx��W��wcx�`����%x����BC}����T<��T����K#��)a�����L��P;�sjY�|�0D��Z�~1F/�h	��vLZ��;v+[�w��(b.��W\�B��(`|��vD'+ C�.����x��;�;2Y��uK��w�q��;��-����TB��!ۥ<�rm�߈��9���&�H櫩����Z��N\�˫��
�t&3F����(��?(����o��KM�)�VK"H�YJ�����zЕ�e��'\[���-}�u0��PP��]�]S����U�t���z�9�[I�A�x:)�!�4�Cm�A�X:uQA����nE*E��O��4��1�w�bGLl�� �D.UP��Ӭ����I:�X��b�U`��D�d`�%��f��N�wB���>��gK���ou�83�lwQ��#)��TP� �{g�ȸ��> )�̈́��ERK�fev1;7	].���}��]��I��U˱�̐Amo�Y��T��d�G)tS�dG���%SI�L�+�MZ]���Ǫ -2VI�~��9��V��N�u`c̎f�Y�
<(̲Q�l:XAs�G���`�q)�]��$s�f��>���m{�m��RwZ�J��|х��*(I'!;���mSq��T�=!����V�BŹs�!�UEu�"��
��S��`��r�ˑ!����V��+8������:����j�?n�-�1�.�X$9�Q�-ww��v��겙E��D5a�b�m���l&�\d���m������xY�v�N"�Ț������8�O(U�L�v��|�K#���n_7��Vq��	���&�?���	le�?x�/�����,��q�_�|:��<������e�$���:�u�N�WĚ� �{�$��c2&�3�|���+9�R �k�q���}t2�Q�N������^�՝��˭F;U�vL�,�7%�_��1I�եoѰ0��'g��{g��*{p��*9d����L�~����Ŭc� �7U��dN5���-&g��P붘��ǃtb��fJ2�������a�9Ϯ�*}��l�*{P0�%������/U�%7�%υO���og*��@rV<,;*���8��*gŃ�b����Re�
l�5,;�Jg_�����b��{Wm�����t��r�������:��L����� |�b�ɲ�M���]/����4u��s��"3*9<XXޔ~h�T=��uC����HhͬxS2H؂�:
Y�`�͖�#P�T��@~�F��|�C�U>��,�H7�t�+$I$�&]�!Q��	��pC�pYt�П��P�L�~U�	XCAQ
�\K=�	X������b�dI�SC�&6?�*�-_C������DO@G�9{���<�bٞ�� �A4�@�Ϗ-�!k0P�����)K��Huy"_�dK��^�>I{xb�k��HU �T���R(@�iO4rr��uג��lK�B���INh7l�N�����	�t��л�PwHGh7���K�8BUN�I����d�&�^9�P[v��2w�*�x��Ö;�fi$	4Z�AiX���űA"���:�����.:{:?��x����'�Z�t�:l�~q�[�dj����̄3�Y�'�v���X��M�7-���ś{�6)O�s-[�g�'��\�5D�
��~��;
�>K~�3 7[q��N���|�s��R���r��Q��P\b��%�0��p�V΍�XbC�椖<Z�u�Py@$�`���r�P{@$��`�)�:Ͻ�3� �]�̽jR��
��D�~���N�m�&������8k
�ќ��l&�y�b�;�����-S8�����`�,�O�#�k�9^��Q�aU#�Gy�0�;ͽ�B�arsv~�.��Z��Ȥ������$��;e�'7�T����5$~P��'4�;r�OW2�
�ꧫ��1��b	���{O��<�P E���枖)��� H̾2S�s�3�b�p/����69(m��.�0�"NE�M*2 ���=�S�o���� ��½ sψT����Ѣ�.�0��OE�M�Y ���%?E/��OE�}�Y��}�^.��'z�9/��!�H�܃?��N��v����`����|�D�l$�m�x���/�"}�/�j���~8IW�偑�    ɵ������~�D_8[Gv2a��7)�* z��.���sL]�_���t���_�ax�8^�e�nG��H��(�˼���N ����j��S��l��E�k�	b��*��
���$� .R#���T��TDq���X���H	d��nSH��o��ᥫH�c��;�+S%��Ś�X�ʋM_�)b�w�����^#�''��&r��Xm g�ZY�/6a�,$� .V�݉{�u��ԘY#6V�ݭ���b�}�2"�$&��+��Z%.a�	fpx�:V~ݍ��y�a��Ո�� ��u����Ŏ`�t���6�]ᖈ�m�J'���Yz좳Nn�E�����:M�Oʍ�#o�o�v�V'7�$�4r��m�˯<\�5�;��:��0P����7�Ř�T#ޤ�&%���:y�>��N��^'.e�ԫ|�f�#�����J�����/E��?+Q81��:3W�#0$̖�9�U�K�+3�"2	Ke��2��pUrc.����S3�W")2a��ݧb���2;5�����Bbc\%>n�b�ך:��+��K�K�]=n0�=L�y�O ��0/�A"�쎬An"_a�i�AЅ�?=��� �X-`�yB'p<��]@����#0�	Oh�y�لt?��tZ(]`��V8�GQ@�M�i����B��~y����R�Ȇ�Y���V���U�����
���?�iF���:f�k�^h��	����BL�Y|�旯�0�[�����N�fD/�4�.)jJm0Z��B̃D/�3*��4ĭ�ؾ��5��u!�m��݅87���t��,6���0�n��֓���c<T�|� kd~�)e��%�e[|6�G����a��$���'[Κ�K�U�?)�3W ���J�:��M6�5?.m�C��o"@�á�a ŕS o׾��*.�8̚�`�k��(���n���:��ϫ�Q��c5����F.2���	RBۅQ�s�wŘ��8�;$�ѱ�M�'!oO��ϧ�眐'mVOJ���[1����%��0�O��������ai��cv\nfݮm��y���F6f��jA�t��m�٥�v�Փ(�J�Bߣ�`�ϫ��ڍ�,2�2�#�y���C�s)�S�n��(&�I�)�C�����u�t�`�R �n���� "o�m4��4j�1psb�w���$8u���@;��v5��F�w��
���t5�#Dm���:z"�)D;�����`�R�//V%�E�F��~i
ID��ٸ�"u'V�P0u;^�ý�5�UK!���/�%(����0x�+4����d����ߗ����k�#�Wh2u��x�}��['��.�4���{T=���!�2l��U�D�8ir�NT�X����|�>�J�D����c=�ĕ�Q���@���3�(}�>�3�����V�����%mZ���, ��!n��'c�tu��k��I�J	j��S��F��\-�ϼƱ>bu�w��Q�,�|�*���C�Yp�Œ��bQY��N�c�8�+�GO��:�"*���%������C�H>	}F'��cu *@4��w���1 t�l �H��: �8/8  ]�� ,���=�@��9�h c*�� $���� �1	+����1 x@AL<u��Zȫu��2D�5Ժ���1�dH��GU��x
lF�O�R')�v�A�t �YQ�~K��\xZ�0g����H4#Ē�<��:!�1��$�}x��=_���X���������]ٱt���˗���1dG�����/��>xa�:��ܑ��_�ŵ��bIm�^��/Au�c�m���u�C�*�tH�D���˗��
�\��IMZ8��zy���5U��Nl�� ���x^2x�cEf5��C���C퓘lc�g#���Z��m��m���*[ⶥJr�-H^ثd5���s�]�_��۔�V%�s��/��c�ݬآUtnޚ�?^>?�){V%�s�|��:�|��8��ܹ{k>�t�L��uB;7p�������&L����$k��d�M?����Y�]#�V�^�M?������0ۺ5���N�?��������i�8�&�0*�(kē?=0�4�nu!mRa�Cm�<������0rG���v���ȝm�1��h�m��ȝn0�؝SF��S�a�W���ໟ��X�(��3/���\H�����k3_B�?b�g倫9��?��1���)y�B�GP�9o_����8�2>~�r�H�[�$�?�E�6?�P� ������V�t=�V�ͶAPv4��Ӯ�f�T䙦��1⼛�b)5}�Û��BPzZmK�~ǥ���>�w���n�{|㻛�h�p�����g�0_�����쎼�g�����.8���k�b�� �d�u�dw=�������4��'s��@�)V���t�f��.����8g'�n�Ng�H'�7K�@!���k��~|�,��!�����=�aư���C�$[����$���o'��w�9ΞWa�*� ���Arh
LE{�RU�$���᥵f4G�(T�n��I�T<V �N�͌7Ǆ����2�+�Xl�U��i�Ly�H�d�X��v��e<#Vx�Hnd�X�[��"!Yub3������ީ��J�����6(	^ViZ�N�<t�I�3�VUbMF,�+�['7c�X�����<c� J��c|-ϙ)���Ubsf�?	�Q�̋v@��3�;�MW���|�M��ZŹE�9:,?�		����G��^Q��#�a�W ?���q�tZ�_
�o'��g��[n�fE��@^�,��ҥ�`��.l��]5�˷�d&��>>(����\����I��0�t8���P���qaLF�o?�Zʠ1.�-Ҍ֗clJ��<�r���6R �-�쵤��]
EQ�g2�tt�0t�8��� �Q��Y+狌"P����k֯�☞��8�K-	�؎���Z7</�nx8�(�͞kPK���!�u#v֡<���H<�,���AA����3�P~��1��D�C��a��Ց�������w�[�׃�$}���S�����ˡh99�L�Z��X���W����*tU����ߧ��TkgV�&�� B#F�PIF��;��9tZJ��;:�Ɍ�i�a����cs(R��7�SEK������P};��P���s��q�||��=}�\v�H����*h��(���VmGƚ^W��7;�8����A��H[ӻY�ϊ�p�5��R�&�YJ�U��m[z���%	Qμ(�u�񡊣mK/U�9��7�Z'�m=[��D������Lm-����#�^̅��q�I��n�5��D���O���W��^�\wУ�ҭo�Q���G��q��^�U�Lޣ�N~�����z�Pyu$��,��8P�����hX��ֳp'9'
̩�&��d���>���W��"|���<����mS��ۘ�_-�k�D� v�|�c.V��h�E��r'(����p&��7�dG8�S����R�:�H�����Λ�Vs�E ��j-�M�H�c1�N6od���;c���Δ=���Efru�k}i��0��A����ۉR
��lc-��ds�C����>��6=������?v�?��ُ��n6��2g���0;Φ�C�7ֱ��o[��ǲC�k�儫��LIjj��2�l��4~{خ[�͏���]���}_-����f;��&�)#���8'<��.bڻ�p�{}f����E5���Ll�J}��l1��y̜�g��L�2����/Qe�J�;���XB���8�DD&r����:((\�O�kÉXb��9�\y6ODv�?��bU����ϴL
O����-�	�5qu��p6��XKD'\ۛp9���7�o��xj/���K9��[��Y�*�nw���x`���k�E��M�H�+�4q�x,kT���B�Lt��Mrw�2��1�d,q�.`J>�̃���n�6���� ��O��GXc����[��$cY	�D��%��K;�E����&�>ZGr�O���c�<=Q;    �2��t�^�^���%���%�/�UwК�#���&��������Z�>f��1[�ĵ���{�l$ѱ�J��d?��6젼(��N��a����W�t`���eP�C��5���*�o�F8��\������p��ߥv~�f�k�B�bv�,����)�na�?n�o��vVv�����n/UC�ܻ}z�d��u�lN�oV��E�N��s�,�W���&p����l#�>��)��W�Y�"Yؖ��
�M�a����N�t��[M���vEgϗmg8����ݮG���}��O���TN�nLRq=!�������͗��Y?6�M�P��3(������`bw�nz��^�H�a�|mUv<vc`�]�y�Zj��:��N�b����M�ڦD�i�C�I���
>==����#���K���k�V��??U��͛�%�'�*y٢�>��C�:����3E����XM� A!� |��D��72	��׮&
�raE(�n��fu �z�A�0���@���A�k�?B4Ca��jU"]��5X�@jT�A��=G���F�+u����H�`˳
"[��~N;��L4�a������Y,�6�"v��Ͷ)>������^��S���-��B�g�sn���qϹ}�ۥ��Ј��s!eu��z,�K���h���ݥD�f;ǣ9��t~�/_/'�I-N�Sa�ZǤ��nO���!,%��#����1�`r5�H_�:�d��/��iL��Ņ��PJ?���"�ZJ��*��ƴ������
��X"\��G
�1��-����I�Q�����-O�����H9�p���£-���L��B���5&�Q5����G��
�,��S$�V���be8��r����h�<��SѾn5Y��^{ݶ��vm-�
i:�Ԥz��2p)��ѱJ`ꬪN���W�K��#e=S�|a���!�[�g��@9�/�Dt�#Ti#��Ʌaϫ��UD��^��.1����m�N
���'�7QciRp�(nW�>�k��<�*�`t�SM�F���HY2e�o��T�*҈m����;��q4�{iD�3h)LV��^�`[�}�m�\���V�eO-�E
��t1:c�ZP=���(HU�:��T�_G? ��(��q2u�:B���f�ܟ�9�����;�S��[�hԄ:��;�(�`�h����m�����'�a=��򃁔��~fS��J��u(������s��2o��'�	9Ī��	�\��@�<a �7����=7�0=�g�t8c�(q�i�~Fh}o<YA�v	Fw^،�����@$�@K4О��I�``�E�`X�b��i��8�飧�t��۫����i��I�M������6��������_O�k��l?�R�0��J�
���'��j>�r�O�r�5�ݠ�;q;3��t��Y�ɷj��� ��lӼg�ї���{��ޙŊǧI�d�Nۀ����(��be�ĭ胷������ta�/2�}�Oo�}��a9R����'�kT�v�8��ĳ�q�%���~дAd'�I\��z�1N�7��pa�WE����/��>��`��.F��F�tٖ�9��t!�b���#�^��\��4b�Ϊ(����l�k� ��{c����*-�Dg4٤z4y�_�%�������3��;��sL��s���G�����M��l�(iܧ�9�rh���!� ���=�h���_��S0ş��4 �� A�"�e��8�To�
�"��a����"��i�H7�?tE���"�n����*��I���sP6�3��e/������;��Va��ue��a>�qpoR_�$������M2���[	V�4"�C>`Q�`70���]�,N��VuX�'�h�����RGJ��3���̭�6������G,�`'���oF�t�U\Ծ��ĺ����uX����l�</�A������#V3�}��zZy��r+_�����fn�r+_����3լD^n嫰�Yy��͇�[�*�~V��˔���~V�]�ָV�����\�5�����<���*���rݩbݒ����6���?��g�9i攠��
�>����h����m���*�Z@f/�b/k�k��C#���=����i8|�^zcRC=�I�"���*ܰA��p�gFk>�p�k���#�.#�5�v��>�pn���q�i)�޾L�����x��0�mW�[�y�i�Q�$@(�0PL\Kl�Dֽd�e�0�l��������5������`�0:wE2D0��ƯP+I
�q����p`�$�+!�q�,\ީ����9�d�u?~:�3�Z��VG�/O���t�V�z7Y���Eo5�GNf��^� h%L��G�Ŋ��V�[���ٷ&UC��@��Vc}w��QW6��
W�N��ɶJ�#���S-:nҥ-��d[�揢�S}9n�E�l���52�P(b$���E���ǒ�lY$����"#�Ϧ�S��ơP��P!�?�ұae�M`���@ �ChRD ��F	,�����@>z��t�$ۻA#��%��nW�Y���>����������O9 
n���8=����j�ݎ�:�ӹ�iDK����j�8�r��L�n)�n��!u�o��� X轆z�U�&�.^dC!QXJ%�w�Ee'*�A�. ��y��{ɇD�|�6)�J~������;M|��"�I���e�!����TV��%r>���H��H�^�*9�U��Z�^�
�X�q�Ջ��;�WIM�j���4����*����9�B_���l��vy�����4�+�xpG�q�����%�k�π��&��;���|*b�(W�'���h�g��]�:�t�؍�b$��Y�"i�m!N3�
׳h�%Y4��#2��N'7�`�"#e��i�
]� �m��OwI�UӤ�A�ݿ3��������Λ�f�x�����^��9C���������9��'�%dB���(���XIn	���t��W�ݺ��&{��ե�c�-�=X��Y�]Ouc�F��`]��d0��QIѴ���x�����v�Z��	��<��3�R�3MJ�B#�iH�bd�Vb��uB��I�����b��<�\���]"&s?Y�m7λ)���>U�ԕ�"���m� ���"U�j���V8aqǧ �>�Ќ���=$����S�@Ƹ#�{eQA�J�d��Ӂ&V���v(�rT)<U 	���-��I'�}�Rt,��:����� �`IE��o���ǎ������,W���ֹ%35���J��*I�A��B�Z�W䒡H�jK���C���cH��Pz'W4�����N��o�e�׼������|�$'U5En7�g�/��r����Jj�!z4��`�K��y�mfI{�SU@���)�I�$)�}�^ )C�$1%V�{����J[�n}9�19��df	�)�.�$�$:����:V��5���8�:^2_�')M�$�U{k�����Q����XX��@Rna�H
,�ob�H�-lI��5ԯ]na�H
,,$� I���")��6���p�:^dc�N�mlI���| )��U$6Vk�mlI����Q )��U$��w����)	�+�/��,+�]�&Ƶ�\�*��?W��j����1jЕ��\�l������@��v}�4�����H����x�;��H���aLK��I�B�@rg��%���������^'51�R�X�kϨ�5;�.R��V��]R6A�p;�Ǔ����xY�p�k��������B�`���Җ6����fo�Dg�sw�<���ϷĸEE^9���������붩TwwP0('S�|')��ITB�И��|c)#0�Gc��QS������=4�b��x^
f"`��ƈ�+��J�t��Иw�^c�v�8�`�{��r�%{^4t��9Ww�p0#<X��(�v�Ww�
����\[
�#`=,?D�X��/�X~���CV��r�,b�e�� ��b�,b�e��u0喿�D,��a���/��`�/{X~&���W%�X~���SX���z�sL���&ر�    '?�X~���C]R��-?�X~���3�*�H�&^
�����<̱�LVDl�������OTn�K�"�_e���r���ba.ˤ@|��Fe*��ܓ�r}@�v�ޜ��!�������vpW���ki�s��;A�����{D����;Þ�����$d��t̝y�/�{��q�t��f��x�����t����|�<wCƕN�:(�DV�3wüwӢ��t�aq��P$bp��������.S��ݨ���>Λ��r�\��$S�1b���t����㜐�>l_�ǆ� z�f��H��-����'s�&�6D&�zٳ�z1}�V��<����5(g�迨����>uy��z4L�r�%�wh����3�o��ͭ}(�
}�^�3 P��hN��G���5�n�\/s��"Fm!�������I��atay���ϳK(���:�;1��R���p�@���w�'�ѡ6����W������bu��j!��,����̿��y6��5�w��B��.*K�RF�n�ii�D_�8� ��F8�~��V9C�����`�<L��{`�ĳ�߭��E�r�W��k�`��Z~������B�D.$����V@�Z�S��
�\�+���w4�nW�l�3 �nf^��7f�o�㭾��{ՠ�O�c�%�3��^B��k��%cI����ð�K�"}�8L��sq�B"ơ�G��`�УK�_X�E���>Lr��(�I.f�\t��zЛ���j1[�v��ٌ��	�=BT��"Wj��f䌪T~-_��E~A�0z[��[�ʯ���"��ߌ��<[�Z(v0��"����AeO`~-D6#�g3�M\z��	��-��^Ж�6ߴ[��Ϸ��i$�0�x	v��yӔ�9I�7O��I��C�N���v��F�bƁ��L�O��8�<dD��݊4�T)�j�H����h�I�nt�9ohx���b��Iפ�}`(�C����0����q)N׊kҎN|��2���c�����ۭ�is^��O�k�t��W���N��H>��w��O��-��l� 츇JJ�ɢ�߿�3�ܼ~�p��z �^�hR|�t��oI��h���l�6�h#r��C����
�u�,	%��0��\�M�v�_�7'��϶@[���+@�&�����G�7��na�*h�N���.?핲E���*ȷ襪��-e�8��U�͏iy�L1[dO������O��걔-i�iO�[��=��gP�3;L#7�����Aŷ��n����s��*\0�!p"ơ�W�Õ�ٮ�8{�v�l&���è���I|ץ�0���4�^����֩�4]l�����Eһߞm�{��}L��UG6����`���9�dØ揢�P���tW�7���+��|'��/z��c@pR2�m�1 h�B���W�f=G)A^�5D�Q�7b��蚣���"�t���޵K�91�p�Z'�$ߵN�ÿl�h�i�tI�T	T-�,� k�"� ��5]�]��L�A�e�����E&��A�'j ��0���Тӵt��T����5-)R��@|�nC��sC�\xg�B�M��A��ro��Z���S�����%@�W�lYܻ�L���|�� �1��\A�Jʑ��5�ܰ$�4YX��#`y�x'�I�����j�;X�l Q` @CVa�e��}y>�F$(�?��r��f��w��C�n�pup��aaY�; �ELH���w�o��hi{|S��a��(ڽ�N�/�|2�"	7N��������g�a����#���`�b���g���=��@�^
 ��k���;��bCF=Py��R�H���t����*V,����N�����~?��=P䩡�,�!� T>d钨�@���N�������>d1P䡨�A,�!$ˇ�(r��҆�ȷГ�OB�@èK#�ZG�Ec�������O�J)I$p��f�W�*� �6@wc%G�Ol����n��'{�i���R��O#ȵtG�{��@�� LE�)Q'���T�:6[�f���,w5��Zi_����W)Da@���M�M�d���-�蒲eu�s��4��ί	���v�2HeHShx�#�(;2��4���Ÿ2��!�@_�q��	ױ��R1C�JI�$�F �p\��IQ^�����z�|\Kp�c]T1P�R��e�YJ_�DJ6�|���tfJ��.l�N6���B�2��d�`�^��䣏n'%�.�w�H2�v�4�ˀ�Ih�6&�;f�nF8�T�'�� �$�*d�f����yz�v1�y��X*��$~a�P䯜��q�-���~�X�?;N�!=*cA�(ٕ?+�X����EC��=�f��85D�X�ri���^�����O� �ǉȦ���Z�Jn{�L�rTK�kn}��d3�:�:'�$�Z��	���Zo�7��>��p�rJ����2����u�FR�ohܴ��:*��x��63'j�$c�t�q-��z2�d���h��4�_?&��U ��e�:�Xs��9Yl�u�z9Yh-��N�'\�
�Y���1MN������G�>G�����UUR�^^S��I�%�*ꄶݺ�P�"��E�����T'�;OHWϪO���Y*^°��d�~��n�-z8�*���7p��Vp�~.QI:�<-<�a�	^� F����\pI������:�(�c��k�>�y�K�Or\o��o�/ӯ'p�o�%�s�`3���&��F1e����D�eT��F�~�s�����A�O-������:����h�.R��<q��c� �$�g�����V����d[%�co�.��������}
V���� ��&�:i��vs� �5�AԈN�Ի='���TI�=o����ީ~?%͌�k>��&#;Q��p^�nݭq�
)��i
QL�G��u��db���Oxk3>���5�U�����3P�����d�3�d��f9���Q�XM�F�Ȟq��ߊm&U�)��ߟ�]�,���wyYIr���m�<mȡU�7��]�D��O�ӄ�h�����~�&������-g��s��&-�*,LR1���H�����KYRg�Nx���}��g�hI��:��ȫ�e>n�4$�*s�����j�
��Dk��C� �8Rˋ:ӯ[�~�W���'�ѭ��ΠDz��@���;3�����G"�Xʗ1.[$'P'����V��YVT3w��Z�Q۝&޵�Pu�lG���S�
�O��i�ф�%�����s�?�Mw��|s���!tN�2f'��Z���m�T�Δ6��NI��J8G�|p�mxeD�]7'�w3��a�ؑg�)�h!7�����GSM�jMb��m��]A����+�]�I�s���S���!W,0��s�BU����5m�3���L��H��#��ҋ�{d"����J %q4��1S�e\�p������\�뤨fְ���c�f/�-Fۣ��KW[���/QɢKt�h�ݍa3ο~���1e�D7*�~4�l4��M ���V0��T��Q�-��h�=�*���S�4�C��{5�ֱ���c�2�d�sy ;��T"�?6.Z4v�.��a�	O {�F��H�蠲��T��>ֲ�z���'1�Xp3u�]~���W!�����N���r:Z�7��_�R"6��`<���c,����w/��Ha"�jj�q�g��3W�/	?���T!D0���
�W&P�|����|1�:���_r!jZ�դ
m�!,����N�r��"���ܖ$;bNK���vo�����_�1ㄑc���4
�P1Y[�}�O/����v=RA���_�+ؚ�'e>�a0"4^�M����{x�|�|>7sf�ףA��C�Qg>������m<�W�^b�⯣~t���{������0�6��̔L6�ekR�v.�ŰZW�{�$�Y�˻K�����v���<s�������u����"�!�[§��TY���屎�(��A�Ϥf���t�i���9ʗ�lR�0p]���@7�BE� �2o���S�J�0�C���B�>����V� 2g�X,WID)�<	��	�`ul�+)    ��nHṚ�G����eu<��ϦDh�1����&�s��^&0ee��>}�O�+�>�c�tO�*ǘb�	���W�����/T���ҭP�{�##��=o���_�nF�j�>�Z�!g1wU8���C ��}�Ǚy�-�^5$-X=�����lFw�G�X�3�4�ʡ��ҩ�GU��t�'�I�E!�J���p��!g�ׄ�E�`����1��g�k�3*�"�������x�NW�t���G�"=���j���s7�`�sϼgc-�H�e[��K�Jbde�a��ipר	p���;`�s��;���p8�mG��kaw��x�=��&cփJ�Ј��R	6X�6C�ɫ���vU��d�*1F�@���B|�_*F�~�_������N���4����pu��K�w�޼R�ʻ�㗋�R�E�|�L�!�s��+��%?-�h��)��~?�G���a7����g�����E��æE�A�^J!�|,��O�i�
�cAJ�2���]�.�^�T�(��t,�/�XZ?�����d�0���Jw��B(?B9=,r�o�����@E��b�\��:�����r&fC4�@�a b�k��҇��>��R��RKv����.tM��������z�q��dz�H���Z�T�2B��d�..��rT8W�n���4?��s����#
�xK'�q��`����$�� �:%��Qd&���"y(!�A�SIm��#|l2���x�LVb��ҭJB���u���fƩ7���Ɛ���kS�Ub���0\���|S5v.�K�>F��eF��(�r�luF��<�
s��ϑ�����%��i��,���[��Ts��FR�u����������iuO�6-_�?O�~����rE�E�!pi�@������&Θ�V�'�/4H�ai��~��^�a �
1�
����$!���~����P���X$�k3�T�S�2k=��T�S�̼p<'��u,�'0���A�~ɩ��A��u��%�j��B���j��+o"7����8�nٳ���U ���4>_��?=�*3�'%���bZ����'0�O��f a%�b6k+��;�'���#>.b6s�EQ�!E�{3 h��/��&������V�v�k��6O���U���0�*�����jxg᭚��.�m�{�%�(�U~�V ����-��|��<�Hѝ�'�%��^"���ȏ?� �����qڰ9V��}^�H�� d:��6Ƣn!�;Qފ!L"څ�O� rT$��X�Y3��f��D�.�k��8a@��4�6dDx�c�
��� �р��~O�Q��,5�A������t�Z����ap�f������&@�3�g�U?��a�CR�|���:��>�e�f�&�N�򸗏�9�P�m%��7وl2,�['&ebR�\����!�2����#19a�.�a��B���7!�1瘴�K�*
������y�H4;���w$�D�ɥ���r�`�nA�)���^��+�c����j��3D�-|��bc<��s.���N^�\�~,�N[�_
~����F-���}�A�U�<
����*ESAk�(�z�~���r#��6w�M�+��ۗ�ٗRK�j7�-p�N$�>	CbH�f&�
P25�@�����9�9(�(�d�aP�Tz�(��~K�D��+���"E�jE}���J��WW+�m���7�b>�@aVx�r�0(�dZ�L;�'���0#��O2m��2<ǴC��O2-�W�)`yg(�cZbM.�p�O2-��J:�k��-h�	I�=�u�<���o_Ep�Ȥ[$/�,i�F�n������
���m"d\�eSN ���Iht�5	h���}G��:	<���O��O�Q�P' ��&9yU��aq|~zz��>2G�����O�j9���%�<�>�궐~m����y�=/�_�(J�ăx����C��L�5flJ����#��Ħ70�F݈0D������;��њ�q�'a3�?���ޔ�� Kk�ƜS2-]�� 5��+6���4���a�^�m�!l��l�A�MB|�xk�`o�Q���׃���Lw�a����U�rzzP|N��+�Y��;�����=^ĸ�9�y�x�}��l=����$�����A�EZ|�o*�c,~/O'�������$>�}*�ے�� �)�r4�n��s�P���rr����*5a�θ���?)�DY��,t
�����g��T��㉷�;�;�� ��F���W��P�D�`Ł �pf0U~�|�D� ���HXU���/Qτ̀�K�YG�4V8+R��L���a��+5>=獵�~3��Hؐ����p`yp�ާ��c,��%y�ä�:�5jz�Ք{�t�o�iC$z�b�=�l8���ë��aS�h�'���L���d,���@����ӏ����Ʋ��n��&?RO���|��.Q'Z�U~tk��~l���Ɏ<�ww�׸���7#|��,��#����M�7�rVQ��WG�!�4C�����k�E��`'e��9��bF������h�� �u}�^��c��X�k�&o?ݹ��8rI��xg�[���/E}��a���~�����}=_��!}��.mE�X��.��t���RN��r1�X��$~�{���F�����}�&�J����.;Ѵ��HK����7�M�#���J�rk-�V����;%��6��w�5��\�>���r�J��$P�$*,-'��AT���G��l����P'��� ��Txi�ZD�}$T�G����/�������qq��`�� !Z��?H\&��D�W�tIs� ��[�����44)�?�����e=�����Z̮�2� �as3�Z�t����Hמ��ߏh&;U?h���4�1=��l�zR�cziP��3N+X���+���Vl��L�y��0�(��*�r	 
L�AX�9�ul��k��D���Ff��w�/[ƹa��w�t�kő��V���j����������ҽ���H�d�
�ב�v҉���;�A��*�[k"�3�JŐ OR�-��ҥ���3ܟ�1F�Qq�LDsi����P�y�i�602��1_o��᪼�\��m �ј�͂��R���y0+G$"��/֗�,�Q������&&��������[���v�6a�d��nÐ��t� �T�r��K�X���*R�]�0p� �aT�c>�'�y��n�GPwMh���%�6������gA%դ�u�g��?)�UP�5|}l6J(0����<W��6�%Gp7���_'z�Po.�w�!��^J������y�Z�Dؼ�NL7h�u)��]7�29ҿi6�'o�Q���a��4V+\�#�P��<��=�\`�����Um/�bB�o#t���m H���ҶK܋��`�:�B\nv��N��d����ahTM?&�SL�gs̆=�9�Y$�����tc2[w��v���.̨��`�������[f��A�Ψ��@��]Y����N[��lky�O�
t:aw��
��Mr(,B)��=���m���o��O-2���*�QgKW��9��iqB�+�2ނAR����D��tWͥ��LC>s���1���(��_mZ����^pdx�mr9�X �u�r�7��MG0&8!��q��#���}eD���&��8����+1�U�e�Őx�a�{�A}�(�y�|�m(r���{�n����آ_3r�z�|b|�Yj�98�������T�R����ѕV�(���������Oj��s��.�b��(ս������0g��@�f�"�T_[�.�	�Sn�S`;V������3�m �4��.�Um��.)��1z��.-ڰ͆	ł�Kb >���J����`�5�Z�0�a��T��@h�����Kr��R�I�˞{�%R�\:�yNc�l�ќ2}�N��.	Q����@䫏\���JdN�/�1�U7��KTP"����@O������Y�^ "ʚ����;��U���[���ү7 (U[�.�@b�k!��~��=�i��Gi5���?�qE��j�|Y�/ד�|    7=-7c��g�i;k8��t�N�"T��VB�F5�g`�D�lM�r5 ��W@V�~���&61�7nZ/�a��#�.+�X�j���Ff]��`Q�4�z\T�f*֛��1���R��a]��d&Ox��:[56C�y�S�}\�z*j �
�3Kt�ORk���m`LVQ��ި �Y�0όRX.?���V��^�TĦ���V1�J��2��6����芷��VX{m���L��>�����2:|1$y*0	_�����lh;-2�7�����^�'
���
�\x��/���P�
�#��[�S�Bg�kQ(b��7�kR��cUa��H�D|�!��u�����2���3P6�p�Y��-�\,S����Z���K�)�a
��� R?���M�?(�t�j��^a����}�*�يn�F*˸ �"��~C�\���S�����bN�#�?�k麠'�@�5@�+(�3��t(�bF�����>��� 0���?��$�җL�ۉOu���<9(G�Z�%�7-kDW�LWYW�Ā��ϢB�����t���<<�&��i(ޛ��v�>U�}�$_�m �H��~�+k���*[�x�"D:8��<lz���<�v�H�B�J�2�c8�K��Z�E�G�*�u����0^��z�xy��l�ET ����*�(8��ceN�������L���O��i���,^������a_�Ak�8��Mg!��mBm�;�ˎ�"G��﯋� ��<��yv�Nu1�ې�O���.5�؂]*d���m��x���g^�y�g���+��aQi��=6E6Q ����ƿ0��[DV� zp�Z.�ѕ{���2#���C�ڣ6Q2+c�-3�,]���Ȣ**�c��G]�(���p"��M�{>����mO���z�4��� �e������uc��8E��^���1LQfkbD bS���e{�Yu~��0�pyQȖ�#p�\/���O������Ǹ*R�A�5ɫ��bq������9Pϖl}0t�Fh��d
��A3QX����p�����.��SRk�РBX�~��^郮�f�C��!}T�//M��>^���+5�/p^D�H�Y!��f=]�k.�X��;\�\��	ܯ/��`}���K~ī�'���[t#ç;n�--�X�ݼ'9�r¢�/G��� F��G�Ƣ�l<�dA�k����%=4��q#X#�>*�^R�s�ܞ��:���/����f?⦋GE�]q�ԁrmT��Z�����_`3� �����~8���6v9ޖ1�������}�."]�/$�笌Wd��_9Li�93$q�����4ϔxފW�o��h�`���5iպ�2� ^ �c��B���}JR�DI�2 �@� �6�1��@"�n �$ C� O�h)� (yw �� F��R�R7X�Ц9 ��R�Q�TV��pvw�%hV!�R��m����*���̞Vi���������2�(�$2�k�ԍ�UƄ$�\�g9�~b��l����WeB-J�o�<]|D!��������5$ٕ�,��}l:�6�2�t�P��uw8���O�{�4C�rq2���e�Ӷ-W��X~�'���נ��A�������i}rg(QW$�����j~�'ʅ�Y�LDD����S_���N��Ǡb�'���h���%���g����\y)�?�rD�_N����I���N�Ao�"��2�70.��/A��#�
7!q�-I`��.�u���I���Gf��7l�d�h|�ⵢ��<|�= ؙ��R�$��B�rv�+Qb����7�>u��,�:�1�Ig���z����������	�����#��#6%�p	��L�d���Lh0�q&��t��H6�k�07�t��(b��{��st�gč��t
��� �~p��҃!k���Q�(���"/Ѱ�H=h_̈́��L�1f�
[��c�(�K#+f&ٟ��B�
�E)aUfN����0�S��F;�8{,L�J�k��h{�R�4�U(rW� iC�K`5&���~�0��@���d�X-�h4HW�9�@i����[0�h��H8�:�I�.�<?��OTV�0�`FZ8B�HI��ap@�K±Rz�.p�� #�"`�bmkBFX P��3�ڲ�X������E�7��	��p��|��M� �.R���Â�8e.��g�$EÉ���cc��R-)5�R:}f�NZ�dk��ģ�_*�Z�]k��z6 �w� ��5���  �ۙ��~�8p��@T{��R�G��������[�й��?~�>��tG�O���U�.h_;Pz�m�Ϥ0���SIӁ z��}����7P�������osTsf4$dX:�>WA3n���c1�lD��q���y.�k;CS��u�]��q<����
��
qR%_,I6�d(��&��;�īF�O���n�4]m����	>YcU�lp`Jvݽ���k<T�etJ�����"M=�̈́8d���]P�nێq�F2|��Y��[�b8�~�O��K��ll���{˾޽�v�J�wA}�� mq�V�� �C�4��^�sF�I�P�Ve	���E9���z5_O��&Bva��ޘn��������}�(��ק�[L��]�Q��4�_��/R�:�.8����_W��gG�m;�/o���� ���|d�	�:�dv���%ߔ�E�ŋPB��{C���0�������~�s�GnB]�P	�`Ba*���/.�mTW�(J�d;����Ѵ/7��|��������O6 m1ى�8�rE�
U�Dv"x��  �V�+� VP�!ЩKOs%Կ��nd��apV�2����r�YupJ�r]����	V�;���`������|���ӭ�1^���Hl+�C��� ����� ��`@Օ64�T{8��p�\��rn��Z��rk&�����ht��sy�>�.O�,�p�pw(�ڜ)o��?q6:]Wf�/2�Yfr�	�R�E��CEj��_.�דR�B�� ƚ�0�j���!uW�gr1Zk�Đ�������AR�q=V��!u!W�c<����ЈHR�r���qgC�.�zW(62���\c�c�C�r�0�����2ϙ��|Fd�3��+dҀA+�i��~E����J��>T���Đ�J�m9ZgL`ȓ���X�!T�$�L�1�IR���!i�0,��Y�H�E�!";O�@	(�O��D)��>=ňW�~ۤ ������iSTt��2-ɕ�i�m�n��	�]�$=�+�d�Q�j�K��9~�J�ޘBI�S(�oc
%YmL�$q�)��1���KC���JC���I���F2��d�;���Ht��I��s� ���� ���� ��3� �]nj|��9�K�v�Ц�M�n4���M�~<�]nj�V�J��r�E(Oh��.B�xB��t*�J�Oy5�P���2��K��P�ʗ��J2�/d�!BIF�4@�#�2��#YV3R��U��n�#�(J���(��$8�T��,�#J�X�25�T��,�#J�x�23�T��,�#J��	+rIM����H�#J%��r� �$7�Bn$��&^�M������i�T��x!7�Jr/�ARIn��4H*�bB���4H0�fB��1��N��#�M X4<�
�&��8�\^$�.�$)�t:�\1�\��r�xr����a�_N�j���7ΰ�)j��u�j��m?�IH�4��{��i�U�ˢ��a�����4?�Ӟ���o�B�9�Z�S��q �슮0�3*���uQx"���$wi�����P&C�ρ�A%��}�U� ���Y�1�� 0� ����[�T�f��"˅����~�R~���$��B��%��L^A��bd$�F�"۽�"�cߜ��&9�UK�lɩ0/��a��;�6��I�{�FT��p�k�6h.D��ӆ�wǐ�嶐�8��4�V�f����6X�\��0�Yn��,��y�d��@��"�A�%�����<_c͡���G0؎s<=^��2o�wJ��w�'А(��yll���*%)�]��/��o��    %�M5��-#�f*_3�Qp��:Dp��@����e^���cC��g3�	֔`n�(_j�j��]�j�-�M��%۹w��.Q]�ڊ ]6�x�\Һd��)=
?�.M]�Z��E���%������r�y�N'yY�j��.��eIw��.��eU�!��Ӓ�%�!��Ӓ�=�C�]��*k-��.T;A��r�4?N�k��T �[�Z�3v��{],��u�����S=~:K�y�q�@�#�F��Q����"�L��o���U����"0�tikE�Įk��,YH����R�T�G�Nq�Ī�,4�g�)e����g�1�S*S��<��L�L����ICJi�|��bPٚ"äS*��F
 ݢ��0����R�.�thS�N�]:�^]f^a�J����R�Zn��	&y��t0p�3]�I'y��^HM]�1%�.���ʐ�&x����a�55��\qP�����Y�+�8�S���[.E؏��X0�b��c%2�'��p�׀A"�.[3k��D�c�kl��D�E��c�H���"��A"�S.[sk��Թ̿��ՎURY�"ͯDf�� ��sɳ�r��Թ��s9Hd�\��$2u.y�\�:�<{.�L��9�}�$�|�G�YG� �)��Y�$2�>�'�!"�j�(r��E�_��}za�W"%��D�Հ�#E��rY��l��d�����o,���a�{Z/��i�X͎0�]� ��a� e�S��֟�d>����6r_t���W貊�}ё�y��:�}q��mGI�㈣"�p����Hi�~�JG�,�`�ts�5����������#k�&���̿}_m1���需8����v�@�aH����:̟B�#v���>��ߝ������Xsm���b���h�i����ͧ�6����|m�Qέ�������a3��b�}^���]�x�=,�S^� ���a�1ɗ�̲�p���{u���{{�S�= �:_|������bD�hOo�&n/��������t�(#� ^���Ο�B��������������z��G���Y�.3��|#NN��#`�Q�lč@5���e2L1�߆&��Z�ǟ4�.� o�X�|$Tg���xA���6݈#���Fy��O�K�*��6�q��B�l�r#K"���@$�f��y�>n�\��[���N�}� �z�Q�nC H���/GS��AP��6?� 0#" �r��B
U&�HH�ܺ�m^�"	M��?"�����
���X(J�F�GD@Q�۫�)Q�z����t�Z�͉��A�j�	�dqſ��c�>_C�<�kډ�]LWї��LofDcF#���L&��F0��U5�LY���"0��`2!7�1%`�g�d�nC���e�5�L�֍`\�2���Q�������d�n��ر�h�L`э`
�fTVE�x}�M�������1���c����1��5�����;�L��oS��VԷ��1�m`�ع3�����e&����)b`�꣝]��۱�ξ>��a�0g`H΃1�׽	�#qO��[I�K�m�15��V����܈D�S���6�L��a(bB�7ӂ<i����� h���^$��f�ř�p��CCi����8�obi ��BR9n	��&�>�׆���o�oK^��cB��yC�*@��jCH�;o�@�)����|آ�z�Ja:V�6�&��@,��jM|��M�}oa�{y4	��]a��aH0�۱�A��Dn�@s���q�ka���!C��2<�`˰��< [���\J�K�6��6=:K�'��ocI��m ���m��A\�s�[L�����������+�1c�Z^q�Ț��<-U�ď�D �B�s4�E�@q5���{#�����dL�����ik(�F(.��z���7B������P2��۠8V E�Jƹh�:dF��(�W2���q��0g�7B)![}�+��P
���zVrN����V0_S\Υhh��ɻ\�*Q/PΡx#��բ>�9w�P�lWk+6�+�Aɳ�a����&(>϶F�3��DCɇ<xNU\�y�M�x�,Uf��H,�$��t F(Q
*,�*�w�	�$k����O���j9����S�����7�&\��.&8�9C�3vF��z�M�� d�iQ#�\�7A3C&�+_C3�MZi�������(!7Asà�ZF)�	���D��DFI��al�)�Td�����A�T}��s41l��ZF����d�ƒar8�kp��FpC��o��Q|n7�J���yWd����D��!w_�n�p�#�����7��]Z��r7xº \�2�m����f��{s�o7�~�g]D��[�I�WO����������O1��CU�j0��y+O<p=��3_��)�-�p�O&@����/%����R��^J<_��1����a������91S7BR)HW������q[�4/R�D{�l�c��ʦI}���l?�߶n�d
!)q^��h��ϫ���7������3*����|��^`���̗+�/� C���	~���i9�|���r�JU�x\��x( �h��	�UHZ'_�o�� �u@�1A�mT3u��~~�M���X�L�䬈3 T������&F���>���N/������;�V�8�@2�:��_��}��v���<��w�"�w�m8�꫈C:�������p����3���.�	��p��@��ܑ���c�>lLi�gg4ť n���3$�T�@��X�a�Y�=3�:�D�׍(z��	�6F�7s���~=?͟w���ř� ]HC��n��L$�D�Ãn"��ҍl��@u��방Ɣ�C	0��Mf�1] �.�,4��pl|̒y�Eһ��$ٔs��3��L���l�>�`΂`q��V,��6.\`�&:P��كv ��wU�I�����y+�n]�zԸ:�������b��s�H	"�X��7	�����4���j�}��j�s��a�_V�~���$���W���S�D�tcC2`5��L�j��ؘ����}� 9Y�rtM=���֖�Yb���;Qu�!��B"�^�g	lr�%^i�cB�s�/���j�F�D6�l�%߆$�ؐ�����]{/���Q!��5[�?K�AJ��y��ՉS�/\���Y���)D��
�l��Z8݆�G��<{�/��0*�{7$��T�G��{�����Kc��^ë��1v�%�'��4*�ͣ2�.X$S7vN 	���E؝&Y��F@wW��6=��աf��j79����<L�sTQx2�Yd��{����r�'%��!�k�\Y�=ͤH�"y�\��\+Z��8��9����	���B���r)4�ͣi�.�V"�g��k�/���J��/R���Ԥ�AH��	�W�n��=\"��H��r�t�tI�A;Βe��VK.�Ʌþ�|��UX�
ϺI�D���Vؒ�`���(ӧ�Dp���qj-�z]�1Gjw����7�j�M��ɍ�hsݑn7K�d1���&v���g[Zt�}ضY��V/��qd�
�\*`��G�0�IF��W�=Y�s��;�q��n7�v����;�����������k�H����gv *�a&}����j	0l7>��(l��@�����\8�ѿ"|Y~��^"���q��߸�����K�����ٝ���y]~���쇧�`�?�����W���IѠ��7�����Z����I-�H�`$�k��+F��B�E�{�@��Y�,�TQ@�CV��n�N%�@:���{7�mҜ��
�2��;Lz���`(���JHs_�Gw5\O�lS��M9پ���f�X��N�A󀳮�YJsΊ�2RHH�ʓÙ�X�0h�#�|s�`(n�K`t߱�"7	�u�D���'O��������0]���{D���Zҡ~b]&�dF�;ղ���u6��;���A1](�4\�g���
�C!JQxQ���]�BN �v��u��nvO��n�&����    d.C��lM�a�V�����(P�����oK�����Y���X�)�x��bӆ� �ݗ���v�χ��pweE���}��〯7XӢ�*q��Av����ylr�����l���bC)^�#tw�TO���p��/�jE#޷��.���R���Bo������iZ9l������ibټ_������
_�t�>�v�� �>30���G�C���0�T�8]�E7Eo��}������fk��N��[������I��m��H�)��n��)����˜W_�,�0 ������(n�������l~�B���{�d��?�<ߏ�zu�C�gz�N�s��<��K�=2�f�:N��U������T�� ^/��&�3W�bQ2�}īl��u�A �ů �j2?��
�G���A�T�+��q��W�5�7�[|�l�ww%[�l]��7�t{u9��(��d�W�΁(��tt5�I �
����>�8%��L���P��&��A��Dx�B�,�Qʭ�A(�X�v7����˭�=+�ȣi/�P�n��P�`��l�R��:��NTo6�	-��@r�ٺ
�f�}�_f!T�5����ͮC��rY�8��!r�2�p5��5"�T�Vy/=��I�^��H�)������{�?��P��m`J��p|�8&U�ı�m_�k��i$4�Ta�k �A�Jgw��� �Zi��p�M(ܚpwg!<��}��w��4��Y���v��/���/B�vb?��$V�鱚�*��%ϰb#���ٚ��_��׿����o�����)f�M�8�o��	�] �7��m<,�7.V��u�[e:�8r�7��-p"R15��� s�ㆠ ߗ�M�Z���͋�=��R�W�?�*Wgi������f�9H�pc ��t�&�Ez���&)s�������f1��3�S��Bb0G�ͪ��C�"2�>!�2g���p}_ᆕ	g� 0ÄsR:/�w�ݦ����≾�W������k����Y���M՘uD4DgV
M��6њ�
MƖ/�����Y��qz\4DoVj�FFC4g���'*�d0�R#�!��R+U~����D�l
M��a���4zd4��b�������[�~���T��|��m�.����[|S�$=M7�&<����s\�GF���޾M7+��=S�s\l��o��p���������/�T��5�'�x\�q�T��IY��i�J*�,<'I��^���ƾ>?��v��=x��A�ס��$����� �f�=���_+�T�� �f�Q�[��b� ��z�.���$�k5�:-��H|��k	_?���Τ�!??>��5
�ۮ�
B "�#;�;�s�&�X� �=�� ��� �M���5 �'�]��G���Z��� 
�30�j#tN�g���B绷3�*���X>���T��t8�CQP���Ԁ*ug�X!���2ogP�xԁh
�Ј�n�ȏ�������%��}�~ծA$����|���l��4��fy �e}O8���|o�ر����~m�ʐ*���'�O�j�\������QH�A�l�NU;�_8���M��JK�9�C�?n;r�� �h?�Z׽p��2���/�ϼ�N�6|2q�Y����vyZV��0��b)�%�����-f҃�#���f��� �_w,��8�N�dpj�5 <��u����E���_��1m�l��6�m�G��P���p���a�a�(݇s���k8���z~\ޖ�醃ִ}�,�/~�^��W��/v0��AM����gJ]�IX"a�0?�p$Y�ц�y��������Y��y��_Cg���*��L`�f�'�s���=����5֠hg��%2�5!Φ��gZ�:�f���~�t~���	��+t�^��=��׿��_���f�A�?&�9S�̾Y@!>�p���}Se��}a�3ә(���)!����SP`��W��u
��8H,N����qx�Caf^���\�Z/����-FH��3�J�I�y��p���:;�� �\�?N�"�7�}g��Q��������V��,e�`ta/�������,>��/X�t�6�V�*p�X/[@<����f�F��s��ic�ß���ח�;���Ǯ�V	�_�������ӨAGĮ9N�����[XN!N����dp�*����PvF�z�Ъ�OO�>� ����	��a��Bm�Uw"������?�4'�]̘�fhW�Q�	��TՖ�`�&�O���e�]V�]ȥݻï���a�Z®+�L���!�̃l�.�Q��u .��4��kϫ-Hg�?8��E����#ӌJ\-ܔ\�`Lw2��iu\즇��
6�ô37�_O/����̜�b�Ԍ	���)F�V�ta�v�7!&�;��â�`mx���;���o��v.@�3�[��fO�L9X7|�A U���8>���~�:@��_�{���(���T*u�'�j�������]�&���j�.huZ6`�NW[P	�i�@v��b��L��i�I�fU��AE���Q����ã��������ͺ���pß���p��`�u��j7/2(X0��6Ws���W�W� ���/@�	n�fҖ������j�W`Pp3���|*�݅�3B��{o9�'��OK����7Q0M$�E�M
4��b֞��;y��o����o�mʥ���o�����S>�_�u��}<�]548gֹ�wi��|��K�3,�TI<����2��"qv�T���)�a��:.5ɿh6�
?.�]���!p���w�����	g�a5D)5c�F튙v�SBekW���~�
5o���Yec�C�@mZ��.��?O�V�7@d.`[��:� �#�<��Li�$�_$��b8B�҃҅ͪB��9�=��`���E��P�U�KvI�*�`�������������:�ǟ���?���u���o�K+_�ӿ��o��o��o���6����`~�������o� ������A@t8cp��o�6����N@T�D�����/.п=��6���G�v'.���'���e��%\4�4���pncw�y�	
�-�έ$Fd��		��H�AjNh��̏��d�}��v��R��Z�9�6�Ak`���N!��ž?�`[U_�]�E�6��~]���G��5��#�
9]�ll��/�͐/��1��4xk��p���呢;!mEW��9嵳�ei�N)Y��/l@oM*!�-��������Z+�`$B�q���>�wL.�`:��DA��=�H��8;���i-���YXD��,�Μ�ڻ(�fLz���`���E�[��eq*�G����Tfq�L��m�%�Me{��5Z'F��-�¼��~	�@��*}K5��F�`�h/�͗[#�����x�yT0j�t�9���Y,R�Џ]��`伔8fBe2�#*�4��A�Ҍ*Ia)1�=Xi���,����R�z�&�E��D,9M	eL�%82/�((��M	����3kҔ�y/��c�G�����JXU�Y#TS@�G�Q3�y��xf�%s��O����b�Fk�.���wA��8/�5ob�`{F�4��SXLS���,Ԩ��Hc*
�d��S&����2J��X���	�_��,�.��\A��X���:��F�B3�EWFr9vE��e4"$>�9���fԐւQ�3|�P�e�ތ�ʆ�4�Po= �PL9bC6��S�1����� h9�
����kF=9��{!! c-f�[�f�R��q�0m ���	#
D3j�%�	 �J��nf��>�\F%����+���v��1 ͨ#P�f��, ���H�]l�G�� P��p�� ��	l�#��!��L�$���h [��m���)�"H��Ҙ����{�䛢4�n�￾LVO��9P>�
�?��X<��c�5�q�O���֗R��q�'��l��f:{HEX�*��    QE�@��_���� 4(3R���}U�p� ���a�J ��5�I�<ⰻ�*j�m���( �����8�jTH���eO�g@|�vf=�̩QEџK�/p~��|���M،@���~)�xk͢W�e�Q��.�s��.���8����������J:�]~�3��}�,�G���$�B#
��bt�U0�B�����iD�Q�@t*;�h���>�
3cF�>!�FI�N�a`깮b��0���W+�;�QM�MC�(*��ɡ�_��s8�F�;n��ŷ��j�~� H��1�\�%����_��Z	�T�%J�e�ьzr����ar;T����mF=5���(PFF�Y�i$�}Gaԣ������P����mI�Bۃd��R�A�5���"��l{���y�Cka��d�D�ͩ�f�R����AE����Z	WW�4��rp��J���30,��PH�n��(�S�'9��� C�W�EٙJ��U�͐(v�Ւ%������<XE�w�֨'U<I��-�>F�;){�D����i�$�3����Iqh��Y��uā�,G�? �z|�9!���h3�	г�J��u���~��3���NB3J韞��Y�L��`-LT:����eUDŹ�Rd�YN�4��9%=D�s�#�ތ
��ٹ���y�������Z;0@B[k��0>���[�A;�ͨ�%l�B��*gz�g9:���!F�(�O ca	�pydxJ4��bVEԛ˨%.ߴ��.^�6c�`��up�c*p3�)g�o��f�೫��B�F��̓fTP�o�����
����UoBB������Y��[N��Gǽ�(;Nͨ���28h��b��(=���Nj�.fI	�^�r[cm@�p�)O��~��ˢ�������:Р�"��e�R�/c`�	0�@e��7��$ۣ�ōE��N�`A��-�A�T��b[���b��2���tnv���(�b[�<*8�KcC���{��̨o�:#gJ�Ķ�y�P/�ئ#7;�V�@�ͨq¢'D3�el��Q�d�Y�cBt��A�s�c�G�h�$�QE�VS��;��/
�!f
�~�_kTRF/�X�c�:��p��aRuT�lFI�S4���o���݆�)������ �;6P�P��ZJ�2���X�����t���r%w�P�`x�M2��Ɂ��Q0�(�I�B��Q��� N�XQ1����Ӂr�o�Χ�56i:�����ٙ�x���@b�����(��[��p�b3l�ۨ�Qz��B�B �^�"�Q�]�_� l��c�Y� �v�G�Gu��ۧ����O����
k.��!��P�Ŵ{��=Jz)Ν�b��
j�����*����?k�.�ґ����4�,ӺB���3S{�4M�]��^���5��`&�sF��F������3"�@���˭w]�F����iZhH�Xڪ�R7�%_�5�WA=J=��s�4b� �
�׵ �3p���_{�ކ6y�B�7O��f�=�E�ۣ�<��#s5Dȍ����U�{je{��ϝ��Ѣ�
J��hMaq���z�����]�%���^Oнm���u�Zou!��|}�Z��,7��
��L�� �N�'
�����b,3�W��(���V����ߍ�>-�;;�U��>�ZG{�6� ��q�zZ�d6�W�Ox�2�۽�a"�&:�#PΣ�t���Bq&LMx1'��IF��2JZ��m	(��Gx�P���a
o$���jF��H��і[ f��k��C)$颪�e�
.��6m(���u?�8	�|l�Σ�tr���fEb�#�m��Ặ�m{u����,�m�E�y*�[����6�b���b\r%c-1Ǐ��6���IB2F3�Y&$W��
����9��fb{%I+%"��eTS��oH<��R\� N��A3J���4�D�9<l&��*r�]Fi*� 3��>��lF��{ۣ��C�Ծǧ���.	����@3j�d$L�!!`_(���9�7�B�~�Ek�~��6uq;��v��Z3�L[9��QI�`�&��JzAG��s��]��QK�A�EHԹY�
�%v".��g�$����Q9A���&/�<�9�L�]5�^��CK&��B�F)V0)rĜ<��s�Y�\���T{Ԑs��Fl���J>����p��{�

�QҏoR���Y�H!��
�R��2j���$�ak�������4�/�G5��b��5��VP��*��(�i1)jT!2wZ�N�E�
�Q*'̛3+�`�05�\��(�/�[�A��$h�i����Q����If����$���}k{�\{]�s�=~߾L7�9�\��\�Ï����+�ڇ��ahF��+�������{]�<�+s�עg�_�zꎴ2?	_Ou��h�]��(U��,���u��]	 ށ��d\|=J�m#l��i�s����.�^�<��A���*� ��>t�^hI{�6լi:���f!ŖM�e�[�1���J�%�;���J�!U`!�l]���R�u�T�AB��$#����]{ԓ�6�	������T46��omF��wU�#l*����&/ϧ��`m�C1"���Դȇ_F���@xT�~���J��3�y�g�Q2�ŉ�,�_�YpqXva��Gz�W�$�A�Ķ���?E7�P��߾%}TN�&���{5	�*���m��jިCtU���ԝ�t��Vc��4��P�����G=U�8�&r+qM G�����̘��縹%�<����{��ǯК���I�)f{��8�C�0� ������<�F(��*�Hq����ՔV�|v��p^��Yřc�^���(��$���J2n:�2($XB�mx/p�j�
��>G�/�V|��Y��._` ��	az��ڃ���|�2��K�8b)���a�g=gV{�SU��ϒ�zԈ��<�(C��윫k�Q�d�Op'����|U"5N����P�!T<��]=�$9�|ݷ����%,UR����oF��O�g�Ri~^��|0J�v��s5J���O>��I~?XCJ��1��r���1���f����C��pT~3J��OI���"(�Q��(�@�M�ZL�Ǩ`ny/:�=*��������O�~��}��0|b��P�Ar�=��	
c���3ȋo��]a� �j?	����u��\�:r&���"@V5�h׭�@�����"
�e����X��V�����(Z��2�M$Mϩ���6�v������'�`AamT��Q{���1�eh�Y�F����B_�9TM=J�b���oEм�s�S�d�����2�Z��j'66)B��/���'YvR�l�fTOUX�lZ���D�>��hP$b8�A��1m����,�6K���~28|0�,����Tϣ�#'z>C���J&л�����QONM)��5�$�	b��E1�%�������~�m-4�~��?7ieDa�;7Q��2JX����t�ba��pq�LJ��.Mυ|5J��H!ߞ�ꕉ��X�tpfx��T{T6�(�Y��(����<� \F5ů��_}
�h�	�{yo�
��x��M����a���\4��(
I��OIX�@y����%�-@�/���kz.����^RN{��gKYv��^�(B� �{_�8  QH�|��
�������(��(
u��6�B�ǖ�q�(Q�P����j�z�����3h7�)��'��c_�9L�Wqw����b7}3J��A����[��AF����G5ɕ��'����p,�4S��^-ΫQ�'�q�
��±��0�K�QA<p����OZ���Q�?x�G��� �焯�ߨ_�=V�մG=�'�e���-�����(�4�D�I��`��W�$n����0qN�fa�ɩ9?���#��q�1�2v1_F5�@�`o���_��X7nz\��A��'�7L��JcPz���ȱkFC��8ǀ҅�1Zj��`���5J�R��e(Ͱ�)K�����yT2�}   �M�`l���l?Y�/׏��q�c�"0q����O����A��~��\F�0,\����@�wB��)c���,��_F	G��������Ab�#�bw�e�(��'l�ӛq�c�Ǩ�AR>����^��V��)<��?���gH�
�7"�hU���x�@��޴{Ԫ�ǘ}0k�$%*>@a�!b4�8c>�=s�۫��4�^�8���W��Vb߮�~�x�lr���Y(�ia"���7=�qKF�bW�P�DۙP�C��hu[`?�x3��K�	�����ZzЖ����6h�ᨒD{I�&
�������Ȑ�Z��*���u�}ը1D@/ޑ�&K���c#��kl�L����}5���ME��b.��w�?V-T[���HX��1hW������S ���	�E�-Q�1��I���Ψ BbV��vo!,'�͚�?O�>ԳÊ�xլ�tX�����ٕ�no�YS�MCB`u�十u�`���|���������u>]~�7�����n�d�<�,ϗf�u{���u��
M꙯��3���=V��WTe����vKv��-`g�K��%�ד����P渓c��N��D��M���n��ꁻ=��84D���u�lD�y�Wo1�z
m����54?<Z_��7��7�g�!�	��0�Kv�/T�UZ5X�B��i��d�3m��Ș�J��2�������C���Z7Zq�ˀ���R6vՐuxjl�4���:2���A��'r6�mM� :��?N�{�����t�_ӱ�Pq�yBT��C���P�+�Q=*1=XY^_:�~���(��`�����F��"�KcQ��)�Ea+Y��&+��DN��	�z��R�m���4�Z�XQ�Hv��m�|��ʝ�˭7�J�+{�;��A�U\7�T�!��q���*�Qk�z�K�%�d�R�y5n�-X묷�5�En���+��`B�~w<���㩅*lM�)��W�:�����.,*�E��N�牮��x����pu�*�	/��x��=� �vPw�P���PJ!��C,%:TD|3h)��� �����!��8cc�������/��1{
s%b�t3��駒�@>�����C�y V�RΣ�$*�+�?��?��
,\mT��lF����?|�&:5B�en�f��oFu��d/��[�!����hݑ(&�����yr�}���U�VTR>���ox��+�f�aTb�j�T��x��#4��%A�������7���ۏN��,�~*T�Xz,����:�8"���
�/��j��)�4��f�Q�o�gX��+�IX�]D��eTS�ߒ9�`��}�Z�+�wW�s��}m��|��U(�c΁��Q���9?�����*iV~�ȕ�K��fԓ�O�����䇮n��M\�AKݾ�b?L�[�5l������!��RI����<�+�1�X* �}4���>,M`������&�>.���~$���#����3J���?��% "�]��0�*#�L�ǘޗ%��%����~î����ҾE����?����}�~�QE�~�L�G��n?,� fl���7�����2}��3��WK7�K)���Q#(�)ݏ���H�A���"��2J��I�:lI�z;ʫ�5��Q��K�.�m/,"�f�hN��zR~B��y)��K�7�}c��%���Z쩓���� ���3h���i�S�gu?��(ak�U����i��|�%��G��f����6}�5�폕��``�c�ߌR��O�~"��B/QW�}�2JZ��V��˫~:ܮ���=ͨ��>�P��I��U�����5�ڣ���}���y^x���g>���l�v6=�kO8�쩬��"j��p1�ӳ'?�>�1}*	@0�[����G5����'��u�Hf��<���`s�v��n��>�(!�
�k�U}�F5���0� ;��^�����h�x�ɧ��'}���P���{~߫���ۓ��?�����8)tl��QOl?|%M�ӷO%]���D�:��ʟ�((!�b˘��;�Z���^�0}����Bv��jT��	f���P��͞?�ѵ)7=��ը!��������;#��3j8�?4�I|���Wؤ�y�F���)�~���owmt��kƩ��)�Cꧣ�Z�w/SRE��2j��b��$����ͫ� ����P�y�r)�)�/��ƫ4p�}��oN��˛SO~B��,K���gƘ����(y�rZ���~����0�e���	�̕���Z[Бb7�e�d~N+~�+7+?�d��ҷ��F���'?lp���,�o!c�T��'\~\eg3U��d�{�2j!_�V/�Y}��Q�Lq�#�ߌ��O$����| w1��2�(�O�<~��&#_�*N�=�v^F�泥@Y�OhT��t*r��QϨ�/h��ty�GV�Vօ�QIn?����y�G�4Ҩ���j�QW���>��F-	J�$V������v��V�U{�`-�,��	0Z��v��~��Q-W'�3�ؽ�����^�����<�-O�=X~��W*B��� Q�<��Z+��:��Q����Ca�b���*V����/�/ ]���s�p�5���O��t�3�ex�G=��M�*���n���vu���Q! j������������ߦ�[�����?���Ox���>l�n(��nЙQ\]����Tt�����\9Gİ�ɦ0s([ḅ��A����c�s���nRG�Sl]�,����X7ž�!��G���!h��֋<��kz�vd`ؘЎ��Q��Z�D�0��ə����R�؄��"����Ý�(��0�W\�>�˨��sX���Xc���`l��gL>˓�Dȷ�q�ʖQ�c���ͪ�Cx�:1��Zޙ���1���	�Y��P`M�5O���A�n��rle������j.����:�,�b�Oո�]LP=���"�d�i��ӹ|�Ի�Hl�'��_�����|/�:��u��a���c��y��ք�����Q>� 7��	���0�)��ٶFM�Vϯ�a�������j��ޥ��c���xX���>�<�uacǝ�o��ᴹ�a���a��En=����}S�.���� �}~X��zw��� W�����?����RN�����	�S�ƪ��¤���<Wp\�!5��.�p��.b������k0���wT�4��mH���j�V�c|�Q���( 몤<��8A01:q_T�f���`�z�?7���<pv6{0�K��g�;���Ĕ}h@�E��V2m��7Z�#����?��?��� �@      /     x��Y�n�]OE��@�V��c$�!@�%%@�Mk�I503Mw�[/��FY��Xέ����P�� 2 ���uϹ��2����lK�,�Uu[l��I[�3�E8�DZ&�\����W��/A�δ�6S��q�\�\�cq��p��q�6��L!�]qW�ئf���nز`���)۶n
������nnx�w|OB�τ֙��f��YS.���rQ��m�M�#�9�˜�0�<�D�NB+�~s�ǫˏ����[#�a��\�;���G�F&t�<��_��R�AJ�����ۄ@P�3e(���W���Jr��y��\P�o��o��j.m��4|H3Be��D#2e�G���m�ڢZ��Rz��\ɹ��3`��FT͌P�r�k���*D΅ʹ���e�*Q�2�B1Ͷ��;Y��֫m�[,ODL�tsr|���SЧ�5i;$���j�"�m���SS,'T:�t�;y��C�����C�I�����_�U�6$R��jS-�bU�D������s;W�S@���N�r3�8ϴ�LwEC������q��6����OuӔ�j����c'>W�+���w�J��I�Z���d�^L�;T���_�va2m�l�1e�-+�\irZ��f��ʸ+X��4iwyS���;�Ѻ���M���0C�iR��z���nY�fmy�ϫ��u���0$�-n�K˒=U/.
V͵͍QA�M=�җ�����H�8�����������@��\
�'wRy��G��1x��&پI���-�T3����n���jY,��EI4� ��K>�(5�hW#�%b3�* U��ڻU�7�цx�A��j4H���9�w	�3']f�L���C�jxE��e�����5x<��bЁu��0D�1��V#5�i�m:�EQ��G�æ�Fqa�p �Q\~��Z��F�����I'G+��F�A����Ed�j���~��0t�{)<<~�Ce�����G;	{K�3p����6�+���M'��1K���LC�Q���e��h�	�]��{l_�IF���4�ei2��y(��"�b)��q��vB���qn�kw��C}������E�-(K�$��Ὰ��
��I@��Gն�ڸ`̏Q6�~_�O�I�p\l�f���_�mAJ���h-�!�RƁt�CS\Cq}f��M�P��)��V����h}$f��t �����/�ҁB
�����+�жO1F�I�N�����̋O��o1!�Hǿ������N����Pu�JZ�3�@%;���%=ڄ��4"7
��D�&�ܓ�Ϊ�_}Bˎ;lg�DCB�4M�,0��^�LPT�0S/��8tO�y�,��#��Ӡ��Đ}b�f���'����1���x��c��>cH��p6���8|�XOẅ́�����;B�G��(�8��u��]�UBœ���<X�}���"�m�>����YF�@y�c�(FA󭧞�H!�A�j�T஘q���Q�Jqy��CU,T8��h���1���Z}�`��t̎D�ĳ	T�����P����̜|>���R�#):��e� P��/��y���P�hk�{z;���s�"Q/"
Ed��]�n����!��:q�rs-r�����1�8-$�9����w�\��a��t��Hs4:�@H�߯�E�֏��}>X������*��D��� ��=3��q�ť?�CM
�)�6scuV]e�VB���w6S>�������=j��,�U�̍��|��N'���:TG�F�����Q� %n�oߦ
�����ǂ��4W}��L�%]�4�,o����K��|���M�����(�XU�񲋣�Nq���Sh��ޅ�˙��a�����j�A�4Н��*�� 547F]*���Skޖ�U�]9�K0��;�[��<���9e���y7�ī�b���B7l�c4�
�3d�~q��k.K�����E�8��t�T�z]f��x�N�1ۓƋm�Jx�
�T�v�q�q�>�SV`�7� �U46i��i�T��c0�S��H�gM�jOST��P�%�dIw�u�T��O�6�꿖MT���Au����x���a�z�#4�^m�"��L|`���6���~t���«q��	�����پ���m�@���n�����6����P���YG�#�����}̀�����?_��W���Ⳣ��2�j�����ݨ,��k�����t��qfF/0�^�34����9/��^~���5�!����x����Y �f������2g�uC7�%9���h�C����Y|��=H�zi1r5���IC�)hSd��{_����e�nq���m�^�q-��x}g�a���۲]wk�c�M�8�!_��G``0t��v?A��H�Sz��`�w�_J�=��B/���4���9<��ݙ���#������!$��"�1�\�T�)2��"�=����Ov��,�q`x6��O���}&��#�.8�zg�����z������{}z}}��){�ޜ�'��W�|��W�H�^�H���S4��4�X�8�]^��xy��?���~u������ٻOrhk���ӛP��6ow�)�����0��� ^bґ���oX�7D]1>x�4u�1N>��_X�Q`��\�u��mlk�r����؍{�9��#�E6��hX����-�]���L��7u�./����a�<7�����	
��0:���ק�O�,6���^_\�;�ǈ�b8$�#��� -�n�AA.���iY�X�-q�68j�^����Gh��b��K�e� �IO^      5   e   x�=�;�@C����Dq2߽�$�"�@`����:�%�^��D�����bo"�g"��}X�t�oY��mm=&��1��PpD	%GF�QPq|���e >�-p      3   �  x��V�r�6>SO�ɩ��P��F�glI���D�23$������129d��>�^�P����KO��D����~������M+�W���/^�pZ�9Q|ν�:����e��%�&���'��L�7H\?���oL��|�Y�����y/	�;h%��*�"�y֎(��R��G	I�?���>�?�����I��7�(���%���5� S̹�����s]�%�3Uˬ���M{���:t��'Ct��a'���nZQ
�j 3�7��JQ+�b��SU7r�ǰ��I(�^��;Zj�w��Y�j����F���"|�%�F/$>g� �%�%~8�0���jY������,��O������̋\�9d�E�Z���/�y-J���$j|�b�T�n�VV�{��~�|���f>�?a���J��AT �&M�`�Ef^#{+[z�����
r&��"�>�bk�l�O���0��/�
�d�{��Jh2]�Z�����|���Mz�Ζ��&�Y�/)\�,�a5]�gS����f�w���/>�R??R��b��"ƱQ	�'�U�7������G���︣�wҶe�I��ަ70��L:�ϛB��ͪ�3q�$��t⺦K��q��BC��p_dBW�V��n�Ӵ�DO�I�M)+a�D��̤&�R\�x�	�{�87&A�j��Й�{�!ǎ"ww��[@�5��x�ͯ=��q�$.��>vҮ2AD-?�o
�m���j�?�n|�˰~R���P��ǰ���B�I�e�k���%�*�/[-Z�cQ!�g����3��X�h���Iơ{�io�t�z�wW�3�_�0��|��������&�t�N����:����xP����r�����
Iz?�p�.^��̲͆mlʱ7�0���L�'��%��=@�F��0
���b���;���K#���?V�c�Q:	\�����^?97�̠��B#5<��@1�P��0��#���4������(�	�s9��Aw°�����CH�Li-QY�3;-Q���K�'!/r���:d�UnH����P�8IEm#�p�-$L/kRG��/E}�jH)rq"��h�������QJg8J	����S`��<�����"������[$��xy8E+��K���<���ڽ�]Qo��U]�b!(�Eeq���*���4Cٶs�e��Ӆ*:8F�j�|Qw�b�Yf�*�T&j�B��w��g�͜�1���I��	�<.�!�uf~�mJ�BpL�×~��V$��u�����]�(�b��n�[Fv��cÀ1�M#��{��z\���
l��K�7����	㉏2�E�����(2:J8'1�x����sW�ȰRM���� o���׹푁�H�4�i�FZV��g���ƭ���pG�3�2�Y~��%��|�0-��6�#b�pC�(hh���t�x*~�͂"E9�o}����3ڇJ��4�F��h4�\�x.      8     x����N�0���)�����I̩[@�A/E\�Yo�*��v�A=T�y��X�	]ʱ�*Z�S<�o<����[�vqc�]k:��9X��J`��ѭ�m�n�1��Л<�#�,[�
H��P��k*	��w*�@�R1�RԥH*�ʊV����>A0�z�S�n��)�7>�h�90���y�pq4�E`��.}��҆���n�I �T��R2.^�R�	^ �	�g�S�h1�֦b[���w�0>L��xכl�`i:ݛ�;\~�T�<u�hh����@��������|f�Wl����N�m01z<��|��<9�	7�B��v㣳^AMXI��+�q�`y��:���׫���*�p��[��{��Ƭ,��5vv|k{|�4:��O%P�8Q\�()��_�bV3�y�/�񯏗������-�3P�3<B�O�_�beN+��;����&2['}��=�.f��P�#+!�
R3�05�y_�C������9�p��Fvj�d�de2Re�n�C��mpI4���S��Y�}��At��/"b�-�5�6�R��-�l|�mM?��l`~T�h�!����a�W>}����[N!���w����=�%<&�L��k\����ҭv�����c~�_)8�ȍg B:*��O�b�%�w���C�֌朧�'�9���=9E���=���ղLj���*)��L8o�;�&iЮ^��O@���{�ł �*�E.E!j��� ��K(B�0J��Tf���u��X��     