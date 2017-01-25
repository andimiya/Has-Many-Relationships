-- #1
SELECT * FROM users;

-- #2
SELECT * FROM posts
    WHERE users_id = 100;

-- #3
SELECT first_name, last_name, posts.*
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
    WHERE users_id = 200;

SELECT first_name, last_name, posts.*
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
    WHERE users_id = 200;