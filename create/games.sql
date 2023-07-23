CREATE TABLE `games` (
  `game_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NOT NULL,
  `start_date_time` TIMESTAMP NOT NULL,
  `local_team_id` INT UNSIGNED NOT NULL,
  `visiting_team_id` INT UNSIGNED NOT NULL,
  `soccer_league_id` INT UNSIGNED NOT NULL,
  `winner_type_id` INT UNSIGNED NOT NULL,
  `local_team_goals` INT UNSIGNED NOT NULL DEFAULT 0,
  `visiting_team_goals` INT UNSIGNED NOT NULL DEFAULT 0,
  `game_phase_id` INT UNSIGNED NOT NULL,
  `game_status_id` INT UNSIGNED NOT NULL,
  `is_active` INT NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`game_id`),

  CONSTRAINT `local_team_on_teams`
  FOREIGN KEY (`local_team_id`) REFERENCES `teams`(`team_id`),

  CONSTRAINT `visiting_team_on_teams`
  FOREIGN KEY (`visiting_team_id`) REFERENCES `teams`(`team_id`),

  CONSTRAINT `soccer_league_on_soccer_leagues`
  FOREIGN KEY (`soccer_league_id`) REFERENCES `soccer_leagues`(`soccer_league_id`),

  CONSTRAINT `winner_type_on_winners_types`
  FOREIGN KEY (`winner_type_id`) REFERENCES `winner_types`(`winner_type_id`),

  CONSTRAINT `game_phase_on_game_phases`
  FOREIGN KEY (`game_phase_id`) REFERENCES `game_phases`(`game_phase_id`),

  CONSTRAINT `game_status_on_game_status`
  FOREIGN KEY (`game_status_id`) REFERENCES `game_status`(`game_status_id`)
);