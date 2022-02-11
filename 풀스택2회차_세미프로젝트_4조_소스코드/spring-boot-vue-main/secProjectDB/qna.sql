DROP TABLE s_qna CASCADE CONSTRAINTS;

DROP SEQUENCE qna_seq;

CREATE TABLE s_qna (
    qnano     NUMBER(10) PRIMARY KEY,
    productno NUMBER(10) NOT NULL,
    state     VARCHAR2(20) DEFAULT '������',
    title     VARCHAR2(200) NOT NULL,
    answer    VARCHAR2(2100) DEFAULT '���� �亯�� �ۼ����� �ʾҽ��ϴ�',
    id        VARCHAR2(20) NOT NULL,
    regdate   DATE DEFAULT sysdate NOT NULL,
    CONSTRAINT fk_qnaproduct FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

CREATE SEQUENCE qna_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_qna VALUES (
    qna_seq.NEXTVAL,
    1,
    '�亯�Ϸ�',
    '225�� �Ŵµ� ������ ��� ���Ѿߵǳ���?',
    '�ȳ��ϼ��� ���� ���߶��� ������������ ��� �����е��� ����� �˳��ϰԳ��� 1~2ġ������ �۰������Ͻô� �е��� ��ÿ��� ������� �������� ū �κ��̹Ƿ� �Ǹ��ڰ� ������ ��Ȯ�� ������ �� Ư�̻����� Ȯ�� �� �� ���� ��ü���� ������ �亯�� ����� �� ���عٶ��ϴ�. ��ǰ�� ������ǥ�� Ÿ ������ �̿��ı� ���� �����Ͻþ� ������ �߸��� �ߺ� �ʺ�, �߱��� ���� ����ϼż� �ֹ���Ź�帮�ڽ��ϴ�. �����մϴ�.',
    'tester0001',
    '2021-12-20'
);

INSERT INTO s_qna VALUES (
    qna_seq.NEXTVAL,
    1,
    '�亯�Ϸ�',
    '��ǰ�� ì�ܰ��̴µ� ���� ��ǰó���� �ȵǳ׿�',
    '�ȳ��ϼ���, �ż���� ������ �Դϴ�. �����ֽ� �������� 12/28�� ������ ������ �ּ�����, ��� �������� Ȯ�� �߿� �ֽ��ϴ�. Ȯ�� �� �� �ȳ� �� ó������ �帱 �����̿��� ������ ������ �ð� ���� ��Ź�帳�ϴ�. ����ϰ� �ູ�� �Ϸ� �ǽʽÿ�.',
    'tester0001',
    '2021-12-20'
);

INSERT INTO s_qna VALUES (
    qna_seq.NEXTVAL,
    1,
    '�亯�Ϸ�',
    '��ۿϷ� ó���Ǿ��µ� ������ �ȿԾ��',
    '�ȳ��ϼ��� ���� 2021-11-25�� 2007 �� ��ۿϷ�Ȱ����� Ȯ�ε˴ϴ�. �ù� ���Ե��߿� ���� �������� ��Ź��ҿ� �ð� �����ô� ��찡 �ֽ��ϴ�.����, �������, ���� �ù��� �� ��Ź ������ ������ Ȯ���غ��̴µ��� ��ǰ Ȯ�ε��� �ʴ´ٸ� ��� ���� ����ó 010-0000-0000 �� ���Ǻ�Ź�帳�ϴ�. ���� ��ȭ�� �غ��ø� ��ǰ ��ġ Ȯ���� �����Ͻʴϴ�.',
    'tester0004',
    '2021-12-20'
);

INSERT INTO s_qna VALUES (
    qna_seq.NEXTVAL,
    1,
    '�亯�Ϸ�',
    '���ھ��»�ǰ���� �����ּ���~^^',
    '�ȳ��ϼ��� ���� �ֹ��Ͻ� ��ǰ�� ���� ��� �����Դϴ�. ����� ��������� 1-2��[����������] ���� �ҿ�˴ϴ�. �������� ��� ������ ���� ���Ǵ� ����� ������ �����ù�[1588-9988] �� �����Ͻø� ��Ȯ�� �ȳ� ������ �� �ֽ��ϴ�. �������ּż� �����մϴ�.',
    'tester0005',
    '2021-12-20'
);

INSERT INTO s_qna VALUES (
    qna_seq.NEXTVAL,
    1,
    '�亯�Ϸ�',
    '��ҽ�û�̿�. Ȯ�����ּ���',
    '�ȳ��ϼ���.���� ��ȯ��ǰ��Һ��� ���� ���Ǵ� ���� �Ͻ� �ż��� ������ 1577-3419 �� �����ֽñ� �ٶ��ϴ� �����մϴ�.',
    'tester0006',
    '2021-12-20'
);

INSERT INTO s_qna (
    qnano,
    productno,
    title,
    id
) VALUES (
    qna_seq.NEXTVAL,
    1,
    '��ҽ�û�ߴµ�,�����ֽŴٴ��� ����������..��Һ�Ź�帳�ϴ�',
    'tester0007'
);

INSERT INTO s_qna (
    qnano,
    productno,
    title,
    id
) VALUES (
    qna_seq.NEXTVAL,
    1,
    '���� 2�� �� ���µ� 1���� ��ǰ�Ϸ�? Ȯ�� ��Ź�帳�ϴ�.',
    'tester0008'
);

INSERT INTO s_qna (
    qnano,
    productno,
    title,
    id
) VALUES (
    qna_seq.NEXTVAL,
    1,
    '��ǰ�� ����ߺ�Ź�����.',
    'tester0009'
);

INSERT INTO s_qna (
    qnano,
    productno,
    title,
    id
) VALUES (
    qna_seq.NEXTVAL,
    1,
    '���� ��ǰó���� �����ʾ� ���ǳ���ϴ�!',
    'ctester0003'
);

INSERT INTO s_qna (
    qnano,
    productno,
    title,
    id
) VALUES (
    qna_seq.NEXTVAL,
    1,
    '��������� �´°���!!',
    'btester0002'
);

COMMIT;

SELECT
    *
FROM
    s_qna;