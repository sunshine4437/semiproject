DROP TABLE s_review CASCADE CONSTRAINTS;

DROP SEQUENCE review_seq;

CREATE TABLE s_review (
    reviewno  NUMBER(10) PRIMARY KEY,
    productno NUMBER(10) NOT NULL,
    image     VARCHAR(50),
    content   VARCHAR(600) NOT NULL,
    id        VARCHAR(50) NOT NULL,
    CONSTRAINT fk_qnareview FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

CREATE SEQUENCE review_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    1,
    'review01.jpg',
    '�ıⰡ ���� ���Ҵ� ���̶� �ϰ� ��µ� ���ó� �̻ڰ� �ʹ� ������ ���� �ʰԾ˾Ƽ� �������� ��ΰ��ְ������ �׷��� �����մϴ�',
    'tester0001'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    1,
    'review02.jpg',
    '��� 255~260�Ŵµ� �ߺ������־ 260 �����߰� �� �¾ƿ�. �±� �Դϴ�',
    'btester0002'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    1,
    'review03.jpg',
    '�ϴ� �̻��� ������ ����! �Ź��� ������ �ణ ũ�� ���°��� �� �Ź� ����� 257�ε� 255 �˳��ϰ� ���� ���� ���Ϸ� ���� ���� �����̶� ����� �� �������� �����ߴµ� ���� �����̾��׿� ���� �� �ʹ� �����մϴ�!!',
    'tester0005'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    1,
    'review04.jpg',
    '������ ������� ���ؿ� ��ǰ�ΰ� �³���?;; �� ������ ��ǥ�õ� �帴�ؼ� ���� �׷���..',
    'ctester0003'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    1,
    'review05.jpg',
    '�Ź� �� ���� ��ũ�� �������ֳ׿� �Ź߲��� �̹��� �����ֱ���',
    'tester0004'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    1,
    '2022-01-28 103400.jpg',
    '������ �����ο� ���� �Ź� ������ �Ŵٰ� ȸ���̶� ��� ���׿� ���� �˳��ؼ� ����ϰ� ���� �� �ְھ��. ���߶����Ź��� ó���ε� ưư�غ����� ���ƿ�',
    'tester0004'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    2,
    '2022-01-28 103734.jpg',
    '���27�Դµ� ������ ��¦�����־ ���������ʰ� �߸¾ƿ�. ���ֹ��ߴµ� �ణ ���ٷ����Ѵ����� ��?�̳׿�. �׷��� ���ݰ��� �������. �ȿ� ��� �־ ������ �ε巴�� �����ؿ� ������ �β��������� ���ܿ��𿡿� �����ѵβ��� �Ծ����� ���غ������ʰ� ���Ҿ��',
    'tester0010'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    2,
    '2022-01-28 104142.jpg',
    '���̶� ������ ������� 9330�� ��Ʈ ���� �븸����. �ٸ� ���� ������ �޾ƺ��� 105���ִ��� ���� ŭ. Ƽ�� ���ڰ� �Ծ ������ŭ ũ�� ������ �㸮�� ���ϳ� ������ �� ª��. 55,66�Դµ� �����̶� �򺰷� ���� �������� ��ٰ� �ʹ� Ŀ�� ���� �ֹ��Ϸ��� ���� ���� �����׿� �̤�',
    'tester0009'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    3,
    '2022-01-28 104341.jpg',
    '�β����� �����ϰ� �����մϴ�. ���԰��� �� �ֱ��� ���絵 ������� ���ƿ�. ���ݵ� �����ϰ� �����ε� �������̶� ���޴ϴ�',
    'tester0008'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    3,
    '2022-01-28 104455.jpg',
    '��������̰� �����ϰ� �߱����ؼ� ���Խ��ϴ�',
    'tester0007'
);

INSERT INTO s_review VALUES (
    review_seq.NEXTVAL,
    4,
    '2022-01-28 104606.jpg',
    '���� ������ ���� ���� �����ΰ�����.���ʰ������κп� �����̰� �پ��ֳ׿�.��ǥ�귣�尡 �ִµ� ��. ¦�������̳׿�',
    'tester0006'
);

COMMIT;

SELECT
    *
FROM
    s_review;
    

--SELECT id FROM s_product WHERE productno = 1;
--select s_product.productno, s_product.imagename, sum(s_order.totalprice) totalsell from s_product left join s_order on s_product.productno = s_order.productno where s_product.id = (SELECT id FROM s_product WHERE productno = 1) and s_order.totalprice > 0 group by s_product.productno, s_product.imagename order by totalsell desc;