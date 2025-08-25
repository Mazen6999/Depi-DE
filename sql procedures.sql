DROP PROCEDURE IF EXISTS hello_world;

CREATE PROCEDURE hello_world()
BEGIN
  SELECT 'hello_world';
  SELECT 'this is test';
END



CALL hello_world();


DROP PROCEDURE IF EXISTS hello_world2;

CREATE PROCEDURE hello_world2(IN name VARCHAR(20))
BEGIN
  SELECT CONCAT('hello ', name) AS greeting;
END


CALL hello_world2('Alice');
CALL hello_world2('Bob');