--  creates a stored procedure AddBonus that adds a new correction for a student.
DELIMITER $$
CREATE PROCEDURE AddBonus(
    IN user_id INT, 
    IN project_name varchar(255), 
    IN score INT)
    BEGIN
        DECLARE project_id INT;
        SELECT id INTO project_id FROM projects
        IF project_id IS NULL
        THEN 
            INSERT INTO projects(name) VALUES(project_name)
            SET project_id = LAST_INSERT_ID()
        END IF;
        INSERT INTO corrections (user_id, project_id, scores) VALUES(user_id, project_id, scores);
    END $$
DELIMITER ;
    


