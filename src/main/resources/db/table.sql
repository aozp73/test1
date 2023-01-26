create table user_tb(
    id int auto_increment primary key,
    username varchar not null unique,
    password varchar not null,
    email varchar not null,
    created_at timestamp
);


create table purchase_tb(
    id int auto_increment primary key,
    title varchar,
    user_id int,
    created_at timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_tb(id)
);