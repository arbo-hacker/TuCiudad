-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.15-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema auto
--


USE ga000624_auto;

--
-- Table structure for table `auto`.`nuke_authors`
--

DROP TABLE IF EXISTS `nuke_authors`;
CREATE TABLE `nuke_authors` (
  `aid` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `name` varchar(50) collate latin1_spanish_ci default NULL,
  `url` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `pwd` varchar(40) collate latin1_spanish_ci default NULL,
  `counter` int(11) NOT NULL default '0',
  `radminarticle` tinyint(2) NOT NULL default '0',
  `radmintopic` tinyint(2) NOT NULL default '0',
  `radminuser` tinyint(2) NOT NULL default '0',
  `radminsurvey` tinyint(2) NOT NULL default '0',
  `radminlink` tinyint(2) NOT NULL default '0',
  `radminfaq` tinyint(2) NOT NULL default '0',
  `radmindownload` tinyint(2) NOT NULL default '0',
  `radminreviews` tinyint(2) NOT NULL default '0',
  `radminnewsletter` tinyint(2) NOT NULL default '0',
  `radminforum` tinyint(2) NOT NULL default '0',
  `radmincontent` tinyint(2) NOT NULL default '0',
  `radminency` tinyint(2) NOT NULL default '0',
  `radminsuper` tinyint(2) NOT NULL default '1',
  `admlanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_authors`
--

/*!40000 ALTER TABLE `nuke_authors` DISABLE KEYS */;
INSERT INTO `nuke_authors` (`aid`,`name`,`url`,`email`,`pwd`,`counter`,`radminarticle`,`radmintopic`,`radminuser`,`radminsurvey`,`radminlink`,`radminfaq`,`radmindownload`,`radminreviews`,`radminnewsletter`,`radminforum`,`radmincontent`,`radminency`,`radminsuper`,`admlanguage`) VALUES 
 ('ArBo_HaCkEr','God','http://localhost/php/','arbo@arbo.com.ve','e6f6778b2c3cd029cdabab154b8d147f',0,0,0,0,0,0,0,0,0,0,0,0,0,1,'');
/*!40000 ALTER TABLE `nuke_authors` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_autonews`
--

DROP TABLE IF EXISTS `nuke_autonews`;
CREATE TABLE `nuke_autonews` (
  `anid` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `aid` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(80) collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(19) collate latin1_spanish_ci NOT NULL default '',
  `hometext` text collate latin1_spanish_ci NOT NULL,
  `bodytext` text collate latin1_spanish_ci NOT NULL,
  `topic` int(3) NOT NULL default '1',
  `informant` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `notes` text collate latin1_spanish_ci NOT NULL,
  `ihome` int(1) NOT NULL default '0',
  `alanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `acomm` int(1) NOT NULL default '0',
  `associated` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`anid`),
  KEY `anid` (`anid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_autonews`
--

/*!40000 ALTER TABLE `nuke_autonews` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_autonews` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_banned_ip`
--

DROP TABLE IF EXISTS `nuke_banned_ip`;
CREATE TABLE `nuke_banned_ip` (
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(15) collate latin1_spanish_ci NOT NULL default '',
  `reason` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_banned_ip`
--

/*!40000 ALTER TABLE `nuke_banned_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_banned_ip` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_banner`
--

DROP TABLE IF EXISTS `nuke_banner`;
CREATE TABLE `nuke_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `clickurl` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  `alttext` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `date` datetime default NULL,
  `dateend` datetime default NULL,
  `type` tinyint(1) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_banner`
--

/*!40000 ALTER TABLE `nuke_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_banner` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bannerclient`
--

DROP TABLE IF EXISTS `nuke_bannerclient`;
CREATE TABLE `nuke_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `contact` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `login` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `passwd` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `extrainfo` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bannerclient`
--

/*!40000 ALTER TABLE `nuke_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bannerclient` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbauth_access`
--

DROP TABLE IF EXISTS `nuke_bbauth_access`;
CREATE TABLE `nuke_bbauth_access` (
  `group_id` mediumint(8) NOT NULL default '0',
  `forum_id` smallint(5) unsigned NOT NULL default '0',
  `auth_view` tinyint(1) NOT NULL default '0',
  `auth_read` tinyint(1) NOT NULL default '0',
  `auth_post` tinyint(1) NOT NULL default '0',
  `auth_reply` tinyint(1) NOT NULL default '0',
  `auth_edit` tinyint(1) NOT NULL default '0',
  `auth_delete` tinyint(1) NOT NULL default '0',
  `auth_sticky` tinyint(1) NOT NULL default '0',
  `auth_announce` tinyint(1) NOT NULL default '0',
  `auth_vote` tinyint(1) NOT NULL default '0',
  `auth_pollcreate` tinyint(1) NOT NULL default '0',
  `auth_attachments` tinyint(1) NOT NULL default '0',
  `auth_mod` tinyint(1) NOT NULL default '0',
  KEY `group_id` (`group_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbauth_access`
--

/*!40000 ALTER TABLE `nuke_bbauth_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbauth_access` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbbanlist`
--

DROP TABLE IF EXISTS `nuke_bbbanlist`;
CREATE TABLE `nuke_bbbanlist` (
  `ban_id` mediumint(8) unsigned NOT NULL auto_increment,
  `ban_userid` mediumint(8) NOT NULL default '0',
  `ban_ip` varchar(8) collate latin1_spanish_ci NOT NULL default '',
  `ban_email` varchar(255) collate latin1_spanish_ci default NULL,
  `ban_time` int(11) default NULL,
  `ban_expire_time` int(11) default NULL,
  `ban_by_userid` mediumint(8) default NULL,
  `ban_priv_reason` text collate latin1_spanish_ci,
  `ban_pub_reason_mode` tinyint(1) default NULL,
  `ban_pub_reason` text collate latin1_spanish_ci,
  PRIMARY KEY  (`ban_id`),
  KEY `ban_ip_user_id` (`ban_ip`,`ban_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbbanlist`
--

/*!40000 ALTER TABLE `nuke_bbbanlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbbanlist` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbcategories`
--

DROP TABLE IF EXISTS `nuke_bbcategories`;
CREATE TABLE `nuke_bbcategories` (
  `cat_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_title` varchar(100) collate latin1_spanish_ci default NULL,
  `cat_order` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_order` (`cat_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbcategories`
--

/*!40000 ALTER TABLE `nuke_bbcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbcategories` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbconfig`
--

DROP TABLE IF EXISTS `nuke_bbconfig`;
CREATE TABLE `nuke_bbconfig` (
  `config_name` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `config_value` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbconfig`
--

/*!40000 ALTER TABLE `nuke_bbconfig` DISABLE KEYS */;
INSERT INTO `nuke_bbconfig` (`config_name`,`config_value`) VALUES 
 ('config_id','1'),
 ('board_disable','0'),
 ('sitename','MiSitio.com'),
 ('site_desc',''),
 ('cookie_name','phpbb2mysql'),
 ('cookie_path','/'),
 ('cookie_domain','MiSitio.com'),
 ('cookie_secure','0'),
 ('session_length','3600'),
 ('allow_html','1'),
 ('allow_html_tags','b,i,u,pre'),
 ('allow_bbcode','1'),
 ('allow_smilies','1'),
 ('allow_sig','1'),
 ('allow_namechange','0'),
 ('allow_theme_create','0'),
 ('allow_avatar_local','1'),
 ('allow_avatar_remote','0'),
 ('allow_avatar_upload','0'),
 ('override_user_style','1'),
 ('posts_per_page','15'),
 ('topics_per_page','50'),
 ('hot_threshold','25'),
 ('max_poll_options','10'),
 ('max_sig_chars','255'),
 ('max_inbox_privmsgs','100'),
 ('max_sentbox_privmsgs','100'),
 ('max_savebox_privmsgs','100'),
 ('board_email_sig','Gracias, Webmaster@MiSitio.com'),
 ('board_email','Webmaster@MiSitio.com'),
 ('smtp_delivery','0'),
 ('smtp_host',''),
 ('require_activation','0'),
 ('flood_interval','15'),
 ('board_email_form','0');
INSERT INTO `nuke_bbconfig` (`config_name`,`config_value`) VALUES 
 ('avatar_filesize','6144'),
 ('avatar_max_width','80'),
 ('avatar_max_height','80'),
 ('avatar_path','modules/Forums/images/avatars'),
 ('avatar_gallery_path','modules/Forums/images/avatars'),
 ('smilies_path','modules/Forums/images/smiles'),
 ('default_style','1'),
 ('default_dateformat','D M d, Y g:i a'),
 ('board_timezone','10'),
 ('prune_enable','0'),
 ('privmsg_disable','0'),
 ('gzip_compress','0'),
 ('coppa_fax',''),
 ('coppa_mail',''),
 ('board_startdate','1013908210'),
 ('default_lang','spanish'),
 ('smtp_username',''),
 ('smtp_password',''),
 ('record_online_users','2'),
 ('record_online_date','1034668530'),
 ('server_name','MiSitio.com'),
 ('server_port','80'),
 ('script_path','/modules/Forums/'),
 ('version','.0.10'),
 ('enable_confirm','0'),
 ('sendmail_fix','0');
/*!40000 ALTER TABLE `nuke_bbconfig` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbdisallow`
--

DROP TABLE IF EXISTS `nuke_bbdisallow`;
CREATE TABLE `nuke_bbdisallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL auto_increment,
  `disallow_username` varchar(25) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbdisallow`
--

/*!40000 ALTER TABLE `nuke_bbdisallow` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbdisallow` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbforum_prune`
--

DROP TABLE IF EXISTS `nuke_bbforum_prune`;
CREATE TABLE `nuke_bbforum_prune` (
  `prune_id` mediumint(8) unsigned NOT NULL auto_increment,
  `forum_id` smallint(5) unsigned NOT NULL default '0',
  `prune_days` tinyint(4) unsigned NOT NULL default '0',
  `prune_freq` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`prune_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbforum_prune`
--

/*!40000 ALTER TABLE `nuke_bbforum_prune` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbforum_prune` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbforums`
--

DROP TABLE IF EXISTS `nuke_bbforums`;
CREATE TABLE `nuke_bbforums` (
  `forum_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_name` varchar(150) collate latin1_spanish_ci default NULL,
  `forum_desc` text collate latin1_spanish_ci,
  `forum_status` tinyint(4) NOT NULL default '0',
  `forum_order` mediumint(8) unsigned NOT NULL default '1',
  `forum_posts` mediumint(8) unsigned NOT NULL default '0',
  `forum_topics` mediumint(8) unsigned NOT NULL default '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL default '0',
  `prune_next` int(11) default NULL,
  `prune_enable` tinyint(1) NOT NULL default '1',
  `auth_view` tinyint(2) NOT NULL default '0',
  `auth_read` tinyint(2) NOT NULL default '0',
  `auth_post` tinyint(2) NOT NULL default '0',
  `auth_reply` tinyint(2) NOT NULL default '0',
  `auth_edit` tinyint(2) NOT NULL default '0',
  `auth_delete` tinyint(2) NOT NULL default '0',
  `auth_sticky` tinyint(2) NOT NULL default '0',
  `auth_announce` tinyint(2) NOT NULL default '0',
  `auth_vote` tinyint(2) NOT NULL default '0',
  `auth_pollcreate` tinyint(2) NOT NULL default '0',
  `auth_attachments` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`forum_id`),
  KEY `forums_order` (`forum_order`),
  KEY `cat_id` (`cat_id`),
  KEY `forum_last_post_id` (`forum_last_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbforums`
--

/*!40000 ALTER TABLE `nuke_bbforums` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbforums` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbgroups`
--

DROP TABLE IF EXISTS `nuke_bbgroups`;
CREATE TABLE `nuke_bbgroups` (
  `group_id` mediumint(8) NOT NULL auto_increment,
  `group_type` tinyint(4) NOT NULL default '1',
  `group_name` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  `group_description` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `group_moderator` mediumint(8) NOT NULL default '0',
  `group_single_user` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`group_id`),
  KEY `group_single_user` (`group_single_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbgroups`
--

/*!40000 ALTER TABLE `nuke_bbgroups` DISABLE KEYS */;
INSERT INTO `nuke_bbgroups` (`group_id`,`group_type`,`group_name`,`group_description`,`group_moderator`,`group_single_user`) VALUES 
 (1,1,'Anonimo','Usuario Invitado',0,1),
 (3,2,'Moderadores','Moderadores de este Foro',5,0);
/*!40000 ALTER TABLE `nuke_bbgroups` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbposts`
--

DROP TABLE IF EXISTS `nuke_bbposts`;
CREATE TABLE `nuke_bbposts` (
  `post_id` mediumint(8) unsigned NOT NULL auto_increment,
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` smallint(5) unsigned NOT NULL default '0',
  `poster_id` mediumint(8) NOT NULL default '0',
  `post_time` int(11) NOT NULL default '0',
  `poster_ip` varchar(8) collate latin1_spanish_ci NOT NULL default '',
  `post_username` varchar(25) collate latin1_spanish_ci default NULL,
  `enable_bbcode` tinyint(1) NOT NULL default '1',
  `enable_html` tinyint(1) NOT NULL default '0',
  `enable_smilies` tinyint(1) NOT NULL default '1',
  `enable_sig` tinyint(1) NOT NULL default '1',
  `post_edit_time` int(11) default NULL,
  `post_edit_count` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbposts`
--

/*!40000 ALTER TABLE `nuke_bbposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbposts` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbposts_text`
--

DROP TABLE IF EXISTS `nuke_bbposts_text`;
CREATE TABLE `nuke_bbposts_text` (
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `bbcode_uid` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `post_subject` varchar(60) collate latin1_spanish_ci default NULL,
  `post_text` text collate latin1_spanish_ci,
  PRIMARY KEY  (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbposts_text`
--

/*!40000 ALTER TABLE `nuke_bbposts_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbposts_text` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbprivmsgs`
--

DROP TABLE IF EXISTS `nuke_bbprivmsgs`;
CREATE TABLE `nuke_bbprivmsgs` (
  `privmsgs_id` mediumint(8) unsigned NOT NULL auto_increment,
  `privmsgs_type` tinyint(4) NOT NULL default '0',
  `privmsgs_subject` varchar(255) collate latin1_spanish_ci NOT NULL default '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL default '0',
  `privmsgs_to_userid` mediumint(8) NOT NULL default '0',
  `privmsgs_date` int(11) NOT NULL default '0',
  `privmsgs_ip` varchar(8) collate latin1_spanish_ci NOT NULL default '',
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL default '1',
  `privmsgs_enable_html` tinyint(1) NOT NULL default '0',
  `privmsgs_enable_smilies` tinyint(1) NOT NULL default '1',
  `privmsgs_attach_sig` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`privmsgs_id`),
  KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  KEY `privmsgs_to_userid` (`privmsgs_to_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbprivmsgs`
--

/*!40000 ALTER TABLE `nuke_bbprivmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbprivmsgs` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbprivmsgs_text`
--

DROP TABLE IF EXISTS `nuke_bbprivmsgs_text`;
CREATE TABLE `nuke_bbprivmsgs_text` (
  `privmsgs_text_id` mediumint(8) unsigned NOT NULL default '0',
  `privmsgs_bbcode_uid` varchar(10) collate latin1_spanish_ci NOT NULL default '0',
  `privmsgs_text` text collate latin1_spanish_ci,
  PRIMARY KEY  (`privmsgs_text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbprivmsgs_text`
--

/*!40000 ALTER TABLE `nuke_bbprivmsgs_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbprivmsgs_text` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbranks`
--

DROP TABLE IF EXISTS `nuke_bbranks`;
CREATE TABLE `nuke_bbranks` (
  `rank_id` smallint(5) unsigned NOT NULL auto_increment,
  `rank_title` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `rank_min` mediumint(8) NOT NULL default '0',
  `rank_max` mediumint(8) NOT NULL default '0',
  `rank_special` tinyint(1) default '0',
  `rank_image` varchar(255) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbranks`
--

/*!40000 ALTER TABLE `nuke_bbranks` DISABLE KEYS */;
INSERT INTO `nuke_bbranks` (`rank_id`,`rank_title`,`rank_min`,`rank_max`,`rank_special`,`rank_image`) VALUES 
 (1,'Administrador',-1,-1,1,'modules/Forums/images/ranks/6stars.gif'),
 (2,'Invitado',1,0,0,'modules/Forums/images/ranks/1star.gif');
/*!40000 ALTER TABLE `nuke_bbranks` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbsearch_results`
--

DROP TABLE IF EXISTS `nuke_bbsearch_results`;
CREATE TABLE `nuke_bbsearch_results` (
  `search_id` int(11) unsigned NOT NULL default '0',
  `session_id` varchar(32) collate latin1_spanish_ci NOT NULL default '',
  `search_array` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`search_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbsearch_results`
--

/*!40000 ALTER TABLE `nuke_bbsearch_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbsearch_results` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbsearch_wordlist`
--

DROP TABLE IF EXISTS `nuke_bbsearch_wordlist`;
CREATE TABLE `nuke_bbsearch_wordlist` (
  `word_text` varchar(50) character set latin1 collate latin1_bin NOT NULL default '',
  `word_id` mediumint(8) unsigned NOT NULL auto_increment,
  `word_common` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`word_text`),
  KEY `word_id` (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbsearch_wordlist`
--

/*!40000 ALTER TABLE `nuke_bbsearch_wordlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbsearch_wordlist` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbsearch_wordmatch`
--

DROP TABLE IF EXISTS `nuke_bbsearch_wordmatch`;
CREATE TABLE `nuke_bbsearch_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `word_id` mediumint(8) unsigned NOT NULL default '0',
  `title_match` tinyint(1) NOT NULL default '0',
  KEY `word_id` (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbsearch_wordmatch`
--

/*!40000 ALTER TABLE `nuke_bbsearch_wordmatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbsearch_wordmatch` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbsessions`
--

DROP TABLE IF EXISTS `nuke_bbsessions`;
CREATE TABLE `nuke_bbsessions` (
  `session_id` char(32) collate latin1_spanish_ci NOT NULL default '',
  `session_user_id` mediumint(8) NOT NULL default '0',
  `session_start` int(11) NOT NULL default '0',
  `session_time` int(11) NOT NULL default '0',
  `session_ip` char(8) collate latin1_spanish_ci NOT NULL default '0',
  `session_page` int(11) NOT NULL default '0',
  `session_logged_in` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`session_id`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_id_ip_user_id` (`session_id`,`session_ip`,`session_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbsessions`
--

/*!40000 ALTER TABLE `nuke_bbsessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbsessions` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbsmilies`
--

DROP TABLE IF EXISTS `nuke_bbsmilies`;
CREATE TABLE `nuke_bbsmilies` (
  `smilies_id` smallint(5) unsigned NOT NULL auto_increment,
  `code` varchar(50) collate latin1_spanish_ci default NULL,
  `smile_url` varchar(100) collate latin1_spanish_ci default NULL,
  `emoticon` varchar(75) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`smilies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbsmilies`
--

/*!40000 ALTER TABLE `nuke_bbsmilies` DISABLE KEYS */;
INSERT INTO `nuke_bbsmilies` (`smilies_id`,`code`,`smile_url`,`emoticon`) VALUES 
 (1,':D','icon_biggrin.gif','Muy Contento'),
 (2,':-D','icon_biggrin.gif','Muy Contento'),
 (3,':grin:','icon_biggrin.gif','Muy Contento'),
 (4,':)','icon_smile.gif','Sonrisa'),
 (5,':-)','icon_smile.gif','Sonrisa'),
 (6,':smile:','icon_smile.gif','Sonrisa'),
 (7,':(','icon_sad.gif','Triste'),
 (8,':-(','icon_sad.gif','Triste'),
 (9,':sad:','icon_sad.gif','Triste'),
 (10,':o','icon_surprised.gif','Sorprendido'),
 (11,':-o','icon_surprised.gif','Sorprendido'),
 (12,':eek:','icon_surprised.gif','Sorprendido'),
 (13,'8O','icon_eek.gif','Alterado'),
 (14,'8-O','icon_eek.gif','Alterado'),
 (15,':shock:','icon_eek.gif','Alterado'),
 (16,':?','icon_confused.gif','Confundido'),
 (17,':-?','icon_confused.gif','Confundido'),
 (18,':???:','icon_confused.gif','Confundido'),
 (19,'8)','icon_cool.gif','Tranquilo'),
 (20,'8-)','icon_cool.gif','Tranquilo'),
 (21,':cool:','icon_cool.gif','Tranquilo'),
 (22,':lol:','icon_lol.gif','Risa'),
 (23,':x','icon_mad.gif','Loco');
INSERT INTO `nuke_bbsmilies` (`smilies_id`,`code`,`smile_url`,`emoticon`) VALUES 
 (24,':-x','icon_mad.gif','Loco'),
 (25,':mad:','icon_mad.gif','Loco'),
 (26,':P','icon_razz.gif','Razz'),
 (27,':-P','icon_razz.gif','Razz'),
 (28,':razz:','icon_razz.gif','Razz'),
 (29,':oops:','icon_redface.gif','Preocupado'),
 (30,':cry:','icon_cry.gif','LLorando o Muy Triste'),
 (31,':evil:','icon_evil.gif','Loco'),
 (32,':twisted:','icon_twisted.gif','Twisted Evil'),
 (33,':roll:','icon_rolleyes.gif','Ojos Movidos'),
 (34,':wink:','icon_wink.gif','Gui?o'),
 (35,';)','icon_wink.gif','Gui?o'),
 (36,';-)','icon_wink.gif','Gui?o'),
 (37,':!:','icon_exclaim.gif','Exclamaci?n'),
 (38,':?:','icon_question.gif','Pregunta'),
 (39,':idea:','icon_idea.gif','Idea'),
 (40,':arrow:','icon_arrow.gif','Flecha'),
 (41,':|','icon_neutral.gif','Neutral'),
 (42,':-|','icon_neutral.gif','Neutral'),
 (43,':neutral:','icon_neutral.gif','Neutral'),
 (44,':mrgreen:','icon_mrgreen.gif','Sr. Green');
/*!40000 ALTER TABLE `nuke_bbsmilies` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbthemes`
--

DROP TABLE IF EXISTS `nuke_bbthemes`;
CREATE TABLE `nuke_bbthemes` (
  `themes_id` mediumint(8) unsigned NOT NULL auto_increment,
  `template_name` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `style_name` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `head_stylesheet` varchar(100) collate latin1_spanish_ci default NULL,
  `body_background` varchar(100) collate latin1_spanish_ci default NULL,
  `body_bgcolor` varchar(6) collate latin1_spanish_ci default NULL,
  `body_text` varchar(6) collate latin1_spanish_ci default NULL,
  `body_link` varchar(6) collate latin1_spanish_ci default NULL,
  `body_vlink` varchar(6) collate latin1_spanish_ci default NULL,
  `body_alink` varchar(6) collate latin1_spanish_ci default NULL,
  `body_hlink` varchar(6) collate latin1_spanish_ci default NULL,
  `tr_color1` varchar(6) collate latin1_spanish_ci default NULL,
  `tr_color2` varchar(6) collate latin1_spanish_ci default NULL,
  `tr_color3` varchar(6) collate latin1_spanish_ci default NULL,
  `tr_class1` varchar(25) collate latin1_spanish_ci default NULL,
  `tr_class2` varchar(25) collate latin1_spanish_ci default NULL,
  `tr_class3` varchar(25) collate latin1_spanish_ci default NULL,
  `th_color1` varchar(6) collate latin1_spanish_ci default NULL,
  `th_color2` varchar(6) collate latin1_spanish_ci default NULL,
  `th_color3` varchar(6) collate latin1_spanish_ci default NULL,
  `th_class1` varchar(25) collate latin1_spanish_ci default NULL,
  `th_class2` varchar(25) collate latin1_spanish_ci default NULL,
  `th_class3` varchar(25) collate latin1_spanish_ci default NULL,
  `td_color1` varchar(6) collate latin1_spanish_ci default NULL,
  `td_color2` varchar(6) collate latin1_spanish_ci default NULL,
  `td_color3` varchar(6) collate latin1_spanish_ci default NULL,
  `td_class1` varchar(25) collate latin1_spanish_ci default NULL,
  `td_class2` varchar(25) collate latin1_spanish_ci default NULL,
  `td_class3` varchar(25) collate latin1_spanish_ci default NULL,
  `fontface1` varchar(50) collate latin1_spanish_ci default NULL,
  `fontface2` varchar(50) collate latin1_spanish_ci default NULL,
  `fontface3` varchar(50) collate latin1_spanish_ci default NULL,
  `fontsize1` tinyint(4) default NULL,
  `fontsize2` tinyint(4) default NULL,
  `fontsize3` tinyint(4) default NULL,
  `fontcolor1` varchar(6) collate latin1_spanish_ci default NULL,
  `fontcolor2` varchar(6) collate latin1_spanish_ci default NULL,
  `fontcolor3` varchar(6) collate latin1_spanish_ci default NULL,
  `span_class1` varchar(25) collate latin1_spanish_ci default NULL,
  `span_class2` varchar(25) collate latin1_spanish_ci default NULL,
  `span_class3` varchar(25) collate latin1_spanish_ci default NULL,
  `img_size_poll` smallint(5) unsigned default NULL,
  `img_size_privmsg` smallint(5) unsigned default NULL,
  PRIMARY KEY  (`themes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbthemes`
--

/*!40000 ALTER TABLE `nuke_bbthemes` DISABLE KEYS */;
INSERT INTO `nuke_bbthemes` (`themes_id`,`template_name`,`style_name`,`head_stylesheet`,`body_background`,`body_bgcolor`,`body_text`,`body_link`,`body_vlink`,`body_alink`,`body_hlink`,`tr_color1`,`tr_color2`,`tr_color3`,`tr_class1`,`tr_class2`,`tr_class3`,`th_color1`,`th_color2`,`th_color3`,`th_class1`,`th_class2`,`th_class3`,`td_color1`,`td_color2`,`td_color3`,`td_class1`,`td_class2`,`td_class3`,`fontface1`,`fontface2`,`fontface3`,`fontsize1`,`fontsize2`,`fontsize3`,`fontcolor1`,`fontcolor2`,`fontcolor3`,`span_class1`,`span_class2`,`span_class3`,`img_size_poll`,`img_size_privmsg`) VALUES 
 (1,'subSilver','subSilver','subSilver.css','','0E3259','000000','006699','5493B4','','DD6900','EFEFEF','DEE3E7','D1D7DC','','','','98AAB1','006699','FFFFFF','cellpic1.gif','cellpic3.gif','cellpic2.jpg','FAFAFA','FFFFFF','','row1','row2','','Verdana, Arial, Helvetica, sans-serif','Trebuchet MS','Courier, \'Courier New\', sans-serif',10,11,12,'444444','006600','FFA34F','','','',NULL,NULL);
/*!40000 ALTER TABLE `nuke_bbthemes` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbthemes_name`
--

DROP TABLE IF EXISTS `nuke_bbthemes_name`;
CREATE TABLE `nuke_bbthemes_name` (
  `themes_id` smallint(5) unsigned NOT NULL default '0',
  `tr_color1_name` char(50) collate latin1_spanish_ci default NULL,
  `tr_color2_name` char(50) collate latin1_spanish_ci default NULL,
  `tr_color3_name` char(50) collate latin1_spanish_ci default NULL,
  `tr_class1_name` char(50) collate latin1_spanish_ci default NULL,
  `tr_class2_name` char(50) collate latin1_spanish_ci default NULL,
  `tr_class3_name` char(50) collate latin1_spanish_ci default NULL,
  `th_color1_name` char(50) collate latin1_spanish_ci default NULL,
  `th_color2_name` char(50) collate latin1_spanish_ci default NULL,
  `th_color3_name` char(50) collate latin1_spanish_ci default NULL,
  `th_class1_name` char(50) collate latin1_spanish_ci default NULL,
  `th_class2_name` char(50) collate latin1_spanish_ci default NULL,
  `th_class3_name` char(50) collate latin1_spanish_ci default NULL,
  `td_color1_name` char(50) collate latin1_spanish_ci default NULL,
  `td_color2_name` char(50) collate latin1_spanish_ci default NULL,
  `td_color3_name` char(50) collate latin1_spanish_ci default NULL,
  `td_class1_name` char(50) collate latin1_spanish_ci default NULL,
  `td_class2_name` char(50) collate latin1_spanish_ci default NULL,
  `td_class3_name` char(50) collate latin1_spanish_ci default NULL,
  `fontface1_name` char(50) collate latin1_spanish_ci default NULL,
  `fontface2_name` char(50) collate latin1_spanish_ci default NULL,
  `fontface3_name` char(50) collate latin1_spanish_ci default NULL,
  `fontsize1_name` char(50) collate latin1_spanish_ci default NULL,
  `fontsize2_name` char(50) collate latin1_spanish_ci default NULL,
  `fontsize3_name` char(50) collate latin1_spanish_ci default NULL,
  `fontcolor1_name` char(50) collate latin1_spanish_ci default NULL,
  `fontcolor2_name` char(50) collate latin1_spanish_ci default NULL,
  `fontcolor3_name` char(50) collate latin1_spanish_ci default NULL,
  `span_class1_name` char(50) collate latin1_spanish_ci default NULL,
  `span_class2_name` char(50) collate latin1_spanish_ci default NULL,
  `span_class3_name` char(50) collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`themes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbthemes_name`
--

/*!40000 ALTER TABLE `nuke_bbthemes_name` DISABLE KEYS */;
INSERT INTO `nuke_bbthemes_name` (`themes_id`,`tr_color1_name`,`tr_color2_name`,`tr_color3_name`,`tr_class1_name`,`tr_class2_name`,`tr_class3_name`,`th_color1_name`,`th_color2_name`,`th_color3_name`,`th_class1_name`,`th_class2_name`,`th_class3_name`,`td_color1_name`,`td_color2_name`,`td_color3_name`,`td_class1_name`,`td_class2_name`,`td_class3_name`,`fontface1_name`,`fontface2_name`,`fontface3_name`,`fontsize1_name`,`fontsize2_name`,`fontsize3_name`,`fontcolor1_name`,`fontcolor2_name`,`fontcolor3_name`,`span_class1_name`,`span_class2_name`,`span_class3_name`) VALUES 
 (1,'Color claro de fila','Color medio de fila','Color m?s oscuro de fila','','','','Borde de pagina','Borde Externo de Tabla','Borde Interno de Tabla','Imagen gradiente Plateada','Imagen gradiente Azul','Fade-out gradient on index','Background for quote boxes','Todas las areas blancas','','Fondo para Topics de los Posts','2o fondo para Topics','','Fuentes Principales','Additional topic title font','Fuentes de Formularios','Tama?o de fuente m?s peque?a','Tama?o de fuente mediana','Tama?o de fuente normal (post cuerpo etc)','Quote & copyright text','Code text colour','Main table header text colour','','','');
/*!40000 ALTER TABLE `nuke_bbthemes_name` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbtopics`
--

DROP TABLE IF EXISTS `nuke_bbtopics`;
CREATE TABLE `nuke_bbtopics` (
  `topic_id` mediumint(8) unsigned NOT NULL auto_increment,
  `forum_id` smallint(8) unsigned NOT NULL default '0',
  `topic_title` char(60) collate latin1_spanish_ci NOT NULL default '',
  `topic_poster` mediumint(8) NOT NULL default '0',
  `topic_time` int(11) NOT NULL default '0',
  `topic_views` mediumint(8) unsigned NOT NULL default '0',
  `topic_replies` mediumint(8) unsigned NOT NULL default '0',
  `topic_status` tinyint(3) NOT NULL default '0',
  `topic_vote` tinyint(1) NOT NULL default '0',
  `topic_type` tinyint(3) NOT NULL default '0',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL default '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_moved_id` (`topic_moved_id`),
  KEY `topic_status` (`topic_status`),
  KEY `topic_type` (`topic_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbtopics`
--

/*!40000 ALTER TABLE `nuke_bbtopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbtopics` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbtopics_watch`
--

DROP TABLE IF EXISTS `nuke_bbtopics_watch`;
CREATE TABLE `nuke_bbtopics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) NOT NULL default '0',
  `notify_status` tinyint(1) NOT NULL default '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_status` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbtopics_watch`
--

/*!40000 ALTER TABLE `nuke_bbtopics_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbtopics_watch` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbuser_group`
--

DROP TABLE IF EXISTS `nuke_bbuser_group`;
CREATE TABLE `nuke_bbuser_group` (
  `group_id` mediumint(8) NOT NULL default '0',
  `user_id` mediumint(8) NOT NULL default '0',
  `user_pending` tinyint(1) default NULL,
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbuser_group`
--

/*!40000 ALTER TABLE `nuke_bbuser_group` DISABLE KEYS */;
INSERT INTO `nuke_bbuser_group` (`group_id`,`user_id`,`user_pending`) VALUES 
 (1,-1,0),
 (3,5,0);
/*!40000 ALTER TABLE `nuke_bbuser_group` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbvote_desc`
--

DROP TABLE IF EXISTS `nuke_bbvote_desc`;
CREATE TABLE `nuke_bbvote_desc` (
  `vote_id` mediumint(8) unsigned NOT NULL auto_increment,
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_text` text collate latin1_spanish_ci NOT NULL,
  `vote_start` int(11) NOT NULL default '0',
  `vote_length` int(11) NOT NULL default '0',
  PRIMARY KEY  (`vote_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbvote_desc`
--

/*!40000 ALTER TABLE `nuke_bbvote_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbvote_desc` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbvote_results`
--

DROP TABLE IF EXISTS `nuke_bbvote_results`;
CREATE TABLE `nuke_bbvote_results` (
  `vote_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_option_id` tinyint(4) unsigned NOT NULL default '0',
  `vote_option_text` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `vote_result` int(11) NOT NULL default '0',
  KEY `vote_option_id` (`vote_option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbvote_results`
--

/*!40000 ALTER TABLE `nuke_bbvote_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbvote_results` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbvote_voters`
--

DROP TABLE IF EXISTS `nuke_bbvote_voters`;
CREATE TABLE `nuke_bbvote_voters` (
  `vote_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_user_id` mediumint(8) NOT NULL default '0',
  `vote_user_ip` char(8) collate latin1_spanish_ci NOT NULL default '',
  KEY `vote_id` (`vote_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbvote_voters`
--

/*!40000 ALTER TABLE `nuke_bbvote_voters` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbvote_voters` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_bbwords`
--

DROP TABLE IF EXISTS `nuke_bbwords`;
CREATE TABLE `nuke_bbwords` (
  `word_id` mediumint(8) unsigned NOT NULL auto_increment,
  `word` char(100) collate latin1_spanish_ci NOT NULL default '',
  `replacement` char(100) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_bbwords`
--

/*!40000 ALTER TABLE `nuke_bbwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_bbwords` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_blocks`
--

DROP TABLE IF EXISTS `nuke_blocks`;
CREATE TABLE `nuke_blocks` (
  `bid` int(10) NOT NULL auto_increment,
  `bkey` varchar(15) collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `content` text collate latin1_spanish_ci NOT NULL,
  `url` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  `bposition` char(1) collate latin1_spanish_ci NOT NULL default '',
  `weight` int(10) NOT NULL default '1',
  `active` int(1) NOT NULL default '1',
  `refresh` int(10) NOT NULL default '0',
  `time` varchar(14) collate latin1_spanish_ci NOT NULL default '0',
  `blanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `blockfile` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `view` int(1) NOT NULL default '0',
  `expire` varchar(14) collate latin1_spanish_ci NOT NULL default '0',
  `action` char(1) collate latin1_spanish_ci NOT NULL default '',
  `subscription` int(1) NOT NULL default '0',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_blocks`
--

/*!40000 ALTER TABLE `nuke_blocks` DISABLE KEYS */;
INSERT INTO `nuke_blocks` (`bid`,`bkey`,`title`,`content`,`url`,`bposition`,`weight`,`active`,`refresh`,`time`,`blanguage`,`blockfile`,`view`,`expire`,`action`,`subscription`) VALUES 
 (1,'','Principal','','','l',1,1,0,'','','block-Modules.php',0,'0','d',0),
 (2,'admin','Administraci?n','<strong><big>?</big></strong> <a href=\"admin.php\">Administraci?n</a><br>\r\n<strong><big>?</big></strong> <a href=\"admin.php?op=adminStory\">NUEVA Noticia</a><br>\r\n<strong><big>?</big></strong> <a href=\"admin.php?op=create\">Cambiar Encuesta</a><br>\r\n<strong><big>?</big></strong> <a href=\"admin.php?op=content\">Contenidos</a><br>\r\n<strong><big>?</big></strong> <a href=\"admin.php?op=logout\">Salir</a>','','l',2,1,0,'985591188','','',2,'0','d',0),
 (3,'','Gente Online','','','l',4,1,0,'','','block-Who_is_Online.php',0,'0','d',0),
 (4,'','Buscar','','','l',5,0,3600,'','','block-Search.php',0,'0','d',0),
 (5,'','Idiomas','','','l',6,0,3600,'','','block-Languages.php',0,'0','d',0),
 (6,'','Titulares Aleatorios','','','l',7,0,3600,'','','block-Random_Headlines.php',0,'0','d',0),
 (8,'userbox','User\'s Custom Box','','','r',1,1,0,'','','',1,'0','d',0);
INSERT INTO `nuke_blocks` (`bid`,`bkey`,`title`,`content`,`url`,`bposition`,`weight`,`active`,`refresh`,`time`,`blanguage`,`blockfile`,`view`,`expire`,`action`,`subscription`) VALUES 
 (9,'','Men? de Categorias','','','r',2,0,0,'','','block-Categories.php',0,'0','d',0),
 (10,'','Encuesta','','','r',3,0,3600,'','','block-Survey.php',0,'0','d',0),
 (11,'','Logeo','','','r',6,1,3600,'','','block-Login.php',3,'0','d',0),
 (13,'','Articulos Pasados','','','r',7,0,3600,'','','block-Old_Articles.php',0,'0','d',0),
 (14,'','Informaci?n','<br><center><font class=\"content\">\r\n<a href=\"http://phpnuke.org\"><img src=\"images/powered/powered5.jpg\" border=\"0\" alt=\"Powered by PHP-Nuke\" title=\"Powered by PHP-Nuke\" width=\"88\" height=\"31\"></a>\r\n<br><br>\r\n<a href=\"http://validator.w3.org/check/referer\"><img src=\"images/html401.gif\" width=\"88\" height=\"31\" alt=\"Valid HTML 4.01!\" title=\"Valid HTML 4.01!\" border=\"0\"></a>\r\n<br><br>\r\n<a href=\"http://jigsaw.w3.org/css-validator\"><img src=\"images/css.gif\" width=\"88\" height=\"31\" alt=\"Valid CSS!\" title=\"Valid CSS!\" border=\"0\"></a></font></center><br>','','r',8,0,0,'','','',0,'0','d',0),
 (16,'','Categorias','','','r',5,0,3600,'','','block-Categorias.php',0,'0','d',0);
INSERT INTO `nuke_blocks` (`bid`,`bkey`,`title`,`content`,`url`,`bposition`,`weight`,`active`,`refresh`,`time`,`blanguage`,`blockfile`,`view`,`expire`,`action`,`subscription`) VALUES 
 (17,'','Publicidad','','','l',3,1,3600,'','','block-Publicidad.php',0,'0','d',0),
 (18,'','Directorio','','','r',4,1,3600,'','','block-Directorio.php',0,'0','d',0);
/*!40000 ALTER TABLE `nuke_blocks` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_cate`
--

DROP TABLE IF EXISTS `nuke_cate`;
CREATE TABLE `nuke_cate` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Descri` varchar(45) NOT NULL default '',
  `Imagen` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto`.`nuke_cate`
--

/*!40000 ALTER TABLE `nuke_cate` DISABLE KEYS */;
INSERT INTO `nuke_cate` (`Id`,`Descri`,`Imagen`) VALUES 
 (1,'Concesionarios de Carros Nuevos','/tumundoautomotriz/imagenes/categorias/b-carrosnuevos1.jpg'),
 (2,'Concesionarios de Carros Usados','/tumundoautomotriz/imagenes/categorias/b-carrosusados.jpg'),
 (3,'Compra y venta','/tumundoautomotriz/imagenes/categorias/b-comprayventa.jpg'),
 (4,'Talleres Mecanicos','/tumundoautomotriz/imagenes/categorias/b-talleresmeca.jpg'),
 (8,'Electroautos','/tumundoautomotriz/imagenes/categorias/b-electro.jpg'),
 (7,'Inyección Electronica','/tumundoautomotriz/imagenes/categorias/b-inyecelec.jpg'),
 (5,'Latoneria y Pintura','/tumundoautomotriz/imagenes/categorias/b-latopintu.jpg'),
 (10,'Aires Acondicionados','/tumundoautomotriz/imagenes/categorias/b-aires.jpg'),
 (11,'Frenos','/tumundoautomotriz/imagenes/categorias/b-frenos.jpg'),
 (12,'Suspensión',''),
 (13,'Neumáticos y Rines','/tumundoautomotriz/imagenes/categorias/b-neorine.jpg'),
 (14,'Muffer - Silenciadores','/tumundoautomotriz/imagenes/categorias/b-muffer.jpg'),
 (15,'Parabrisas','/tumundoautomotriz/imagenes/categorias/b-parabri.jpg');
INSERT INTO `nuke_cate` (`Id`,`Descri`,`Imagen`) VALUES 
 (16,'Chiveras','/tumundoautomotriz/imagenes/categorias/b-chivera.jpg'),
 (17,'Casa de Repuestos y accesorios Tuning-Racing',''),
 (18,'Casas de Repotenciación','/tumundoautomotriz/imagenes/categorias/b-repotenci.jpg'),
 (19,'Auto - Tapicerías','/tumundoautomotriz/imagenes/categorias/b-autotapice.jpg'),
 (20,'Sonido Automotriz','/tumundoautomotriz/imagenes/categorias/b-sonidoauto.jpg'),
 (21,'Auto - Periquitos','/tumundoautomotriz/imagenes/categorias/b-autoperi.jpg'),
 (22,'Centro de Lubricantes','/tumundoautomotriz/imagenes/categorias/b-lubricantes.jpg'),
 (23,'Autolavados','/tumundoautomotriz/imagenes/categorias/b-autolavados.jpg'),
 (24,'Alquiler de Vehículos','/tumundoautomotriz/imagenes/categorias/b-alquivehi.jpg'),
 (25,'Aseguradoras','/tumundoautomotriz/imagenes/categorias/b-aseguradoras.jpg'),
 (26,'Transporte - Líneas',''),
 (27,'Motos - Ventas','/tumundoautomotriz/imagenes/categorias/b-motoventa.jpg'),
 (28,'Motos - Repuestos','/tumundoautomotriz/imagenes/categorias/b-motorep.jpg'),
 (29,'Servicio de Gruas','/tumundoautomotriz/imagenes/categorias/b-servgrua.jpg');
INSERT INTO `nuke_cate` (`Id`,`Descri`,`Imagen`) VALUES 
 (30,'Casa de Rodamientos','/tumundoautomotriz/imagenes/categorias/b-rodamiento.jpg'),
 (31,'Radiadores','/tumundoautomotriz/imagenes/categorias/b-radiodores.jpg'),
 (32,'Retificadoras','/tumundoautomotriz/imagenes/categorias/b-retifi.jpg'),
 (33,'Importadoras de Repuestos','/tumundoautomotriz/imagenes/categorias/b-imprespuesto.jpg'),
 (34,'Casa de Pinturas Autos','/tumundoautomotriz/imagenes/categorias/b-pindeautos.jpg'),
 (35,'Tornerias','/tumundoautomotriz/imagenes/categorias/b-tornerias.jpg'),
 (36,'Enderezamiento de Compacto','/tumundoautomotriz/imagenes/categorias/b-decompacto.jpg'),
 (37,'Enderezamiento de Chasis','/tumundoautomotriz/imagenes/categorias/b-dechacin.jpg'),
 (38,'Autocerrajería','/tumundoautomotriz/imagenes/categorias/b-cerrajeria.jpg'),
 (39,'Repuestos y Servicios para Camiones','/tumundoautomotriz/imagenes/categorias/b-repservcamiones.jpg');
/*!40000 ALTER TABLE `nuke_cate` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_comments`
--

DROP TABLE IF EXISTS `nuke_comments`;
CREATE TABLE `nuke_comments` (
  `tid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `date` datetime default NULL,
  `name` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) collate latin1_spanish_ci default NULL,
  `url` varchar(60) collate latin1_spanish_ci default NULL,
  `host_name` varchar(60) collate latin1_spanish_ci default NULL,
  `subject` varchar(85) collate latin1_spanish_ci NOT NULL default '',
  `comment` text collate latin1_spanish_ci NOT NULL,
  `score` tinyint(4) NOT NULL default '0',
  `reason` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_comments`
--

/*!40000 ALTER TABLE `nuke_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_comments` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_config`
--

DROP TABLE IF EXISTS `nuke_config`;
CREATE TABLE `nuke_config` (
  `sitename` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `nukeurl` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `site_logo` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `slogan` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `startdate` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `adminmail` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `anonpost` tinyint(1) NOT NULL default '0',
  `Default_Theme` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `foot1` text collate latin1_spanish_ci NOT NULL,
  `foot2` text collate latin1_spanish_ci NOT NULL,
  `foot3` text collate latin1_spanish_ci NOT NULL,
  `commentlimit` int(9) NOT NULL default '4096',
  `anonymous` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `minpass` tinyint(1) NOT NULL default '5',
  `pollcomm` tinyint(1) NOT NULL default '1',
  `articlecomm` tinyint(1) NOT NULL default '1',
  `broadcast_msg` tinyint(1) NOT NULL default '1',
  `my_headlines` tinyint(1) NOT NULL default '1',
  `top` int(3) NOT NULL default '10',
  `storyhome` int(2) NOT NULL default '10',
  `user_news` tinyint(1) NOT NULL default '1',
  `oldnum` int(2) NOT NULL default '30',
  `ultramode` tinyint(1) NOT NULL default '0',
  `banners` tinyint(1) NOT NULL default '1',
  `backend_title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `backend_language` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `language` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `locale` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `multilingual` tinyint(1) NOT NULL default '0',
  `useflags` tinyint(1) NOT NULL default '0',
  `notify` tinyint(1) NOT NULL default '0',
  `notify_email` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `notify_subject` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `notify_message` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `notify_from` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `moderate` tinyint(1) NOT NULL default '0',
  `admingraphic` tinyint(1) NOT NULL default '1',
  `httpref` tinyint(1) NOT NULL default '1',
  `httprefmax` int(5) NOT NULL default '1000',
  `CensorMode` tinyint(1) NOT NULL default '3',
  `CensorReplace` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `copyright` text collate latin1_spanish_ci NOT NULL,
  `Version_Num` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`sitename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_config`
--

/*!40000 ALTER TABLE `nuke_config` DISABLE KEYS */;
INSERT INTO `nuke_config` (`sitename`,`nukeurl`,`site_logo`,`slogan`,`startdate`,`adminmail`,`anonpost`,`Default_Theme`,`foot1`,`foot2`,`foot3`,`commentlimit`,`anonymous`,`minpass`,`pollcomm`,`articlecomm`,`broadcast_msg`,`my_headlines`,`top`,`storyhome`,`user_news`,`oldnum`,`ultramode`,`banners`,`backend_title`,`backend_language`,`language`,`locale`,`multilingual`,`useflags`,`notify`,`notify_email`,`notify_subject`,`notify_message`,`notify_from`,`moderate`,`admingraphic`,`httpref`,`httprefmax`,`CensorMode`,`CensorReplace`,`copyright`,`Version_Num`) VALUES 
 ('Tu Mundo Automotriz','http://localhost/tumundoautomotriz/','logo.gif','Todo para tu carro','Febrero 2006','webmaster@tumundoautomotriz.com',0,'XetaTheme','<a href=\"http://phpnuke.org\" target=\"blank\"><img src=\"images/powered/powered5.jpg\" border=\"0\" Alt=\"Web site powered by PHP-Nuke\" hspace=\"10\"></a><br>','Todos los logos y marcas en este sitio son propiedad de su respectivos autores. Los comentarios son propiedad de sus posteadores, todos lo dem?s © 2004 por mi.','Puede sindicar nuestras noticias utilizando el fichero <a href=\"backend.php\"><font class=\"footmsg_l\">backend.php</font></a> o <a href=\"ultramode.txt\"><font class=\"footmsg_l\">ultramode.txt</font></a>',4096,'Anonimo',5,1,1,1,1,10,10,1,30,0,1,'Sitio PHP-Nuke Powered','es-ES','spanish','es_ES',0,0,0,'yo@misitio.com','NOTICIAS para mi sitio','Hey! Tienes nuevos envios en tu sitio.','webmaster',0,1,1,1000,3,'*****','Web site engine code is Copyright &copy; 2003 by <a href=\"http://phpnuke.org\"><font class=\"footmsg_l\">PHP-Nuke</font></a>. All Rights Reserved. PHP-Nuke is Free Software released under the <a href=\"http://www.gnu.org\"><font class=\"footmsg_l\">GNU/GPL license</font></a>.','7.4');
/*!40000 ALTER TABLE `nuke_config` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_confirm`
--

DROP TABLE IF EXISTS `nuke_confirm`;
CREATE TABLE `nuke_confirm` (
  `confirm_id` char(32) collate latin1_spanish_ci NOT NULL default '',
  `session_id` char(32) collate latin1_spanish_ci NOT NULL default '',
  `code` char(6) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`session_id`,`confirm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_confirm`
--

/*!40000 ALTER TABLE `nuke_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_confirm` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_counter`
--

DROP TABLE IF EXISTS `nuke_counter`;
CREATE TABLE `nuke_counter` (
  `type` varchar(80) collate latin1_spanish_ci NOT NULL default '',
  `var` varchar(80) collate latin1_spanish_ci NOT NULL default '',
  `count` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_counter`
--

/*!40000 ALTER TABLE `nuke_counter` DISABLE KEYS */;
INSERT INTO `nuke_counter` (`type`,`var`,`count`) VALUES 
 ('total','hits',1112),
 ('browser','WebTV',0),
 ('browser','Lynx',0),
 ('browser','MSIE',1052),
 ('browser','Opera',0),
 ('browser','Konqueror',0),
 ('browser','Netscape',60),
 ('browser','Bot',0),
 ('browser','Other',0),
 ('os','Windows',1111),
 ('os','Linux',1),
 ('os','Mac',0),
 ('os','FreeBSD',0),
 ('os','SunOS',0),
 ('os','IRIX',0),
 ('os','BeOS',0),
 ('os','OS/2',0),
 ('os','AIX',0),
 ('os','Other',0);
/*!40000 ALTER TABLE `nuke_counter` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_downloads_categories`
--

DROP TABLE IF EXISTS `nuke_downloads_categories`;
CREATE TABLE `nuke_downloads_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `cdescription` text collate latin1_spanish_ci NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_downloads_categories`
--

/*!40000 ALTER TABLE `nuke_downloads_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_downloads_categories` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_downloads_downloads`
--

DROP TABLE IF EXISTS `nuke_downloads_downloads`;
CREATE TABLE `nuke_downloads_downloads` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `date` datetime default NULL,
  `name` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `submitter` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `downloadratingsummary` double(6,4) NOT NULL default '0.0000',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `homepage` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_downloads_downloads`
--

/*!40000 ALTER TABLE `nuke_downloads_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_downloads_downloads` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_downloads_editorials`
--

DROP TABLE IF EXISTS `nuke_downloads_editorials`;
CREATE TABLE `nuke_downloads_editorials` (
  `downloadid` int(11) NOT NULL default '0',
  `adminid` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `editorialtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `editorialtext` text collate latin1_spanish_ci NOT NULL,
  `editorialtitle` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`downloadid`),
  KEY `downloadid` (`downloadid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_downloads_editorials`
--

/*!40000 ALTER TABLE `nuke_downloads_editorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_downloads_editorials` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_downloads_modrequest`
--

DROP TABLE IF EXISTS `nuke_downloads_modrequest`;
CREATE TABLE `nuke_downloads_modrequest` (
  `requestid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `modifysubmitter` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `brokendownload` int(3) NOT NULL default '0',
  `name` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `homepage` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`requestid`),
  UNIQUE KEY `requestid` (`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_downloads_modrequest`
--

/*!40000 ALTER TABLE `nuke_downloads_modrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_downloads_modrequest` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_downloads_newdownload`
--

DROP TABLE IF EXISTS `nuke_downloads_newdownload`;
CREATE TABLE `nuke_downloads_newdownload` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `name` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `submitter` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `homepage` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_downloads_newdownload`
--

/*!40000 ALTER TABLE `nuke_downloads_newdownload` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_downloads_newdownload` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_downloads_votedata`
--

DROP TABLE IF EXISTS `nuke_downloads_votedata`;
CREATE TABLE `nuke_downloads_votedata` (
  `ratingdbid` int(11) NOT NULL auto_increment,
  `ratinglid` int(11) NOT NULL default '0',
  `ratinguser` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `rating` int(11) NOT NULL default '0',
  `ratinghostname` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `ratingcomments` text collate latin1_spanish_ci NOT NULL,
  `ratingtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_downloads_votedata`
--

/*!40000 ALTER TABLE `nuke_downloads_votedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_downloads_votedata` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_empresa`
--

DROP TABLE IF EXISTS `nuke_empresa`;
CREATE TABLE `nuke_empresa` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `IDCategoria` int(10) unsigned NOT NULL default '0',
  `Nombre` varchar(45) NOT NULL default '',
  `Descripcion` varchar(255) NOT NULL default '',
  `Web` varchar(45) NOT NULL default '',
  `Direccion` varchar(255) NOT NULL default '',
  `Correo` varchar(60) NOT NULL default '',
  `Foto_local` varchar(255) NOT NULL default '',
  `Persona_Contacto` varchar(80) NOT NULL default '',
  `Puesto` varchar(45) NOT NULL default '',
  `Productos` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto`.`nuke_empresa`
--

/*!40000 ALTER TABLE `nuke_empresa` DISABLE KEYS */;
INSERT INTO `nuke_empresa` (`ID`,`IDCategoria`,`Nombre`,`Descripcion`,`Web`,`Direccion`,`Correo`,`Foto_local`,`Persona_Contacto`,`Puesto`,`Productos`) VALUES 
 (1,1,'Ecomerce Sistemas C.A.','Empresa dedicada a joderme la paciencia','www.apcomputronic.com.ve','Caracas: Av. Francisco de miranda con cruce Luis Roche, Edificio Humbolt, Piso 2 Oficina 06 Altamira. Guatire: Centro Comercial Daymar, Psio 1, local p1-46','apcomputronic@hotmail.com','/tumundoautomotriz/imagenes/empresas/logodeecomerce.JPG','Rafael Ramos','Dueño','Saint, Ventas, Computadores'),
 (2,1,'Ereinca','Empresa q va a salir adelante','www.ereinca.com','Carretera Guatire - La Rosa. Sector el Desvío Minicentro Comercial La Rocca, Local 4,  Guatire, Edo. Miranda','ereinca@hotmail.com','/tumundoautomotriz/imagenes/empresas/Ereinca.jpg','Alejandro Barreto','Jefe de Sistemas','Aires Acondicionados, Maquinas de Coser, Computadoras, Páginas Web, Software'),
 (3,1,'OST Corporation','Empresa que va a tumbar a la microsoft','www.ostcorporation.org','No se todavia','arbo@ostcorporation.org','/tumundoautomotriz/imagenes/empresas/OST_Logo.jpg','Joel Pacheco y Alejandro Barreto','Owner','Todo sobre computación'),
 (4,1,'Makro','Vende de todo','www.makro.com.ve','en todos lados','st09@makro.com.ve','','Pepe','El que limpia','Lo que tu quieras');
INSERT INTO `nuke_empresa` (`ID`,`IDCategoria`,`Nombre`,`Descripcion`,`Web`,`Direccion`,`Correo`,`Foto_local`,`Persona_Contacto`,`Puesto`,`Productos`) VALUES 
 (5,1,'Prix Racing C.A.','Auto Lavado de Carros','','Carretera Guatire - Guarenas un poco mas alla de la bomba PDV','','','Luis','Dueño','Auto lavado, cambio de aceites');
/*!40000 ALTER TABLE `nuke_empresa` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_encyclopedia`
--

DROP TABLE IF EXISTS `nuke_encyclopedia`;
CREATE TABLE `nuke_encyclopedia` (
  `eid` int(10) NOT NULL auto_increment,
  `title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `elanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  PRIMARY KEY  (`eid`),
  KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_encyclopedia`
--

/*!40000 ALTER TABLE `nuke_encyclopedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_encyclopedia` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_encyclopedia_text`
--

DROP TABLE IF EXISTS `nuke_encyclopedia_text`;
CREATE TABLE `nuke_encyclopedia_text` (
  `tid` int(10) NOT NULL auto_increment,
  `eid` int(10) NOT NULL default '0',
  `title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `text` text collate latin1_spanish_ci NOT NULL,
  `counter` int(10) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `eid` (`eid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_encyclopedia_text`
--

/*!40000 ALTER TABLE `nuke_encyclopedia_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_encyclopedia_text` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_faqanswer`
--

DROP TABLE IF EXISTS `nuke_faqanswer`;
CREATE TABLE `nuke_faqanswer` (
  `id` tinyint(4) NOT NULL auto_increment,
  `id_cat` tinyint(4) NOT NULL default '0',
  `question` varchar(255) collate latin1_spanish_ci default '',
  `answer` text collate latin1_spanish_ci,
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_faqanswer`
--

/*!40000 ALTER TABLE `nuke_faqanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_faqanswer` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_faqcategories`
--

DROP TABLE IF EXISTS `nuke_faqcategories`;
CREATE TABLE `nuke_faqcategories` (
  `id_cat` tinyint(3) NOT NULL auto_increment,
  `categories` varchar(255) collate latin1_spanish_ci default NULL,
  `flanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id_cat`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_faqcategories`
--

/*!40000 ALTER TABLE `nuke_faqcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_faqcategories` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_fotos`
--

DROP TABLE IF EXISTS `nuke_fotos`;
CREATE TABLE `nuke_fotos` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Foto` varchar(255) NOT NULL default '',
  `IDEmpresa` int(10) unsigned NOT NULL default '0',
  `Principal` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto`.`nuke_fotos`
--

/*!40000 ALTER TABLE `nuke_fotos` DISABLE KEYS */;
INSERT INTO `nuke_fotos` (`ID`,`Foto`,`IDEmpresa`,`Principal`) VALUES 
 (1,'/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (1).JPG',5,1),
 (2,'/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (2).JPG',5,0),
 (3,'/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (3).JPG',5,0),
 (4,'/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (4).JPG',5,0),
 (5,'/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing.JPG',5,0);
/*!40000 ALTER TABLE `nuke_fotos` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_groups`
--

DROP TABLE IF EXISTS `nuke_groups`;
CREATE TABLE `nuke_groups` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `points` int(10) NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_groups`
--

/*!40000 ALTER TABLE `nuke_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_groups` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_groups_points`
--

DROP TABLE IF EXISTS `nuke_groups_points`;
CREATE TABLE `nuke_groups_points` (
  `id` int(10) NOT NULL auto_increment,
  `points` int(10) NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_groups_points`
--

/*!40000 ALTER TABLE `nuke_groups_points` DISABLE KEYS */;
INSERT INTO `nuke_groups_points` (`id`,`points`) VALUES 
 (1,0),
 (2,0),
 (3,0),
 (4,0),
 (5,0),
 (6,0),
 (7,0),
 (8,0),
 (9,0),
 (10,0),
 (11,0),
 (12,0),
 (13,0),
 (14,0),
 (15,0),
 (16,0),
 (17,0),
 (18,0),
 (19,0),
 (20,0),
 (21,0);
/*!40000 ALTER TABLE `nuke_groups_points` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_headlines`
--

DROP TABLE IF EXISTS `nuke_headlines`;
CREATE TABLE `nuke_headlines` (
  `hid` int(11) NOT NULL auto_increment,
  `sitename` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `headlinesurl` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`hid`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_headlines`
--

/*!40000 ALTER TABLE `nuke_headlines` DISABLE KEYS */;
INSERT INTO `nuke_headlines` (`hid`,`sitename`,`headlinesurl`) VALUES 
 (1,'AbsoluteGames','http://files.gameaholic.com/agfa.rdf'),
 (2,'BSDToday','http://www.bsdtoday.com/backend/bt.rdf'),
 (3,'BrunchingShuttlecocks','http://www.brunching.com/brunching.rdf'),
 (4,'DailyDaemonNews','http://daily.daemonnews.org/ddn.rdf.php3'),
 (5,'DigitalTheatre','http://www.dtheatre.com/backend.php3?xml=yes'),
 (6,'DotKDE','http://dot.kde.org/rdf'),
 (7,'FreeDOS','http://www.freedos.org/channels/rss.cgi'),
 (8,'Freshmeat','http://freshmeat.net/backend/fm.rdf'),
 (9,'Gnome Desktop','http://www.gnomedesktop.org/backend.php'),
 (10,'HappyPenguin','http://happypenguin.org/html/news.rdf'),
 (11,'HollywoodBitchslap','http://hollywoodbitchslap.com/hbs.rdf'),
 (12,'Learning Linux','http://www.learninglinux.com/backend.php'),
 (13,'LinuxCentral','http://linuxcentral.com/backend/lcnew.rdf'),
 (14,'LinuxJournal','http://www.linuxjournal.com/news.rss'),
 (15,'LinuxWeelyNews','http://lwn.net/headlines/rss'),
 (16,'Listology','http://listology.com/recent.rdf'),
 (17,'MozillaNewsBot','http://www.mozilla.org/newsbot/newsbot.rdf');
INSERT INTO `nuke_headlines` (`hid`,`sitename`,`headlinesurl`) VALUES 
 (18,'NewsForge','http://www.newsforge.com/newsforge.rdf'),
 (19,'NukeResources','http://www.nukeresources.com/backend.php'),
 (20,'NukeScripts','http://www.nukescripts.net/backend.php'),
 (21,'PDABuzz','http://www.pdabuzz.com/netscape.txt'),
 (22,'PHP-Nuke','http://phpnuke.org/backend.php'),
 (23,'PHP.net','http://www.php.net/news.rss'),
 (24,'PHPBuilder','http://phpbuilder.com/rss_feed.php'),
 (25,'PerlMonks','http://www.perlmonks.org/headlines.rdf'),
 (26,'TheNextLevel','http://www.the-nextlevel.com/rdf/tnl.rdf'),
 (27,'WebReference','http://webreference.com/webreference.rdf');
/*!40000 ALTER TABLE `nuke_headlines` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_journal`
--

DROP TABLE IF EXISTS `nuke_journal`;
CREATE TABLE `nuke_journal` (
  `jid` int(11) NOT NULL auto_increment,
  `aid` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(80) collate latin1_spanish_ci default NULL,
  `bodytext` text collate latin1_spanish_ci NOT NULL,
  `mood` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `pdate` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `ptime` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `status` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `mtime` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `mdate` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`jid`),
  KEY `jid` (`jid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_journal`
--

/*!40000 ALTER TABLE `nuke_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_journal` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_journal_comments`
--

DROP TABLE IF EXISTS `nuke_journal_comments`;
CREATE TABLE `nuke_journal_comments` (
  `cid` int(11) NOT NULL auto_increment,
  `rid` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `aid` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `comment` text collate latin1_spanish_ci NOT NULL,
  `pdate` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `ptime` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `rid` (`rid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_journal_comments`
--

/*!40000 ALTER TABLE `nuke_journal_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_journal_comments` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_journal_stats`
--

DROP TABLE IF EXISTS `nuke_journal_stats`;
CREATE TABLE `nuke_journal_stats` (
  `id` int(11) NOT NULL auto_increment,
  `joid` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `nop` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `ldp` varchar(24) collate latin1_spanish_ci NOT NULL default '',
  `ltp` varchar(24) collate latin1_spanish_ci NOT NULL default '',
  `micro` varchar(128) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_journal_stats`
--

/*!40000 ALTER TABLE `nuke_journal_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_journal_stats` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_links_categories`
--

DROP TABLE IF EXISTS `nuke_links_categories`;
CREATE TABLE `nuke_links_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `cdescription` text collate latin1_spanish_ci NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_links_categories`
--

/*!40000 ALTER TABLE `nuke_links_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_links_categories` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_links_editorials`
--

DROP TABLE IF EXISTS `nuke_links_editorials`;
CREATE TABLE `nuke_links_editorials` (
  `linkid` int(11) NOT NULL default '0',
  `adminid` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `editorialtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `editorialtext` text collate latin1_spanish_ci NOT NULL,
  `editorialtitle` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`linkid`),
  KEY `linkid` (`linkid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_links_editorials`
--

/*!40000 ALTER TABLE `nuke_links_editorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_links_editorials` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_links_links`
--

DROP TABLE IF EXISTS `nuke_links_links`;
CREATE TABLE `nuke_links_links` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `date` datetime default NULL,
  `name` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `submitter` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `linkratingsummary` double(6,4) NOT NULL default '0.0000',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_links_links`
--

/*!40000 ALTER TABLE `nuke_links_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_links_links` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_links_modrequest`
--

DROP TABLE IF EXISTS `nuke_links_modrequest`;
CREATE TABLE `nuke_links_modrequest` (
  `requestid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `modifysubmitter` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `brokenlink` int(3) NOT NULL default '0',
  PRIMARY KEY  (`requestid`),
  UNIQUE KEY `requestid` (`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_links_modrequest`
--

/*!40000 ALTER TABLE `nuke_links_modrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_links_modrequest` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_links_newlink`
--

DROP TABLE IF EXISTS `nuke_links_newlink`;
CREATE TABLE `nuke_links_newlink` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  `name` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `submitter` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_links_newlink`
--

/*!40000 ALTER TABLE `nuke_links_newlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_links_newlink` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_links_votedata`
--

DROP TABLE IF EXISTS `nuke_links_votedata`;
CREATE TABLE `nuke_links_votedata` (
  `ratingdbid` int(11) NOT NULL auto_increment,
  `ratinglid` int(11) NOT NULL default '0',
  `ratinguser` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `rating` int(11) NOT NULL default '0',
  `ratinghostname` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `ratingcomments` text collate latin1_spanish_ci NOT NULL,
  `ratingtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_links_votedata`
--

/*!40000 ALTER TABLE `nuke_links_votedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_links_votedata` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_main`
--

DROP TABLE IF EXISTS `nuke_main`;
CREATE TABLE `nuke_main` (
  `main_module` varchar(255) collate latin1_spanish_ci NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_main`
--

/*!40000 ALTER TABLE `nuke_main` DISABLE KEYS */;
INSERT INTO `nuke_main` (`main_module`) VALUES 
 ('News');
/*!40000 ALTER TABLE `nuke_main` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_message`
--

DROP TABLE IF EXISTS `nuke_message`;
CREATE TABLE `nuke_message` (
  `mid` int(11) NOT NULL auto_increment,
  `title` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `content` text collate latin1_spanish_ci NOT NULL,
  `date` varchar(14) collate latin1_spanish_ci NOT NULL default '',
  `expire` int(7) NOT NULL default '0',
  `active` int(1) NOT NULL default '1',
  `view` int(1) NOT NULL default '1',
  `mlanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`mid`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_message`
--

/*!40000 ALTER TABLE `nuke_message` DISABLE KEYS */;
INSERT INTO `nuke_message` (`mid`,`title`,`content`,`date`,`expire`,`active`,`view`,`mlanguage`) VALUES 
 (1,'Bienvenidos a Tu Mundo Automotriz!!!','<p align=\"center\">\r\n<img border=\"0\" src=\"file:///C:/AppServ/www/tumundoautomotriz/imagenes/tuning-x- copy.jpg\" width=\"800\" height=\"600\"></p>','993373194',0,1,1,'');
/*!40000 ALTER TABLE `nuke_message` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_modules`
--

DROP TABLE IF EXISTS `nuke_modules`;
CREATE TABLE `nuke_modules` (
  `mid` int(10) NOT NULL auto_increment,
  `title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `custom_title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  `view` int(1) NOT NULL default '0',
  `inmenu` tinyint(1) NOT NULL default '1',
  `mod_group` int(10) default '0',
  PRIMARY KEY  (`mid`),
  KEY `mid` (`mid`),
  KEY `title` (`title`),
  KEY `custom_title` (`custom_title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_modules`
--

/*!40000 ALTER TABLE `nuke_modules` DISABLE KEYS */;
INSERT INTO `nuke_modules` (`mid`,`title`,`custom_title`,`active`,`view`,`inmenu`,`mod_group`) VALUES 
 (1,'AvantGo','AvantGo',0,0,1,0),
 (2,'Content','Contenido',0,0,1,0),
 (3,'Downloads','Descargas',0,0,1,0),
 (4,'Encyclopedia','Enciclopedia',0,0,1,0),
 (5,'FAQ','FAQ',0,0,1,0),
 (6,'Feedback','Comentarios',0,0,1,0),
 (7,'Forums','Foros',0,0,1,0),
 (8,'Journal','Diario de Usuarios',1,0,1,0),
 (9,'Members_List','Lista de Miembros',0,1,1,0),
 (10,'News','Noticias',1,0,1,0),
 (11,'Private_Messages','Mensajes Privados',0,0,1,0),
 (12,'Recommend_Us','Recomi?ndenos',0,0,1,0),
 (13,'Reviews','An?lisis',0,0,1,0),
 (14,'Search','Buscar',0,0,1,0),
 (15,'Statistics','Estad?sticas',1,0,1,0),
 (16,'Stories_Archive','Archivo de Noticias',1,0,1,0),
 (17,'Submit_News','Enviar Noticias',0,0,1,0),
 (18,'Surveys','Encuestas',0,0,1,0),
 (19,'Top','Top 10',0,0,1,0),
 (20,'Topics','Topics',0,0,1,0),
 (21,'Web_Links','Enlaces Web',0,0,1,0),
 (22,'Your_Account','Tu Cuenta',1,0,1,0),
 (23,'Categorias','Categorias',1,0,1,0),
 (24,'Cate','Cate',1,0,0,0);
INSERT INTO `nuke_modules` (`mid`,`title`,`custom_title`,`active`,`view`,`inmenu`,`mod_group`) VALUES 
 (25,'Muestra','Muestra',1,0,0,0),
 (26,'Guia','Guia',1,0,0,0);
/*!40000 ALTER TABLE `nuke_modules` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_pages`
--

DROP TABLE IF EXISTS `nuke_pages`;
CREATE TABLE `nuke_pages` (
  `pid` int(10) NOT NULL auto_increment,
  `cid` int(10) NOT NULL default '0',
  `title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `subtitle` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  `page_header` text collate latin1_spanish_ci NOT NULL,
  `text` text collate latin1_spanish_ci NOT NULL,
  `page_footer` text collate latin1_spanish_ci NOT NULL,
  `signature` text collate latin1_spanish_ci NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `counter` int(10) NOT NULL default '0',
  `clanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `pid` (`pid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_pages`
--

/*!40000 ALTER TABLE `nuke_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_pages` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_pages_categories`
--

DROP TABLE IF EXISTS `nuke_pages_categories`;
CREATE TABLE `nuke_pages_categories` (
  `cid` int(10) NOT NULL auto_increment,
  `title` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `description` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_pages_categories`
--

/*!40000 ALTER TABLE `nuke_pages_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_pages_categories` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_poll_check`
--

DROP TABLE IF EXISTS `nuke_poll_check`;
CREATE TABLE `nuke_poll_check` (
  `ip` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(14) collate latin1_spanish_ci NOT NULL default '',
  `pollID` int(10) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_poll_check`
--

/*!40000 ALTER TABLE `nuke_poll_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_poll_check` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_poll_data`
--

DROP TABLE IF EXISTS `nuke_poll_data`;
CREATE TABLE `nuke_poll_data` (
  `pollID` int(11) NOT NULL default '0',
  `optionText` char(50) collate latin1_spanish_ci NOT NULL default '',
  `optionCount` int(11) NOT NULL default '0',
  `voteID` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_poll_data`
--

/*!40000 ALTER TABLE `nuke_poll_data` DISABLE KEYS */;
INSERT INTO `nuke_poll_data` (`pollID`,`optionText`,`optionCount`,`voteID`) VALUES 
 (1,'Visual Basic 6',0,1),
 (1,'Visual Basic .Net',0,2),
 (1,'C# 2005',0,3),
 (1,'Fox Pro 9 o anteriores',0,4),
 (1,'Lenguaje C, C++',0,5),
 (1,'No programo',0,6),
 (1,'Otro',0,7),
 (1,'',0,8),
 (1,'',0,9),
 (1,'',0,10),
 (1,'',0,11),
 (1,'',0,12);
/*!40000 ALTER TABLE `nuke_poll_data` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_poll_desc`
--

DROP TABLE IF EXISTS `nuke_poll_desc`;
CREATE TABLE `nuke_poll_desc` (
  `pollID` int(11) NOT NULL auto_increment,
  `pollTitle` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `timeStamp` int(11) NOT NULL default '0',
  `voters` mediumint(9) NOT NULL default '0',
  `planguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `artid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`pollID`),
  KEY `pollID` (`pollID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_poll_desc`
--

/*!40000 ALTER TABLE `nuke_poll_desc` DISABLE KEYS */;
INSERT INTO `nuke_poll_desc` (`pollID`,`pollTitle`,`timeStamp`,`voters`,`planguage`,`artid`) VALUES 
 (1,'Que lenguaje de programación prefieres?',961405160,0,'spanish',0);
/*!40000 ALTER TABLE `nuke_poll_desc` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_pollcomments`
--

DROP TABLE IF EXISTS `nuke_pollcomments`;
CREATE TABLE `nuke_pollcomments` (
  `tid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `pollID` int(11) NOT NULL default '0',
  `date` datetime default NULL,
  `name` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) collate latin1_spanish_ci default NULL,
  `url` varchar(60) collate latin1_spanish_ci default NULL,
  `host_name` varchar(60) collate latin1_spanish_ci default NULL,
  `subject` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `comment` text collate latin1_spanish_ci NOT NULL,
  `score` tinyint(4) NOT NULL default '0',
  `reason` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `pollID` (`pollID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_pollcomments`
--

/*!40000 ALTER TABLE `nuke_pollcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_pollcomments` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_public_messages`
--

DROP TABLE IF EXISTS `nuke_public_messages`;
CREATE TABLE `nuke_public_messages` (
  `mid` int(10) NOT NULL auto_increment,
  `content` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `date` varchar(14) collate latin1_spanish_ci default NULL,
  `who` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`mid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_public_messages`
--

/*!40000 ALTER TABLE `nuke_public_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_public_messages` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_publicidad`
--

DROP TABLE IF EXISTS `nuke_publicidad`;
CREATE TABLE `nuke_publicidad` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Logo` varchar(255) NOT NULL default '',
  `IDEmpresa` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto`.`nuke_publicidad`
--

/*!40000 ALTER TABLE `nuke_publicidad` DISABLE KEYS */;
INSERT INTO `nuke_publicidad` (`ID`,`Logo`,`IDEmpresa`) VALUES 
 (1,'/tumundoautomotriz/imagenes/logos/Perro%20Ereinca.jpg',2),
 (2,'/tumundoautomotriz/imagenes/logos/OST_Logo.jpg',3),
 (3,'/tumundoautomotriz/imagenes/logos/Ejemplo.jpg',0),
 (4,'/tumundoautomotriz/imagenes/logos/Ejemplo.jpg',0),
 (5,'/tumundoautomotriz/imagenes/logos/Ejemplo.jpg',0);
/*!40000 ALTER TABLE `nuke_publicidad` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_queue`
--

DROP TABLE IF EXISTS `nuke_queue`;
CREATE TABLE `nuke_queue` (
  `qid` smallint(5) unsigned NOT NULL auto_increment,
  `uid` mediumint(9) NOT NULL default '0',
  `uname` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  `subject` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `story` text collate latin1_spanish_ci,
  `storyext` text collate latin1_spanish_ci NOT NULL,
  `timestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `topic` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `alanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`qid`),
  KEY `qid` (`qid`),
  KEY `uid` (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_queue`
--

/*!40000 ALTER TABLE `nuke_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_queue` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_quotes`
--

DROP TABLE IF EXISTS `nuke_quotes`;
CREATE TABLE `nuke_quotes` (
  `qid` int(10) unsigned NOT NULL auto_increment,
  `quote` text collate latin1_spanish_ci,
  PRIMARY KEY  (`qid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_quotes`
--

/*!40000 ALTER TABLE `nuke_quotes` DISABLE KEYS */;
INSERT INTO `nuke_quotes` (`qid`,`quote`) VALUES 
 (1,'Nos morituri te salutamus - CBHS');
/*!40000 ALTER TABLE `nuke_quotes` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_referer`
--

DROP TABLE IF EXISTS `nuke_referer`;
CREATE TABLE `nuke_referer` (
  `rid` int(11) NOT NULL auto_increment,
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_referer`
--

/*!40000 ALTER TABLE `nuke_referer` DISABLE KEYS */;
INSERT INTO `nuke_referer` (`rid`,`url`) VALUES 
 (1,'http://localhost/php/admin.php?op=Configure'),
 (2,'http://localhost/php/admin.php'),
 (3,'http://localhost/php/admin.php?op=messages'),
 (4,'http://localhost/php/admin.php?op=messages'),
 (5,'http://localhost/php/admin.php?op=messages'),
 (6,'http://localhost/php/modules.php?name=Your_Account&op=userinfo&bypass=1&username=ArBo_HaCkEr'),
 (7,'http://localhost/php/admin.php'),
 (8,'http://localhost/tumundoautomotriz/admin.php?op=BlocksAdmin'),
 (9,'http://localhost/tumundoautomotriz/admin.php?op=BlocksEdit&bid=14'),
 (10,'http://localhost/tumundoautomotriz/admin.php?op=Configure');
/*!40000 ALTER TABLE `nuke_referer` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_related`
--

DROP TABLE IF EXISTS `nuke_related`;
CREATE TABLE `nuke_related` (
  `rid` int(11) NOT NULL auto_increment,
  `tid` int(11) NOT NULL default '0',
  `name` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(200) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `rid` (`rid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_related`
--

/*!40000 ALTER TABLE `nuke_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_related` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_reviews`
--

DROP TABLE IF EXISTS `nuke_reviews`;
CREATE TABLE `nuke_reviews` (
  `id` int(10) NOT NULL auto_increment,
  `date` date NOT NULL default '0000-00-00',
  `title` varchar(150) collate latin1_spanish_ci NOT NULL default '',
  `text` text collate latin1_spanish_ci NOT NULL,
  `reviewer` varchar(20) collate latin1_spanish_ci default NULL,
  `email` varchar(60) collate latin1_spanish_ci default NULL,
  `score` int(10) NOT NULL default '0',
  `cover` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url_title` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `hits` int(10) NOT NULL default '0',
  `rlanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_reviews`
--

/*!40000 ALTER TABLE `nuke_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_reviews` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_reviews_add`
--

DROP TABLE IF EXISTS `nuke_reviews_add`;
CREATE TABLE `nuke_reviews_add` (
  `id` int(10) NOT NULL auto_increment,
  `date` date default NULL,
  `title` varchar(150) collate latin1_spanish_ci NOT NULL default '',
  `text` text collate latin1_spanish_ci NOT NULL,
  `reviewer` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) collate latin1_spanish_ci default NULL,
  `score` int(10) NOT NULL default '0',
  `url` varchar(100) collate latin1_spanish_ci NOT NULL default '',
  `url_title` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `rlanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_reviews_add`
--

/*!40000 ALTER TABLE `nuke_reviews_add` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_reviews_add` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_reviews_comments`
--

DROP TABLE IF EXISTS `nuke_reviews_comments`;
CREATE TABLE `nuke_reviews_comments` (
  `cid` int(10) NOT NULL auto_increment,
  `rid` int(10) NOT NULL default '0',
  `userid` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `date` datetime default NULL,
  `comments` text collate latin1_spanish_ci,
  `score` int(10) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `rid` (`rid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_reviews_comments`
--

/*!40000 ALTER TABLE `nuke_reviews_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_reviews_comments` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_reviews_main`
--

DROP TABLE IF EXISTS `nuke_reviews_main`;
CREATE TABLE `nuke_reviews_main` (
  `title` varchar(100) collate latin1_spanish_ci default NULL,
  `description` text collate latin1_spanish_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_reviews_main`
--

/*!40000 ALTER TABLE `nuke_reviews_main` DISABLE KEYS */;
INSERT INTO `nuke_reviews_main` (`title`,`description`) VALUES 
 ('Titulo de la Secci?n An?lisis','Descripci?n Extendida de la Secci?n An?lisis');
/*!40000 ALTER TABLE `nuke_reviews_main` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_session`
--

DROP TABLE IF EXISTS `nuke_session`;
CREATE TABLE `nuke_session` (
  `uname` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(14) collate latin1_spanish_ci NOT NULL default '',
  `host_addr` varchar(48) collate latin1_spanish_ci NOT NULL default '',
  `guest` int(1) NOT NULL default '0',
  KEY `time` (`time`),
  KEY `guest` (`guest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_session`
--

/*!40000 ALTER TABLE `nuke_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_session` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_stats_date`
--

DROP TABLE IF EXISTS `nuke_stats_date`;
CREATE TABLE `nuke_stats_date` (
  `year` smallint(6) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `date` tinyint(4) NOT NULL default '0',
  `hits` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_stats_date`
--

/*!40000 ALTER TABLE `nuke_stats_date` DISABLE KEYS */;
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,1,1,0),
 (2005,1,2,0),
 (2005,1,3,0),
 (2005,1,4,0),
 (2005,1,5,0),
 (2005,1,6,0),
 (2005,1,7,0),
 (2005,1,8,0),
 (2005,1,9,0),
 (2005,1,10,0),
 (2005,1,11,0),
 (2005,1,12,0),
 (2005,1,13,0),
 (2005,1,14,0),
 (2005,1,15,0),
 (2005,1,16,0),
 (2005,1,17,0),
 (2005,1,18,0),
 (2005,1,19,0),
 (2005,1,20,0),
 (2005,1,21,0),
 (2005,1,22,0),
 (2005,1,23,0),
 (2005,1,24,0),
 (2005,1,25,0),
 (2005,1,26,0),
 (2005,1,27,0),
 (2005,1,28,0),
 (2005,1,29,0),
 (2005,1,30,0),
 (2005,1,31,0),
 (2005,2,1,0),
 (2005,2,2,0),
 (2005,2,3,0),
 (2005,2,4,0),
 (2005,2,5,0),
 (2005,2,6,0),
 (2005,2,7,0),
 (2005,2,8,0),
 (2005,2,9,0),
 (2005,2,10,0),
 (2005,2,11,0),
 (2005,2,12,0),
 (2005,2,13,0),
 (2005,2,14,0),
 (2005,2,15,0),
 (2005,2,16,0),
 (2005,2,17,0),
 (2005,2,18,0),
 (2005,2,19,0),
 (2005,2,20,0),
 (2005,2,21,0),
 (2005,2,22,0),
 (2005,2,23,0),
 (2005,2,24,0),
 (2005,2,25,0),
 (2005,2,26,0),
 (2005,2,27,0),
 (2005,2,28,0),
 (2005,3,1,0),
 (2005,3,2,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,3,3,0),
 (2005,3,4,0),
 (2005,3,5,0),
 (2005,3,6,0),
 (2005,3,7,0),
 (2005,3,8,0),
 (2005,3,9,0),
 (2005,3,10,0),
 (2005,3,11,0),
 (2005,3,12,0),
 (2005,3,13,0),
 (2005,3,14,0),
 (2005,3,15,0),
 (2005,3,16,0),
 (2005,3,17,0),
 (2005,3,18,0),
 (2005,3,19,0),
 (2005,3,20,0),
 (2005,3,21,0),
 (2005,3,22,0),
 (2005,3,23,0),
 (2005,3,24,0),
 (2005,3,25,0),
 (2005,3,26,0),
 (2005,3,27,0),
 (2005,3,28,0),
 (2005,3,29,0),
 (2005,3,30,0),
 (2005,3,31,0),
 (2005,4,1,0),
 (2005,4,2,0),
 (2005,4,3,0),
 (2005,4,4,0),
 (2005,4,5,0),
 (2005,4,6,0),
 (2005,4,7,0),
 (2005,4,8,0),
 (2005,4,9,0),
 (2005,4,10,0),
 (2005,4,11,0),
 (2005,4,12,0),
 (2005,4,13,0),
 (2005,4,14,0),
 (2005,4,15,0),
 (2005,4,16,0),
 (2005,4,17,0),
 (2005,4,18,0),
 (2005,4,19,0),
 (2005,4,20,0),
 (2005,4,21,0),
 (2005,4,22,0),
 (2005,4,23,0),
 (2005,4,24,0),
 (2005,4,25,0),
 (2005,4,26,0),
 (2005,4,27,0),
 (2005,4,28,0),
 (2005,4,29,0),
 (2005,4,30,0),
 (2005,5,1,0),
 (2005,5,2,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,5,3,0),
 (2005,5,4,0),
 (2005,5,5,0),
 (2005,5,6,0),
 (2005,5,7,0),
 (2005,5,8,0),
 (2005,5,9,0),
 (2005,5,10,0),
 (2005,5,11,0),
 (2005,5,12,0),
 (2005,5,13,0),
 (2005,5,14,0),
 (2005,5,15,0),
 (2005,5,16,0),
 (2005,5,17,0),
 (2005,5,18,0),
 (2005,5,19,0),
 (2005,5,20,0),
 (2005,5,21,0),
 (2005,5,22,0),
 (2005,5,23,0),
 (2005,5,24,0),
 (2005,5,25,0),
 (2005,5,26,0),
 (2005,5,27,0),
 (2005,5,28,0),
 (2005,5,29,0),
 (2005,5,30,0),
 (2005,5,31,0),
 (2005,6,1,0),
 (2005,6,2,0),
 (2005,6,3,0),
 (2005,6,4,0),
 (2005,6,5,0),
 (2005,6,6,0),
 (2005,6,7,0),
 (2005,6,8,0),
 (2005,6,9,0),
 (2005,6,10,0),
 (2005,6,11,0),
 (2005,6,12,0),
 (2005,6,13,0),
 (2005,6,14,0),
 (2005,6,15,0),
 (2005,6,16,0),
 (2005,6,17,0),
 (2005,6,18,0),
 (2005,6,19,0),
 (2005,6,20,0),
 (2005,6,21,0),
 (2005,6,22,0),
 (2005,6,23,0),
 (2005,6,24,0),
 (2005,6,25,0),
 (2005,6,26,0),
 (2005,6,27,0),
 (2005,6,28,0),
 (2005,6,29,0),
 (2005,6,30,0),
 (2005,7,1,0),
 (2005,7,2,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,7,3,0),
 (2005,7,4,0),
 (2005,7,5,0),
 (2005,7,6,0),
 (2005,7,7,0),
 (2005,7,8,0),
 (2005,7,9,0),
 (2005,7,10,0),
 (2005,7,11,0),
 (2005,7,12,0),
 (2005,7,13,0),
 (2005,7,14,0),
 (2005,7,15,0),
 (2005,7,16,0),
 (2005,7,17,0),
 (2005,7,18,0),
 (2005,7,19,0),
 (2005,7,20,0),
 (2005,7,21,0),
 (2005,7,22,0),
 (2005,7,23,0),
 (2005,7,24,0),
 (2005,7,25,0),
 (2005,7,26,0),
 (2005,7,27,0),
 (2005,7,28,0),
 (2005,7,29,0),
 (2005,7,30,0),
 (2005,7,31,0),
 (2005,8,1,0),
 (2005,8,2,0),
 (2005,8,3,0),
 (2005,8,4,0),
 (2005,8,5,0),
 (2005,8,6,0),
 (2005,8,7,0),
 (2005,8,8,0),
 (2005,8,9,0),
 (2005,8,10,0),
 (2005,8,11,0),
 (2005,8,12,0),
 (2005,8,13,0),
 (2005,8,14,0),
 (2005,8,15,0),
 (2005,8,16,0),
 (2005,8,17,0),
 (2005,8,18,0),
 (2005,8,19,0),
 (2005,8,20,0),
 (2005,8,21,0),
 (2005,8,22,0),
 (2005,8,23,0),
 (2005,8,24,0),
 (2005,8,25,0),
 (2005,8,26,0),
 (2005,8,27,0),
 (2005,8,28,0),
 (2005,8,29,0),
 (2005,8,30,0),
 (2005,8,31,0),
 (2005,9,1,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,9,2,0),
 (2005,9,3,0),
 (2005,9,4,0),
 (2005,9,5,0),
 (2005,9,6,0),
 (2005,9,7,0),
 (2005,9,8,0),
 (2005,9,9,0),
 (2005,9,10,0),
 (2005,9,11,0),
 (2005,9,12,0),
 (2005,9,13,0),
 (2005,9,14,0),
 (2005,9,15,0),
 (2005,9,16,0),
 (2005,9,17,0),
 (2005,9,18,0),
 (2005,9,19,0),
 (2005,9,20,0),
 (2005,9,21,0),
 (2005,9,22,0),
 (2005,9,23,0),
 (2005,9,24,0),
 (2005,9,25,0),
 (2005,9,26,0),
 (2005,9,27,0),
 (2005,9,28,0),
 (2005,9,29,0),
 (2005,9,30,0),
 (2005,10,1,0),
 (2005,10,2,0),
 (2005,10,3,0),
 (2005,10,4,0),
 (2005,10,5,0),
 (2005,10,6,0),
 (2005,10,7,0),
 (2005,10,8,0),
 (2005,10,9,0),
 (2005,10,10,0),
 (2005,10,11,0),
 (2005,10,12,43),
 (2005,10,13,0),
 (2005,10,14,0),
 (2005,10,15,0),
 (2005,10,16,1),
 (2005,10,17,0),
 (2005,10,18,0),
 (2005,10,19,0),
 (2005,10,20,0),
 (2005,10,21,0),
 (2005,10,22,0),
 (2005,10,23,0),
 (2005,10,24,0),
 (2005,10,25,0),
 (2005,10,26,0),
 (2005,10,27,0),
 (2005,10,28,0),
 (2005,10,29,1),
 (2005,10,30,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,10,31,0),
 (2005,11,1,0),
 (2005,11,2,0),
 (2005,11,3,0),
 (2005,11,4,0),
 (2005,11,5,0),
 (2005,11,6,0),
 (2005,11,7,0),
 (2005,11,8,0),
 (2005,11,9,0),
 (2005,11,10,0),
 (2005,11,11,0),
 (2005,11,12,0),
 (2005,11,13,0),
 (2005,11,14,0),
 (2005,11,15,0),
 (2005,11,16,0),
 (2005,11,17,0),
 (2005,11,18,0),
 (2005,11,19,0),
 (2005,11,20,0),
 (2005,11,21,0),
 (2005,11,22,0),
 (2005,11,23,0),
 (2005,11,24,0),
 (2005,11,25,0),
 (2005,11,26,0),
 (2005,11,27,0),
 (2005,11,28,0),
 (2005,11,29,0),
 (2005,11,30,0),
 (2005,12,1,0),
 (2005,12,2,0),
 (2005,12,3,0),
 (2005,12,4,0),
 (2005,12,5,0),
 (2005,12,6,0),
 (2005,12,7,0),
 (2005,12,8,0),
 (2005,12,9,0),
 (2005,12,10,0),
 (2005,12,11,0),
 (2005,12,12,0),
 (2005,12,13,0),
 (2005,12,14,0),
 (2005,12,15,0),
 (2005,12,16,0),
 (2005,12,17,0),
 (2005,12,18,0),
 (2005,12,19,0),
 (2005,12,20,0),
 (2005,12,21,0),
 (2005,12,22,0),
 (2005,12,23,0),
 (2005,12,24,0),
 (2005,12,25,0),
 (2005,12,26,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2005,12,27,0),
 (2005,12,28,0),
 (2005,12,29,0),
 (2005,12,30,0),
 (2005,12,31,0),
 (2006,1,1,0),
 (2006,1,2,0),
 (2006,1,3,0),
 (2006,1,4,0),
 (2006,1,5,0),
 (2006,1,6,0),
 (2006,1,7,0),
 (2006,1,8,0),
 (2006,1,9,0),
 (2006,1,10,0),
 (2006,1,11,0),
 (2006,1,12,0),
 (2006,1,13,0),
 (2006,1,14,0),
 (2006,1,15,0),
 (2006,1,16,0),
 (2006,1,17,0),
 (2006,1,18,0),
 (2006,1,19,0),
 (2006,1,20,0),
 (2006,1,21,0),
 (2006,1,22,0),
 (2006,1,23,0),
 (2006,1,24,0),
 (2006,1,25,0),
 (2006,1,26,0),
 (2006,1,27,0),
 (2006,1,28,0),
 (2006,1,29,0),
 (2006,1,30,0),
 (2006,1,31,0),
 (2006,2,1,0),
 (2006,2,2,0),
 (2006,2,3,0),
 (2006,2,4,0),
 (2006,2,5,0),
 (2006,2,6,0),
 (2006,2,7,0),
 (2006,2,8,0),
 (2006,2,9,0),
 (2006,2,10,0),
 (2006,2,11,0),
 (2006,2,12,0),
 (2006,2,13,0),
 (2006,2,14,0),
 (2006,2,15,0),
 (2006,2,16,0),
 (2006,2,17,0),
 (2006,2,18,0),
 (2006,2,19,0),
 (2006,2,20,0),
 (2006,2,21,0),
 (2006,2,22,0),
 (2006,2,23,0),
 (2006,2,24,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2006,2,25,0),
 (2006,2,26,68),
 (2006,2,27,12),
 (2006,2,28,266),
 (2006,3,1,78),
 (2006,3,2,8),
 (2006,3,3,0),
 (2006,3,4,0),
 (2006,3,5,0),
 (2006,3,6,0),
 (2006,3,7,77),
 (2006,3,8,79),
 (2006,3,9,211),
 (2006,3,10,47),
 (2006,3,11,0),
 (2006,3,12,0),
 (2006,3,13,95),
 (2006,3,14,56),
 (2006,3,15,0),
 (2006,3,16,69),
 (2006,3,17,0),
 (2006,3,18,0),
 (2006,3,19,0),
 (2006,3,20,0),
 (2006,3,21,0),
 (2006,3,22,0),
 (2006,3,23,0),
 (2006,3,24,0),
 (2006,3,25,0),
 (2006,3,26,0),
 (2006,3,27,0),
 (2006,3,28,0),
 (2006,3,29,0),
 (2006,3,30,0),
 (2006,3,31,0),
 (2006,4,1,0),
 (2006,4,2,0),
 (2006,4,3,0),
 (2006,4,4,0),
 (2006,4,5,0),
 (2006,4,6,0),
 (2006,4,7,0),
 (2006,4,8,0),
 (2006,4,9,0),
 (2006,4,10,0),
 (2006,4,11,0),
 (2006,4,12,0),
 (2006,4,13,0),
 (2006,4,14,0),
 (2006,4,15,0),
 (2006,4,16,0),
 (2006,4,17,0),
 (2006,4,18,0),
 (2006,4,19,0),
 (2006,4,20,0),
 (2006,4,21,0),
 (2006,4,22,0),
 (2006,4,23,0),
 (2006,4,24,0),
 (2006,4,25,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2006,4,26,0),
 (2006,4,27,0),
 (2006,4,28,0),
 (2006,4,29,0),
 (2006,4,30,0),
 (2006,5,1,0),
 (2006,5,2,0),
 (2006,5,3,0),
 (2006,5,4,0),
 (2006,5,5,0),
 (2006,5,6,0),
 (2006,5,7,0),
 (2006,5,8,0),
 (2006,5,9,0),
 (2006,5,10,0),
 (2006,5,11,0),
 (2006,5,12,0),
 (2006,5,13,0),
 (2006,5,14,0),
 (2006,5,15,0),
 (2006,5,16,0),
 (2006,5,17,0),
 (2006,5,18,0),
 (2006,5,19,0),
 (2006,5,20,0),
 (2006,5,21,0),
 (2006,5,22,0),
 (2006,5,23,0),
 (2006,5,24,0),
 (2006,5,25,0),
 (2006,5,26,0),
 (2006,5,27,0),
 (2006,5,28,0),
 (2006,5,29,0),
 (2006,5,30,0),
 (2006,5,31,0),
 (2006,6,1,0),
 (2006,6,2,0),
 (2006,6,3,0),
 (2006,6,4,0),
 (2006,6,5,0),
 (2006,6,6,0),
 (2006,6,7,0),
 (2006,6,8,0),
 (2006,6,9,0),
 (2006,6,10,0),
 (2006,6,11,0),
 (2006,6,12,0),
 (2006,6,13,0),
 (2006,6,14,0),
 (2006,6,15,0),
 (2006,6,16,0),
 (2006,6,17,0),
 (2006,6,18,0),
 (2006,6,19,0),
 (2006,6,20,0),
 (2006,6,21,0),
 (2006,6,22,0),
 (2006,6,23,0),
 (2006,6,24,0),
 (2006,6,25,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2006,6,26,0),
 (2006,6,27,0),
 (2006,6,28,0),
 (2006,6,29,0),
 (2006,6,30,0),
 (2006,7,1,0),
 (2006,7,2,0),
 (2006,7,3,0),
 (2006,7,4,0),
 (2006,7,5,0),
 (2006,7,6,0),
 (2006,7,7,0),
 (2006,7,8,0),
 (2006,7,9,0),
 (2006,7,10,0),
 (2006,7,11,0),
 (2006,7,12,0),
 (2006,7,13,0),
 (2006,7,14,0),
 (2006,7,15,0),
 (2006,7,16,0),
 (2006,7,17,0),
 (2006,7,18,0),
 (2006,7,19,0),
 (2006,7,20,0),
 (2006,7,21,0),
 (2006,7,22,0),
 (2006,7,23,0),
 (2006,7,24,0),
 (2006,7,25,0),
 (2006,7,26,0),
 (2006,7,27,0),
 (2006,7,28,0),
 (2006,7,29,0),
 (2006,7,30,0),
 (2006,7,31,0),
 (2006,8,1,0),
 (2006,8,2,0),
 (2006,8,3,0),
 (2006,8,4,0),
 (2006,8,5,0),
 (2006,8,6,0),
 (2006,8,7,0),
 (2006,8,8,0),
 (2006,8,9,0),
 (2006,8,10,0),
 (2006,8,11,0),
 (2006,8,12,0),
 (2006,8,13,0),
 (2006,8,14,0),
 (2006,8,15,0),
 (2006,8,16,0),
 (2006,8,17,0),
 (2006,8,18,0),
 (2006,8,19,0),
 (2006,8,20,0),
 (2006,8,21,0),
 (2006,8,22,0),
 (2006,8,23,0),
 (2006,8,24,0),
 (2006,8,25,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2006,8,26,0),
 (2006,8,27,0),
 (2006,8,28,0),
 (2006,8,29,0),
 (2006,8,30,0),
 (2006,8,31,0),
 (2006,9,1,0),
 (2006,9,2,0),
 (2006,9,3,0),
 (2006,9,4,0),
 (2006,9,5,0),
 (2006,9,6,0),
 (2006,9,7,0),
 (2006,9,8,0),
 (2006,9,9,0),
 (2006,9,10,0),
 (2006,9,11,0),
 (2006,9,12,0),
 (2006,9,13,0),
 (2006,9,14,0),
 (2006,9,15,0),
 (2006,9,16,0),
 (2006,9,17,0),
 (2006,9,18,0),
 (2006,9,19,0),
 (2006,9,20,0),
 (2006,9,21,0),
 (2006,9,22,0),
 (2006,9,23,0),
 (2006,9,24,0),
 (2006,9,25,0),
 (2006,9,26,0),
 (2006,9,27,0),
 (2006,9,28,0),
 (2006,9,29,0),
 (2006,9,30,0),
 (2006,10,1,0),
 (2006,10,2,0),
 (2006,10,3,0),
 (2006,10,4,0),
 (2006,10,5,0),
 (2006,10,6,0),
 (2006,10,7,0),
 (2006,10,8,0),
 (2006,10,9,0),
 (2006,10,10,0),
 (2006,10,11,0),
 (2006,10,12,0),
 (2006,10,13,0),
 (2006,10,14,0),
 (2006,10,15,0),
 (2006,10,16,0),
 (2006,10,17,0),
 (2006,10,18,0),
 (2006,10,19,0),
 (2006,10,20,0),
 (2006,10,21,0),
 (2006,10,22,0),
 (2006,10,23,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2006,10,24,0),
 (2006,10,25,0),
 (2006,10,26,0),
 (2006,10,27,0),
 (2006,10,28,0),
 (2006,10,29,0),
 (2006,10,30,0),
 (2006,10,31,0),
 (2006,11,1,0),
 (2006,11,2,0),
 (2006,11,3,0),
 (2006,11,4,0),
 (2006,11,5,0),
 (2006,11,6,0),
 (2006,11,7,0),
 (2006,11,8,0),
 (2006,11,9,0),
 (2006,11,10,0),
 (2006,11,11,0),
 (2006,11,12,0),
 (2006,11,13,0),
 (2006,11,14,0),
 (2006,11,15,0),
 (2006,11,16,0),
 (2006,11,17,0),
 (2006,11,18,0),
 (2006,11,19,0),
 (2006,11,20,0),
 (2006,11,21,0),
 (2006,11,22,0),
 (2006,11,23,0),
 (2006,11,24,0),
 (2006,11,25,0),
 (2006,11,26,0),
 (2006,11,27,0),
 (2006,11,28,0),
 (2006,11,29,0),
 (2006,11,30,0),
 (2006,12,1,0),
 (2006,12,2,0),
 (2006,12,3,0),
 (2006,12,4,0),
 (2006,12,5,0),
 (2006,12,6,0),
 (2006,12,7,0),
 (2006,12,8,0),
 (2006,12,9,0),
 (2006,12,10,0),
 (2006,12,11,0),
 (2006,12,12,0),
 (2006,12,13,0),
 (2006,12,14,0),
 (2006,12,15,0),
 (2006,12,16,0),
 (2006,12,17,0),
 (2006,12,18,0),
 (2006,12,19,0);
