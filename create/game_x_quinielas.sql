CREATE TABLE `quinielas_x_users` (
  `quinielas_x_users` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `quiniela_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `current_total_points` INT UNSIGNED NOT NULL,
  `is_active` INT NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`quinielas_x_users`),
  CONSTRAINT `fk_quinielas_id_on_quienielas`
  FOREIGN KEY (`quiniela_id`) REFERENCES `quinielas`(`quiniela_id`),
  CONSTRAINT `fk_user_id_on_users`
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);