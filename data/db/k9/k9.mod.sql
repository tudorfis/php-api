/** K9 Modifications **/

-- 24.04.2014
ALTER TABLE k9.r_boarding ADD pet_id int NULL AFTER id;
ALTER TABLE k9.r_daycare ADD pet_id int NULL AFTER id;
ALTER TABLE k9.r_grooms ADD pet_id int NULL AFTER id;
ALTER TABLE k9.r_training ADD pet_id int NULL AFTER id;

ALTER TABLE `r_grooms` DROP FOREIGN KEY `r_grooms_ibfk_1`;
ALTER TABLE `r_training` DROP FOREIGN KEY `r_training_ibfk_1`;
ALTER TABLE `r_daycare` DROP FOREIGN KEY `r_daycare_ibfk_1`;
ALTER TABLE `r_boarding` DROP FOREIGN KEY `r_boarding_ibfk_1` ;

-- 25.04.2014
ALTER TABLE k9.r_boarding ADD status_id int NULL default 1 AFTER id;
ALTER TABLE k9.r_daycare ADD status_id int NULL default 1 AFTER id;
ALTER TABLE k9.r_grooms ADD status_id int NULL default 1 AFTER id;
ALTER TABLE k9.r_training ADD status_id int NULL default 1 AFTER id;

-- 26.04.2014
drop table r_grooms;
drop table r_training;

CREATE TABLE `r_grooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) DEFAULT '1',
  `pet_id` int(11) DEFAULT NULL,
  `date_in` date DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `r_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) DEFAULT '1',
  `pet_id` int(11) DEFAULT NULL,
  `date_in` date DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



-- 29.04.2014
CREATE TABLE `c_boarding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `c_daycare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `c_grooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `c_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

ALTER TABLE r_boarding ADD c_boarding_id int DEFAULT NULL after pet_id;
ALTER TABLE r_daycare ADD c_daycare_id int DEFAULT NULL after pet_id;
ALTER TABLE r_grooms ADD c_grooms_id int DEFAULT NULL after pet_id;
ALTER TABLE r_training ADD c_training_id int DEFAULT NULL after pet_id;


-- 07.05.2014
CREATE TABLE IF NOT EXISTS `client_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

ALTER TABLE `clients` DROP `second_owner`;
ALTER TABLE `clients` ADD `client_status_id` INT( 11 ) NOT NULL DEFAULT '1' AFTER `status_id` ;
ALTER TABLE `clients` DROP `emergency_cell` ;

INSERT INTO `client_status` (`id`, `v`) VALUES
(1, 'New'),
(2, 'Refuse'),
(3, 'VIP');


-- 16.05.2014 - charges_petsizes, charges_runtypes, charges_settings

CREATE TABLE IF NOT EXISTS `charges_petsizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `pet_size_id` int(11) NOT NULL,
  `pet_size_v` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `from_weight` float NOT NULL DEFAULT '0',
  `to_weight` float NOT NULL DEFAULT '0',
  `run` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

INSERT INTO `charges_petsizes` (`id`, `status_id`, `pet_size_id`, `pet_size_v`, `rate`, `from_weight`, `to_weight`, `run`) VALUES
(1, 1, 1, 'Miniature', 50, 5, 55, 3),
(2, 1, 2, 'Small', 0, 23, 40, 51),
(3, 1, 3, 'Medium', 56, 50, 5.52, 50),
(4, 1, 0, 'Big', 0, 0, 0, 3),
(5, 1, 0, 'Large', 25, 56, 12, 0),
(6, 1, 0, 'Extraordinary', 500, 41, 10, 0);


CREATE TABLE IF NOT EXISTS `charges_runtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `runtype` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `limit` tinyint(4) NOT NULL,
  `override` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `charges_runtypes` (`id`, `status_id`, `runtype`, `rate`, `limit`, `override`) VALUES
(1, 1, 'No Charge', 0, 1, 0),
(2, 1, 'VIP', 32, 5, 1),
(3, 1, 'Special runtype', 18, 2, 0);

CREATE TABLE IF NOT EXISTS `charges_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n` varchar(255) NOT NULL,
  `v` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

INSERT INTO `charges_settings` (`id`, `n`, `v`) VALUES
(3, 'handle_carefully_surcharge', '60'),
(7, 'charge_type', 'charge_by_petsize'),
(8, 'medication_fee', '15.21'),
(9, 'daycare_daily_fee', '60'),
(10, 'diet_fee', '50'),
(11, 'charge_fee', 'charge_by_daily_fee');

-- 18.05.2014
alter table `clients` drop `civility_id`;
drop table `civilities`;



-- 19.05.2014
CREATE TABLE IF NOT EXISTS `r_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n` varchar(255) NOT NULL,
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `r_settings` (`id`, `n`, `v`) VALUES
(1, 'available_boarding', '2'),
(2, 'available_daycare', '4'),
(3, 'available_grooms', '10'),
(4, 'available_training', '5');

CREATE TABLE IF NOT EXISTS `r_boarding_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `available` int(11) NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 21.05.2014
drop table `charges_petsizes`;
drop table `charges_runtypes`;
drop table `charges_settings`;

