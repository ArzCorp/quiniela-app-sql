DELIMITER //

CREATE PROCEDURE `get_all_soccer_leagues`()

BEGIN

  SELECT `name`, `soccer_league_id`, `logo_image` FROM `soccer_leagues`
  WHERE `is_active` = 1;

END // DELIMITER ;