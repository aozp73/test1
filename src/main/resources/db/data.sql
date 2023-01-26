insert into user_tb(username, password, email, created_at) values('ssar', '1234', 'ssar@nate.com', now());
insert into user_tb(username, password, email, created_at) values('cos', '1234', 'cos@nate.com', now());
insert into user_tb(username, password, email, created_at) values('love', '1234', 'love@nate.com', now());


insert into board_tb(title, user_id, created_at) values('첫번째 글입니다.', 1, now());
insert into board_tb(title, user_id, created_at) values('두번째 글입니다.', 1, now());
insert into board_tb(title, user_id, created_at) values('세번째 글입니다.', 1, now());
insert into board_tb(title, user_id, created_at) values('네번째 글입니다.', 1, now());
insert into board_tb(title, user_id, created_at) values('다섯번째 글입니다.', 1, now());

insert into board_tb(title, user_id, created_at) values('첫번째 글입니다.', 2, now());
insert into board_tb(title, user_id, created_at) values('두번째 글입니다.', 2, now());
insert into board_tb(title, user_id, created_at) values('세번째 글입니다.', 2, now());

insert into board_tb(title, user_id, created_at) values('첫번째 글입니다.', 3, now());
insert into board_tb(title, user_id, created_at) values('두번째 글입니다.', 3, now());


insert into boardcontent_tb(board_id, user_id, content) values(1, 1, '1번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(2, 1, '2번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(3, 1, '3번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(4, 1, '4번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(5, 1, '5번째 게시글');

insert into boardcontent_tb(board_id, user_id, content) values(6, 2, '1번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(7, 2, '2번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(8, 2, '3번째 게시글');

insert into boardcontent_tb(board_id, user_id, content) values(9, 3, '1번째 게시글');
insert into boardcontent_tb(board_id, user_id, content) values(10, 3, '2번째 게시글');
commit;