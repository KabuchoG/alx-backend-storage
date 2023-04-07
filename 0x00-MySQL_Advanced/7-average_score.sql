-- Write a SQL script that creates a stored procedure ComputeAverageScoreForUser 
-- that computes and store the average score for a student. Note: An average score can be a decimal
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE average_s FLOAT;
    SELECT AVG(score) INTO average_s FROM corrections WHERE user_id = user_id;
    UPDATE users
        SET average_score = avarage_s
        WHERE id = user_id;
END $$
DELIMITER ;