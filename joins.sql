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

-- #4
SELECT username, posts.*
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
    WHERE first_name = 'Norene' AND last_name = 'Schmitt';

-- #4
SELECT users.username
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
    WHERE posts.created_at > TIMESTAMP WITH TIME ZONE '2015-01-01';

-- #5
SELECT posts.title, posts.content, users.username
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
    WHERE users.created_at > TIMESTAMP WITH TIME ZONE '2015-01-01';

