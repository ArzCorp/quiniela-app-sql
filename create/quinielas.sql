CREATE TABLE `quinielas` (
  `quiniela_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(120) NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `is_active` INT NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`quiniela_id`),
  CONSTRAINT `quinielas_user_id_on_users`
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);