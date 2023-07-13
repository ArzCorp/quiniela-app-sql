DELIMITER //

CREATE PROCEDURE `create_soccer_league`(
  IN `new_soccer_league_name` VARCHAR(120),
  IN `new_soccer_league_image` TEXT
)

BEGIN

  INSERT INTO `soccer_leagues`(`name`, `logo_image`) VALUES
  (`new_soccer_league_name`, `new_soccer_league_image`);

END // DELIMITER ;