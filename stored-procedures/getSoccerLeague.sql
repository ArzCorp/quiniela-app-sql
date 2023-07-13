DELIMITER //

CREATE PROCEDURE `get_soccer_league`(
  IN `id` INT UNSIGNED
)

BEGIN

  SELECT `name`, `soccer_league_id`, `logo_image` FROM `soccer_leagues`
  WHERE `soccer_league_id` = `id` AND `is_active` = 1;

END // DELIMITER ;