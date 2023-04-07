-- creates a trigger that resets the attribute valid_email only when the email has been changed.
DROP TRIGGER IF EXISTS reset_valid_email;
DELIMITER $$
CREATE TRIGGER reset_valid_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    UPDATE users
    IF(NEW.email = NULL, SET users.valid_email = 0, SET users.valid_email = 1);
END $$
DELIMITER ;