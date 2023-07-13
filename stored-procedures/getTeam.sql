DELIMITER //

CREATE PROCEDURE `get_team`(
  IN `id` INT UNSIGNED
)

BEGIN

  SELECT `name`, `team_id`, `logo_image` FROM `teams`
  WHERE `team_id` = `id` AND `is_active` = 1;

END // DELIMITER ;