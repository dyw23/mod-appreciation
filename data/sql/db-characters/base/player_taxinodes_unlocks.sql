CREATE TABLE `player_taxinodes_unlocks` (
  `guid` INT UNSIGNED NOT NULL,
  `eastern_kingdoms_taxi_unlocked` TINYINT(1) DEFAULT 0,
  `kalimdor_taxi_unlocked` TINYINT(1) DEFAULT 0,
  `outland_taxi_unlocked` TINYINT(1) DEFAULT 0,
  `northrend_taxi_unlocked` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`guid`)
);