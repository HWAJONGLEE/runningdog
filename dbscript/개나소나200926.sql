-- *****************************************************************************************
-- member DB 2020.09.26 ����
-- *****************************************************************************************
-- MEMBER ���̺� ����
DROP TABLE MEMBER CASCADE CONSTRAINTS;

-- MEMBER ���̺� ����
CREATE TABLE MEMBER (
    UNIQUE_NUM   NUMBER CONSTRAINT UNPK PRIMARY KEY NOT NULL,
    USER_ID   VARCHAR2(30) NOT NULL UNIQUE,
    USER_PWD VARCHAR2(60),
    NICKNAME   VARCHAR2(100) NOT NULL UNIQUE,
    PHONE VARCHAR2(30) NOT NULL UNIQUE,
    ORIGIN_PROFILE VARCHAR2(200),
    RENAME_PROFILE VARCHAR2(200),
    JOIN_DATE DATE DEFAULT SYSDATE,
    LAST_ACCESS_DATE DATE DEFAULT SYSDATE,
    LOGIN_TYPE VARCHAR2(10),
    ADMIN_CHK CHAR(1) DEFAULT 'N' NOT NULL,
    CONSTRAINT ADMINCHK CHECK (ADMIN_CHK IN ('Y','N')),
    LOGIN_LIMIT CHAR(1) DEFAULT 'N' NOT NULL,
    CONSTRAINT L_LIMIT CHECK (LOGIN_LIMIT IN ('Y','N'))
);

-- ������ ����
DROP SEQUENCE UNIQUE_NUM_SEQ;
-- ������ ����
CREATE SEQUENCE UNIQUE_NUM_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCYCLE NOCACHE;

-- MEMBER �÷���
COMMENT ON COLUMN MEMBER.UNIQUE_NUM IS 'ȸ����ȣ';
COMMENT ON COLUMN MEMBER.USER_ID IS '���̵�(�̸���)';
COMMENT ON COLUMN MEMBER.USER_PWD IS '��й�ȣ';
COMMENT ON COLUMN MEMBER.NICKNAME IS '�г���';
COMMENT ON COLUMN MEMBER.PHONE IS '�ڵ�����ȣ';
COMMENT ON COLUMN MEMBER.ORIGIN_PROFILE IS '�������̹��� �����̸�';
COMMENT ON COLUMN MEMBER.RENAME_PROFILE IS '�������̹��� ���̸�';
COMMENT ON COLUMN MEMBER.JOIN_DATE IS '������';
COMMENT ON COLUMN MEMBER.LAST_ACCESS_DATE IS '�ֱ�������';
COMMENT ON COLUMN MEMBER.LOGIN_TYPE IS '�α���Ÿ��';
COMMENT ON COLUMN MEMBER.ADMIN_CHK IS '�����ڱ���';
COMMENT ON COLUMN MEMBER.LOGIN_LIMIT IS '�α�������';

COMMIT;

-- MEMBER insert
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'admin@runningdog.com', '$2a$10$kyuLy.TfWFJqAhAhPeO8DeC4zA5VWYnD8TS5BVEg4ETtqq76x.5Fa', '������', '010-1111-1111', '20200914/animalImg01.jpg', '20200914/20200914154337891.jpg', '20/08/10', '20/08/10', 'facebook', 'Y', DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'spark1033@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�۹���', '010-3387-7583', '20200914/animalImg02.jpg', '20200914/20200914092756919.jpg', '20/08/11', '20/08/11', 'kakao', 'Y', DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user01@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����ī��', '010-2222-2222', '20200914/animalImg03.jpg', '20200914/20200914348637891.jpg', '20/08/12', '20/08/12', 'naver',DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user02@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�콬�׷���', '010-3333-3333', '20200914/animalImg04.jpg', '20200914/20200914154537891.jpg', '20/08/13', '20/08/13', null,DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user03@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�콬����', '010-4444-4444', '20200914/animalImg01.jpg', '20200914/20200914154337891.jpg', '20/09/01', '20/09/01', null,DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user04@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�Ķ��', '010-5555-5555', '20200914/animalImg02.jpg', '20200914/20200914132404929.jpg', '20/09/02', '20/09/02', null,DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user05@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��ũ����', '010-6666-6666', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/03', '20/09/03', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user06@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ȶ�ī', '010-7777-8888', '20200914/animalImg04.jpg', '20200914/20200914092756919.jpg', '20/09/04', '20/09/04', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user07@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '������', '010-9999-9999', '20200914/animalImg05.jpg', '20200914/20200914132404929.jpg', '20/09/05', '20/09/05', 'facebook', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user08@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�����', '010-1010-1010', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/06', '20/09/06', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user09@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�����', '010-2020-2020', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/07', '20/09/07', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user10@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����', '010-3030-3030', '20200914/animalImg03.jpg', '20200914/20200914348637891.jpg', '20/09/08', '20/09/08', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user11@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����', '010-4040-4040', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/09', '20/09/08', 'facebook', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user12@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����', '010-5050-5050', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/10', '20/09/10', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user13@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ڷη�', '010-6060-6060', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/11', '20/09/11', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user14@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���þ�', '010-7070-7070', '20200914/animalImg03.jpg', '20200914/20200914092756919.jpg', '20/09/11', '20/09/11', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user15@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', 'Ƽ�ƶ�', '010-8080-8080', '20200914/animalImg03.jpg', '20200914/20200914154537891.jpg', '20/09/12', '20/09/12', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user16@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '������', '010-9090-9090', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/12', '20/09/12', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user17@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����', '010-2121-2121', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/12', '20/09/12', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user18@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�Ļ�', '010-3131-3131', '20200914/animalImg03.jpg', '20200914/20200914092756919.jpg', '20/09/12', '20/09/12', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user19@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ùٰ�', '010-4141-4141', '20200914/animalImg03.jpg', '20200914/20200914154337823.jpg', '20/09/12', '20/09/12', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user20@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ɳ���ġ', '010-5151-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/13', '20/09/13', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user21@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', 'ũ��', '010-6161-6161', '20200914/animalImg03.jpg', '20200914/20200914092756919.jpg', '20/09/13', '20/09/13', 'facebook', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user22@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ڿ�', '010-7171-7171', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/13', '20/09/13', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user23@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', 'Űī', '010-8181-8181', '20200914/animalImg03.jpg', '20200914/20200914234337891.jpg', '20/09/13', '20/09/13', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user24@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��ī��', '010-9191-9191', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/13', '20/09/13', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user25@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ֹ�', '010-1212-1212', '20200914/animalImg03.jpg', '20200914/20200914092756919.jpg', '20/09/13', '20/09/13', 'facebook', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user26@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���', '010-1313-1313', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/13', '20/09/13', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user27@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '������', '010-1414-1414', '20200914/animalImg03.jpg', '20200914/20200914154337823.jpg', '20/09/13', '20/09/13', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user28@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����', '010-1515-1515', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/13', '20/09/13', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user29@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ݿ佺��', '010-1616-1616', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/13', '20/09/13', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user30@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���丶', '010-1717-1717', '20200914/animalImg03.jpg', '20200914/20200914154537891.jpg', '20/09/13', '20/09/13', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user31@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���̿�', '010-1818-1818', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/14', '20/09/14', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user32@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���', '010-1919-1919', '20200914/animalImg03.jpg', '20200914/20200914234337891.jpg', '20/09/14', '20/09/14', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user33@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����', '010-5151-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/14', '20/09/14', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user34@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ٳ���', '010-5152-5151', '20200914/animalImg03.jpg', '20200914/20200914154337823.jpg', '20/09/14', '20/09/14', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user35@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�� ���ִ�', '010-5153-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/14', '20/09/14', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user36@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��������', '010-5154-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/14', '20/09/14', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user37@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '������', '010-5155-5151', '20200914/animalImg03.jpg', '20200914/20200914154537891.jpg', '20/09/14', '20/09/14', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user38@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ٸ�����', '010-5156-5151', '20200914/animalImg03.jpg', '20200914/20200914092756919.jpg', '20/09/15', '20/09/15', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user39@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��Ż��', '010-5157-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/15', '20/09/15', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user40@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��Ż����', '010-5158-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/15', '20/09/15', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user41@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���Ծ�', '010-5159-5151', '20200914/animalImg03.jpg', '20200914/20200914234337891.jpg', '20/09/16', '20/09/16', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user42@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�׷��ٰ�', '010-5111-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/16', '20/09/16', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user43@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ܲ���', '010-5121-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/17', '20/09/17', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user44@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ܲܵǸ�', '010-5131-5151', '20200914/animalImg03.jpg', '20200914/20200914154337823.jpg', '20/09/17', '20/09/17', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user45@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ｺ����', '010-5141-5151', '20200914/animalImg03.jpg', '20200914/20200914154537891.jpg', '20/09/17', '20/09/17', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user46@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ｺ�忣', '010-5161-5151', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/18', '20/09/18', 'facebook', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user47@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��������', '010-5171-5151', '20200914/animalImg03.jpg', '20200914/20200914154337823.jpg', '20/09/19', '20/09/19', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user48@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�����ѹ�', '010-5181-5151', '20200914/animalImg03.jpg', '20200914/20200914234337891.jpg', '20/09/20', '20/09/20', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user49@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '��ұ�', '010-5191-5151', '20200914/animalImg03.jpg', '20200914/20200914348637891.jpg', '20/09/21', '20/09/21', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user50@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���Ͼ�ħ', '010-5251-5151', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/22', '20/09/22', 'facebook', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user51@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�Ͼ��', '010-5351-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/23', '20/09/23', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user52@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�����Ϸ�', '010-5451-5151', '20200914/animalImg03.jpg', '20200914/20200914154337823.jpg', '20/09/24', '20/09/24', null, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user53@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�����ϰ�', '010-5551-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', '20/09/25', '20/09/25', 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user54@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ڵ����� ���', '010-5651-5151', '20200914/animalImg03.jpg', '20200914/20200914154337891.jpg', '20/09/26', '20/09/26', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user55@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '���ݴ���', '010-5751-5151', '20200914/animalImg03.jpg', '20200914/20200914234337891.jpg', '20/09/27', '20/09/27', 'naver', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user56@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '����ǹ���', '010-5851-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, 'kakao', DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user57@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�������Ѽ�', '010-5951-5151', '20200914/animalImg03.jpg', '20200914/20200914154537891.jpg', DEFAULT, DEFAULT, 'naver', DEFAULT, DEFAULT);


