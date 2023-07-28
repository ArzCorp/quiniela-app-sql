CREATE TABLE `predictions` (
  `prediction_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NOT NULL,
  `prediction_value` INT UNSIGNED NOT NULL,
  `point_type_id` INT UNSIGNED NOT NULL,
  `prediction_type_id` INT UNSIGNED NOT NULL,
  `game_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`prediction_id`),
  CONSTRAINT `point_type_id_on_point_types`
  FOREIGN KEY (`point_type_id`) REFERENCES `point_types`(`point_type_id`),
  CONSTRAINT `prediction_type_id_on_prediction_types`
  FOREIGN KEY (`prediction_type_id`) REFERENCES `prediction_types`(`prediction_type_id`),
  CONSTRAINT `game_id_on_games`
  FOREIGN KEY (`game_id`) REFERENCES `games`(`game_id`),
  CONSTRAINT `user_id_on_users`
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);