CREATE TABLE IF NOT EXISTS `charges_petsizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `pet_size_v` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '0',
  `full_day` float NOT NULL DEFAULT '0',
  `half_day` float NOT NULL DEFAULT '0',
  `from_weight` float NOT NULL DEFAULT '0',
  `to_weight` float NOT NULL DEFAULT '0',
  `run` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `charges_petsizes` (`id`, `status_id`, `pet_size_v`, `limit`, `full_day`, `half_day`, `from_weight`, `to_weight`, `run`) VALUES
(1, 1, 'Miniature', 55, 25, 18, 22, 55.33, 8),
(2, 1, 'Small', 23, 0, 0, 23, 40, 55),
(3, 1, 'Medium', 0, 0, 0, 50, 5.52, 50),
(4, 1, 'Big', 0, 0, 0, 0, 0, 3),
(5, 1, 'Large', 0, 0, 0, 56, 12, 0),
(6, 1, 'Extraordinary', 0, 0, 0, 41, 10, 0),
(7, 1, 'Superb', 50, 10, 2, 5, 7.55, 5);

CREATE TABLE IF NOT EXISTS `charges_runtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `runtype` varchar(255) NOT NULL,
  `limit` tinyint(4) NOT NULL,
  `full_day` float NOT NULL DEFAULT '0',
  `half_day` float NOT NULL DEFAULT '0',
  `override` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `charges_runtypes` (`id`, `status_id`, `runtype`, `limit`, `full_day`, `half_day`, `override`) VALUES
(1, 2, 'No Charge', 0, 0, 0, 1),
(2, 1, 'VIP', 5, 0, 0, 1),
(3, 1, 'Special runtype', 2, 0, 0, 0),
(4, 1, 'Special offer', 10, 20, 30, 0);

CREATE TABLE IF NOT EXISTS `charges_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n` varchar(255) NOT NULL,
  `v` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

INSERT INTO `charges_settings` (`id`, `n`, `v`) VALUES
(1, 'charge_type', 'charge_by_petsize'),
(2, 'surcharge_aggressive', '24.00'),
(3, 'surcharge_special_needs', '56.00'),
(4, 'surcharge_difficult', '42.00'),
(5, 'charge_meds_diets', 'charge_by_diets'),
(6, 'charge_fee_per_diets_diet', '52.00'),
(7, 'charge_fee_per_administration_diet', '23'),
(8, 'charge_fee_per_administration_meds', '60'),
(9, 'charge_fee_per_diets_meds', '120.00'),
(10, 'check_out_time', '16:20'),
(11, 'check_in_time', '10:30'),
(13, 'charge_24_hour', '1'),
(14, 'charge_after_checkout', '1'),
(15, 'charge_after_checkout_hours', '1'),
(16, 'charge_after_checkout_fee', '20.00'),
(17, 'charge_hour_after_checkout', '1'),
(18, 'charge_half_day_rate', '1'),
(19, 'charge_hour_after_checkout_fee', '50'),
(20, 'charge_half_day_rate_fee', '50'),
(21, 'deduct_daycare_from_existing_pass', '0'),
(22, 'charge_daycare_group_rate', '1'),
(23, 'half_day_from', '09:50'),
(24, 'half_day_to', '11:50'),
(25, 'full_day_from', '14:15'),
(26, 'full_half_day_to', '04:50'),
(27, 'is_full_day', '0'),
(28, 'is_half_day', '1'),
(29, 'charge_for_holidays', '1'),
(30, 'charge_aditional_for_holidays', '1'),
(31, 'charge_for_saturdays', '1'),
(32, 'charge_for_sundays', '1'),
(33, 'charge_aditional_for_holidays_fee', '20');



-- 31.05.2014
truncate table `charges_settings`;

INSERT INTO `charges_settings` (`id`, `n`, `v`) VALUES
(1, 'check_out_time', '09:20'),
(2, 'check_in_time', '12:20'),
(3, 'charge_24_hour', '1'),
(4, 'charge_hour_after_checkout_fee', '50'),
(5, 'charge_after_checkout_option', 'charge_holidays'),
(6, 'charge_aditional_for_holidays_fee', '20'),
(7, 'charge_half_day_checkout_fee', '15'),
(8, 'charge_for_saturdays', '1'),
(9, 'charge_for_sundays', '1'),
(10, 'charge_daycare_option', 'charge_daycare_deduct'),
(11, 'charge_daycare_deduct_fulldays', '1'),
(12, 'half_day_from', '08:00'),
(13, 'half_full_day_option', 'is_full_day'),
(14, 'half_day_to', '12:00'),
(15, 'full_day_from', '08:00'),
(16, 'full_half_day_to', '16:00'),
(17, 'charge_type', 'charge_by_runtype'),
(18, 'surcharge_difficult', '50.00'),
(19, 'surcharge_special_needs', '60.00'),
(20, 'surcharge_aggressive', '20.00'),
(21, 'charge_meds_diets', 'charge_by_administration'),
(22, 'charge_fee_per_diets_meds', '50.00'),
(23, 'charge_fee_per_diets_diet', '20.00'),
(24, 'charge_fee_per_administration_meds', '15.00'),
(25, 'charge_fee_per_administration_diet', '50.00');

-- 02.06.2014
CREATE TABLE IF NOT EXISTS `pet_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `pet_status` (`id`, `v`) VALUES
(1, 'Agressive'),
(2, 'Bully'),
(3, 'Good natured'),
(4, 'Handle with care'),
(5, 'Runner'),
(6, 'Dominant'),
(7, 'Whiner'),
(8, 'Fear biter');

ALTER TABLE `pets` ADD `pet_status_id` INT NOT NULL AFTER `pet_type_id` ;
ALTER TABLE `pets` CHANGE `pet_status_id` `pet_status_id` INT( 11 ) NULL ;
ALTER TABLE `pet_status` ADD `status_id` INT NOT NULL DEFAULT '1' AFTER `id` ;



-- 03.06.2014
CREATE TABLE IF NOT EXISTS `pet_vet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_id` int(11) DEFAULT NULL,
  `vet_id` int(11) DEFAULT NULL,
  `rabies` date DEFAULT NULL,
  `bordetella` date DEFAULT NULL,
  `d_h_l_p` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `vets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

ALTER TABLE `vets` ADD `status_id` INT NOT NULL DEFAULT '1' AFTER `id` ;

-- 04.06.2014
ALTER TABLE `pet_vet` ADD `status_id` INT NOT NULL DEFAULT '1' AFTER `id` ;



