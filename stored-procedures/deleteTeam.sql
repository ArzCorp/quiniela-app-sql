DELIMITER //

CREATE PROCEDURE `delete_team`(
  IN `id` INT
)

BEGIN

  UPDATE `teams`
  SET
    `is_active` = 0,
    `updated_at` = CURRENT_TIMESTAMP()
  WHERE `team_id` = `id`;

END // DELIMITER ;