INSERT INTO `nuke_stats_date` (`year`,`month`,`date`,`hits`) VALUES 
 (2006,12,20,0),
 (2006,12,21,0),
 (2006,12,22,0),
 (2006,12,23,0),
 (2006,12,24,0),
 (2006,12,25,0),
 (2006,12,26,0),
 (2006,12,27,0),
 (2006,12,28,0),
 (2006,12,29,0),
 (2006,12,30,0),
 (2006,12,31,0);
/*!40000 ALTER TABLE `nuke_stats_date` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_stats_hour`
--

DROP TABLE IF EXISTS `nuke_stats_hour`;
CREATE TABLE `nuke_stats_hour` (
  `year` smallint(6) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `date` tinyint(4) NOT NULL default '0',
  `hour` tinyint(4) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_stats_hour`
--

/*!40000 ALTER TABLE `nuke_stats_hour` DISABLE KEYS */;
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2005,10,12,0,0),
 (2005,10,12,1,0),
 (2005,10,12,2,0),
 (2005,10,12,3,0),
 (2005,10,12,4,0),
 (2005,10,12,5,0),
 (2005,10,12,6,0),
 (2005,10,12,7,0),
 (2005,10,12,8,0),
 (2005,10,12,9,0),
 (2005,10,12,10,0),
 (2005,10,12,11,0),
 (2005,10,12,12,0),
 (2005,10,12,13,0),
 (2005,10,12,14,34),
 (2005,10,12,15,9),
 (2005,10,12,16,0),
 (2005,10,12,17,0),
 (2005,10,12,18,0),
 (2005,10,12,19,0),
 (2005,10,12,20,0),
 (2005,10,12,21,0),
 (2005,10,12,22,0),
 (2005,10,12,23,0),
 (2005,10,16,0,0),
 (2005,10,16,1,0),
 (2005,10,16,2,0),
 (2005,10,16,3,0),
 (2005,10,16,4,0),
 (2005,10,16,5,0),
 (2005,10,16,6,0),
 (2005,10,16,7,0),
 (2005,10,16,8,0),
 (2005,10,16,9,0),
 (2005,10,16,10,0),
 (2005,10,16,11,0),
 (2005,10,16,12,0),
 (2005,10,16,13,0),
 (2005,10,16,14,0),
 (2005,10,16,15,1),
 (2005,10,16,16,0),
 (2005,10,16,17,0),
 (2005,10,16,18,0),
 (2005,10,16,19,0),
 (2005,10,16,20,0),
 (2005,10,16,21,0),
 (2005,10,16,22,0),
 (2005,10,16,23,0),
 (2005,10,29,0,0);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2005,10,29,1,0),
 (2005,10,29,2,0),
 (2005,10,29,3,0),
 (2005,10,29,4,0),
 (2005,10,29,5,0),
 (2005,10,29,6,0),
 (2005,10,29,7,0),
 (2005,10,29,8,0),
 (2005,10,29,9,0),
 (2005,10,29,10,0),
 (2005,10,29,11,0),
 (2005,10,29,12,0),
 (2005,10,29,13,0),
 (2005,10,29,14,0),
 (2005,10,29,15,0),
 (2005,10,29,16,0),
 (2005,10,29,17,0),
 (2005,10,29,18,0),
 (2005,10,29,19,0),
 (2005,10,29,20,0),
 (2005,10,29,21,0),
 (2005,10,29,22,1),
 (2005,10,29,23,0),
 (2006,2,26,0,0),
 (2006,2,26,1,0),
 (2006,2,26,2,0),
 (2006,2,26,3,0),
 (2006,2,26,4,0),
 (2006,2,26,5,0),
 (2006,2,26,6,0),
 (2006,2,26,7,0),
 (2006,2,26,8,0),
 (2006,2,26,9,0),
 (2006,2,26,10,0),
 (2006,2,26,11,0),
 (2006,2,26,12,0),
 (2006,2,26,13,0),
 (2006,2,26,14,0),
 (2006,2,26,15,6),
 (2006,2,26,16,0),
 (2006,2,26,17,0),
 (2006,2,26,18,1),
 (2006,2,26,19,20),
 (2006,2,26,20,10),
 (2006,2,26,21,8),
 (2006,2,26,22,23),
 (2006,2,26,23,0),
 (2006,2,27,0,0),
 (2006,2,27,1,0),
 (2006,2,27,2,0);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2006,2,27,3,0),
 (2006,2,27,4,0),
 (2006,2,27,5,0),
 (2006,2,27,6,0),
 (2006,2,27,7,0),
 (2006,2,27,8,0),
 (2006,2,27,9,0),
 (2006,2,27,10,0),
 (2006,2,27,11,0),
 (2006,2,27,12,0),
 (2006,2,27,13,0),
 (2006,2,27,14,0),
 (2006,2,27,15,0),
 (2006,2,27,16,0),
 (2006,2,27,17,0),
 (2006,2,27,18,0),
 (2006,2,27,19,0),
 (2006,2,27,20,0),
 (2006,2,27,21,2),
 (2006,2,27,22,10),
 (2006,2,27,23,0),
 (2006,2,28,0,0),
 (2006,2,28,1,39),
 (2006,2,28,2,27),
 (2006,2,28,3,0),
 (2006,2,28,4,0),
 (2006,2,28,5,0),
 (2006,2,28,6,0),
 (2006,2,28,7,0),
 (2006,2,28,8,0),
 (2006,2,28,9,0),
 (2006,2,28,10,0),
 (2006,2,28,11,0),
 (2006,2,28,12,6),
 (2006,2,28,13,28),
 (2006,2,28,14,25),
 (2006,2,28,15,0),
 (2006,2,28,16,4),
 (2006,2,28,17,80),
 (2006,2,28,18,53),
 (2006,2,28,19,0),
 (2006,2,28,20,2),
 (2006,2,28,21,0),
 (2006,2,28,22,2),
 (2006,2,28,23,0),
 (2006,3,1,0,0),
 (2006,3,1,1,0),
 (2006,3,1,2,0),
 (2006,3,1,3,0),
 (2006,3,1,4,0),
 (2006,3,1,5,0);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2006,3,1,6,0),
 (2006,3,1,7,0),
 (2006,3,1,8,0),
 (2006,3,1,9,0),
 (2006,3,1,10,4),
 (2006,3,1,11,0),
 (2006,3,1,12,1),
 (2006,3,1,13,17),
 (2006,3,1,14,54),
 (2006,3,1,15,0),
 (2006,3,1,16,2),
 (2006,3,1,17,0),
 (2006,3,1,18,0),
 (2006,3,1,19,0),
 (2006,3,1,20,0),
 (2006,3,1,21,0),
 (2006,3,1,22,0),
 (2006,3,1,23,0),
 (2006,3,2,0,0),
 (2006,3,2,1,0),
 (2006,3,2,2,0),
 (2006,3,2,3,0),
 (2006,3,2,4,0),
 (2006,3,2,5,0),
 (2006,3,2,6,0),
 (2006,3,2,7,0),
 (2006,3,2,8,0),
 (2006,3,2,9,8),
 (2006,3,2,10,0),
 (2006,3,2,11,0),
 (2006,3,2,12,0),
 (2006,3,2,13,0),
 (2006,3,2,14,0),
 (2006,3,2,15,0),
 (2006,3,2,16,0),
 (2006,3,2,17,0),
 (2006,3,2,18,0),
 (2006,3,2,19,0),
 (2006,3,2,20,0),
 (2006,3,2,21,0),
 (2006,3,2,22,0),
 (2006,3,2,23,0),
 (2006,3,7,0,0),
 (2006,3,7,1,0),
 (2006,3,7,2,0),
 (2006,3,7,3,0),
 (2006,3,7,4,0),
 (2006,3,7,5,0),
 (2006,3,7,6,0),
 (2006,3,7,7,0),
 (2006,3,7,8,0),
 (2006,3,7,9,0),
 (2006,3,7,10,19),
 (2006,3,7,11,0);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2006,3,7,12,24),
 (2006,3,7,13,9),
 (2006,3,7,14,0),
 (2006,3,7,15,0),
 (2006,3,7,16,6),
 (2006,3,7,17,19),
 (2006,3,7,18,0),
 (2006,3,7,19,0),
 (2006,3,7,20,0),
 (2006,3,7,21,0),
 (2006,3,7,22,0),
 (2006,3,7,23,0),
 (2006,3,8,0,0),
 (2006,3,8,1,0),
 (2006,3,8,2,0),
 (2006,3,8,3,0),
 (2006,3,8,4,0),
 (2006,3,8,5,0),
 (2006,3,8,6,0),
 (2006,3,8,7,0),
 (2006,3,8,8,0),
 (2006,3,8,9,0),
 (2006,3,8,10,0),
 (2006,3,8,11,0),
 (2006,3,8,12,0),
 (2006,3,8,13,0),
 (2006,3,8,14,13),
 (2006,3,8,15,36),
 (2006,3,8,16,0),
 (2006,3,8,17,30),
 (2006,3,8,18,0),
 (2006,3,8,19,0),
 (2006,3,8,20,0),
 (2006,3,8,21,0),
 (2006,3,8,22,0),
 (2006,3,8,23,0),
 (2006,3,9,0,0),
 (2006,3,9,1,0),
 (2006,3,9,2,0),
 (2006,3,9,3,0),
 (2006,3,9,4,0),
 (2006,3,9,5,0),
 (2006,3,9,6,0),
 (2006,3,9,7,0),
 (2006,3,9,8,0),
 (2006,3,9,9,0),
 (2006,3,9,10,0),
 (2006,3,9,11,30),
 (2006,3,9,12,77),
 (2006,3,9,13,0),
 (2006,3,9,14,51),
 (2006,3,9,15,1),
 (2006,3,9,16,3);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2006,3,9,17,49),
 (2006,3,9,18,0),
 (2006,3,9,19,0),
 (2006,3,9,20,0),
 (2006,3,9,21,0),
 (2006,3,9,22,0),
 (2006,3,9,23,0),
 (2006,3,10,0,0),
 (2006,3,10,1,0),
 (2006,3,10,2,0),
 (2006,3,10,3,0),
 (2006,3,10,4,0),
 (2006,3,10,5,0),
 (2006,3,10,6,0),
 (2006,3,10,7,0),
 (2006,3,10,8,0),
 (2006,3,10,9,5),
 (2006,3,10,10,31),
 (2006,3,10,11,0),
 (2006,3,10,12,0),
 (2006,3,10,13,0),
 (2006,3,10,14,0),
 (2006,3,10,15,11),
 (2006,3,10,16,0),
 (2006,3,10,17,0),
 (2006,3,10,18,0),
 (2006,3,10,19,0),
 (2006,3,10,20,0),
 (2006,3,10,21,0),
 (2006,3,10,22,0),
 (2006,3,10,23,0),
 (2006,3,13,0,0),
 (2006,3,13,1,0),
 (2006,3,13,2,0),
 (2006,3,13,3,0),
 (2006,3,13,4,0),
 (2006,3,13,5,0),
 (2006,3,13,6,0),
 (2006,3,13,7,0),
 (2006,3,13,8,0),
 (2006,3,13,9,0),
 (2006,3,13,10,0),
 (2006,3,13,11,1),
 (2006,3,13,12,81),
 (2006,3,13,13,3),
 (2006,3,13,14,10),
 (2006,3,13,15,0),
 (2006,3,13,16,0),
 (2006,3,13,17,0),
 (2006,3,13,18,0),
 (2006,3,13,19,0);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2006,3,13,20,0),
 (2006,3,13,21,0),
 (2006,3,13,22,0),
 (2006,3,13,23,0),
 (2006,3,14,0,0),
 (2006,3,14,1,0),
 (2006,3,14,2,0),
 (2006,3,14,3,0),
 (2006,3,14,4,0),
 (2006,3,14,5,0),
 (2006,3,14,6,0),
 (2006,3,14,7,0),
 (2006,3,14,8,0),
 (2006,3,14,9,0),
 (2006,3,14,10,0),
 (2006,3,14,11,0),
 (2006,3,14,12,0),
 (2006,3,14,13,0),
 (2006,3,14,14,9),
 (2006,3,14,15,4),
 (2006,3,14,16,14),
 (2006,3,14,17,29),
 (2006,3,14,18,0),
 (2006,3,14,19,0),
 (2006,3,14,20,0),
 (2006,3,14,21,0),
 (2006,3,14,22,0),
 (2006,3,14,23,0),
 (2006,3,16,0,0),
 (2006,3,16,1,0),
 (2006,3,16,2,0),
 (2006,3,16,3,0),
 (2006,3,16,4,0),
 (2006,3,16,5,0),
 (2006,3,16,6,0),
 (2006,3,16,7,0),
 (2006,3,16,8,0),
 (2006,3,16,9,0),
 (2006,3,16,10,0),
 (2006,3,16,11,11),
 (2006,3,16,12,29),
 (2006,3,16,13,24),
 (2006,3,16,14,0),
 (2006,3,16,15,2),
 (2006,3,16,16,3),
 (2006,3,16,17,0),
 (2006,3,16,18,0),
 (2006,3,16,19,0),
 (2006,3,16,20,0),
 (2006,3,16,21,0),
 (2006,3,16,22,0);