-- 10.06.2014
CREATE TABLE IF NOT EXISTS `r_boarding_stay_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `r_boarding_stay_reason` (`id`, `status_id`, `v`) VALUES
(1, 1, 'Rescue animal'),
(2, 1, 'Other'),
(3, 1, 'Vacation local'),
(4, 1, 'Vaction interstate'),
(5, 1, 'Vacation international'),
(6, 1, 'Vacation international'),
(7, 1, 'Renovating home'),
(8, 1, 'Moving or relocating');

ALTER TABLE `r_boarding` ADD `stay_reason_id` INT NOT NULL AFTER `pet_id` ;
ALTER TABLE `r_boarding` ADD `in_out` ENUM( 'in', 'out' ) NOT NULL DEFAULT 'in' AFTER `c_boarding_id` ;
ALTER TABLE `r_boarding` ADD `deposit` FLOAT NOT NULL AFTER `c_boarding_id` ;
ALTER TABLE `r_boarding` ADD `charge_type_id` INT NOT NULL AFTER `deposit` ;
ALTER TABLE `r_boarding` ADD `charge_type` ENUM( 'charge_by_petsize', 'charge_by_runtype' ) NOT NULL AFTER `deposit` ;
ALTER TABLE `r_boarding` ADD `client_id` INT NOT NULL AFTER `status_id` ;
insert into settings set n = 'layout_button_hover_bg_color', v = '#d40000', t = 'text';



-- 28.06.2014

CREATE TABLE IF NOT EXISTS `r_boarding_ss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

INSERT INTO `r_boarding_ss` (`id`, `status_id`, `v`, `price`) VALUES
(1, 1, 'Basic Obedience', 20),
(2, 1, 'Sunday Check in / out', 25),
(3, 1, 'Behaviour Training', 10),
(4, 1, 'Trip to the vet', 50),
(5, 1, 'Special needs', 3),
(6, 1, 'Airport trip', 50),
(7, 1, 'Bordetella Vaccine', 25);


CREATE TABLE IF NOT EXISTS `r_boarding_ss_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `r_boarding_id` int(11) NOT NULL,
  `r_boarding_ss_id` int(11) NOT NULL,
  `ss_price` float NOT NULL DEFAULT '0',
  `ss_times` int(11) NOT NULL,
  `ss_instructions` varchar(255) NOT NULL,
  `ss_exclude_checkin` tinyint(4) NOT NULL DEFAULT '0',
  `ss_exclude_checkout` tinyint(4) NOT NULL DEFAULT '0',
  `ss_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- 30.06.2014

ALTER TABLE `r_boarding` ADD `luggage` VARCHAR( 255 ) NOT NULL AFTER `c_boarding_id` ;
ALTER TABLE `r_boarding_ss_t` ADD `ss_everyday` TINYINT NOT NULL DEFAULT '0' AFTER `ss_date` ;

CREATE TABLE IF NOT EXISTS `meds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `meds` (`id`, `status_id`, `v`, `price`) VALUES
(1, 1, 'Ace', 0),
(2, 1, 'Advantage', 0),
(3, 1, 'Alcohol', 0),
(4, 1, 'Aller-G3', 0),
(5, 1, 'Amforal', 0),
(6, 1, 'Aminophyline', 0),
(7, 1, 'Amitriptyline', 0),
(8, 3, 'test', 0);

CREATE TABLE IF NOT EXISTS `r_boarding_meds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `r_boarding_id` int(11) NOT NULL,
  `med_id` int(11) NOT NULL,
  `med_type` varchar(25) NOT NULL,
  `med_dose_ml` varchar(255) NOT NULL,
  `med_dose_type` varchar(255) NOT NULL,
  `med_morning` tinyint(4) NOT NULL DEFAULT '0',
  `med_afternoon` tinyint(4) NOT NULL DEFAULT '0',
  `med_evening` tinyint(4) NOT NULL DEFAULT '0',
  `med_as_needed` tinyint(4) NOT NULL DEFAULT '0',
  `med_date` date NOT NULL,
  `med_everyday` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
ALTER TABLE `r_boarding_meds` ADD `med_instructions` VARCHAR( 255 ) NOT NULL AFTER `med_id` ;

CREATE TABLE IF NOT EXISTS `diets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `diets` (`id`, `status_id`, `v`, `price`) VALUES
(1, 1, 'Allpo canned', 0),
(2, 1, 'Allpo dry', 0),
(3, 1, 'Beneful dry', 0),
(4, 1, 'bil-jac dry', 0),
(5, 1, 'bil-jac frozen', 0);

CREATE TABLE IF NOT EXISTS `r_boarding_diets` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`status_id` int(11) NOT NULL DEFAULT '1',
`r_boarding_id` int(11) NOT NULL,
`diet_id` int(11) NOT NULL,
`diet_instructions` varchar(255) NOT NULL,
`diet_type` varchar(25) NOT NULL,
`diet_dose_ml` varchar(255) NOT NULL,
`diet_dose_type` varchar(255) NOT NULL,
`diet_morning` tinyint(4) NOT NULL DEFAULT '0',
`diet_afternoon` tinyint(4) NOT NULL DEFAULT '0',
`diet_evening` tinyint(4) NOT NULL DEFAULT '0',
`diet_as_needed` tinyint(4) NOT NULL DEFAULT '0',
`diet_date` date NOT NULL,
`diet_everyday` tinyint(4) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `meds_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `meds_type` (`id`, `status_id`, `v`) VALUES
(1, 1, 'pill'),
(2, 1, 'ointment'),
(3, 1, 'drop'),
(4, 1, 'liquid'),
(5, 1, 'injection');

