insert into user_tb(username, password, email, created_at) values('ssar', '1234', 'ssar@nate.com', now());
insert into user_tb(username, password, email, created_at) values('cos', '1234', 'cos@nate.com', now());
insert into user_tb(username, password, email, created_at) values('love', '1234', 'love@nate.com', now());


insert into board_tb(title, userId, createdAt) values('첫번째 글입니다.', 1, now());
insert into board_tb(title, userId, createdAt) values('두번째 글입니다.', 1, now());
insert into board_tb(title, userId, createdAt) values('세번째 글입니다.', 1, now());
insert into board_tb(title, userId, createdAt) values('네번째 글입니다.', 1, now());
insert into board_tb(title, userId, createdAt) values('다섯번째 글입니다.', 1, now());

insert into board_tb(title, userId, createdAt) values('첫번째 글입니다.', 2, now());
insert into board_tb(title, userId, createdAt) values('두번째 글입니다.', 2, now());
insert into board_tb(title, userId, createdAt) values('세번째 글입니다.', 2, now());

insert into board_tb(title, userId, createdAt) values('첫번째 글입니다.', 3, now());
insert into board_tb(title, userId, createdAt) values('두번째 글입니다.', 3, now());
commit;