INSERT INTO `nuke_stats_hour` (`year`,`month`,`date`,`hour`,`hits`) VALUES 
 (2006,3,16,23,0);
/*!40000 ALTER TABLE `nuke_stats_hour` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_stats_month`
--

DROP TABLE IF EXISTS `nuke_stats_month`;
CREATE TABLE `nuke_stats_month` (
  `year` smallint(6) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `hits` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_stats_month`
--

/*!40000 ALTER TABLE `nuke_stats_month` DISABLE KEYS */;
INSERT INTO `nuke_stats_month` (`year`,`month`,`hits`) VALUES 
 (2005,1,0),
 (2005,2,0),
 (2005,3,0),
 (2005,4,0),
 (2005,5,0),
 (2005,6,0),
 (2005,7,0),
 (2005,8,0),
 (2005,9,0),
 (2005,10,45),
 (2005,11,0),
 (2005,12,0),
 (2006,1,0),
 (2006,2,346),
 (2006,3,720),
 (2006,4,0),
 (2006,5,0),
 (2006,6,0),
 (2006,7,0),
 (2006,8,0),
 (2006,9,0),
 (2006,10,0),
 (2006,11,0),
 (2006,12,0);
/*!40000 ALTER TABLE `nuke_stats_month` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_stats_year`
--

DROP TABLE IF EXISTS `nuke_stats_year`;
CREATE TABLE `nuke_stats_year` (
  `year` smallint(6) NOT NULL default '0',
  `hits` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_stats_year`
--

/*!40000 ALTER TABLE `nuke_stats_year` DISABLE KEYS */;
INSERT INTO `nuke_stats_year` (`year`,`hits`) VALUES 
 (2005,45),
 (2006,1066);