CREATE TABLE IF NOT EXISTS `md_dosage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

INSERT INTO `md_dosage` (`id`, `status_id`, `v`) VALUES
(1, 1, '0.25'),
(2, 1, '0.50'),
(3, 1, '0.75'),
(4, 1, '1.00'),
(5, 1, '1.25'),
(6, 1, '1.50'),
(7, 1, '1.75'),
(8, 1, '2.00'),
(9, 1, '2.25'),
(10, 1, '2.50'),
(11, 1, '2.75'),
(12, 1, '3.00'),
(13, 1, '3.25'),
(14, 1, '3.50'),
(15, 1, '3.75'),
(16, 1, '4.00'),
(17, 1, '4.25'),
(18, 1, '4.50'),
(19, 1, '4.75'),
(20, 1, '5.00'),
(21, 1, '5.25'),
(22, 1, '5.50'),
(23, 1, '5.75'),
(24, 1, '6.00'),
(25, 1, '6.25'),
(26, 1, '6.50'),
(27, 1, '6.75'),
(28, 1, '7.00');

CREATE TABLE IF NOT EXISTS `md_dose_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

INSERT INTO `md_dose_type` (`id`, `status_id`, `v`) VALUES
(1, 1, 'cc'),
(2, 1, 'cup'),
(3, 1, 'day'),
(4, 1, 'drop'),
(5, 1, 'ml'),
(6, 1, 'pck'),
(7, 1, 'pill'),
(8, 1, 'pinch'),
(9, 1, 'spn'),
(10, 1, 'strip');

CREATE TABLE IF NOT EXISTS `diets_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `diets_type` (`id`, `status_id`, `v`) VALUES
(1, 1, 'liquid'),
(2, 1, 'solid'),
(3, 1, 'can'),
(4, 1, 'own food'),
(5, 1, 'dry');

ALTER TABLE `r_boarding_meds` CHANGE `med_type` `med_type_id` INT NOT NULL ;
ALTER TABLE `r_boarding_meds` CHANGE `med_dose_ml` `med_dosage_id` INT NOT NULL ;
ALTER TABLE `r_boarding_meds` CHANGE `med_dose_type` `med_dose_type_id` INT NOT NULL ;

ALTER TABLE `r_boarding_diets` CHANGE `diet_type` `diet_type_id` INT NOT NULL ;
ALTER TABLE `r_boarding_diets` CHANGE `diet_dose_ml` `diet_dosage_id` INT NOT NULL ;
ALTER TABLE `r_boarding_diets` CHANGE `diet_dose_type` `diet_dose_type_id` INT NOT NULL ;



-- 11.07.2014

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `k` varchar(255) NOT NULL,
  `en` text NOT NULL,
  `fr` text NOT NULL,
  `de` text NOT NULL,
  `it` text NOT NULL,
  `pt` text NOT NULL,
  `es` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

INSERT INTO `languages` (`id`, `k`, `en`, `fr`, `de`, `it`, `pt`, `es`) VALUES
(1, 'billing_details', 'Billing details', '', '', '', '', 'Detalii de facturare'),
(2, 'date', 'Date', '', '', '', '', ''),
(3, 'customer', 'Customer', '', '', '', '', ''),
(4, 'in', 'In', '', '', '', '', ''),
(5, 'out', 'Out', '', '', '', '', ''),
(6, 'boarding', 'Boarding', '', '', '', '', ''),
(7, 'no_days', 'No. days', '', '', '', '', ''),
(8, 'day', 'day', '', '', '', '', ''),
(9, 'services', 'Services', '', '', '', '', ''),
(10, 'medication', 'Medication', '', '', '', '', ''),
(11, 'morning', 'morning', '', '', '', '', ''),
(12, 'afternoon', 'afternoon', '', '', '', '', ''),
(13, 'evening', 'evening', '', '', '', '', ''),
(14, 'as_needed', 'as needed', '', '', '', '', ''),
(15, 'everyday', 'everyday', '', '', '', '', ''),
(16, 'days', 'days', '', '', '', '', ''),
(17, 'diets', 'Diets', '', '', '', '', ''),
(18, 'sub_total', 'Sub-total', '', '', '', '', ''),
(19, 'tax', 'Tax', '', '', '', '', ''),
(20, 'deposits', 'Deposits', '', '', '', '', ''),
(21, 'pending', 'Pending', '', '', '', '', ''),
(22, 'total', 'Total', '', '', '', '', ''),
(23, 'pp_thank_you_for_boarding', 'Thank you for boarding with us, <br /> Come back again !', '', '', '', '', ''),
(24, 'pet_name', 'Pet name', '', '', '', '', '');

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` varchar(255) NOT NULL,
  `language` varchar(16) NOT NULL,
  `params` text NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



-- 12.09.2014

ALTER TABLE `r_boarding` ADD `report_id` INT NOT NULL AFTER `in_out` ;
ALTER TABLE `reports` ADD `date_modified` TIMESTAMP NOT NULL AFTER `date_created` ;
INSERT INTO `k9`.`settings` (`id` ,`status_id` ,`n` ,`v` ,`t` ,`j`) VALUES (NULL , '1', 'languages', '[{"lang":"en","text":"English"},{"lang":"fr","text":"French"},{"lang":"de","text":"German"},{"lang":"it","text":"Italian"},{"lang":"pt","text":"Portuguese"},{"lang":"es","text":"Spanish"}]', 'text', '');

CREATE TABLE IF NOT EXISTS `payment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `payment_types` (`id`, `status_id`, `v`) VALUES
(1, 1, 'CA'),
(2, 1, 'CK'),
(3, 1, 'VI'),
(4, 1, 'MC'),
(5, 1, 'DC'),
(6, 1, 'AX'),
(7, 1, 'DE'),
(8, 1, 'GC');

INSERT INTO `k9`.`settings` (`id` ,`status_id` ,`n` ,`v` ,`t` ,`j`) VALUES (NULL , '1', 'default_language', 'en', 'text', '');
INSERT INTO `k9`.`settings` (`id`, `status_id`, `n`, `v`, `t`, `j`) VALUES (NULL, '1', 'default_payment_type_id', '1', 'array', 'payment_types');

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_status_id` int(11) NOT NULL DEFAULT '1',
  `payment` varchar(255) NOT NULL,
  `report_id` int(11) NOT NULL,
  `information` text NOT NULL,
  `amount` float NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `payment_status` (`id`, `status_id`, `v`) VALUES
