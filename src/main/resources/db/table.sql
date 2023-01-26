create table user_tb(
    id int auto_increment primary key,
    username varchar not null unique,
    password varchar not null,
    email varchar not null,
    created_at timestamp
);


-- create table board_tb(
--     id int auto_increment primary key,
--     title varchar,
--     user_id int,
--     board_id int,
--     created_at timestamp,
--     CONSTRAINT fk_board FOREIGN KEY (board_id) REFERENCES board_tb(id), 
--     CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_tb(id)
-- );

create table boardcontent_tb(
    id int auto_increment primary key,
    user_id int,
    title varchar,
    content varchar,
    created_at timestamp,    
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_tb(id)     
);