/*!40000 ALTER TABLE `nuke_stats_year` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_stories`
--

DROP TABLE IF EXISTS `nuke_stories`;
CREATE TABLE `nuke_stories` (
  `sid` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `aid` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(80) collate latin1_spanish_ci default NULL,
  `time` datetime default NULL,
  `hometext` text collate latin1_spanish_ci,
  `bodytext` text collate latin1_spanish_ci NOT NULL,
  `comments` int(11) default '0',
  `counter` mediumint(8) unsigned default NULL,
  `topic` int(3) NOT NULL default '1',
  `informant` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `notes` text collate latin1_spanish_ci NOT NULL,
  `ihome` int(1) NOT NULL default '0',
  `alanguage` varchar(30) collate latin1_spanish_ci NOT NULL default '',
  `acomm` int(1) NOT NULL default '0',
  `haspoll` int(1) NOT NULL default '0',
  `pollID` int(10) NOT NULL default '0',
  `score` int(10) NOT NULL default '0',
  `ratings` int(10) NOT NULL default '0',
  `associated` text collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`sid`),
  KEY `sid` (`sid`),
  KEY `catid` (`catid`),
  KEY `counter` (`counter`),
  KEY `topic` (`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_stories`
--

/*!40000 ALTER TABLE `nuke_stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_stories` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_stories_cat`
--

DROP TABLE IF EXISTS `nuke_stories_cat`;
CREATE TABLE `nuke_stories_cat` (
  `catid` int(11) NOT NULL auto_increment,
  `title` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `counter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_stories_cat`
--

/*!40000 ALTER TABLE `nuke_stories_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_stories_cat` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_subscriptions`
--

DROP TABLE IF EXISTS `nuke_subscriptions`;
CREATE TABLE `nuke_subscriptions` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) default '0',
  `subscription_expire` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  KEY `id` (`id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_subscriptions`
--

/*!40000 ALTER TABLE `nuke_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_subscriptions` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_telefonos`
--

DROP TABLE IF EXISTS `nuke_telefonos`;
CREATE TABLE `nuke_telefonos` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Telefono` varchar(90) NOT NULL default '',
  `Tipo` varchar(50) NOT NULL default '',
  `IDEmpresa` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto`.`nuke_telefonos`
--

/*!40000 ALTER TABLE `nuke_telefonos` DISABLE KEYS */;
INSERT INTO `nuke_telefonos` (`ID`,`Telefono`,`Tipo`,`IDEmpresa`) VALUES 
 (1,'0416-8127960','Celular',3),
 (2,'0212-3475490','Casa',3),
 (3,'0212-3412180','Oficina',1),
 (4,'0212-3410207','Oficina',2),
 (5,'0212-3410661','Fax',2),
 (6,'0414-3195785','Celular',2);
