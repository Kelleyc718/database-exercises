USE join_test_db;

SELECT count(users.name) as user_name, roles.name as role_name
FROM roles
RIGHT JOIN users ON roles.id = role_id
GROUP BY role_id;