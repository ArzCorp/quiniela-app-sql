CREATE TABLE `games_x_quinielas` (
  `games_quinielas_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiniela_id` INT UNSIGNED NOT NULL,
  `game_id` INT UNSIGNED NOT NULL,
  `is_active` INT NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`games_quinielas_id`),
  CONSTRAINT `quiniela_id_on_quinielas`
  FOREIGN KEY (`quiniela_id`) REFERENCES `quinielas`(`quiniela_id`),
  CONSTRAINT `g_X_q_game_id_on_games`
  FOREIGN KEY (`game_id`) REFERENCES `games`(`game_id`)
);