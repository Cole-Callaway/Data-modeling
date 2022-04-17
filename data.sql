create table users {
    user_id serial primary key,
    email text not null, 
    password text not null,
    ip_address text not null
};

create table followers {
    id serial primary key,
    follower_id int not null references users(user_id),
    followee_id int not null references users(user_id),
};

create table posts {
    post_id serial primary key,
    title text not null, 
    content text not null,
    image_url text not null,
    created_date timestamp with time zone not null,
    "location" text not null, 
    likes int not null references users(user_id)
    user_id int not null references users(user_id)
};


create table comments {
    comment_id serial primary key,
    user_id int not null references users(user_id),
    post_id int not null references posts(post_id),
    body text not null
};

