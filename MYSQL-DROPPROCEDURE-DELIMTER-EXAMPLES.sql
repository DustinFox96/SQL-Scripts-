DROP PROCEDURE GetAllUsers;

DELIMITER //

CREATE PROCEDURE GetAllUsers()

BEGIN
	select id, username, firstname, lastname, phone, email, isReviewer, isAdmin
		from users;
END//

DELIMITER ;

 call GetAllUsers();