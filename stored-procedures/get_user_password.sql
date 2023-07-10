DELIMITER //

CREATE PROCEDURE `get_user_password`(
  IN `user_id` INT UNSIGNED
)

BEGIN

  SELECT `password` AS `user_password` FROM `users`
  WHERE `users`.`user_id` = `user_id`;

END // DELIMITER ;