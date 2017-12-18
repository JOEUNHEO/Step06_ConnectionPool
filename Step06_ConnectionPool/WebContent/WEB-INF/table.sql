CREATE TABLE board_guest
(num NUMBER PRIMARY KEY,
writer VARCHAR2(50),
title VARCHAR2(100),
content CLOB,
regdate DATE);

CREATE SEQUENCE board_guest_seq;