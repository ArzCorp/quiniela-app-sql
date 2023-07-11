DELIMITER //

CREATE PROCEDURE `update_team`(
  IN `id` INT,
  IN `new_name` VARCHAR(120),
  IN `new_logo_image` TEXT
)

BEGIN

  UPDATE `teams`
  SET
    `name` = `new_name`,
    `logo_image` = `new_logo_image`,
    `updated_at` = CURRENT_TIMESTAMP()
  WHERE `team_id` = `id`;

END // DELIMITER ;