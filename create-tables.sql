CREATE TABLE IF NOT EXISTS `worlds` (
    `id` integer not null primary key,
    `ip` varchar(45),
    `tcp_port` integer default '43594',
    `websocket_port` integer default '43595',
    `country` char(3),
    `members` boolean default '0'
);

CREATE TABLE IF NOT EXISTS `players` (
    `id` integer not null primary key autoincrement,
    `username` varchar(12) collate nocase,
    `rank` integer default '0',
    `password` char(60),
    `x` integer default '122',
    `y` integer default '657',
    `quest_points` integer default '0',
    `fatigue` integer default '0',
    `combat_style` integer default '0',
    `block_chat` boolean default '0',
    `block_private_chat` boolean default '0',
    `block_trade` boolean default '0',
    `block_duel` boolean default '0',
    `camera_auto` boolean default '1',
    `one_mouse_button` boolean default '0',
    `sound_on` boolean default '1',
    `hair_colour` integer default '2',
    `top_colour` integer default '8',
    `trouser_colour` integer default '14',
    `skin_colour` integer default '0',
    `head_sprite` integer default '1',
    `body_sprite` integer default '2',
    `skulled` integer default '0',
    `cur_attack` integer default '1',
    `exp_attack` integer default '0',
    `cur_defense` integer default '1',
    `exp_defense` integer default '0',
    `cur_strength` integer default '1',
    `exp_strength` integer default '0',
    `cur_hits` integer default '10',
    `exp_hits` integer default '4616',
    `cur_ranged` integer default '1',
    `exp_ranged` integer default '0',
    `cur_prayer` integer default '1',
    `exp_prayer` integer default '0',
    `cur_magic` integer default '1',
    `exp_magic` integer default '0',
    `cur_cooking` integer default '1',
    `exp_cooking` integer default '0',
    `cur_woodcutting` integer default '1',
    `exp_woodcutting` integer default '0',
    `cur_fletching` integer default '1',
    `exp_fletching` integer default '0',
    `cur_fishing` integer default '1',
    `exp_fishing` integer default '0',
    `cur_firemaking` integer default '1',
    `exp_firemaking` integer default '0',
    `cur_crafting` integer default '1',
    `exp_crafting` integer default '0',
    `cur_smithing` integer default '1',
    `exp_smithing` integer default '0',
    `cur_mining` integer default '1',
    `exp_mining` integer default '0',
    `cur_herblaw` integer default '1',
    `exp_herblaw` integer default '0',
    `cur_agility` integer default '1',
    `exp_agility` integer default '0',
    `cur_thieving` integer default '1',
    `exp_thieving` integer default '0',
    `total_level` integer default '18',
    `rank_attack` integer default '0',
    `rank_defense` integer default '0',
    `rank_strength` integer default '0',
    `rank_hits` integer default '0',
    `rank_ranged` integer default '0',
    `rank_prayer` integer default '0',
    `rank_magic` integer default '0',
    `rank_cooking` integer default '0',
    `rank_woodcutting` integer default '0',
    `rank_fletching` integer default '0',
    `rank_fishing` integer default '0',
    `rank_firemaking` integer default '0',
    `rank_crafting` integer default '0',
    `rank_smithing` integer default '0',
    `rank_mining` integer default '0',
    `rank_herblaw` integer default '0',
    `rank_agility` integer default '0',
    `rank_thieving` integer default '0',
    `rank_total` integer default '0',
    `recovery` json default '{}',
    `friends` json default '[]',
    `ignores` json default '[]',
    `inventory` json default '[]',
    `bank` json default '[]',
    `creation_ip` varchar(45),
    `creation_date` datetime default (strftime('%s', 'now')),
    `login_ip` varchar(45),
    `login_date` datetime default '0',
    `time_logged_in` integer default '0',
    `world` integer default '0',
    `ban_end_date` datetime default '0',
    `mute_end_date` datetime default '0',
    `membership_end_date` datetime default '0',
    `quest_stages` json default '{}',
    `cache` json default '{"sendAppearance": true}'
);

CREATE UNIQUE INDEX IF NOT EXISTS `players_username_unique` on `players`
(`username`);

CREATE TABLE IF NOT EXISTS `player_messages` (
    `id` integer not null primary key autoincrement,
    `to_player` integer not null REFERENCES `players`,
    `from` varchar(255),
    `subject` varchar(255),
    `date` datetime default (strftime('%s', 'now')),
    `unread` boolean default '1',
    `message` TEXT
);

CREATE INDEX IF NOT EXISTS `to_player_index` ON `player_messages` (`to_player`);

CREATE TABLE IF NOT EXISTS `login_attempts` (
    `id` integer not null primary key autoincrement,
    `ip` varchar(45),
    `attempts` integer default '1',
    `last_attempt_date` datetime default (strftime('%s', 'now'))
);

CREATE UNIQUE INDEX IF NOT EXISTS `login_attempts_ip_unique` on `login_attempts`
(`ip`);

CREATE TABLE IF NOT EXISTS `news` (
    `id` integer not null primary key autoincrement,
    `date` datetime default (strftime('%s', 'now')),
    `category` integer default '0',
    `title` varchar(255),
    `body` TEXT
);

CREATE TABLE IF NOT EXISTS `god_letters` (
    `id` integer not null primary key autoincrement,
    `date` datetime default (strftime('%s', 'now')),
    `title` varchar(255),
    `body` TEXT
);

CREATE TABLE IF NOT EXISTS `uploads` (
    `id` integer not null primary key autoincrement,
    `name` varchar(255),
    `file` blob
);

CREATE UNIQUE INDEX IF NOT EXISTS `name_unique` on `uploads` (`name`);
