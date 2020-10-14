-- DROP TABLE IF EXISTS T_PERMISSIONS;
--
-- CREATE TABLE T_PERMISSIONS (
--                           id IDENTITY PRIMARY KEY,
--                           name VARCHAR(255)
-- );

INSERT INTO T_PERMISSIONS (id, name) VALUES (1, 'ASSIGNMENT_READ');
INSERT INTO T_PERMISSIONS (id, name) VALUES (2, 'ASSIGNMENT_WRITE');

INSERT INTO T_ROLES (id, name) VALUES (1, 'ADMIN');
INSERT INTO T_ROLES (id, name) VALUES (2, 'TEACHER');
INSERT INTO T_ROLES (id, name) VALUES (3, 'STUDENT');

INSERT INTO T_ROLE_PERMISSION (fk_role, fk_permission) VALUES (1, 1);
INSERT INTO T_ROLE_PERMISSION (fk_role, fk_permission) VALUES (1, 2);
INSERT INTO T_ROLE_PERMISSION (fk_role, fk_permission) VALUES (2, 1);
INSERT INTO T_ROLE_PERMISSION (fk_role, fk_permission) VALUES (2, 2);
INSERT INTO T_ROLE_PERMISSION (fk_role, fk_permission) VALUES (3, 1);

INSERT INTO T_USER (id, name, email, password, role_id) VALUES (1, 'Alex', 'fedotenko@gmail.com', '12345', 1);
INSERT INTO T_USER (id, name, email, password, role_id) VALUES (2, 'Maria', 'maria@gmail.com', '12345', 2);
INSERT INTO T_USER (id, name, email, password, role_id) VALUES (3, 'Julia', 'julia@gmail.com', '12345', 3);