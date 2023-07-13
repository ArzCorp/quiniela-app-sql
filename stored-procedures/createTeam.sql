DELIMITER //

CREATE PROCEDURE `create_team`(
  IN `new_team_name` VARCHAR(120),
  IN `new_team_image` TEXT
)

BEGIN

  INSERT INTO `teams`(`name`, `logo_image`) VALUES
  (`new_team_name`, `new_team_image`);

END // DELIMITER ;