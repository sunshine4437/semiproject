DROP TABLE s_product CASCADE CONSTRAINTS;

DROP SEQUENCE prod_seq;

CREATE TABLE s_product (
    productno       NUMBER(9) PRIMARY KEY,
    sellerid        VARCHAR2(20) NOT NULL,
    productname     VARCHAR2(200) NOT NULL,
    ptype           VARCHAR2(50) NOT NULL,
    imagename       VARCHAR2(500) NOT NULL,
    price           NUMBER(10) NOT NULL,
    option1         VARCHAR2(2000) NOT NULL,
    option2         VARCHAR2(2000) NOT NULL,
    amount          NUMBER(6) DEFAULT 0,
    regdate         VARCHAR2(30),
    detailimagename VARCHAR2(500) NOT NULL,
    onsale          CHAR(1) DEFAULT 0,
    CONSTRAINT fk_prodmem FOREIGN KEY ( sellerid )
        REFERENCES s_member ( id )
);

CREATE SEQUENCE prod_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '[���߶���] �������� 574/327/530 �ȭ ����Ʈ ����',
    '�Ź�',
    '1.jpg',
    23800,
    '��ǰ ��ȣ;01.NB_CM997HCA;02.NB_CM997HCC;03.NB_ML574RC2;04.NB_MR530SG;05.NB_MR530KA;06.NB_MS327FE;07.NB_MS327LAB;08.NB_MS327CPG;09.NB_MS327LH1;10.NB_WS327KC;11.NB_MS327WE;12.NB_MS327BD;13.NB_MR530SH;14.NB_WS327LW;15.NB_MS327CLA;16.NB_ML574EVB;17.NB_ML574EVG;18.NB_ML574EVW;19.NB_ML574EVE',
    '������;225;230;235;240;245;250;255;260;265;270;275;280;285;290',
    1,
  '2022.01.01 12:00',
    'productDetail01.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '[�н�/ī�̾�ũ����]���̺귣�� ������� ~87%+25%����! �ܿ�ٿ�/���Ƽ/�ø�����',
    '����/�ƿ���/�����Ƿ�/�����Ƿ�',
    '2.jpg',
    10500,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.02 12:00',
    'intro.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '[���ε�긴��]���� �ܵ���������! ������ �Ż�/�̿� �ܿ��α���',
    '�ƿ���/�����Ƿ�/�����Ƿ�',
    '3.jpg',
    13000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.03 12:00',
    'intro.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '�÷���� ���Ϲ���Ƽ �ų���� �ܿ� ���� ���� SALE',
    '����/�����Ƿ�',
    '4.jpg',
    16900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.04 12:00',
    'intro_0119.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '[��ص�/����������/���̽�����]�������/�е�/������',
    '����/�ƿ���/�����Ƿ�/�����Ƿ�',
    '5.jpg',
    11000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.05 12:00',
    '5f995d3e-e36c-4da0-9fe5-f44374c14da4_1640538764389.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '��Ʈ�� ������(ȭ��Ʈ/��) �� �� ���� �״Ͻ�ȭ',
    '�Ź�',
    '6.jpg',
    155000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.06 12:00',
    '��Ʈ�� ������ ȭ��Ʈ,�� �󼼼���.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '[����] ������� �Ź� ����Ŀ�� ������ ��ȭ �ȭ ����ȭ ������ ������!',
    '�Ź�',
    '7.jpg',
    9900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.07 12:00',
    'new.jpg',
    0
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    'SOVO �ܿ�Best �������� ��Ŭ �� �̵� �轺 ���� ��Ŀ ���� ������ ����Ŀ�� ���� ĳ���',
    '�Ź�',
    '8.jpg',
    19900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.08 12:00',
    '1835339176.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    'TOMS ������ Carlo �̵� �ͷ��� ����Ŀ��, ��� ������ ����',
    '�Ź�',
    '9.jpg',
    73960,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.09 12:00',
    '8db1f838-ee20-4b38-ba10-31346447bb73.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0001',
    '[�ַ��̽�Ʈ] SACKDH06',
    '�ƿ���/�����Ƿ�',
    '10.jpg',
    72040,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.10 12:00',
    'A.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[25%����][���������� ��] Ȩ���� BEST 100/�ܿ� Ŭ����� ����� ��������!',
    '����/�ƿ���/�����Ƿ�',
    '11.jpg',
    59000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.11 12:00',
    'A_4.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '�η����ĸ� �Ѽ��� �����/����/��Ǫ/����ų�/������',
    '���',
    '12.jpg',
    19900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.12 12:00',
    '1368439939.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    'Razer Xbox �ø��� X|S�� ���� ��� ���� ���ĵ� ���׳�ƽ ���� ����',
    '���� ��ǰ',
    '13.jpg',
    63170,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.13 12:00',
    '1429899c-5104-4acc-8465-5b370022c4c8.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[���ں��]���������ڵ�/���/���ϸ���/����Ʈ��/�е�/����/������/���ǽ�',
    '�����Ƿ�/����/����/���ǽ�',
    '14.jpg',
    7900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.14 12:00',
    'A_1.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[���̿���]�ܿ��α�/������� ���ϸ���/����/��Ʈ/���ǽ�/������/�е�/�������/û��',
    '�����Ƿ�/����/����/���ǽ�',
    '15.jpg',
    16900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.15 12:00',
    'jellpe-main.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[����Ƽ�ڽ�]�ڵ����/���/����/������/�е�/��Ʈ/���ǽ�/����/���ڸ�',
    '�����Ƿ�/����/����/���ǽ�',
    '16.jpg',
    10000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
 '2022.01.16 12:00',
    '3bd35944-0562-4c32-b4e6-17e87b4a81f0_1641960582596.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[��Ÿ��Ȧ��]�α���99��!������/������/��Ʈ/�����/Ʈ���̴� ��',
    '�����Ƿ�/����/����/���ǽ�',
    '17.jpg',
    18000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
    '2022.01.17 12:00',
    '5cd_image_01.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[��������]��ǥ���ϸ���/����Ʈ��/���/���ǽ�/�е�/��Ʈ/������/����',
    '�����Ƿ�/����/����/���ǽ�',
    '18.jpg',
    14900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.18 12:00',
    '0120.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[��ũ21] ��������� ����Ʈ��/�ϰ���/��Ʈ/���콺/����/���ǽ�~',
    '�����Ƿ�/����/����/���ǽ�',
    '19.jpg',
    12900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
  '2022.01.19 12:00',
    'intro.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '������ GALAX ������ RTX 3080 SG D6X 10GB',
    '���� ��ǰ',
    '20.jpg',
    5000000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.20 12:00',
    'bt.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    'Ʈ����Ÿ�� ����,���� ����,�е�����,�е�����,û���� ����',
    '�����Ƿ�/����/�ƿ���',
    '21.jpg',
    36900,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.21 12:00',
    'd1.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '���̸��� BS-BT101 ���������������� 5.0 ������ĵ���� ���̽� ����Ʈ�� ����',
    '���� ��ǰ',
    '22.jpg',
    49000,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
    '2022.01.22 12:00',
    '01_2.jpg',
    1
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[20��+6]������ ����ũ ���̹ٳ��� KF-AD ���θ��� ���� ���� 6���� ����',
    '��ȭ',
    '23.jpg',
    16980,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
   '2022.01.23 12:00',
    '1622826005597_E.jpg',
    0
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'seller0002',
    '[��ũ����]50+30% ������ �����ǽ�/������ ���ǽ�/���ϼ�Ʈ/Ʈ���̴�/��Ƽ����/��Ʈ/��������',
    '�����Ƿ�/����/����/���ǽ�',
    '24.jpg',
    9700,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    1,
    '2022.01.24 12:00',
    '220122_A.jpg',
    0
);

COMMIT;

SELECT
    *
FROM
    s_product
ORDER BY
    productno;

--select * from s_product where sellerid = 'seller0002' order by regdate;
--SELECT imagename, productname, productno, price FROM s_product;    
--select prod_seq.nextval from dual;
--select s_product.productno, s_product.productname, s_product.ptype, s_product.imagename, s_product.price, s_product.id, s_member.nickname from s_product left join s_member on s_product.id = s_member.id where UPPER(productname) like UPPER('%�����Ƿ�%') or UPPER(ptype) like UPPER('%�����Ƿ�%') order by s_product.productno;
--select count(productno) from s_product where price > 20000 and price < 999999999999 and (UPPER(productname) like UPPER('%�����Ƿ�%') or UPPER(ptype) like UPPER('%�����Ƿ�%'));
--select count(productno) from s_product where price >= 20000 and price <= 9999999 and (UPPER(productname) like UPPER('%�����Ƿ�%') or UPPER(ptype) like UPPER('%�����Ƿ�%'))