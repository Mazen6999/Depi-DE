DROP PROCEDURE IF EXISTS hello_world;


CREATE PROCEDURE hello_world()
BEGIN
  SELECT 'hello_world';
  SELECT 'this is test';
END

CALL hello_world();

CREATE PROCEDURE hello_world2(IN name VARCHAR(20))
BEGIN
  SELECT CONCAT('hello', name) AS greeting;
  SELECT 'this is test';
END



CALL hello_world2('Alice');