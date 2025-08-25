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
