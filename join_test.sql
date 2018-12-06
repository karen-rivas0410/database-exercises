CREATE DATABASE join_test_db;

SHOW CREATE TABLE roles;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM roles;
SELECT * FROM users;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

insert into users (name, email, role_id) values
('karen','karen@example.com', 2),
('Tim','tim@example.com', NULL),
('Tom','tom@example.com', 2),
('Steven','steven@example.com', 2);


# Join / Inner Join
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;


# Left Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# Right Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used
# with join queries. Use count and the appropriate join type to get a list of roles along with
# the number of users that has the role. Hint: You will also need to use group by in the query.

Select u.name as 'un', roles.name as 'Role Name', count(*)
from users as u
join roles on u.role_id = roles.id
GROUP BY `Role Name`, un
ORDER BY count(*);

