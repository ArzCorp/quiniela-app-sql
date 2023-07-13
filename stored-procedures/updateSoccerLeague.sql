DELIMITER //

CREATE PROCEDURE `update_soccer_league`(
  IN `id` INT,
  IN `new_name` VARCHAR(120),
  IN `new_logo_image` TEXT
)

BEGIN

  UPDATE `soccer_leagues`
  SET
    `name` = `new_name`,
    `logo_image` = `new_logo_image`,
    `updated_at` = CURRENT_TIMESTAMP()
  WHERE `soccer_league_id` = `id`;

END // DELIMITER ;