CREATE TABLE `users` (
  `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NOT NULL,
  `lastname` VARCHAR(120) NOT NULL,
  `mothers_lastname` VARCHAR(120),
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password` TEXT NOT NULL,
  `user_type_id` INT UNSIGNED NOT NULL DEFAULT 2,
  `is_active` INT NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_fk_user_type`
  FOREIGN KEY (`user_type_id`) REFERENCES `user_types`(`user_type_id`)
);