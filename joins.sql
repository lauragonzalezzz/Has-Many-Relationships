--1
SELECT * FROM users;

--2
SELECT * FROM posts WHERE user_id = 100;

--3
SELECT posts.*, users.username, users.last_name
FROM posts
INNER JOIN users
ON users.id = posts.user_id
WHERE user_id = 200;