create table user_tb(
    id int auto_increment primary key,
    username varchar not null unique,
    password varchar not null,
    email varchar not null,
    created_at timestamp
);


create table board_tb(
    id int auto_increment primary key,
    title varchar,
    user_id int,
    created_at timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_tb(id)
);

create table boardcontent_tb(
    id int auto_increment primary key,
    board_id int,
    user_id int,
    content varchar,
    CONSTRAINT fk_board2 FOREIGN KEY (board_id) REFERENCES board_tb(id),     
    CONSTRAINT fk_user2 FOREIGN KEY (user_id) REFERENCES user_tb(id)     
);