(1, 1, 'Active'),
(2, 1, 'Inactive'),
(3, 1, 'Deleted'),
(4, 1, 'Pending'),
(5, 1, 'Processed');

ALTER TABLE `r_boarding` ADD `date_out_checkout` DATE NOT NULL AFTER `time_out` ;
ALTER TABLE `r_boarding` ADD `time_out_checkout` TIME NOT NULL AFTER `date_out_checkout` ;

-- 14.07.2014
UPDATE `k9`.`settings` SET `n` = 'image_logo_id' WHERE `settings`.`n` = 'image_logo';


-- 30.07.2014
ALTER TABLE `client_status` ADD `status_id` INT NOT NULL DEFAULT '1' AFTER `id` ;
ALTER TABLE `charges_petsizes` CHANGE `pet_size_v` `v` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ;
ALTER TABLE `charges_runtypes` CHANGE `runtype` `v` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ;

-- 06.08.2014
ALTER TABLE `vets` CHANGE `name` `v` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ;





-- 11.08.2014
CREATE TABLE IF NOT EXISTS `client_survey_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `client_survey_income` (`id`, `status_id`, `v`) VALUES
(1, 1, '$250,000 and higher'),
(2, 1, '$150,000 to $250,000'),
(3, 1, '$100,000 to $150,000'),
(4, 1, '$75,000 to $100,000'),
(5, 1, '$60,000 to $75,000'),
(6, 1, '$45,000 to $60,000'),
(7, 1, '$30,000 to $45,000'),
(8, 1, 'Less than $30,000');

CREATE TABLE IF NOT EXISTS `client_survey_findout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `is_refferal` int(11) NOT NULL DEFAULT '0',
  `v` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

INSERT INTO `client_survey_findout` (`id`, `status_id`, `is_refferal`, `v`) VALUES
(1, 1, 0, 'Animal Clinic'),
(2, 1, 0, 'Coupon Book'),
(3, 1, 0, 'Drive by'),
(4, 1, 0, 'Flyer'),
(5, 1, 1, 'Friend referral'),
(6, 1, 0, 'Internet search'),
(7, 1, 0, 'Mascott dog on 41'),
(8, 1, 0, 'Newspaper'),
(9, 1, 0, 'No answer given'),
(10, 1, 0, 'Other'),
(11, 1, 0, 'Party in the park'),
(12, 1, 0, 'Radio'),
(13, 1, 0, 'Rescue event'),
(14, 1, 0, 'Veterinarian'),
(15, 1, 0, 'Yellow Pages');

CREATE TABLE IF NOT EXISTS `clients_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `client_id` int(11) DEFAULT NULL,
  `reffered_client_id` int(11) DEFAULT NULL,
  `client_survey_income_id` int(11) DEFAULT NULL,
  `client_survey_findout_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 12.08.2014
ALTER TABLE `pet_color` DROP `hex` ;
ALTER TABLE `clients` DROP `pet_id` ;

-- 25.08.2014
CREATE TABLE IF NOT EXISTS `groomers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `status_id` int(11) NOT NULL DEFAULT '1',
    `image_id` int(11) NOT NULL,
    `first_name` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `phone` varchar(255) NOT NULL,
    `cell` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `street` varchar(255) NOT NULL,
    `city` varchar(255) NOT NULL,
    `state` varchar(255) NOT NULL,
    `zip` varchar(255) NOT NULL,
    `mon` tinyint(4) NOT NULL DEFAULT '1',
    `mon_in` time NOT NULL DEFAULT '08:00',
    `mon_out` time NOT NULL DEFAULT '18:00',
    `tue` tinyint(4) NOT NULL DEFAULT '1',
    `tue_in` time NOT NULL DEFAULT '08:00',
    `tue_out` time NOT NULL DEFAULT '18:00',
    `wed` tinyint(4) NOT NULL DEFAULT '1',
    `wed_in` time NOT NULL DEFAULT '08:00',
    `wed_out` time NOT NULL DEFAULT '18:00',
    `thu` tinyint(4) NOT NULL DEFAULT '1',
    `thu_in` time NOT NULL DEFAULT '08:00',
    `thu_out` time NOT NULL DEFAULT '18:00',
    `fri` tinyint(4) NOT NULL DEFAULT '1',
    `fri_in` time NOT NULL DEFAULT '08:00',
    `fri_out` time NOT NULL DEFAULT '18:00',
    `sat` tinyint(4) NOT NULL DEFAULT '0',
    `sat_in` time NOT NULL DEFAULT '08:00',
    `sat_out` time NOT NULL DEFAULT '18:00',
    `sun` tinyint(4) NOT NULL DEFAULT '0',
    `sun_in` time NOT NULL DEFAULT '08:00',
    `sun_out` time NOT NULL DEFAULT '18:00',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `grooming_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  `multiplier` float NOT NULL DEFAULT '0',
  `change_price` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `grooming_types` (`id`, `status_id`, `v`, `multiplier`, `change_price`) VALUES
(1, 1, 'Bad shape', 2, 1),
(2, 1, 'Good shape', 0.5, 0),
(3, 1, 'Heavily matted', 1.5, 1),
(4, 1, 'Tidy up', 0, 0),
(5, 1, 'Shave', 0, 0),
(6, 1, 'Full groom', 0, 0),
(7, 1, 'Special', 0.3, 1),
(8, 1, 'De-matting', 1, 1);

