-- 계좌 테이블
CREATE TABLE ACCOUNT
(
    NAME        VARCHAR(45)    NOT NULL    COMMENT '회원이름', 
    VALUE        DOUBLE         NOT NULL    COMMENT '잔액', 
    ACCOUNT_NUM  VARCHAR(45)    NOT NULL    COMMENT '계좌번호', 
    BANK_NAME    VARCHAR(45)    NOT NULL    COMMENT '은행이름', 
    PRIMARY KEY (ACCOUNT_NUM)
);

-- 입출금내역 테이블
CREATE TABLE INOUT
(
    INDEX           INT            NOT NULL    AUTO_INCREMENT COMMENT '내역인덱스', 
    ACCOUNT_NUM  VARCHAR(45)    NOT NULL    COMMENT '계좌번호',
    OTHER_NUM    VARCHAR(45)    NOT NULL    COMMENT '상대방계좌번호',
    OTHER_BANK   VARCHAR(45)    NOT NULL    COMMENT '상대방은행',
    OTHER_NAME   VARCHAR(45)    NOT NULL    COMMENT '상대방이름',
    VALUE        DOUBLE         NOT NULL    COMMENT '송금금액',
    DATE         DATE           NOT NULL    COMMENT '보낸날짜',
    PRIMARY KEY (INDEX)
);
/*
ALTER TABLE INOUT
    ADD CONSTRAINT FK_INOUT_ACCOUNT_NUM_ACCOUNT_ACCOUNT_NUM FOREIGN KEY (ACCOUNT_NUM)
        REFERENCES ACCOUNT (ACCOUNT_NUM) ON DELETE RESTRICT ON UPDATE RESTRICT;
*/
-- 상품 테이블
CREATE TABLE PRODUCT
(
    NAME       VARCHAR(45)    NOT NULL    COMMENT '회원이름',
    PRODUCT  VARCHAR(45)    NOT NULL    COMMENT '상품',
    DATE     DATE           NOT NULL    COMMENT '날짜',
    PRIMARY KEY (NAME)
);