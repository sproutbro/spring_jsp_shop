create sequence QNA0_SEQ
    /

create sequence ORDERS0_SEQ
    /

create sequence REVIEW0_SEQ
    /

create sequence CART0_SEQ
    /

create sequence ORDERS_DETAIL0_SEQ
    /

create sequence FAQ0_SEQ
    /

create sequence NOTICE0_SEQ
    /

create sequence PRODUCT0_SEQ
    /

create sequence QNA_REPLY0_SEQ
    /

create table FAQ0
(
    FNO      NUMBER(5)          not null
        constraint PK_FAQ0
        primary key,
    FTITLE   VARCHAR2(255 char) not null,
    FCONTENT CLOB               not null,
    FRDATE   DATE               not null
)
    /

create table MEMBER0
(
    MID    VARCHAR2(50 char)  not null
        constraint PK_MEMBER0
        primary key,
    MPW    VARCHAR2(50 char)  not null,
    MNAME  VARCHAR2(50 char)  not null,
    MPOST  NUMBER(5)          not null,
    MADD   VARCHAR2(500 char) not null,
    MADD2  VARCHAR2(500 char) not null,
    MPHONE VARCHAR2(20 char)  not null,
    MEMAIL VARCHAR2(500 char) not null,
    MRDATE DATE               not null
)
    /

create table PRODUCT0
(
    PNO     NUMBER(5)          not null
        constraint PK_PRODUCT0
        primary key,
    PNAME   VARCHAR2(100 char) not null,
    PTYPE   VARCHAR2(50 char)  not null,
    PPRICE  NUMBER(8)          not null,
    PIMG    VARCHAR2(500 char),
    PDETAIL CLOB               not null,
    PRDATE  DATE               not null
)
    /

create table QNA0
(
    QNO      NUMBER(5)          not null
        constraint PK_QNA0
        primary key,
    MID      VARCHAR2(50 char)  not null
        constraint FK_MEMBER0_TO_QNA0
        references MEMBER0,
    QTITLE   VARCHAR2(255 char) not null,
    QCONTENT CLOB               not null,
    QIMG     VARCHAR2(500 char),
    QRDATE   DATE               not null,
    QREAD    NUMBER(5)          not null
)
    /

create table REVIEW0
(
    RNO      NUMBER(5)          not null
        constraint PK_REVIEW0
        primary key,
    MID      VARCHAR2(50 char)  not null
        constraint FK_MEMBER0_TO_REVIEW0
        references MEMBER0,
    PNO      NUMBER(5)          not null
        constraint FK_PRODUCT0_TO_REVIEW0
        references PRODUCT0,
    RTITLE   VARCHAR2(255 char) not null,
    RCONTENT CLOB               not null,
    RRDATE   DATE               not null,
    RIMG     VARCHAR2(500 char)
)
    /

create table CART0
(
    CNO  NUMBER(5)         not null
        constraint PK_CART0
        primary key,
    CQTY NUMBER(3)         not null,
    MID  VARCHAR2(50 char) not null
        constraint FK_MEMBER0_TO_CART0
        references MEMBER0,
    PNO  NUMBER(5)         not null
        constraint FK_PRODUCT0_TO_CART0
        references PRODUCT0
)
    /

create table ORDERS0
(
    ONO    NUMBER(5)          not null
        constraint PK_ORDERS0
        primary key,
    MID    VARCHAR2(50 char)
        constraint FK_MEMBER0_TO_ORDERS0
        references MEMBER0,
    ORDATE DATE               not null,
    ONAME  VARCHAR2(50 char)  not null,
    OPHONE VARCHAR2(20 char)  not null,
    OADD   VARCHAR2(500 char) not null,
    OADD2  VARCHAR2(500 char) not null,
    OPOST  NUMBER(5)          not null,
    OPRICE NUMBER(8)          not null,
    OSTATE NUMBER(1)          not null,
    OPAY   NUMBER(1)          not null
)
    /

create table ORDERS_DETAIL0
(
    ODNO  NUMBER(5) not null
        constraint PK_ORDERS_DETAIL0
        primary key,
    PNO   NUMBER(5) not null
        constraint FK_PRODUCT0_TO_ORDERS_DETAIL0
        references PRODUCT0,
    ONO   NUMBER(5) not null
        constraint FK_ORDERS0_TO_ORDERS_DETAIL0
        references ORDERS0,
    ODQTY NUMBER(3) not null
)
    /

create table NOTICE0
(
    NNO      NUMBER(5)          not null
        constraint PK_NOTICE0
        primary key,
    NTITLE   VARCHAR2(255 char) not null,
    NCONTENT CLOB               not null,
    NRDATE   DATE               not null
)
    /

create table QNA_REPLY0
(
    QRNO      NUMBER(5)          not null
        constraint PK_QNA_REPLY0
        primary key,
    QNO       NUMBER(5)          not null
        constraint FK_QNA0_TO_QNA_REPLY0
        references QNA0,
    QRTITLE   VARCHAR2(255 char) not null,
    QRCONTENT CLOB               not null,
    QRRDATE   DATE               not null
)
    /