CREATE TABLE IF NOT EXISTS `grooming_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `v` varchar(255) NOT NULL,
  `miniature` float NOT NULL,
  `small` float NOT NULL,
  `medium` float NOT NULL,
  `med_lg` float NOT NULL,
  `large` float NOT NULL,
  `giant` float NOT NULL,
  `cat` float NOT NULL,
  `sand` float NOT NULL,
  `other` float NOT NULL,
  `hcp` float NOT NULL,
  `in_use` tinyint(4) NOT NULL DEFAULT '1',
  `type` enum('bath','hair_cut') NOT NULL DEFAULT 'bath',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

INSERT INTO `grooming_services` (`id`, `status_id`, `v`, `miniature`, `small`, `medium`, `med_lg`, `large`, `giant`, `cat`, `sand`, `other`, `hcp`, `in_use`, `type`) VALUES
(1, 1, 'Nails', 10, 10, 10, 10, 10, 15, 12, 0, 0, 10, 1, 'bath'),
(2, 1, 'Ears', 5, 5, 5, 5, 5, 5, 0, 0, 0, 10, 1, 'bath'),
(3, 1, 'Front line flea', 9.99, 9.99, 9.99, 9.99, 9.99, 9.99, 0, 0, 0, 10, 1, 'bath'),
(4, 1, 'Conditioner', 3, 3, 5, 5, 5, 5, 0, 0, 0, 10, 1, 'bath'),
(5, 1, 'Hypo-alergenic', 5, 5, 5, 5, 5, 5, 0, 0, 0, 10, 1, 'bath'),
(6, 1, 'Flea & tic dip', 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1, 'hair_cut'),
(7, 1, 'Furminator shampo', 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1, 'hair_cut'),
(8, 1, 'De-sheding', 15, 15, 20, 20, 25, 30, 0, 0, 0, 0, 1, 'hair_cut'),
(9, 1, 'De-matting', 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1, 'hair_cut');

ALTER TABLE `r_grooms` ADD `groomer_id` INT NOT NULL AFTER `c_grooms_id` ,
ADD `service_type` ENUM( 'bath', 'hair_cut' ) NULL DEFAULT NULL AFTER `groomer_id` ,
ADD `grooming_type_id` INT NOT NULL AFTER `service_type` ,
ADD `multiplier` FLOAT NOT NULL DEFAULT '0' AFTER `grooming_type_id` ,
ADD `gs_array` VARCHAR( 255 ) NOT NULL AFTER `multiplier` ;




-- 04.09.2014
CREATE TABLE IF NOT EXISTS `retail_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `class_name` varchar(255) NOT NULL,
  `margin` tinyint(4) NOT NULL DEFAULT '0',
  `markup` tinyint(4) NOT NULL DEFAULT '0',
  `sale` tinyint(4) NOT NULL DEFAULT '0',
  `damage` tinyint(4) NOT NULL DEFAULT '0',
  `whole` tinyint(4) NOT NULL DEFAULT '0',
  `comp` tinyint(4) NOT NULL DEFAULT '0',
  `employee` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `retail_classes`
--