/*!40000 ALTER TABLE `nuke_telefonos` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_topics`
--

DROP TABLE IF EXISTS `nuke_topics`;
CREATE TABLE `nuke_topics` (
  `topicid` int(3) NOT NULL auto_increment,
  `topicname` varchar(20) collate latin1_spanish_ci default NULL,
  `topicimage` varchar(20) collate latin1_spanish_ci default NULL,
  `topictext` varchar(40) collate latin1_spanish_ci default NULL,
  `counter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`topicid`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_topics`
--

/*!40000 ALTER TABLE `nuke_topics` DISABLE KEYS */;
INSERT INTO `nuke_topics` (`topicid`,`topicname`,`topicimage`,`topictext`,`counter`) VALUES 
 (1,'phpnuke','phpnuke.gif','PHP-Nuke',0);
/*!40000 ALTER TABLE `nuke_topics` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_users`
--

DROP TABLE IF EXISTS `nuke_users`;
CREATE TABLE `nuke_users` (
  `user_id` int(11) NOT NULL auto_increment,
  `name` varchar(60) collate latin1_spanish_ci NOT NULL default '',
  `username` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `user_email` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `femail` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `user_website` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `user_avatar` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `user_regdate` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `user_icq` varchar(15) collate latin1_spanish_ci default NULL,
  `user_occ` varchar(100) collate latin1_spanish_ci default NULL,
  `user_from` varchar(100) collate latin1_spanish_ci default NULL,
  `user_interests` varchar(150) collate latin1_spanish_ci NOT NULL default '',
  `user_sig` varchar(255) collate latin1_spanish_ci default NULL,
  `user_viewemail` tinyint(2) default NULL,
  `user_theme` int(3) default NULL,
  `user_aim` varchar(18) collate latin1_spanish_ci default NULL,
  `user_yim` varchar(25) collate latin1_spanish_ci default NULL,
  `user_msnm` varchar(25) collate latin1_spanish_ci default NULL,
  `user_password` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  `storynum` tinyint(4) NOT NULL default '10',
  `umode` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `uorder` tinyint(1) NOT NULL default '0',
  `thold` tinyint(1) NOT NULL default '0',
  `noscore` tinyint(1) NOT NULL default '0',
  `bio` tinytext collate latin1_spanish_ci NOT NULL,
  `ublockon` tinyint(1) NOT NULL default '0',
  `ublock` tinytext collate latin1_spanish_ci NOT NULL,
  `theme` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `commentmax` int(11) NOT NULL default '4096',
  `counter` int(11) NOT NULL default '0',
  `newsletter` int(1) NOT NULL default '0',
  `user_posts` int(10) NOT NULL default '0',
  `user_attachsig` int(2) NOT NULL default '0',
  `user_rank` int(10) NOT NULL default '0',
  `user_level` int(10) NOT NULL default '1',
  `broadcast` tinyint(1) NOT NULL default '1',
  `popmeson` tinyint(1) NOT NULL default '0',
  `user_active` tinyint(1) default '1',
  `user_session_time` int(11) NOT NULL default '0',
  `user_session_page` smallint(5) NOT NULL default '0',
  `user_lastvisit` int(11) NOT NULL default '0',
  `user_timezone` tinyint(4) NOT NULL default '10',
  `user_style` tinyint(4) default NULL,
  `user_lang` varchar(255) collate latin1_spanish_ci NOT NULL default 'spanish',
  `user_dateformat` varchar(14) collate latin1_spanish_ci NOT NULL default 'D M d, Y g:i a',
  `user_new_privmsg` smallint(5) unsigned NOT NULL default '0',
  `user_unread_privmsg` smallint(5) unsigned NOT NULL default '0',
  `user_last_privmsg` int(11) NOT NULL default '0',
  `user_emailtime` int(11) default NULL,
  `user_allowhtml` tinyint(1) default '1',
  `user_allowbbcode` tinyint(1) default '1',
  `user_allowsmile` tinyint(1) default '1',
  `user_allowavatar` tinyint(1) NOT NULL default '1',
  `user_allow_pm` tinyint(1) NOT NULL default '1',
  `user_allow_viewonline` tinyint(1) NOT NULL default '1',
  `user_notify` tinyint(1) NOT NULL default '0',
  `user_notify_pm` tinyint(1) NOT NULL default '0',
  `user_popup_pm` tinyint(1) NOT NULL default '0',
  `user_avatar_type` tinyint(4) NOT NULL default '3',
  `user_sig_bbcode_uid` varchar(10) collate latin1_spanish_ci default NULL,
  `user_actkey` varchar(32) collate latin1_spanish_ci default NULL,
  `user_newpasswd` varchar(32) collate latin1_spanish_ci default NULL,
  `points` int(10) default '0',
  `last_ip` varchar(15) collate latin1_spanish_ci NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  KEY `uid` (`user_id`),
  KEY `uname` (`username`),
  KEY `user_session_time` (`user_session_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_users`
--

/*!40000 ALTER TABLE `nuke_users` DISABLE KEYS */;
INSERT INTO `nuke_users` (`user_id`,`name`,`username`,`user_email`,`femail`,`user_website`,`user_avatar`,`user_regdate`,`user_icq`,`user_occ`,`user_from`,`user_interests`,`user_sig`,`user_viewemail`,`user_theme`,`user_aim`,`user_yim`,`user_msnm`,`user_password`,`storynum`,`umode`,`uorder`,`thold`,`noscore`,`bio`,`ublockon`,`ublock`,`theme`,`commentmax`,`counter`,`newsletter`,`user_posts`,`user_attachsig`,`user_rank`,`user_level`,`broadcast`,`popmeson`,`user_active`,`user_session_time`,`user_session_page`,`user_lastvisit`,`user_timezone`,`user_style`,`user_lang`,`user_dateformat`,`user_new_privmsg`,`user_unread_privmsg`,`user_last_privmsg`,`user_emailtime`,`user_allowhtml`,`user_allowbbcode`,`user_allowsmile`,`user_allowavatar`,`user_allow_pm`,`user_allow_viewonline`,`user_notify`,`user_notify_pm`,`user_popup_pm`,`user_avatar_type`,`user_sig_bbcode_uid`,`user_actkey`,`user_newpasswd`,`points`,`last_ip`) VALUES 
 (1,'','Anonymous','','','','blank.gif','Nov 10, 2000','','','','','',0,0,'','','','',10,'',0,0,0,'',0,'','',4096,0,0,0,0,0,1,0,0,1,0,0,0,10,NULL,'spanish','D M d, Y g:i a',0,0,0,NULL,1,1,1,1,1,1,1,1,0,3,NULL,NULL,NULL,0,'0'),
 (2,'','ArBo_HaCkEr','arbo@arbo.com.ve','','http://localhost/php/','gallery/blank.gif','Oct 12, 2005',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'e6f6778b2c3cd029cdabab154b8d147f',10,'',0,0,0,'',0,'','XetaTheme',4096,0,0,0,0,0,2,1,0,1,0,0,0,10,NULL,'english','D M d, Y g:i a',0,0,0,NULL,1,1,1,1,1,1,0,0,0,3,NULL,NULL,NULL,0,'127.0.0.1');
/*!40000 ALTER TABLE `nuke_users` ENABLE KEYS */;


--
-- Table structure for table `auto`.`nuke_users_temp`
--

DROP TABLE IF EXISTS `nuke_users_temp`;
CREATE TABLE `nuke_users_temp` (
  `user_id` int(10) NOT NULL auto_increment,
  `username` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `user_email` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `user_password` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  `user_regdate` varchar(20) collate latin1_spanish_ci NOT NULL default '',
  `check_num` varchar(50) collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(14) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Dumping data for table `auto`.`nuke_users_temp`
--

/*!40000 ALTER TABLE `nuke_users_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuke_users_temp` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
