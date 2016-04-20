CREATE ROLE has_many_user;
CREATE DATABASE has_many_blogs;
ALTER DATABASE has_many_blogs OWNER TO has_many_user;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90) DEFAULT NULL,
  last_name VARCHAR(90) DEFAULT NULL,
  created_at timestamp DEFAULT NOW() NOT NULL,
  updated_at timestamp DEFAULT NOW() NOT NULL
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INT REFERENCES users(id),
  title VARCHAR(180) DEFAULT NULL,
  url VARCHAR(510) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  created_at timestamp DEFAULT NOW() NOT NULL,
  updated_at timestamp DEFAULT NOW() NOT NULL
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INT REFERENCES users(id),
  posts_id INT REFERENCES posts(id),
  body VARCHAR(510) DEFAULT NULL,
  created_at timestamp DEFAULT NOW() NOT NULL,
  updated_at timestamp DEFAULT NOW() NOT NULL
);