INSERT INTO `retail_classes` (`id`, `status_id`, `class_name`, `margin`, `markup`, `sale`, `damage`, `whole`, `comp`, `employee`) VALUES
(1, 1, 'Accessories', 0, 50, 10, 20, 20, 100, 10),
(2, 1, 'Animal Medic Inc', 20, 0, 10, 20, 0, 100, 7),
(3, 1, 'Artemis', 25, 0, 10, 20, 0, 100, 7),
(4, 1, 'Beds for pets', 30, 0, 10, 20, 0, 100, 7),
(5, 1, 'Cloud star', 25, 0, 10, 20, 0, 100, 15),
(6, 1, 'Juice', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `retail_inventory`
--

CREATE TABLE IF NOT EXISTS `retail_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `at` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `tax` tinyint(4) NOT NULL DEFAULT '1',
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `retail_inventory`
--

INSERT INTO `retail_inventory` (`id`, `status_id`, `product_code`, `product_name`, `price`, `quantity`, `at`, `to`, `tax`, `class_id`) VALUES
(1, 1, '12312534-15747', 'Ear cleaning (cat)', 5, 3, 0, 0, 0, 4),
(2, 1, '65789-4967', 'Something cool', 20, 0, 0, 0, 1, 2),
(3, 1, '134968997', 'CocaCola', 23.5, 10, 0, 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `retail_vendors`
--

CREATE TABLE IF NOT EXISTS `retail_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `alt_contact` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `alt_phone` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `terms` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `retail_vendors`
--

INSERT INTO `retail_vendors` (`id`, `status_id`, `name`, `account`, `contact`, `alt_contact`, `street`, `city`, `state`, `zip`, `phone`, `fax`, `alt_phone`, `other`, `terms`, `comments`, `website`, `email`) VALUES
(1, 1, 'TODORESCU LTD', '49123987', '(452) 123-4567', '', 'str. Tudor Vladimirescu nr. 62', 'Alba Iulia', 'AB', '510167', '0740815174', '', '', '', 'Niste termeni si conditii', 'Niste comentarii', 'http://www.google.com', 'fishbonezul@yahoo.com'),
(2, 1, 'BOLCA DORIAN SERVICES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `retail_vi`
--

CREATE TABLE IF NOT EXISTS `retail_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `retail_vendor_id` int(11) NOT NULL,
  `retail_inventory_id` int(11) NOT NULL,
  `our_cost` float NOT NULL DEFAULT '0',
  `reorder_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `retail_vi`
--

INSERT INTO `retail_vi` (`id`, `status_id`, `retail_vendor_id`, `retail_inventory_id`, `our_cost`, `reorder_number`) VALUES
(7, 1, 1, 2, 20, 0),
(8, 1, 2, 3, 10, 0);

-- 22.09.2014
ALTER TABLE `payments` ADD `payment_type_id` INT NOT NULL AFTER `id`;
ALTER TABLE `payments` ADD `payment_amount` FLOAT NOT NULL AFTER `payment_status_id`;
ALTER TABLE `payments` DROP `amount`;
ALTER TABLE `payments` ADD `client_id` INT NOT NULL AFTER `payment`;
insert into `settings` set `n` = 'report_image_id', `v` = '1', `t` = 'array', `j` = 'files';




-- 14.10.2014
CREATE TABLE IF NOT EXISTS `training_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL,
  `v` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `limit` int(11) NOT NULL,
  `instructions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `training_groups` (`id`, `status_id`, `rank`, `v`, `price`, `limit`, `instructions`) VALUES
(1, 1, 0, 'Kindergarten Puppy', 55, 10, ''),
(2, 1, 1, 'Beginning', 70, 10, '\r\n'),
(3, 1, 2, 'Intermediate', 125, 10, '');

CREATE TABLE IF NOT EXISTS `training_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `tg_id` int(11) NOT NULL,
  `v` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `training_options` (`id`, `status_id`, `tg_id`, `v`, `description`, `price`) VALUES
(5, 1, 2, 'Something', '- short description -', 10),
(8, 1, 2, 'Other stuff', '', 20);

CREATE TABLE IF NOT EXISTS `trainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `image_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cell` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `trainers` (`id`, `status_id`, `image_id`, `first_name`, `last_name`, `phone`, `cell`, `email`, `street`, `city`, `state`, `zip`) VALUES
(1, 1, 0, 'Todorescu', 'Tudor', '0740815174', '0325123156', 'todorescu.tudor@example.com', 'T. Alexandri nr. 62', 'Alba Iulia', 'Alba', '510167');



-- 17.10.2014
drop table trainers;
drop table training_groups;
drop table training_options;

CREATE TABLE IF NOT EXISTS `trainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `image_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cell` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `trainers` (`id`, `status_id`, `image_id`, `first_name`, `last_name`, `phone`, `cell`, `email`, `street`, `city`, `state`, `zip`) VALUES
(1, 1, 112, 'Todorescu', 'Tudor', '(123) 456-7890', '(123) 456-7890', 'todorescu.tudor@example.com', 'T. Alexandri nr. 62', 'Alba Iuliaa', 'Alba', '510167\r\n'),
(2, 1, 0, 'Dorian', 'Bolca', '', '', '', '', '', '', '');

CREATE TABLE IF NOT EXISTS `training_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL,
  `v` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `limit` int(11) NOT NULL,
  `instructions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `training_groups` (`id`, `status_id`, `rank`, `v`, `price`, `limit`, `instructions`) VALUES
(1, 1, 0, 'Kindergarten Puppy', 55.2, 90, ''),
(2, 1, 1, 'Beginning', 70, 10, ''),
(3, 1, 2, 'Intermediate', 125, 10, ''),
(4, 3, 2, 'asd', 12, 1, 'aac');

CREATE TABLE IF NOT EXISTS `training_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `tg_id` int(11) NOT NULL,
  `v` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `training_options` (`id`, `status_id`, `tg_id`, `v`, `description`, `price`) VALUES
(5, 1, 2, 'Something', '- short description -', 10),
(8, 1, 2, 'Other stuff', '', 20);

CREATE TABLE IF NOT EXISTS `training_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `tg_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `time_duration` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

INSERT INTO `training_schedule` (`id`, `status_id`, `tg_id`, `t_id`, `date_start`, `date_end`, `time_duration`) VALUES
(1, 1, 2, 1, '2014-10-15', '2014-10-09', '10:00:00'),
(2, 1, 1, 2, '2014-10-10', '0000-00-00', '00:00:50'),
(3, 1, 2, 1, '2014-10-08', '2014-10-08', '09:00:00'),
(4, 1, 1, 2, '2014-10-16', '2014-10-17', '08:05:00'),
(5, 1, 3, 1, '2014-10-07', '2014-10-07', '15:05:00'),
(6, 3, 3, 1, '2014-10-07', '2014-10-07', '15:05:00'),
(7, 1, 1, 1, '2014-10-17', '2014-10-17', '09:50:00');















-- 21.10.14

CREATE TABLE IF NOT EXISTS `daycare_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `v` varchar(25) NOT NULL,
  `day_rate` float NOT NULL,
  `limit` int(11) NOT NULL,
  `hour_rate` float NOT NULL,
  `group_as_id` int(11) NOT NULL,
  `halfday_rate` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `daycare_groups` (`id`, `status_id`, `v`, `day_rate`, `limit`, `hour_rate`, `group_as_id`, `halfday_rate`) VALUES
(1, 1, 'Daycare', 25, 10, 0, 0, 26),
(2, 1, 'None', 0, 100, 0, 0, 0),
(3, 3, 'asdad', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `daycare_settings`
--

CREATE TABLE IF NOT EXISTS `daycare_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n` varchar(255) NOT NULL,
  `v` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

INSERT INTO `daycare_settings` (`id`, `n`, `v`) VALUES
(1, 'halfday_rate_type', 'before_hour'),
(2, 'before_hour_value', '08:55'),
(3, 'less_than_nr_hours_value', '2'),
(4, 'fast_checkin', '1'),
(5, 'default_to_charge_per_hour', '0'),
(6, 'hours_rounding', '3'),
(7, 'over_1_day_penalty', '20'),
(8, 'default_daycare_group', '2'),
(9, 'r_halfday_rate_type', 'less_than_nr_hours'),
(10, 'rvt_before_hour', '10:00'),
(11, 'rvs_less_than_nr_hours', '4'),
(12, 'c_fast_checkin', '1'),
(13, 'c_default_to_charge_per_hour', '0'),
(14, 'sh_hours_rounding', '2'),
(15, 't_over_1_day_penalty', '20'),
(16, 'se_default_daycare_group', '1'),
(17, 'sh_check_groups_limit', '1'),
(18, 'c_print_collar_automatically', '1'),
(19, 'se_prefered_group', '1');


-- 22.10.2014
RENAME TABLE c_boarding TO boarding_centers;
RENAME TABLE c_daycare TO daycare_centers;
RENAME TABLE c_grooms TO grooms_centers;
RENAME TABLE c_training TO training_centers;

ALTER TABLE `r_boarding` CHANGE `c_boarding_id` `boarding_center_id` INT( 11 ) NULL DEFAULT NULL ;
ALTER TABLE `r_grooms` CHANGE `c_grooms_id` `grooms_center_id` INT( 11 ) NULL DEFAULT NULL ;
ALTER TABLE `r_daycare` CHANGE `c_daycare_id` `daycare_center_id` INT( 11 ) NULL DEFAULT NULL ;
ALTER TABLE `r_training` CHANGE `c_training_id` `training_center_id` INT( 11 ) NULL DEFAULT NULL ;




DROP TABLE r_boarding_settings;
DROP TABLE r_daycare;
CREATE TABLE IF NOT EXISTS `r_daycare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) DEFAULT '1',
  `pet_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `daycare_center_id` int(11) DEFAULT NULL,
  `daycare_group_id` int(11) NOT NULL,
  `date_in` date DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- 27.10.2014
ALTER TABLE `r_boarding_ss_t` CHANGE `r_boarding_ss_id` `ss_id` INT( 11 ) NOT NULL ;
RENAME TABLE r_boarding_ss TO schedule_services;
RENAME TABLE r_boarding_ss_t TO r_boarding_ss;
RENAME TABLE r_boarding_stay_reason TO stay_reasons;

-- 29.10.2014
ALTER TABLE `r_grooms` ADD `client_id` INT NOT NULL AFTER `status_id` ;
drop table r_settings;
ALTER TABLE `schedule_services` ADD `commission_percentage` FLOAT NOT NULL DEFAULT '0' AFTER `price` ;
ALTER TABLE `retail_inventory` ADD `commission_percentage` FLOAT NOT NULL DEFAULT '0' AFTER `class_id` ;
ALTER TABLE `trainers` ADD `commission_percentage` FLOAT NOT NULL DEFAULT '0' AFTER `zip` ;
ALTER TABLE `groomers` ADD `commission_percentage` FLOAT NOT NULL DEFAULT '0' AFTER `sun_out` ;
INSERT INTO `k9`.`charges_settings` (`id` ,`n` ,`v`) VALUES (NULL , 'commissions_new_customers_board', '50');
insert into client_status set v = 'No show';
insert into client_status set v = 'Low';
insert into client_status set v = 'Mid';
insert into client_status set v = 'High';



-- 02.11.2014
ALTER TABLE `clients` ADD `contact_work_phone` VARCHAR( 120 ) NOT NULL AFTER `contact_phone` ;
ALTER TABLE `r_boarding` CHANGE `date_out_checkout` `date_out_checkout` DATE NULL ;
ALTER TABLE `r_boarding` CHANGE `time_out_checkout` `time_out_checkout` TIME NULL ;
drop table `daycare_centers`;

ALTER TABLE `r_daycare` DROP `daycare_center_id` ;
CREATE TABLE IF NOT EXISTS `checkin_daycare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `daycare_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- 05.11.14
ALTER TABLE `pets` ADD `special_instructions` TEXT NOT NULL AFTER `dob` ;
RENAME TABLE checkin_daycare TO records_daycare;

CREATE TABLE IF NOT EXISTS `records_boarding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `charge_type` enum('charge_by_petsize','charge_by_runtype') NOT NULL,
  `charge_type_id` int(11) NOT NULL,
  `is_handle_carefully` tinyint(4) NOT NULL DEFAULT '0',
  `is_extra_pet` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `records_daycare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `daycare_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `records_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `ss_id` int(11) NOT NULL,
  `no_charges` tinyint(4) NOT NULL,
  `is_every_day` tinyint(4) NOT NULL DEFAULT '1',
  `is_every_other_day` tinyint(4) NOT NULL DEFAULT '0',
  `is_checkin_date` tinyint(4) NOT NULL DEFAULT '0',
  `is_checkout_date` tinyint(4) NOT NULL DEFAULT '0',
  `schedule` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- 06.11.14
CREATE TABLE IF NOT EXISTS `records_grooming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `g_id` int(11) DEFAULT NULL,
  `gs_ids` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 13.11.14
CREATE TABLE IF NOT EXISTS `records_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `trainer_notepad` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `records_meds_diets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` tinyint(4) NOT NULL DEFAULT '1',
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `type` enum('meds','diets') NOT NULL,
  `md_id` int(11) NOT NULL,
  `md_instructions` text NOT NULL,
  `md_type_id` int(11) NOT NULL,
  `md_dosage_id` int(11) NOT NULL,
  `md_dose_type_id` int(11) NOT NULL,
  `md_morning` tinyint(4) NOT NULL DEFAULT '0',
  `md_afternoon` tinyint(4) NOT NULL DEFAULT '0',
  `md_evening` tinyint(4) NOT NULL DEFAULT '0',
  `md_as_needed` tinyint(4) NOT NULL DEFAULT '0',
  `md_date` int(11) NOT NULL,
  `md_everyday` tinyint(4) NOT NULL DEFAULT '0',
  `md_only_daycare` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 25.11.2014
DROP TABLE k9_first.users_details;
DROP TABLE k9_simple.users_details;

-- 05.12.2014
ALTER TABLE `charges_petsizes` CHANGE `limit` `limits` INT( 11 ) NOT NULL DEFAULT '0';
ALTER TABLE `charges_runtypes` CHANGE `limit` `limits` INT( 11 ) NOT NULL DEFAULT '0';
























