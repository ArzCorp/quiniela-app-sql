DELIMITER //

CREATE PROCEDURE `create_user` (
  IN `name` VARCHAR(120),
  IN `lastname` VARCHAR(120),
  IN `mothers_lastname` VARCHAR(120),
  IN `email` VARCHAR(155),
  IN `password` TEXT
)

BEGIN

INSERT INTO `users` (`name`, `lastname`, `mothers_lastname`, `email`, `password`) VALUES
(`name`, `lastname`, `mothers_lastname`, `email`, `password`);

END // DELIMITER ;