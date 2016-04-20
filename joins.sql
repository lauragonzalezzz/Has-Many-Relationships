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

--8
SELECT comments.*, posts.title as post_title, posts.url as post_url, comments.body as comment_body
FROM posts
INNER JOIN comments
ON posts.id = comments.posts_id
WHERE posts.created_at < '2015-01-01';

--9
SELECT comments.*, posts.title as post_title, posts.url as post_url, comments.body as comment_body
FROM posts
INNER JOIN comments
ON posts.id = comments.posts_id
WHERE posts.created_at > '2015-01-01';

--10
SELECT comments.*, posts.title as post_title, posts.url as post_url, comments.body as comment_body
FROM posts
INNER JOIN comments
ON posts.id = comments.posts_id
WHERE comments.body LIKE '%USB%';

--11
SELECT posts.title as post_title, users.first_name, users.last_name, comments.body as comment_body
FROM posts
INNER JOIN users
ON users.id = posts.user_id
INNER JOIN comments
ON posts.id = comments.posts_id
WHERE comments.body LIKE '%matrix%';

--12
SELECT users.first_name, users.last_name, comments.body as comment_body
FROM users
INNER JOIN posts
ON users.id = posts.user_id
INNER JOIN comments
ON posts.id = comments.posts_id
WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';