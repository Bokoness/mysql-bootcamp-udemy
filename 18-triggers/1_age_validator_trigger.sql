DELIMITER $$ -- changing the delimiter to $$ instead of ;

CREATE TRIGGER must_be_adult
    BEFORE INSERT ON users FOR EACH ROW -- all that line is the default syntax
    BEGIN
        IF NEW.age < 18 -- new - a placeholder, that is reffering to the new data that is inserted;
        THEN 
            SIGNAL SQLSTATE '45000' --  sql state | server error code
                SET MESSAGE_TEXT = 'Must be an adult!';
        END IF;
    END;
$$ -- changing the delimiter back to ; 
    