-- LEAVE_MEMBER ���̺� ����
DROP TABLE LEAVE_MEMBER CASCADE CONSTRAINTS;

-- LEAVE_MEMBER ���̺� ����
CREATE TABLE LEAVE_MEMBER (
    LEAVE_UNIQUE_NUM NUMBER NOT NULL,
    LEAVE_USER_ID VARCHAR2(30) NOT NULL,
    LEAVE_USER_PWD VARCHAR2(60),
    LEAVE_NICKNAME VARCHAR2(100) NOT NULL,
    LEAVE_PHONE VARCHAR2(30) NOT NULL,
    LEAVE_ORIGIN_PROFILE VARCHAR2(200),
    LEAVE_RENAME_PROFILE VARCHAR2(200),
    LEAVE_JOIN_DATE DATE DEFAULT SYSDATE,
    LEAVE_DATE DATE DEFAULT SYSDATE,
    LEAVE_LOGIN_TYPE VARCHAR2(10)
);

-- LEAVE_MEMBER �÷���
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_UNIQUE_NUM IS 'ȸ����ȣ';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_USER_ID IS '���̵�(�̸���)';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_USER_PWD IS '��й�ȣ';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_NICKNAME IS '�г���';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_PHONE IS '�ڵ�����ȣ';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_ORIGIN_PROFILE IS '�������̹��� �����̸�';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_RENAME_PROFILE IS '�������̹��� ���̸�';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_JOIN_DATE IS '������';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_DATE IS 'Ż����';
COMMENT ON COLUMN LEAVE_MEMBER.LEAVE_LOGIN_TYPE IS '�α���Ÿ��';


