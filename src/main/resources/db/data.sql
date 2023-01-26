insert into user_tb(username, password, email, created_at) values('ssar', '1234', 'ssar@nate.com', now());
insert into user_tb(username, password, email, created_at) values('cos', '1234', 'cos@nate.com', now());
insert into user_tb(username, password, email, created_at) values('love', '1234', 'love@nate.com', now());


-- insert into board_tb(user_id, created_at) values(1);
-- insert into board_tb(user_id, created_at) values(1);
-- insert into board_tb(user_id, created_at) values(1);
-- insert into board_tb(user_id, created_at) values(1);
-- insert into board_tb(user_id, created_at) values(1);

-- insert into board_tb(user_id, created_at) values(2);
-- insert into board_tb(user_id, created_at) values(2);
-- insert into board_tb(user_id, created_at) values(2);

-- insert into board_tb(user_id, created_at) values(3);
-- insert into board_tb(user_id, created_at) values(3);


insert into boardcontent_tb(id, user_id, title, content, created_at) values(1, 1,'첫번째 글입니다.', '1번째 게시글 (ssar)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(2, 1,'두번째 글입니다.',  '2번째 게시글 (ssar)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(3, 1,'세번째 글입니다.',  '3번째 게시글 (ssar)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(4, 1,'네번째 글입니다.',  '4번째 게시글 (ssar)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(5, 1,'다섯번째 글입니다.',  '5번째 게시글 (ssar)', now());

insert into boardcontent_tb(id, user_id, title, content, created_at) values(6, 2,'첫번째 글입니다.',  '1번째 게시글 (cos)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(7, 2,'두번째 글입니다.',  '2번째 게시글 (cos)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(8, 2,'세번째 글입니다.',  '3번째 게시글 (cos)', now());

insert into boardcontent_tb(id, user_id, title, content, created_at) values(9, 3,'첫번째 글입니다.',  '1번째 게시글 (love)', now());
insert into boardcontent_tb(id, user_id, title, content, created_at) values(10, 3,'두번째 글입니다.',  '2번째 게시글 (love)', now());
commit;