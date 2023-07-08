DELIMITER //

CREATE PROCEDURE `get_user_by_email` (
  IN `email_received` VARCHAR(255)
)

BEGIN

  SELECT `user_id`, `name`, `lastname`, `mothers_lastname`, `email` FROM `users`
  WHERE `is_active` = 1 AND `email` = `email_received`;

END // DELIMITER ;