-- LEAVE_MEMBER insert
INSERT INTO LEAVE_MEMBER VALUES(80, 'test01@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�ѳ���', '010-5951-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, 'naver');
INSERT INTO LEAVE_MEMBER VALUES(81, 'test02@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�־�', '010-5951-5152', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, 'kakao');
INSERT INTO LEAVE_MEMBER VALUES(82, 'test03@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�γʹ�', '010-5951-5153', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, 'facebook');
INSERT INTO LEAVE_MEMBER VALUES(83, 'test04@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '�����', '010-5951-5154', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, DEFAULT);

COMMIT;





-- *****************************************************************************************
-- NOTICE ���̺� ����
DROP TABLE NOTICE CASCADE CONSTRAINTS;

-- NOTICE ���̺� ����
CREATE TABLE NOTICE (
   NOTICE_NO   NUMBER      NOT NULL,
   NOTICE_WRITER   VARCHAR2(30)      NOT NULL,
   NOTICE_TITLE    VARCHAR2(100)      NOT NULL,
   NOTICE_CONTENT    VARCHAR2(4000)      NOT NULL,
   NOTICE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   NOTICE_READCOUNT   NUMBER   DEFAULT 0   NOT NULL,
   NOTICE_STATE    VARCHAR2(10)    NULL,
   NOTICE_ORIGINAL_FILENAME1    VARCHAR2(260)      NULL,
   NOTICE_RENAME_FILENAME1   VARCHAR2(50)      NULL,
   NOTICE_ORIGINAL_FILENAME2    VARCHAR2(260)      NULL,
   NOTICE_RENAME_FILENAME2   VARCHAR2(50)      NULL,
   NOTICE_ORIGINAL_FILENAME3    VARCHAR2(260)      NULL,
   NOTICE_RENAME_FILENAME3   VARCHAR2(50)      NULL
);
-- PK ����
ALTER TABLE NOTICE ADD CONSTRAINT PK_NOTICE_NO PRIMARY KEY(NOTICE_NO);
-- ALTER TABLE NOTICE DROP CONSTRAINT PK_NOTICE_NO;

-- NOTICE �ڸ�Ʈ
COMMENT ON COLUMN NOTICE.NOTICE_NO IS '�۹�ȣ';
COMMENT ON COLUMN NOTICE.NOTICE_WRITER IS '�ۼ��ڴг���';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '����';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '����';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '�ۼ���¥';
COMMENT ON COLUMN NOTICE.NOTICE_READCOUNT IS '��ȸ��';
COMMENT ON COLUMN NOTICE.NOTICE_STATE IS '�˸�����';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME1 IS '÷�����ϱ�����1';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME1 IS '÷�����Ϻ����1';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME2 IS '÷�����ϱ�����2';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME2 IS '÷�����Ϻ����2';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME3 IS '÷�����ϱ�����3';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME3 IS '÷�����Ϻ����3';

-- ������ ����
DROP SEQUENCE NOTICE_NO_SEQ;
-- ������ ����
CREATE SEQUENCE NOTICE_NO_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCYCLE NOCACHE;


-- FK ����
ALTER TABLE NOTICE ADD CONSTRAINT FK_MEMBER_TO_NOTICE_WRITER FOREIGN KEY(NOTICE_WRITER) REFERENCES MEMBER(NICKNAME); -- �ۼ��� �г������� FK ����

-- NOTICE INSERT
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (21,'������','���⵿�� �߽߰�_��޵��� �߽߰� ��ó���','���� ��� ������ ���� ��� ġ�Ḧ ���� �� ������ �α� ������������ �ű�ž��մϴ�.
���� ���� ����� ����ڸ��� �� �� �ֱ� ������ ���� ����� ���� ��ó�� �ֽñ� �ٶ��ϴ�.
���� ���� �� ��ȣ��ġ�� 119�ý���ó�� �ٷ� �⵿�� �� �� �ִ� ������ �ȵǾ� �ֱ� ������ ��ü �����ڰ� �� ���� �����̿� ���� �ʴ� ��,
�̴� ��� ������ü������ �ذ��� �� �����ϴ�.
�̶� ������ ���� ������ ��� �ټ� �����ϰ� ���ϴ� �����ǻ絵 �ֽ��ϴ�. 
ġ��� �����̶�⺸�ٴ� ������ ���� ó���� ���� ��Ȥ������ ������ ���� ���Դϴ�. ���� ������ ������ ������ ���� �ʴ´ٴ� �ŷڸ� �� �� �ֵ��� �� �����Ͻð�, ġ��� �Ϻζ� ������ ����óġ�� ���� �� �ְ� ���ֽʽÿ�.

- �����̼�
��κ��� ����ڵ��� ���� �̼��� ������ �ϴµ� �̴� �׸� ����� ���� �ƴմϴ�. ������ ������Ű�� ������ ���� ħ���ϰ� ��ó�� �ֽʽÿ�. 
���� ������ ��� �״�� ǰ�� �ȾƼ� �ýø� �̿��ϴ� ����� ������, 
���� ū ������ �ֺ��� �󰡳� �ֺ��ο��� ������ ��û, ���� �ڽ� ���� �Ϳ� ��Ƽ� �̼��ϴ� ����� �ֽ��ϴ�. 
�̶� ������ ����, ����, ���� ���� ��쵵 �����Ƿ� �ݵ�� Ÿ���̳� �Ź���, ��Һ��� ���� �غ��Ͻñ� �ٶ��ϴ�.

- �����̼�
��κ��� ����ڵ��� ���� �̼��� ������ �ϴµ� �̴� �׸� ����� ���� �ƴմϴ�. 
������ ������Ű�� ������ ���� ħ���ϰ� ��ó�� �ֽʽÿ�. ���� ������ ��� �״�� ǰ�� �ȾƼ� �ýø� �̿��ϴ� ����� ������, ���� ū ������ �ֺ��� �󰡳� �ֺ��ο��� ������ ��û, ���� �ڽ� ���� �Ϳ� ��Ƽ� �̼��ϴ� ����� �ֽ��ϴ�. 
�̶� ������ ����, ����, ���� ���� ��쵵 �����Ƿ� �ݵ�� Ÿ���̳� �Ź���, ��Һ��� ���� �غ��Ͻñ� �ٶ��ϴ�.

- �ߴ����� ���� ���
���� ������ ������ �ൿ�� �� �� �����Ƿ� 119�� ������ ��û�Ͻʽÿ�. 
������ ���� 119�� �⵿�ϱ⸦ ������ �ϴ� ��쵵 �ֽ��ϴ�. �׷� ���, ������ ���� ������ ����� �̼��� ��� ����� �̾����� �Ǹ� ������ 119�� �⵿�ؾ� �Ѵٴ� ���� ������Ű��, 
���� ������ ���� ��ġ��� ���� �� �����ϼż� ������ �����ʽÿ�.

- ����� ������ ����óġ�� �������� ��ġ

 > ����� ������ ������ �����ڰ� �ӽú�ȣ�� �ֽø鼭 ������ü�� ���� �Ծ�� �� �ֵ��� ���ֽñ� �ٶ��ϴ�.
       ��� ���� ��ü�� �þ ���� �� ���� ������ ���� �Ѱ��Ȳ�� ó�� �ְ�, �������Գ� �ӽú�ȣ�� ���� �ܿ� 
       ���Դϴ�. ������ ������ �ܸ����� ���� ���ݸ� �� �������� ������ ���� �ֽñ� �ٶ��ϴ�. �׷��� ������ �׷� 
       ������ �� �ǽø� ���� ���� ��ü�� ������ ��û�Ͻʽÿ�. ������ü�� ���ǲ� ������ ���Դϴ�

 > ������ ã�ƺ��� ���� �� ���ּž� �մϴ�.
       �����ڴ� ���� ������ ���� ������ ã�� �� �ֵ��� ����� �ֽñ� �ٶ��ϴ�. ������ ������ ���� �ƴ϶� ���� 
       ���Դٰ� ���� ���� ���̶�� ������ ��Ÿ�� ã�� ���� �̴ϴ�. ���� ���忡���� �Ծ纸�ٴ� ������ ã�� ���� 
       �켱�̸� �� ���� ���Դϴ�. �α������� ������ Ư���� ǥ���� �� ������ ÷���ؼ� �������� ���̰�, �����, 
       ��û, ��������, �ְ߼� � ����, ������ �ֽñ�ٶ��ϴ�.',to_date('20/08/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (3,'������','TEST��������','ù��° �������� �Դϴ�',to_date('20/07/10','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (4,'������','TEST��������','�ι�° �������� �Դϴ�',to_date('20/08/01','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (5,'������','���� ���� �ȳ�','���� ���� �ȳ�',to_date('20/07/10','RR/MM/DD'),3,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (7,'������','�����⿡���� �ս��� ������ �޷��� ������ ����������.','�����⿡���� �ս��� ������ �޷��� ������ ����������.',to_date('20/08/09','RR/MM/DD'),4,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (8,'������','''���� õ��� �˻�'' ���񽺰� ����˴ϴ�.','�ȳ��ϼ���. ''���� �޷��� ��''�Դϴ�.
?
''���� �޷��� ��''�� ''���� õ��� �˻�'' ���񽺰� 2020�� �Ϲݱ⿡ ����˴ϴ�.
?
���� õ��� �˻��̶�, ���� ������ �ʿ��� �������� ����ڵ��� �˻��ϴ� �����Դϴ�. 
������ ���� ���� ��õ, ���� ������ ���� ������ ���� ���񽺸� ������ �����Դϴ�.

''���� õ��� �˻�'' �ȳ�
?
�� ���� ''���� õ��� �˻�''�� �̿����� �е鲲 ���� ����帮��, ���� ���� ������ ��õ ���񽺸� ������ �� �ֵ��� �ּ��� ���ϰڽ��ϴ�.
���� ����� �����Ͽ� �߰��� �ñ��Ͻ� ������ �����͸� ���� �˷��ֽø� ģ���ϰ� �ȳ��帮���� �ϰڽ��ϴ�.
?
�����մϴ�.',to_date('20/08/08','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (10,'������','''���� �޷��� ��'' �̵�� ��� Ȱ���� ����','�����ι�

���������
(���� / ��� 0��)

- �̵�� ȫ�� ���
- ������ ���� �� �ù� ����
- SNS, ��α� �� ��ü ����   - �ùλ�ȸ��ü ��������
- ���丮�ڸ� �ɼ���
- ������ ���伥 ������

�ٹ����� �� ȯ��

?�ٹ�����   �����(1�� �� ������ ��ȯ ����)
�ٹ��ð�   ��5��(��~��) ����9��~���� 6�� *����������� ���� ����
�ٹ�����   ���� - ���� ������ ��絿
�޿�   ȸ�系�Կ� ����(����ȯ�� �����ʺ� 2,400�� ��/�� ����)


��������

1�� ��������   ä�� ������ �Խù� ���� [ä�븶��] ǥ��
2�� ��������   1�� �����հ��� �����뺸(�������� ��������, �������)
�ٹ�����   ä���� ���ǰ���
�� ������ ���� �߿��� ��� ����ǹǷ� ��쿡 ���� ���� ������ �� �ֽ��ϴ�.



���⼭��

?�̷¼�, �ڱ�Ұ��� 
*�ѱ���ȸ������ ������� ���� ���� / ������������ �������� ����(�ʼ�)

�ذ������, ��������, �ڰ����� ���� 1�� �����հ��ڿ� ���� �����մϴ�.
�������Ͻ� ������ ��ȯ���� �ʽ��ϴ�.



��Ÿ ���ǻ���

?�Ի� �� ä�� ��õ�� �����ϸ�, �پ��� ä�Ŀ� ���� �µ��� �����մϴ�.
�Ի����� ������ ��������� �߰ߵ� ���, ä�� Ȯ�� ���Ķ� ä���� ��ҵ� �� �ֽ��ϴ�.
',to_date('20/08/23','RR/MM/DD'),3,'checked','���� �޷��� �� �۳� �Ի����� �����.xlsx','20200923163914461.xlsx','���� �޷��� �� �Ի������� ����.docx','20200923163914462.docx','���� �޷��� �� �Ի������� ����.pdf','20200923163914464.pdf');
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (12,'������','TEST��������','ù��° �������� �Դϴ�',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (13,'������','TEST��������','�ι�° �������� �Դϴ�',to_date('20/08/01','RR/MM/DD'),3,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (15,'������','TEST��������','�ι�° �������� �Դϴ�',to_date('20/07/10','RR/MM/DD'),3,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (16,'������','TEST��������','ù��° �������� �Դϴ�',to_date('20/07/10','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (17,'������','TEST��������','�ι�° �������� �Դϴ�',to_date('20/08/01','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (18,'������','TEST��������','ù��° �������� �Դϴ�',to_date('20/07/10','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (19,'������','TEST��������','�ι�° �������� �Դϴ�',to_date('20/08/01','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (20,'������','�޸� ��ȯ�� ���� Ż�� �ȳ�','�޸� ��ȯ�� ���� Ż�� �ȳ�',to_date('20/09/23','RR/MM/DD'),14,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (22,'������','���⵿�� �߽߰�_�̷� ������ ������ �̷ﺸ����.','- �������� ���� �ǰ����°� ���� ��ȣ��, �׷��� �ټ� ������ �߹ٸ����� �������� ��� ������ ������� ���� �����ֽʽÿ�.
��ټ��� �߹ٸ����� ������ �����κ��� �����Ӱ� Ű������ ��찡 ���� �ൿ �ݰ��� �н��ϴ�. 
�α����� ��򰡿� ���� �ִ� ��찡 �����Ƿ� ������ ����� ������ ��쿣 �ﰢ������ ��� �ͺ��ٴ� �ð��� �ΰ� ���Ѻ��� ���� �����ϴ�.


- ������ ��Ȱ�� �������� ���̴� ���� ��ȹ�� ���, ������ ������ ����� �ʷ��� ���� �ֽ��ϴ�.
�̵��� �ּ��� ȯ���� ������ �� �ִ� �Ծ��� ��ȸ�� �ſ� ���� �����̹Ƿ� ���� ������ü���� ��ȣ�ϴٰ� ����ɷ� �Ѱ�� ���� �����Ⱓ�� ������ �ȶ���� ���� �ֽ��ϴ�. 
�缳���������� ��� �Ѱ��Ȳ�̱� ������ �̵��� �� �޾��� ���� ���� ���� �������� Ȯ�嵵 ����� ��Ȳ�� �ֽ��ϴ�. 
�׸��� ������ �缳�����ü��� ����ȴٰ� �ϴ��� ���� ������ ƴ���� ��ư��� �ϱ� ������ �̵��� �ݷ������μ� ���� ȯ��� ����� ��� ��ư�, ������ �������� ����� �̾ ���ۿ� �����ϴ�. 
�λ�, ���� ���� ����� ���ϴ� ����� �ƴ� ��쿣 �״�� ���Ѻ��� �������� �����ο� �ൿ�� ������ �ָ� �����ϰ� �������� ������ �ϴ� �͵� ������ ������ ��� �� �ϳ��� �� �� �ֽ��ϴ�.


- � �Ʊ� �����
���� ����̷κ��� ������ �Ʊ� ����̸� ���Ҹ� �����ż��� �ȵǸ� �������� �ϵ� �����ϼž� �մϴ�. 
���� ����̿� �Բ� �̵� �߿� ������ ���� ���� �ֱ� �����Դϴ�. 
�̷� ��쿡�� �ð��� �ΰ� ���� ����̰� ã���� �� ������ ��ٷ��� �մϴ�. 
�׷����� �ұ��ϰ� ���Ҹ� �������� ��𿡼��� ���� ����̰� ������ ��Ÿ���� ���¢�� �̴ϴ�.
Ȥ�� �������� ȥ�ڼ� ��ư��� ����� �͵��ؾ� �� �ñ��� ���� �ֽ��ϴ�. 
������ �־��� ȯ���� ���� �ӿ��� ������ �����Ǵ� �͸��� ������ �뷮 �л��� ���� �� �ֽ��ϴ�. 
���� �߻����� ���� ����� ���̴� � ����̵鵵 ������ ������ �־��� ���ʽÿ�. 
������� ���� �ӿ��� �߻� ���·� ��ư��� ����̵��� ���� �����Ͽ��� �մϴ�. 
�ٸ�, �� ���� �ִٸ� ������ ����̴� ���� ���� �� ������ �� �ִ� ����� ���� �ֽø� ���� ���� ����� �뷮 ���� ���� �ؼҿ� ū ������ �ϰ� �� ���Դϴ�.',to_date('20/07/09','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (23,'������','���⵿�� �߽߰�_��ȣ��ġ �������','- ����ó� ���� ���⵿�� ��������ȣ ��� ���
������   ����������   2104-1637   ����25�õ�������   02-545-8575
��������������ȸ   031-867-9119
������   ����������   480-1784   ��������������ȸ   031-867-9119
���ﵿ���޵��ü���   02-457-0075
���ϱ�   ����������   901-6455   ��������������ȸ   031-867-9119
������   ����������   2600-6283   ��������������ȸ   031-867-9119
���Ǳ�   ����������   880-3379   ���������յ�������   02-837-8875
������   ����������   450-7322   ��������������ȸ   031-867-9119
���α�   �������ǰ�   860-2428   ��������������ȸ   031-867-9119
��õ��   ����������   2627-1312   ��������������   02-2642-8886
��������������ȸ   031-867-9119
�����   ���ڸ�������   2116-3482   ��������������ȸ   031-867-9119
������   ���ڸ�������   2289-1577   �������յ�������   02-3491-2851
��������������ȸ   031-867-9119
���빮��   ���������   2127-4272   ��������������ȸ   031-867-9119
���۱�   ���ڸ�������   820-1184   ���ũ��������   02-816-7582
��������������ȸ   031-867-9119
������   ����������   3153-8563   ���ǻ�ȸ ��������ȸ   02-3141-8274
���빮��   ���ڸ�������   330-1918   ��������������ȸ   031-867-9119
���ʱ�   ���ȯ���   2155-6449   2014������TNR   02-2155-6454
��������������ȸ   031-867-9119
������   ����������   2286-6149   ��������������ȸ   031-867-9119
���ϱ�   ����������   920-3365   ��������������ȸ   031-867-9119
���ı�   ���������   2147-2516   ��������������ȸ   031-867-9119
��õ��   ����������   2620-3245   ��ŵ�������   02-2693-8883
��������   ����������   22670-3419   �븲��������   02-845-3368
��������������ȸ   031-867-9119
��걸   ����������   2199-6810   ������ǻ��걸��ȸ   02-778-7582
����   ��Ȱ������   351-6842   ��������������ȸ   031-867-9119
���α�   ���ȯ���   2148-2423   ��������������ȸ   031-867-9119
�߱�   ����������   3396-5073   �̷�����������   02-2233-7574
��������������ȸ   031-867-9119
�߶���   ����������   2094-1286   ����25�õ�������   02-545-8575
��������������ȸ   031-867-9119


- �߻����� ���� ���� ��ü �� ���
����   ����� ���Ǳ� ���Ƿ� 1   02-880-8659   ������б� ���ǰ�����   ��Ź
�λ�   �λ�� ���ϱ� �������� 1240-2   051-209-2091   ������ ���ڼ���   ����
����   ������ ������ �õ� ���з� 99   042-821-7930   �泲���б� ���ǰ�����   ��Ź
���   ���� ���� ���� 506-3   052-256-5322   �������   ����
���   ������ ��õ�� �������б� 1   033-250-7504   �������б� ���ǰ�����   ��Ź
���   ��� û�ֽ� û���� ��û4�� 45   043-216-3328   ��ϴ��б� ���ǰ�����   ��Ź
�泲   �泲 ���걺 ������ ���з� 54 (���ִ��б� ������д��� ��)   041-334-1666   ���ִ��б� �������´�   ��Ź
����   ���� �ͻ�� ����� 79����   063-850-0983   ���ϴ��б� ���ǰ�����   ��Ź
����   ���� ��õ�� ��õ���� 922-15   061-749-4800   ��õ�� ȯ�溸ȣ��   ����
���   ��� �ȵ��� ����� ���� 2150-44   054-840-8250   ���ϵ� �긲�ڿ����߿�   ����
�泲   �泲 ���ֽ� ���ִ�� 501(���µ� 900)   055-754-9575   �����б� ���ǰ�����   ��Ź
����   ���ֵ� ���ֽ� ��õ�ܳ��� 42   064-752-9982   ���ִ��б� ���ǰ�����   ��Ź
��õ   ��õ�� ������ �۵��� 13-20 (����������)   032-858-9702   ��õ�� ����ȯ�濬����   ����
����   ���ֽ� ���� ���̵� 719-2�Ͽ�   062-613-6651   ���ֽ� ����ȯ�濬����   ����',to_date('20/07/09','RR/MM/DD'),2,null,'����ó� ���� ��⵿�� ������ȣ ��� ���.xlsx','20200923163502365.xlsx','�߻����� ���� ���� ��ü �� ���.xlsx','20200923163502366.xlsx',null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (24,'������','����ó� ���� ������ �߼�ȭ��� ��� ���','������   ����������   2104-1637   ����25�õ�������   02-545-8575
������   ����������   480-1784   ��������������ȸ   031-867-9119
���ϱ�   ����������   901-6455   ��������������ȸ   031-867-9119
������   ����������   2600-6283   ��������������ȸ   031-867-9119
���Ǳ�   ����������   880-3379   ���ﵿ������   02-888-8807
������   ����������   450-7322   �̴����յ�������   02-463-7075
���α�   �������ǰ�   860-2428   �̵��Ƶ�������   02-415-6275
��õ��   ����������   2627-1312   ��������������   02-2642-8886
�����   ���ڸ�������   2116-3482   ��������������ȸ   031-867-9119
������   ���ڸ�������   2289-1577   ��������������ȸ   031-867-9119
���빮��   ���������   2127-4272   �������յ�������   02-2215-7582
���۱�   ���ڸ�������   820-1184   ���ũ��������   02-816-7582
������   ����������   3153-8563   ���ǻ�ȸ ��������ȸ   02-3141-8274
���빮��   ���ڸ�������   330-1918   �븲��������   02-845-3368
���ʱ�   ���ȯ���   2155-6449   ��������������ȸ   031-867-9119
������   ����������   2286-6149   ��������������ȸ   031-867-9119
���ϱ�   ����������   920-3365   ��������������ȸ   031-867-9119
���ı�   ���������   2147-2516   ��������������ȸ   031-867-9119
��õ��   ����������   2620-3245   ��ŵ�������   02-2693-8883
��������   ����������   2670-3419   ��������������ȸ   031-867-9119
��걸   ����������   2199-6810   ���ǻ�ȸ ��걸��ȸ   02-778-7582
����   ��Ȱ������   351-6842   ���� ������   02-382-7582
���α�   ���ȯ���   2148-2423   ����ȣ�������б�   031-954-0900
�߱�   ����������   3396-5073   �̷�����������   02-2233-7574
�߶���   ����������   2094-1286   �´����յ�������   02-973-1953',to_date('20/07/09','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (25,'������','�����д� ���� �Ŵ���','??[����]

��. ����
 1. ���� ��� �� �ʿ伺
 2. �����д��� ���� �� ����

��. �����д� ���� ������ �� �߻� �� �������
 1. �����д� ��� ó�� ���μ���
 2. ��� �ܰ躰 ����
 3. �д� ������ �������

��. �����д� ���� �Ŵ����� Ȱ��
 1. �����д� ���� üũ����Ʈ 
 2. �����д� ��� ����͸�

��ó : ������������',to_date('20/07/09','RR/MM/DD'),1,null,'2020�� �����д� ���� �Ŵ���.pdf','20200923162248702.pdf',null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (26,'������','ȸ�� ���������� ��� �ϳ���?','��������',to_date('20/07/09','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (27,'������','10�� 5��(��) 23:00~ 23:15 Ȩ������ ���� �������� ���� ���� ����','Ȩ������ ���ȼ��� ������ ���� �۾����� 2020�� 4�� 13��(��) 23:00~23:15���� �� 15�а� Ȩ������ ������ �Ϻ� �Ҿ����� �� �ֽ��ϴ�.

�ټ��� ������ �帮�� �� �� ���� ��Ź�帳�ϴ�.

�����մϴ�.',to_date('20/09/23','RR/MM/DD'),4,'checked',null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (28,'������','�Ŀ��ϱ� ����� ����˴ϴ�','??10�� 1�Ϻ���

�Ŀ� ���� ����� ���� ���ϰ� ����˴ϴ�.

''���� �޷��� ��''���������ֽð�, ������ֽô� ȸ���Ե鿡��, 

���� ���ϰ� �ٰ�������, 

�Ŀ����� ����� �����Ͽ����ϴ�.

�Ŀ������� ������������ �Ŀ����� �� ��ȸ�ϱ⿡��

�ٷ� �����Ͻ� �� �ֽ��ϴ�.',to_date('20/07/09','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (29,'������','�α��� ����� �̸��� ���̵�� 10�� 1�Ϻ��� ���� �˴ϴ�','������ Ȱ���� ȸ���Ե鿡�� �� ����, �� ����, �� ģ���ϰ� �˷��帮��, 

ȸ���Ե鲲 ���� ���ϰ� �������� ���񽺸� �帮���� �ϱ����̿���, 

ó�� �ټ� �������� �����ô���, �ƹ��ɷ� ���ظ� ��Ź�帳�ϴ�.



�̿� ���� �α��� ����� ���� ���̵�/�н����� �Է¹�Ŀ��� 

�̸���/�н����� ������� ����˴ϴ�.',to_date('20/09/23','RR/MM/DD'),9,'checked',null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (30,'������','�ݷ������о�� ���ǻ���','�ݷ������о�� ��༭ �Դϴ�.',to_date('20/08/07','RR/MM/DD'),1,null,'�ݷ������о� ��༭.hwp','20200923162218318.hwp',null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (31,'������','�ڿ������ �ȳ�����','��ȣ�� ������� �� �� ���ϰ� �ϴ� ���� ��ȣ�ҿ� ���� �Ⱓ �ִ� �������� ���, ���尨�� ���� �Ʒ��� ���� �ൿ�� ���� �� �ִ�. 
- ���� �԰� �ҽ��ϰ� ���� ���̴� �ൿ 
- �ֺ� Ȥ�� ����� ���� �������� 
- ������ ¢��

',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (32,'������','������ȣ��','������ȣ��
[���� 2020. 8. 12.] [���� ��16977ȣ, 2020. 2. 11., �Ϻΰ���]

������ǰ��(����������å��-�����д� ���� ����, ��������������), 044-201-2372

������ǰ��(����������å��-������ ��������ȣ, ��������), 044-201-2374

������ǰ��(����������å��-�ݷ����� ���� ����), 044-201-2377

������ǰ��(����������å��-�������, ��ϴ�󵿹��� ����, �Ͱ��� ���� �� ��Ÿ), 044-201-2382

 ����
��1�� ��Ģ
��1�� ����
��2�� ����
��3�� ������ȣ�� �⺻��Ģ
��4�� ������������ġ��ü �� ������ å��
��5�� ������������ȸ
��6�� �ٸ� �������� ����
��2�� ������ ��ȣ �� ����
��7�� ������ ����������
��8�� �����д� ���� ����
��9�� ������ ���
��9����2 �ݷ����� ���� ���
��10�� ������ ������
��11�� ������ ����
��12�� ��ϴ�󵿹��� ��� ��
��13�� ��ϴ�󵿹��� ���� ��
��13����2 �Ͱ��� ����
��13����2 �Ͱ��� ����
��13����3 �Ͱ��� ���Ա��� ��
��14�� ������ ��������ȣ
��15�� ������ȣ������ ��ġ������ ��
��16�� �Ű� ��
��17�� ����
��18�� ������ ��ȯ ��
��19�� ��ȣ����� �δ�
��20�� ������ ������ ���
��21�� ������ �о������
��22�� ������ �ε����� ó�� ��
��3�� ��������
��23�� ���������� ��Ģ
��24�� ���������� ���� ��
��24����2 �̼����� ���� �غνǽ��� ����
��25�� ����������������ȸ�� ��ġ ��
��26�� ��������ȸ�� ��� ��
��27�� ��������ȸ�� ����
��28�� ��������ȸ�� ���� � ���� ����������
��4�� ���������������� ����
��29�� ���������������� ����
��30�� ���������� ����
��31�� ������ �°�
��5�� ����
��32�� ������ ���� �� �ü����� ��
��33�� ������ ���
��33����2 ���� �����幦�ü��� ��ġ��� ��
��33����3 ���� �����幦�ü��� ���� ��
��34�� ������ �㰡
��35�� ������ �°�
��36�� ������ ���� �ؼ�����
��36�� ������ ���� �ؼ�����
��37�� ����
��38�� ��� �Ǵ� �㰡 ��� ��
��38����2 �����ڿ� ���� ���� ��
��6�� ��Ģ
��39�� ���Ԥ��˻� ��
��40�� ������ȣ���ÿ�
��41�� ������ȣ�����ÿ�
��41����2 ���� <2020. 2. 11.>
��42�� ������
��43�� û��
��44�� ������ ����
��45�� �������� �� ������ ����
��7�� ��Ģ
��46�� ��Ģ
��46�� ��Ģ
��46����2 �������
��47�� ���·�
��47�� ���·�',to_date('20/08/22','RR/MM/DD'),2,null,'������ȣ��.pdf','20200923162235155.pdf',null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (33,'������','�Ҿ���� �ݷ����� ã��','���нǽŰ�
 ��������� �Ǿ� �ִ� �ݷ������� �Ҿ���� ��쿡�� ������ ������ ���߾ ��ϴ�󵿹��� �Ҿ���� ������ 10�� �̳��� ���塤��������û��(��ġ���� ��û���� ����)��Ư����ġ����(���� �����塤��������û�塱�̶� ��)���� �нǽŰ� �ؾ� �մϴ�(������������ȣ���� ��12����2����1ȣ �� ������������ȣ�� �����Ģ�� ��9����2��).
 ������� ����Ű�(��������ȣ�� �����Ģ�� ���� ��1ȣ����)
 ���������
 �ֹε��ǥ �ʺ�(���������ι��� ��36����1�׿� ���� ������ Ȯ�ο� �������� �ʴ� ��쿡�� ÷��)
�� ������ȣ�����ý���(www.animal.go.kr)������ �нǽŰ� �����մϴ�.
 �Ҿ���� �ݷ������� ���� ������ ������ȣ�����ý���(www.animal.go.kr)�� ����˴ϴ�(��������ȣ�� �����Ģ�� ���� ��1ȣ���� ����Ű� �ȳ���).

���ֺ� Ž��
 �ݷ������� �Ҿ���ȴٸ�, ���� �Ҿ���� ��Ҹ� �߽����� �� �ֺ��� �ִ� ����鿡�� ������ û�ϰ�, ��ó ���������� �ݷ��� ���� �� �ݷ��� ���� Ȯ���� ���� ���� �����ϴ�.
 ���� ���������� �������� ����� Ž������ �� ����鿡�� ������ �� �� ������, �ݷ������� �Ҿ���� �������� ����Ǵ� ���������� � �ݷ������� ã�� ���� �� ���� �ֽ��ϴ�.

�����ͳ� ����Ʈ Ȱ��
 �ֺ� Ž�� �Ŀ��� ã�� ������ ��쿡�� ������ȣ�����ý���(www.animal.go.kr)�� ���� �нǽŰ� �ؾ� �մϴ�. ���� ������ȣ�����ý����� ���ؼ� �������� ������ �������� Ȯ���� �� �ֽ��ϴ�.
 ������ ���� ��ü������ ������ȣ�����ý���(www.animal.go.kr)�� ���Ե��� ���� �� ������, �ڼ��� ���� �ش����� ������ġ��ü�� ������ȣ����ڿ��� �����ϴ� ���� �����ϴ�.
�� ������ġ��ü ������ȣ ���� �μ� ����ó ���(��������-������ȣ ���� �μ�)
 ����, �ش� �á��������� ���ͳ� Ȩ������ ����� �Ǵ� �ش� �á��������� �����ϴ� ������ȣ���͸� ã�ƺ��ƾ� �ϰ�, ������ȣ�� �������� �ϴ� �����̳� ��ü�� Ȩ�������� Ȯ���� ���� ���� �����ϴ�.

��������ȣ����
 ������ġ��ü������ ���Ρ����� ���� ������Ҹ� ���ƴٴϴ� �ݷ������� �߰��ϸ� �� ������ �ش� ������ġ��ü���� � �Ǵ� ��Ź�� ������ȣ���Ϳ����� ������ ������ �����Ⱓ ��ȣ�ϸ鼭 �����ڿ� �����ڸ� ���� �ݷ������� ���������� �Ǵ� ��ȣ�� �����ϴ� ���(���� �������� ��̶� ��)�� �ݷ������� ã�� �� �ֵ��� 7�� �̻� �����ϰ� �ֽ��ϴ�(��������ȣ���� ��17�� �� ��������ȣ�� ����ɡ� ��7����1��).
 ����, �ش� ������ġ��ü�� ���ͳ� Ȩ������ ����� �Ǵ� �ش� ������ġ��ü�� �����ϴ� ������ȣ���͸� ã�ƺ��ƾ� �մϴ�.

��������
 �ݷ������� �ٸ� ����� ���� �����Ǿ��ٸ� �� ����� ������(�����롤����ҡ�����Ҹ� ����) �Ǵ� ��ġ������ �繫��(����Ư����ġ���� ���)�� �������� �˷��� �� �ֽ��ϴ�(�����ǹ����� ��1����1��, ��12��, �����ǹ��� ����ɡ� ��1����1��).
�ݷ������� ����Ű� ������ �ش� ������ �� �Խ��ǿ� �������� ����ǹǷ� ���� ������ � Ȯ���� ���ƾ� �մϴ�(�����ǹ����� ��1����2�� �Ĵ�, �����ǹ��� ����ɡ� ��3����1��).

',to_date('20/08/22','RR/MM/DD'),3,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (34,'������','''���� �޷��� ��'' �̿��� ������ ���� �ȳ�','''���� �޷��� ��'' �̿��� ������ ���� �ȳ�',to_date('20/05/09','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (35,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (36,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (37,'������','2019�� �Ŀ��� �� Ȱ����� �� ����','2019�� �Ŀ��� �� Ȱ����� �� ����',to_date('19/12/25','RR/MM/DD'),2,null,'2019��_���ݴ޷����� �Ŀ��� Ȱ����� ����.pdf','20200923162300920.pdf',null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (38,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (39,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (41,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (42,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (43,'������','TEST��������','�������� ����~ �����',to_date('20/05/09','RR/MM/DD'),2,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (44,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (45,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (46,'������','ä�� ���� �ý��� ���� �۾� �ȳ�','ä�� ���� �ý��� ���� �۾� �ȳ�ä�� ���� �ý��� ���� �۾� �ȳ�ä�� ���� �ý��� ���� �۾� �ȳ�',to_date('20/01/01','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (47,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (48,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (49,'������','TEST��������','�������� ����~ �����',to_date('20/05/09','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (50,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (51,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (52,'������','TEST��������','�������� ����~ �����',to_date('20/05/09','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (53,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (54,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (55,'������','�Ŀ� ���� �ý��� ���� �۾� �ȳ�','���� �ý��� ������ ���� �Ͻ��Ŀ� ������ �Ͻ� �ߴܵ��� �ȳ��帳�ϴ�.

�Ͻ��Ŀ��� �ſ�ī��, �ڵ���, �ǽð�������ü�� ���Ͽ� �Ͻ������� �Ŀ����� �Ա��Ͻô� ����Դϴ�.

�̿ܿ� �����Ŀ�, �������� ���������� ����˴ϴ�. 

�Ͻ��Ŀ� �̿� �� �Ʒ��� ���� ���� ��Ź�帳�ϴ�.

�� ''���� �޷��� ��'' ���� �ý��� ���� �۾� �ȳ�

 - �Ͻ� : 2019�� 6�� 15��(��) 17:00 ~ 16��(��) 24:00

 - ���� : �Ͻ��Ŀ� ���� �Ͻ� �ߴ�

�� �ش� �۾��� �۾� ���¿� ���� ����ǰų� ����� �� ������ �����Ͽ� �ֽñ� �ٶ��ϴ�. 

�Ͻ��Ŀ� �̿뿡 ������ �帰 �� �θ� ���� ��Ź�帮�� 

�� ���� ���� ������ ���� �ּ��� ���ϰڽ��ϴ�.

�����ϴ�.',to_date('19/05/02','RR/MM/DD'),5,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (56,'������','TEST��������','�������� ����~ �����',to_date('20/06/08','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (57,'������','TEST��������','�������� ����~ �����',to_date('20/07/10','RR/MM/DD'),0,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (40,'������','''���� �޷��� ��'' ���å ���� �ȳ�','


�ȳ��ϼ���. īī���Դϴ�.

īī�� ���񽺸� �̿��� �ֽô� ȸ�� �����в� ����帮��, ���å ���濡 ���� �ȳ� ���� �帳�ϴ�.

 

����� ���å ������ Ȯ���Ͻð� ���� �̿뿡 �����Ͻñ� �ٶ��ϴ�. 

 

1. ���� ����

''���� �޷��� �� ������ �޸� ��å�� �Ϻ� ���� �Ǿ����ϴ�.

 

���� ��

���� ��

5. ���� �޸� ��å (��� ������ ȸ���� ���� �̿� �ȳ�)

������Ÿ� �̿����� �� ������ȣ � ���� ���� ����ɿ� ���� �Ʒ� �Ⱓ ���� ���񽺸� �̿����� ������ ���������� �ı� �Ǵ� �и� ���� �� �̿����� ������ �� �ֽ��ϴ�.

 

�� �� ���å���� ���� �޸� ��å�� ���� ������ �޸� ��å�� �ٸ� ���� �Ʒ��� ������, ���� ������ �޸� ��å ������ �켱�Ͽ� �����մϴ�.

?  ���⵿�� ��Ī ���� ���å

?  ä�� ���� ���å


5. ���� �޸� ��å (��� ������ ȸ���� ���� �̿� �ȳ�)

������Ÿ� �̿����� �� ������ȣ � ���� ���� ����ɿ� ���� �Ʒ� �Ⱓ ���� ���񽺸� �̿����� ������ ���������� �ı� �Ǵ� �и� ���� �� �̿����� ������ �� �ֽ��ϴ�.

 

�� �� ���å���� ���� �޸� ��å�� ���� ������ �޸� ��å�� �ٸ� ���� �Ʒ��� ������, ���� ������ �޸� ��å ������ �켱�Ͽ� �����մϴ�.

?  ���⵿�� ��Ī ���� ���å

?  ä�� ���� ���å

?  �Ŀ��ϱ� ���å

 

2. ���� �ñ�

����� ���å�� 2020�� 9�� 1���ڷ� ȿ���� �߻��˴ϴ�.

 

�����մϴ�.',to_date('20/03/25','RR/MM/DD'),1,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (9,'������','''������ �̽�'' ��� �߻��� ���� ����帳�ϴ�.','�ȳ��ϼ���.
���� �޷��� �� ���� �Ѱ� �����Դϴ�.

�ֱ� ������ �̽����� ��ַ� ������ ���� ����帳�ϴ�.

������ �̽��� ���� 8��(16��30�� ~ 18��03��)�� 12��(11��39��~12��55��, 13��30�� ~ 15��43��) �ý��� ��ַ� ������ �̽� ���񽺰� �������� �ʾҽ��ϴ�.

�ֱ� ���񽺰� �����ϸ鼭 �̿��� �е��� ���Ǹ� ���̱� ����, �ý����� �����ϴ� �۾��� �־���, ���� ����ġ ���� ���۵��� �߻��ϸ鼭 ������ �帮�� �ƽ��ϴ�.
��� �߻� ���� ����� �������� ����, ������ �����Դϴ�.

ȸ�� ��������,
�ݹ� ��ַ� ���ظ� ���� ����ڿ� �̿��ڿ� ���� ���� ��ȹ�� ���� ���̸�, ���� ���� ��θ� ���� �˷��帮���� �ϰڽ��ϴ�.

��������, ���� ��ְ� ������� �ʵ��� ���� �ý����� ����� ������, ���� �̿��� �����е��� �Ǹ���Ű�� �ʵ��� �ּ��� ����� ����̰ڽ��ϴ�.

�ٽ� �ѹ�, ū ������ ��� ����帳�ϴ�.',to_date('20/08/23','RR/MM/DD'),3,null,null,null,null,null,null,null);
Insert into RUNNINGDOG.NOTICE (NOTICE_NO,NOTICE_WRITER,NOTICE_TITLE,NOTICE_CONTENT,NOTICE_DATE,NOTICE_READCOUNT,NOTICE_STATE,NOTICE_ORIGINAL_FILENAME1,NOTICE_RENAME_FILENAME1,NOTICE_ORIGINAL_FILENAME2,NOTICE_RENAME_FILENAME2,NOTICE_ORIGINAL_FILENAME3,NOTICE_RENAME_FILENAME3) values (58,'������','������ �޷��� ��''�� ������ ������ ��ȯ�Ǿ����ϴ�.','�����⿡���� �ս��� ������ �޷��� ������ ����������.

���� �޷��� �� ����Ʈ�� PC, �ڵ���, �׺���
��⿡ �°� ȭ�鱸���� �Ǿ��ֽ��ϴ�.
��𼭵� �����ϰ� ���� �޷��� ���� �̿����ּ���',to_date('20/09/23','RR/MM/DD'),3,null,null,null,null,null,null,null);



COMMIT;



--------------------------------------------------------
--  ������ ������ - �����-9��-26-2020   
--------------------------------------------------------
DROP TABLE "RUNNINGDOG"."ISSUE" cascade constraints;
--------------------------------------------------------
--  DDL for Table ISSUE
--------------------------------------------------------

  CREATE TABLE "RUNNINGDOG"."ISSUE" 
   (   "ISSUE_ORDER" VARCHAR2(100 BYTE), 
   "PARTNER_NAME" VARCHAR2(100 BYTE), 
   "PARTNER_IMG" VARCHAR2(4000 BYTE), 
   "ISSUE_TITLE" VARCHAR2(4000 BYTE), 
   "ISSUE_THUMBNAIL" VARCHAR2(4000 BYTE), 
   "ISSUE_DATE" VARCHAR2(100 BYTE), 
   "ISSUE_READCOUNT" NUMBER, 
   "ISSUE_LINK" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."ISSUE_ORDER" IS '���ı���';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."PARTNER_NAME" IS '��Ʈ���̸�';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."PARTNER_IMG" IS '��Ʈ���̹���';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."ISSUE_TITLE" IS '����';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."ISSUE_THUMBNAIL" IS '�����';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."ISSUE_DATE" IS '�ۼ���';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."ISSUE_READCOUNT" IS '��ȸ��';
   COMMENT ON COLUMN "RUNNINGDOG"."ISSUE"."ISSUE_LINK" IS '����������ũ';
REM INSERTING into RUNNINGDOG.ISSUE
SET DEFINE OFF;
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','���� �� ���� �Ȼ����� ����','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F9ddc47d6813f4b578f03671f3964c53d.jpeg',null,56776,'https://1boon.kakao.com/bemypet/5f363611f2910a6deac7bbbd');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','������ ������ �ٸ� �ǳʱ� �� ��ü�� ��ȭ','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F7a14075116104321a4599a11ff182da7.png',null,55609,'https://1boon.kakao.com/bemypet/5f22347aa223e9534e187047');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','������ �ױ� �� �ൿ �� ��ó��','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F941b1eb5f7d548f788eb331cfee52e50.jpeg',null,54053,'https://1boon.kakao.com/bemypet/5e315c5dbc6d9b20e0b9feda');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','������� �ű��� �ڼ��� ��¦ ��� ����','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F901039f7ea144d5c8db86959f04828e4.jpeg',null,51819,'https://1boon.kakao.com/bemypet/5ef95329ebc9ff0b10554abb');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','�̷��� �ɲ��̴� �����̵��� ����...!','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2Fb41e079c956144b1bbc83d2fbe189582.JPG',null,51637,'https://1boon.kakao.com/bemypet/5f02a6cd0a682c3859984448');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','������ ������, ���� ��� �˾ƺ���','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F216f4e5545d943bea93bdf09a78d7841.png',null,50310,'https://1boon.kakao.com/bemypet/5db162ed6654465edc216c27');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','����̰� ���翡�� �̾��� �� �ϴ� �ൿ 5����','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2Ff8eda47958ce494a9fb179457147cc47.JPG',null,50154,'https://1boon.kakao.com/bemypet/5ea7ea66c2ec55600886b99f');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','���縸�� �� �� �ִ� ���� ����','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F57b77afdb8f64e0895d8fb46fafaffae.png',null,46810,'https://1boon.kakao.com/bemypet/5f30e922a223e9534e18c061');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','���� ���̻��� ��������� NO!','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F8170e41a1c2342d5989abd61b5f26b4d.png',null,44703,'https://1boon.kakao.com/bemypet/5ef57750b4f5a8248108f5ac');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('view','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','����̰� �ױ� �� �ϴ� �ൿ�� ��ó����?','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2Fa109a947a47446e09f13a3627040b87d.png',null,43880,'https://1boon.kakao.com/bemypet/5e3916777391205c8a52030e');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','��Ʈ��','https://t1.daumcdn.net/news/201908/30/notepet/20190830155158729jl2t.jpeg','�ֱ� �θ��� �������� �� ���� �����.."�츮 ���̴� �� ����!"','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fnotepet%2F59d777bd1659469b963a613ab5786aa2.JPG','2020.09.21',null,'https://1boon.kakao.com/notepet/5f67ff5ea6e3606d4827e926');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','koreadognews','http://t1.daumcdn.net/liveboard/_profile/890e1edf98fa49ae82a2626632eb4fe5.png','���Ͻǿ��� �̻��� �Ҹ��� ����... �ȿ� ���ִ� ������ ���� ���...','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fkoreadognews%2F9d5e5e81285f4de2baac29d91f8b098c.JPG','2020.09.21',null,'https://1boon.kakao.com/koreadognews/5f6019605803646c206789c7');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','koreadognews','http://t1.daumcdn.net/liveboard/_profile/890e1edf98fa49ae82a2626632eb4fe5.png','�ڲ� �ù谡 ������� CCTV�� ��ġ�� �������� Ȯ���� ����','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fkoreadognews%2F46765f6804f047448d4173886de06d18.JPG','2020.09.21',null,'https://1boon.kakao.com/koreadognews/5f600be0a6e3606d4827bbcd');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','koreadognews','http://t1.daumcdn.net/liveboard/_profile/890e1edf98fa49ae82a2626632eb4fe5.png','���ڱ� ������� ��ź�� ���� ����?!?! �Ȱ��� ��µ�..!??!','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fkoreadognews%2Fd5331f36a7134e8b98f1a068218f4951.JPG','2020.09.21',null,'https://1boon.kakao.com/koreadognews/5f600119f874e345a86b6f20');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','����� ��¦ ���� ���� �ֱ�','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fbemypet%2F506df454f1724d35a1521b9d86d3e027.png','2020.09.21',null,'https://1boon.kakao.com/bemypet/5f6840785803646c2067ba22');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','��Ʈ��','https://t1.daumcdn.net/news/201908/30/notepet/20190830155158729jl2t.jpeg','"ȥ�� ���� �Դ� ��������� ������߽��ϴ�!"','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fnotepet%2F42c68e5f78bc4eb299f266c2c0f472f6.JPG','2020.09.20',null,'https://1boon.kakao.com/notepet/5f6453cdf874e345a86b9498');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','koreadognews','http://t1.daumcdn.net/liveboard/_profile/890e1edf98fa49ae82a2626632eb4fe5.png','�������� ������ ���Ⱕ�� ������� ������?!!?','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fkoreadognews%2Fcb2cd588357842769ee03b447c079ccd.JPG','2020.09.20',null,'https://1boon.kakao.com/koreadognews/5f5edc585803646c206782c2');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','koreadognews','http://t1.daumcdn.net/liveboard/_profile/890e1edf98fa49ae82a2626632eb4fe5.png','�ƱⰡ ���ڱ� �Ҹ��� ���� �޷��� ������ �� ����..','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Fkoreadognews%2F2186ab66c8b34da9bc5ac1d47472c9b7.JPG','2020.09.20',null,'https://1boon.kakao.com/koreadognews/5f6421fca6e3606d4827dbde');
Insert into RUNNINGDOG.ISSUE (ISSUE_ORDER,PARTNER_NAME,PARTNER_IMG,ISSUE_TITLE,ISSUE_THUMBNAIL,ISSUE_DATE,ISSUE_READCOUNT,ISSUE_LINK) values ('order','������','https://t1.daumcdn.net/news/201911/05/bemypet/20191105105020150pmpk.png','����� ������ ���ŵ� ��������?','//img1.daumcdn.net/thumb/S600x434/?scode=1boon&fname=https%3A%
