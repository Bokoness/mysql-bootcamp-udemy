-- using ig_clone DB

-- making sure that a user wont follow himself
-- before inserting to follows table - make sure that the follower id and the followee id aren't the same

DELIMITER $$

CREATE TRIGGER prevent_self_follows
    BEFORE INSERT ON follows FOR EACH ROW
    BEGIN
        IF NEW.follower_id = NEW.followee_id
        THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'You cannot follow yourself';
        END IF;
    END;
    
$$

