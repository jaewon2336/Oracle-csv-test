-- ���� ���� �߻��� �� ������ ����, �߻��ڼ� ���
SELECT ����, �߻��ڼ�
FROM cancer_test
WHERE �߻��ڼ� = (
    SELECT MAX(�߻��ڼ�) 
    FROM cancer_test
    WHERE ���� NOT IN (100)
);

-- ���� ���� �߻��� �� ���� 1 ~ 5������ �ڷ� ���
SELECT *
FROM (
    SELECT a.*, RANK() OVER (ORDER BY �߻��ڼ� DESC) ���
    FROM cancer_test a
    WHERE ���� NOT IN (100)
)
WHERE ROWNUM <= 5;



-- ������ 10% �̻��� �ڷ� ���
SELECT *
FROM cancer_test
WHERE ���� >= 10 AND ���� NOT IN (100);

-- �������� �߻��ڼ� ���
SELECT ����, �߻��ڼ�
FROM cancer_test
WHERE ���� LIKE '%������%';