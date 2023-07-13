DELIMITER //

CREATE PROCEDURE `delete_soccer_league`(
  IN `id` INT
)

BEGIN

  UPDATE `soccer_leagues`
  SET
    `is_active` = 0,
    `updated_at` = CURRENT_TIMESTAMP()
  WHERE `soccer_league_id` = `id`;

END // DELIMITER ;