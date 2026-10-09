CREATE TABLE `charts` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text NOT NULL,
	`instant` text NOT NULL,
	`location` text NOT NULL,
	`latitude` real NOT NULL,
	`longitude` real NOT NULL,
	`offset` real NOT NULL,
	`notes` text DEFAULT '' NOT NULL,
	`created_at` text NOT NULL
);

CREATE TABLE `reference_pages` (
	`id` integer PRIMARY KEY NOT NULL,
	`title` text NOT NULL,
	`content` text NOT NULL
);
