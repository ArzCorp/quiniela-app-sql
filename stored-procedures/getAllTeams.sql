DELIMITER //

CREATE PROCEDURE `get_all_teams`()

BEGIN

  SELECT `name`, `team_id`, `logo_image` FROM `teams`
  WHERE `is_active` = 1;

END // DELIMITER ;