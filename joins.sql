-- -- #1
-- SELECT * FROM users;

-- -- #2
-- SELECT * FROM posts
--     WHERE users_id = 100;

-- -- #3
-- SELECT first_name, last_name, posts.*
--   FROM users
--   INNER JOIN posts ON posts.users_id = users.id
--     WHERE users_id = 200;

-- -- #4
-- SELECT username, posts.*
--   FROM users
--   INNER JOIN posts ON posts.users_id = users.id
--     WHERE first_name = 'Norene' AND last_name = 'Schmitt';

-- -- #5
-- SELECT users.username, posts.created_at
--   FROM users
--   INNER JOIN posts ON posts.users_id = users.id
--     WHERE posts.created_at > TIMESTAMP WITH TIME ZONE '2015-01-01';

-- -- #6
-- SELECT posts.title, posts.content, users.username
--   FROM users
--   INNER JOIN posts ON posts.users_id = users.id
--     WHERE users.created_at > TIMESTAMP WITH TIME ZOqNE '2015-01-01';

-- -- #7
-- SELECT posts.title, comments.*
--   FROM users
--   INNER JOIN posts ON posts.users_id = users.id
--   INNER JOIN comments ON comments.posts_id = posts.id;

-- -- #8
-- SELECT posts.title, posts.url, comments.body
--   FROM users
--   INNER JOIN posts ON posts.users_id = users.id
--   INNER JOIN comments ON comments.posts_id = posts.id
--     WHERE posts.created_at < TIMESTAMP WITH TIME ZONE '2015-01-01';

-- #9
SELECT posts.title, posts.url, comments.body
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
  INNER JOIN comments ON comments.posts_id = posts.id
    WHERE posts.created_at > TIMESTAMP WITH TIME ZONE '2015-01-01';

