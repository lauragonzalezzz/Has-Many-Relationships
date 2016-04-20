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

--4
SELECT posts.*, users.username
FROM posts
INNER JOIN users
ON users.id = posts.user_id
WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

--5
SELECT users.username
FROM posts
INNER JOIN users
ON users.id = posts.user_id
WHERE posts.created_at > '2015-01-01';

--6
SELECT posts.title, posts.content, users.username
FROM posts
INNER JOIN users
ON users.id = posts.user_id
WHERE users.created_at > '2015-01-01';

--7
SELECT comments.*, posts.title as PostTitle
FROM comments
INNER JOIN posts
ON posts.id = comments.posts_id;

