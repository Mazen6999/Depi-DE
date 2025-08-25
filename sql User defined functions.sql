DROP FUNCTION IF EXISTS cheap_expensive;
CREATE FUNCTION cheap_expensive (price INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
  IF price > 5 THEN
    RETURN 'Expensive';
  ELSE
    RETURN 'Cheap';
  END IF;
END;



CREATE FUNCTION current_timestamp_msg()
RETURNS VARCHAR(50)
NOT DETERMINISTIC
BEGIN
  RETURN CONCAT('The current time is: ', NOW());
END;


SELECT current_timestamp_msg() AS message;