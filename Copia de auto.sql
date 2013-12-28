-- phpMyAdmin SQL Dump
-- version 2.6.1-rc2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 16-03-2006 a las 17:05:45
-- Versión del servidor: 5.0.15
-- Versión de PHP: 4.3.10
-- 
-- Base de datos: `auto`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_authors`
-- 

CREATE TABLE `nuke_authors` (
  `aid` varchar(25) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `name` varchar(50) character set latin1 collate latin1_spanish_ci default NULL,
  `url` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `pwd` varchar(40) character set latin1 collate latin1_spanish_ci default NULL,
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
  `admlanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`aid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_authors`
-- 

INSERT INTO `nuke_authors` VALUES ('ArBo_HaCkEr', 'God', 'http://localhost/php/', 'arbo@arbo.com.ve', 'e6f6778b2c3cd029cdabab154b8d147f', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_autonews`
-- 

CREATE TABLE `nuke_autonews` (
  `anid` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `aid` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(80) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(19) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `hometext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `bodytext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `topic` int(3) NOT NULL default '1',
  `informant` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `notes` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `ihome` int(1) NOT NULL default '0',
  `alanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `acomm` int(1) NOT NULL default '0',
  `associated` text character set latin1 collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`anid`),
  KEY `anid` (`anid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_autonews`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_banned_ip`
-- 

CREATE TABLE `nuke_banned_ip` (
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(15) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `reason` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_banned_ip`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_banner`
-- 

CREATE TABLE `nuke_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `clickurl` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `alttext` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `date` datetime default NULL,
  `dateend` datetime default NULL,
  `type` tinyint(1) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_banner`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bannerclient`
-- 

CREATE TABLE `nuke_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `contact` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `login` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `passwd` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `extrainfo` text character set latin1 collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bannerclient`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbauth_access`
-- 

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbauth_access`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbbanlist`
-- 

CREATE TABLE `nuke_bbbanlist` (
  `ban_id` mediumint(8) unsigned NOT NULL auto_increment,
  `ban_userid` mediumint(8) NOT NULL default '0',
  `ban_ip` varchar(8) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ban_email` varchar(255) character set latin1 collate latin1_spanish_ci default NULL,
  `ban_time` int(11) default NULL,
  `ban_expire_time` int(11) default NULL,
  `ban_by_userid` mediumint(8) default NULL,
  `ban_priv_reason` text character set latin1 collate latin1_spanish_ci,
  `ban_pub_reason_mode` tinyint(1) default NULL,
  `ban_pub_reason` text character set latin1 collate latin1_spanish_ci,
  PRIMARY KEY  (`ban_id`),
  KEY `ban_ip_user_id` (`ban_ip`,`ban_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbbanlist`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbcategories`
-- 

CREATE TABLE `nuke_bbcategories` (
  `cat_id` mediumint(8) unsigned NOT NULL auto_increment,
  `cat_title` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `cat_order` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cat_id`),
  KEY `cat_order` (`cat_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbcategories`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbconfig`
-- 

CREATE TABLE `nuke_bbconfig` (
  `config_name` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `config_value` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbconfig`
-- 

INSERT INTO `nuke_bbconfig` VALUES ('config_id', '1');
INSERT INTO `nuke_bbconfig` VALUES ('board_disable', '0');
INSERT INTO `nuke_bbconfig` VALUES ('sitename', 'MiSitio.com');
INSERT INTO `nuke_bbconfig` VALUES ('site_desc', '');
INSERT INTO `nuke_bbconfig` VALUES ('cookie_name', 'phpbb2mysql');
INSERT INTO `nuke_bbconfig` VALUES ('cookie_path', '/');
INSERT INTO `nuke_bbconfig` VALUES ('cookie_domain', 'MiSitio.com');
INSERT INTO `nuke_bbconfig` VALUES ('cookie_secure', '0');
INSERT INTO `nuke_bbconfig` VALUES ('session_length', '3600');
INSERT INTO `nuke_bbconfig` VALUES ('allow_html', '1');
INSERT INTO `nuke_bbconfig` VALUES ('allow_html_tags', 'b,i,u,pre');
INSERT INTO `nuke_bbconfig` VALUES ('allow_bbcode', '1');
INSERT INTO `nuke_bbconfig` VALUES ('allow_smilies', '1');
INSERT INTO `nuke_bbconfig` VALUES ('allow_sig', '1');
INSERT INTO `nuke_bbconfig` VALUES ('allow_namechange', '0');
INSERT INTO `nuke_bbconfig` VALUES ('allow_theme_create', '0');
INSERT INTO `nuke_bbconfig` VALUES ('allow_avatar_local', '1');
INSERT INTO `nuke_bbconfig` VALUES ('allow_avatar_remote', '0');
INSERT INTO `nuke_bbconfig` VALUES ('allow_avatar_upload', '0');
INSERT INTO `nuke_bbconfig` VALUES ('override_user_style', '1');
INSERT INTO `nuke_bbconfig` VALUES ('posts_per_page', '15');
INSERT INTO `nuke_bbconfig` VALUES ('topics_per_page', '50');
INSERT INTO `nuke_bbconfig` VALUES ('hot_threshold', '25');
INSERT INTO `nuke_bbconfig` VALUES ('max_poll_options', '10');
INSERT INTO `nuke_bbconfig` VALUES ('max_sig_chars', '255');
INSERT INTO `nuke_bbconfig` VALUES ('max_inbox_privmsgs', '100');
INSERT INTO `nuke_bbconfig` VALUES ('max_sentbox_privmsgs', '100');
INSERT INTO `nuke_bbconfig` VALUES ('max_savebox_privmsgs', '100');
INSERT INTO `nuke_bbconfig` VALUES ('board_email_sig', 'Gracias, Webmaster@MiSitio.com');
INSERT INTO `nuke_bbconfig` VALUES ('board_email', 'Webmaster@MiSitio.com');
INSERT INTO `nuke_bbconfig` VALUES ('smtp_delivery', '0');
INSERT INTO `nuke_bbconfig` VALUES ('smtp_host', '');
INSERT INTO `nuke_bbconfig` VALUES ('require_activation', '0');
INSERT INTO `nuke_bbconfig` VALUES ('flood_interval', '15');
INSERT INTO `nuke_bbconfig` VALUES ('board_email_form', '0');
INSERT INTO `nuke_bbconfig` VALUES ('avatar_filesize', '6144');
INSERT INTO `nuke_bbconfig` VALUES ('avatar_max_width', '80');
INSERT INTO `nuke_bbconfig` VALUES ('avatar_max_height', '80');
INSERT INTO `nuke_bbconfig` VALUES ('avatar_path', 'modules/Forums/images/avatars');
INSERT INTO `nuke_bbconfig` VALUES ('avatar_gallery_path', 'modules/Forums/images/avatars');
INSERT INTO `nuke_bbconfig` VALUES ('smilies_path', 'modules/Forums/images/smiles');
INSERT INTO `nuke_bbconfig` VALUES ('default_style', '1');
INSERT INTO `nuke_bbconfig` VALUES ('default_dateformat', 'D M d, Y g:i a');
INSERT INTO `nuke_bbconfig` VALUES ('board_timezone', '10');
INSERT INTO `nuke_bbconfig` VALUES ('prune_enable', '0');
INSERT INTO `nuke_bbconfig` VALUES ('privmsg_disable', '0');
INSERT INTO `nuke_bbconfig` VALUES ('gzip_compress', '0');
INSERT INTO `nuke_bbconfig` VALUES ('coppa_fax', '');
INSERT INTO `nuke_bbconfig` VALUES ('coppa_mail', '');
INSERT INTO `nuke_bbconfig` VALUES ('board_startdate', '1013908210');
INSERT INTO `nuke_bbconfig` VALUES ('default_lang', 'spanish');
INSERT INTO `nuke_bbconfig` VALUES ('smtp_username', '');
INSERT INTO `nuke_bbconfig` VALUES ('smtp_password', '');
INSERT INTO `nuke_bbconfig` VALUES ('record_online_users', '2');
INSERT INTO `nuke_bbconfig` VALUES ('record_online_date', '1034668530');
INSERT INTO `nuke_bbconfig` VALUES ('server_name', 'MiSitio.com');
INSERT INTO `nuke_bbconfig` VALUES ('server_port', '80');
INSERT INTO `nuke_bbconfig` VALUES ('script_path', '/modules/Forums/');
INSERT INTO `nuke_bbconfig` VALUES ('version', '.0.10');
INSERT INTO `nuke_bbconfig` VALUES ('enable_confirm', '0');
INSERT INTO `nuke_bbconfig` VALUES ('sendmail_fix', '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbdisallow`
-- 

CREATE TABLE `nuke_bbdisallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL auto_increment,
  `disallow_username` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbdisallow`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbforum_prune`
-- 

CREATE TABLE `nuke_bbforum_prune` (
  `prune_id` mediumint(8) unsigned NOT NULL auto_increment,
  `forum_id` smallint(5) unsigned NOT NULL default '0',
  `prune_days` tinyint(4) unsigned NOT NULL default '0',
  `prune_freq` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`prune_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbforum_prune`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbforums`
-- 

CREATE TABLE `nuke_bbforums` (
  `forum_id` smallint(5) unsigned NOT NULL auto_increment,
  `cat_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_name` varchar(150) character set latin1 collate latin1_spanish_ci default NULL,
  `forum_desc` text character set latin1 collate latin1_spanish_ci,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbforums`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbgroups`
-- 

CREATE TABLE `nuke_bbgroups` (
  `group_id` mediumint(8) NOT NULL auto_increment,
  `group_type` tinyint(4) NOT NULL default '1',
  `group_name` varchar(40) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `group_description` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `group_moderator` mediumint(8) NOT NULL default '0',
  `group_single_user` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`group_id`),
  KEY `group_single_user` (`group_single_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbgroups`
-- 

INSERT INTO `nuke_bbgroups` VALUES (1, 1, 'Anonimo', 'Usuario Invitado', 0, 1);
INSERT INTO `nuke_bbgroups` VALUES (3, 2, 'Moderadores', 'Moderadores de este Foro', 5, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbposts`
-- 

CREATE TABLE `nuke_bbposts` (
  `post_id` mediumint(8) unsigned NOT NULL auto_increment,
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `forum_id` smallint(5) unsigned NOT NULL default '0',
  `poster_id` mediumint(8) NOT NULL default '0',
  `post_time` int(11) NOT NULL default '0',
  `poster_ip` varchar(8) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `post_username` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbposts`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbposts_text`
-- 

CREATE TABLE `nuke_bbposts_text` (
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `bbcode_uid` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `post_subject` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `post_text` text character set latin1 collate latin1_spanish_ci,
  PRIMARY KEY  (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbposts_text`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbprivmsgs`
-- 

CREATE TABLE `nuke_bbprivmsgs` (
  `privmsgs_id` mediumint(8) unsigned NOT NULL auto_increment,
  `privmsgs_type` tinyint(4) NOT NULL default '0',
  `privmsgs_subject` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL default '0',
  `privmsgs_to_userid` mediumint(8) NOT NULL default '0',
  `privmsgs_date` int(11) NOT NULL default '0',
  `privmsgs_ip` varchar(8) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL default '1',
  `privmsgs_enable_html` tinyint(1) NOT NULL default '0',
  `privmsgs_enable_smilies` tinyint(1) NOT NULL default '1',
  `privmsgs_attach_sig` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`privmsgs_id`),
  KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  KEY `privmsgs_to_userid` (`privmsgs_to_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbprivmsgs`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbprivmsgs_text`
-- 

CREATE TABLE `nuke_bbprivmsgs_text` (
  `privmsgs_text_id` mediumint(8) unsigned NOT NULL default '0',
  `privmsgs_bbcode_uid` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '0',
  `privmsgs_text` text character set latin1 collate latin1_spanish_ci,
  PRIMARY KEY  (`privmsgs_text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbprivmsgs_text`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbranks`
-- 

CREATE TABLE `nuke_bbranks` (
  `rank_id` smallint(5) unsigned NOT NULL auto_increment,
  `rank_title` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `rank_min` mediumint(8) NOT NULL default '0',
  `rank_max` mediumint(8) NOT NULL default '0',
  `rank_special` tinyint(1) default '0',
  `rank_image` varchar(255) character set latin1 collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbranks`
-- 

INSERT INTO `nuke_bbranks` VALUES (1, 'Administrador', -1, -1, 1, 'modules/Forums/images/ranks/6stars.gif');
INSERT INTO `nuke_bbranks` VALUES (2, 'Invitado', 1, 0, 0, 'modules/Forums/images/ranks/1star.gif');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbsearch_results`
-- 

CREATE TABLE `nuke_bbsearch_results` (
  `search_id` int(11) unsigned NOT NULL default '0',
  `session_id` varchar(32) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `search_array` text character set latin1 collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`search_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbsearch_results`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbsearch_wordlist`
-- 

CREATE TABLE `nuke_bbsearch_wordlist` (
  `word_text` varchar(50) character set latin1 collate latin1_bin NOT NULL default '',
  `word_id` mediumint(8) unsigned NOT NULL auto_increment,
  `word_common` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`word_text`),
  KEY `word_id` (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbsearch_wordlist`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbsearch_wordmatch`
-- 

CREATE TABLE `nuke_bbsearch_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL default '0',
  `word_id` mediumint(8) unsigned NOT NULL default '0',
  `title_match` tinyint(1) NOT NULL default '0',
  KEY `word_id` (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbsearch_wordmatch`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbsessions`
-- 

CREATE TABLE `nuke_bbsessions` (
  `session_id` char(32) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `session_user_id` mediumint(8) NOT NULL default '0',
  `session_start` int(11) NOT NULL default '0',
  `session_time` int(11) NOT NULL default '0',
  `session_ip` char(8) character set latin1 collate latin1_spanish_ci NOT NULL default '0',
  `session_page` int(11) NOT NULL default '0',
  `session_logged_in` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`session_id`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_id_ip_user_id` (`session_id`,`session_ip`,`session_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbsessions`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbsmilies`
-- 

CREATE TABLE `nuke_bbsmilies` (
  `smilies_id` smallint(5) unsigned NOT NULL auto_increment,
  `code` varchar(50) character set latin1 collate latin1_spanish_ci default NULL,
  `smile_url` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `emoticon` varchar(75) character set latin1 collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`smilies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbsmilies`
-- 

INSERT INTO `nuke_bbsmilies` VALUES (1, ':D', 'icon_biggrin.gif', 'Muy Contento');
INSERT INTO `nuke_bbsmilies` VALUES (2, ':-D', 'icon_biggrin.gif', 'Muy Contento');
INSERT INTO `nuke_bbsmilies` VALUES (3, ':grin:', 'icon_biggrin.gif', 'Muy Contento');
INSERT INTO `nuke_bbsmilies` VALUES (4, ':)', 'icon_smile.gif', 'Sonrisa');
INSERT INTO `nuke_bbsmilies` VALUES (5, ':-)', 'icon_smile.gif', 'Sonrisa');
INSERT INTO `nuke_bbsmilies` VALUES (6, ':smile:', 'icon_smile.gif', 'Sonrisa');
INSERT INTO `nuke_bbsmilies` VALUES (7, ':(', 'icon_sad.gif', 'Triste');
INSERT INTO `nuke_bbsmilies` VALUES (8, ':-(', 'icon_sad.gif', 'Triste');
INSERT INTO `nuke_bbsmilies` VALUES (9, ':sad:', 'icon_sad.gif', 'Triste');
INSERT INTO `nuke_bbsmilies` VALUES (10, ':o', 'icon_surprised.gif', 'Sorprendido');
INSERT INTO `nuke_bbsmilies` VALUES (11, ':-o', 'icon_surprised.gif', 'Sorprendido');
INSERT INTO `nuke_bbsmilies` VALUES (12, ':eek:', 'icon_surprised.gif', 'Sorprendido');
INSERT INTO `nuke_bbsmilies` VALUES (13, '8O', 'icon_eek.gif', 'Alterado');
INSERT INTO `nuke_bbsmilies` VALUES (14, '8-O', 'icon_eek.gif', 'Alterado');
INSERT INTO `nuke_bbsmilies` VALUES (15, ':shock:', 'icon_eek.gif', 'Alterado');
INSERT INTO `nuke_bbsmilies` VALUES (16, ':?', 'icon_confused.gif', 'Confundido');
INSERT INTO `nuke_bbsmilies` VALUES (17, ':-?', 'icon_confused.gif', 'Confundido');
INSERT INTO `nuke_bbsmilies` VALUES (18, ':???:', 'icon_confused.gif', 'Confundido');
INSERT INTO `nuke_bbsmilies` VALUES (19, '8)', 'icon_cool.gif', 'Tranquilo');
INSERT INTO `nuke_bbsmilies` VALUES (20, '8-)', 'icon_cool.gif', 'Tranquilo');
INSERT INTO `nuke_bbsmilies` VALUES (21, ':cool:', 'icon_cool.gif', 'Tranquilo');
INSERT INTO `nuke_bbsmilies` VALUES (22, ':lol:', 'icon_lol.gif', 'Risa');
INSERT INTO `nuke_bbsmilies` VALUES (23, ':x', 'icon_mad.gif', 'Loco');
INSERT INTO `nuke_bbsmilies` VALUES (24, ':-x', 'icon_mad.gif', 'Loco');
INSERT INTO `nuke_bbsmilies` VALUES (25, ':mad:', 'icon_mad.gif', 'Loco');
INSERT INTO `nuke_bbsmilies` VALUES (26, ':P', 'icon_razz.gif', 'Razz');
INSERT INTO `nuke_bbsmilies` VALUES (27, ':-P', 'icon_razz.gif', 'Razz');
INSERT INTO `nuke_bbsmilies` VALUES (28, ':razz:', 'icon_razz.gif', 'Razz');
INSERT INTO `nuke_bbsmilies` VALUES (29, ':oops:', 'icon_redface.gif', 'Preocupado');
INSERT INTO `nuke_bbsmilies` VALUES (30, ':cry:', 'icon_cry.gif', 'LLorando o Muy Triste');
INSERT INTO `nuke_bbsmilies` VALUES (31, ':evil:', 'icon_evil.gif', 'Loco');
INSERT INTO `nuke_bbsmilies` VALUES (32, ':twisted:', 'icon_twisted.gif', 'Twisted Evil');
INSERT INTO `nuke_bbsmilies` VALUES (33, ':roll:', 'icon_rolleyes.gif', 'Ojos Movidos');
INSERT INTO `nuke_bbsmilies` VALUES (34, ':wink:', 'icon_wink.gif', 'Gui?o');
INSERT INTO `nuke_bbsmilies` VALUES (35, ';)', 'icon_wink.gif', 'Gui?o');
INSERT INTO `nuke_bbsmilies` VALUES (36, ';-)', 'icon_wink.gif', 'Gui?o');
INSERT INTO `nuke_bbsmilies` VALUES (37, ':!:', 'icon_exclaim.gif', 'Exclamaci?n');
INSERT INTO `nuke_bbsmilies` VALUES (38, ':?:', 'icon_question.gif', 'Pregunta');
INSERT INTO `nuke_bbsmilies` VALUES (39, ':idea:', 'icon_idea.gif', 'Idea');
INSERT INTO `nuke_bbsmilies` VALUES (40, ':arrow:', 'icon_arrow.gif', 'Flecha');
INSERT INTO `nuke_bbsmilies` VALUES (41, ':|', 'icon_neutral.gif', 'Neutral');
INSERT INTO `nuke_bbsmilies` VALUES (42, ':-|', 'icon_neutral.gif', 'Neutral');
INSERT INTO `nuke_bbsmilies` VALUES (43, ':neutral:', 'icon_neutral.gif', 'Neutral');
INSERT INTO `nuke_bbsmilies` VALUES (44, ':mrgreen:', 'icon_mrgreen.gif', 'Sr. Green');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbthemes`
-- 

CREATE TABLE `nuke_bbthemes` (
  `themes_id` mediumint(8) unsigned NOT NULL auto_increment,
  `template_name` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `style_name` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `head_stylesheet` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `body_background` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `body_bgcolor` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `body_text` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `body_link` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `body_vlink` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `body_alink` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `body_hlink` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_color1` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_color2` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_color3` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_class1` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_class2` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_class3` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `th_color1` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `th_color2` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `th_color3` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `th_class1` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `th_class2` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `th_class3` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `td_color1` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `td_color2` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `td_color3` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `td_class1` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `td_class2` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `td_class3` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `fontface1` varchar(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontface2` varchar(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontface3` varchar(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontsize1` tinyint(4) default NULL,
  `fontsize2` tinyint(4) default NULL,
  `fontsize3` tinyint(4) default NULL,
  `fontcolor1` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `fontcolor2` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `fontcolor3` varchar(6) character set latin1 collate latin1_spanish_ci default NULL,
  `span_class1` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `span_class2` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `span_class3` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `img_size_poll` smallint(5) unsigned default NULL,
  `img_size_privmsg` smallint(5) unsigned default NULL,
  PRIMARY KEY  (`themes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbthemes`
-- 

INSERT INTO `nuke_bbthemes` VALUES (1, 'subSilver', 'subSilver', 'subSilver.css', '', '0E3259', '000000', '006699', '5493B4', '', 'DD6900', 'EFEFEF', 'DEE3E7', 'D1D7DC', '', '', '', '98AAB1', '006699', 'FFFFFF', 'cellpic1.gif', 'cellpic3.gif', 'cellpic2.jpg', 'FAFAFA', 'FFFFFF', '', 'row1', 'row2', '', 'Verdana, Arial, Helvetica, sans-serif', 'Trebuchet MS', 'Courier, ''Courier New'', sans-serif', 10, 11, 12, '444444', '006600', 'FFA34F', '', '', '', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbthemes_name`
-- 

CREATE TABLE `nuke_bbthemes_name` (
  `themes_id` smallint(5) unsigned NOT NULL default '0',
  `tr_color1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_color2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_color3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_class1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_class2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `tr_class3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `th_color1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `th_color2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `th_color3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `th_class1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `th_class2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `th_class3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `td_color1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `td_color2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `td_color3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `td_class1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `td_class2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `td_class3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontface1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontface2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontface3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontsize1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontsize2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontsize3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontcolor1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontcolor2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `fontcolor3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `span_class1_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `span_class2_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  `span_class3_name` char(50) character set latin1 collate latin1_spanish_ci default NULL,
  PRIMARY KEY  (`themes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbthemes_name`
-- 

INSERT INTO `nuke_bbthemes_name` VALUES (1, 'Color claro de fila', 'Color medio de fila', 'Color m?s oscuro de fila', '', '', '', 'Borde de pagina', 'Borde Externo de Tabla', 'Borde Interno de Tabla', 'Imagen gradiente Plateada', 'Imagen gradiente Azul', 'Fade-out gradient on index', 'Background for quote boxes', 'Todas las areas blancas', '', 'Fondo para Topics de los Posts', '2o fondo para Topics', '', 'Fuentes Principales', 'Additional topic title font', 'Fuentes de Formularios', 'Tama?o de fuente m?s peque?a', 'Tama?o de fuente mediana', 'Tama?o de fuente normal (post cuerpo etc)', 'Quote & copyright text', 'Code text colour', 'Main table header text colour', '', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbtopics`
-- 

CREATE TABLE `nuke_bbtopics` (
  `topic_id` mediumint(8) unsigned NOT NULL auto_increment,
  `forum_id` smallint(8) unsigned NOT NULL default '0',
  `topic_title` char(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbtopics`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbtopics_watch`
-- 

CREATE TABLE `nuke_bbtopics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) NOT NULL default '0',
  `notify_status` tinyint(1) NOT NULL default '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_status` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbtopics_watch`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbuser_group`
-- 

CREATE TABLE `nuke_bbuser_group` (
  `group_id` mediumint(8) NOT NULL default '0',
  `user_id` mediumint(8) NOT NULL default '0',
  `user_pending` tinyint(1) default NULL,
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbuser_group`
-- 

INSERT INTO `nuke_bbuser_group` VALUES (1, -1, 0);
INSERT INTO `nuke_bbuser_group` VALUES (3, 5, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbvote_desc`
-- 

CREATE TABLE `nuke_bbvote_desc` (
  `vote_id` mediumint(8) unsigned NOT NULL auto_increment,
  `topic_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_text` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `vote_start` int(11) NOT NULL default '0',
  `vote_length` int(11) NOT NULL default '0',
  PRIMARY KEY  (`vote_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbvote_desc`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbvote_results`
-- 

CREATE TABLE `nuke_bbvote_results` (
  `vote_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_option_id` tinyint(4) unsigned NOT NULL default '0',
  `vote_option_text` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `vote_result` int(11) NOT NULL default '0',
  KEY `vote_option_id` (`vote_option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbvote_results`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbvote_voters`
-- 

CREATE TABLE `nuke_bbvote_voters` (
  `vote_id` mediumint(8) unsigned NOT NULL default '0',
  `vote_user_id` mediumint(8) NOT NULL default '0',
  `vote_user_ip` char(8) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  KEY `vote_id` (`vote_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_bbvote_voters`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_bbwords`
-- 

CREATE TABLE `nuke_bbwords` (
  `word_id` mediumint(8) unsigned NOT NULL auto_increment,
  `word` char(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `replacement` char(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_bbwords`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_blocks`
-- 

CREATE TABLE `nuke_blocks` (
  `bid` int(10) NOT NULL auto_increment,
  `bkey` varchar(15) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `content` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `url` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `bposition` char(1) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `weight` int(10) NOT NULL default '1',
  `active` int(1) NOT NULL default '1',
  `refresh` int(10) NOT NULL default '0',
  `time` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default '0',
  `blanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `blockfile` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `view` int(1) NOT NULL default '0',
  `expire` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default '0',
  `action` char(1) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `subscription` int(1) NOT NULL default '0',
  PRIMARY KEY  (`bid`),
  KEY `bid` (`bid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- Volcar la base de datos para la tabla `nuke_blocks`
-- 

INSERT INTO `nuke_blocks` VALUES (1, '', 'Principal', '', '', 'l', 1, 1, 0, '', '', 'block-Modules.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (2, 'admin', 'Administraci?n', '<strong><big>?</big></strong> <a href="admin.php">Administraci?n</a><br>\r\n<strong><big>?</big></strong> <a href="admin.php?op=adminStory">NUEVA Noticia</a><br>\r\n<strong><big>?</big></strong> <a href="admin.php?op=create">Cambiar Encuesta</a><br>\r\n<strong><big>?</big></strong> <a href="admin.php?op=content">Contenidos</a><br>\r\n<strong><big>?</big></strong> <a href="admin.php?op=logout">Salir</a>', '', 'l', 2, 1, 0, '985591188', '', '', 2, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (3, '', 'Gente Online', '', '', 'l', 4, 1, 0, '', '', 'block-Who_is_Online.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (4, '', 'Buscar', '', '', 'l', 5, 0, 3600, '', '', 'block-Search.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (5, '', 'Idiomas', '', '', 'l', 6, 0, 3600, '', '', 'block-Languages.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (6, '', 'Titulares Aleatorios', '', '', 'l', 7, 0, 3600, '', '', 'block-Random_Headlines.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (8, 'userbox', 'User''s Custom Box', '', '', 'r', 1, 1, 0, '', '', '', 1, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (9, '', 'Men? de Categorias', '', '', 'r', 2, 0, 0, '', '', 'block-Categories.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (10, '', 'Encuesta', '', '', 'r', 3, 0, 3600, '', '', 'block-Survey.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (11, '', 'Logeo', '', '', 'r', 6, 1, 3600, '', '', 'block-Login.php', 3, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (13, '', 'Articulos Pasados', '', '', 'r', 7, 0, 3600, '', '', 'block-Old_Articles.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (14, '', 'Informaci?n', '<br><center><font class="content">\r\n<a href="http://phpnuke.org"><img src="images/powered/powered5.jpg" border="0" alt="Powered by PHP-Nuke" title="Powered by PHP-Nuke" width="88" height="31"></a>\r\n<br><br>\r\n<a href="http://validator.w3.org/check/referer"><img src="images/html401.gif" width="88" height="31" alt="Valid HTML 4.01!" title="Valid HTML 4.01!" border="0"></a>\r\n<br><br>\r\n<a href="http://jigsaw.w3.org/css-validator"><img src="images/css.gif" width="88" height="31" alt="Valid CSS!" title="Valid CSS!" border="0"></a></font></center><br>', '', 'r', 8, 0, 0, '', '', '', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (16, '', 'Categorias', '', '', 'r', 5, 0, 3600, '', '', 'block-Categorias.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (17, '', 'Publicidad', '', '', 'l', 3, 1, 3600, '', '', 'block-Publicidad.php', 0, '0', 'd', 0);
INSERT INTO `nuke_blocks` VALUES (18, '', 'Directorio', '', '', 'r', 4, 1, 3600, '', '', 'block-Directorio.php', 0, '0', 'd', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_cate`
-- 

CREATE TABLE `nuke_cate` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `Descri` varchar(45) character set latin1 NOT NULL default '',
  `Imagen` varchar(255) character set latin1 NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Volcar la base de datos para la tabla `nuke_cate`
-- 

INSERT INTO `nuke_cate` VALUES (1, 'Concesionarios de Carros Nuevos', '/tumundoautomotriz/imagenes/categorias/b-carrosnuevos1.jpg');
INSERT INTO `nuke_cate` VALUES (2, 'Concesionarios de Carros Usados', '/tumundoautomotriz/imagenes/categorias/b-carrosusados.jpg');
INSERT INTO `nuke_cate` VALUES (3, 'Compra y venta', '/tumundoautomotriz/imagenes/categorias/b-comprayventa.jpg');
INSERT INTO `nuke_cate` VALUES (4, 'Talleres Mecanicos', '/tumundoautomotriz/imagenes/categorias/b-talleresmeca.jpg');
INSERT INTO `nuke_cate` VALUES (8, 'Electroautos', '/tumundoautomotriz/imagenes/categorias/b-electro.jpg');
INSERT INTO `nuke_cate` VALUES (7, 'Inyección Electronica', '/tumundoautomotriz/imagenes/categorias/b-inyecelec.jpg');
INSERT INTO `nuke_cate` VALUES (5, 'Latoneria y Pintura', '/tumundoautomotriz/imagenes/categorias/b-latopintu.jpg');
INSERT INTO `nuke_cate` VALUES (10, 'Aires Acondicionados', '/tumundoautomotriz/imagenes/categorias/b-aires.jpg');
INSERT INTO `nuke_cate` VALUES (11, 'Frenos', '/tumundoautomotriz/imagenes/categorias/b-frenos.jpg');
INSERT INTO `nuke_cate` VALUES (12, 'Suspensión', '');
INSERT INTO `nuke_cate` VALUES (13, 'Neumáticos y Rines', '/tumundoautomotriz/imagenes/categorias/b-neorine.jpg');
INSERT INTO `nuke_cate` VALUES (14, 'Muffer - Silenciadores', '/tumundoautomotriz/imagenes/categorias/b-muffer.jpg');
INSERT INTO `nuke_cate` VALUES (15, 'Parabrisas', '/tumundoautomotriz/imagenes/categorias/b-parabri.jpg');
INSERT INTO `nuke_cate` VALUES (16, 'Chiveras', '/tumundoautomotriz/imagenes/categorias/b-chivera.jpg');
INSERT INTO `nuke_cate` VALUES (17, 'Casa de Repuestos y accesorios Tuning-Racing', '');
INSERT INTO `nuke_cate` VALUES (18, 'Casas de Repotenciación', '/tumundoautomotriz/imagenes/categorias/b-repotenci.jpg');
INSERT INTO `nuke_cate` VALUES (19, 'Auto - Tapicerías', '/tumundoautomotriz/imagenes/categorias/b-autotapice.jpg');
INSERT INTO `nuke_cate` VALUES (20, 'Sonido Automotriz', '/tumundoautomotriz/imagenes/categorias/b-sonidoauto.jpg');
INSERT INTO `nuke_cate` VALUES (21, 'Auto - Periquitos', '/tumundoautomotriz/imagenes/categorias/b-autoperi.jpg');
INSERT INTO `nuke_cate` VALUES (22, 'Centro de Lubricantes', '/tumundoautomotriz/imagenes/categorias/b-lubricantes.jpg');
INSERT INTO `nuke_cate` VALUES (23, 'Autolavados', '/tumundoautomotriz/imagenes/categorias/b-autolavados.jpg');
INSERT INTO `nuke_cate` VALUES (24, 'Alquiler de Vehículos', '/tumundoautomotriz/imagenes/categorias/b-alquivehi.jpg');
INSERT INTO `nuke_cate` VALUES (25, 'Aseguradoras', '/tumundoautomotriz/imagenes/categorias/b-aseguradoras.jpg');
INSERT INTO `nuke_cate` VALUES (26, 'Transporte - Líneas', '');
INSERT INTO `nuke_cate` VALUES (27, 'Motos - Ventas', '/tumundoautomotriz/imagenes/categorias/b-motoventa.jpg');
INSERT INTO `nuke_cate` VALUES (28, 'Motos - Repuestos', '/tumundoautomotriz/imagenes/categorias/b-motorep.jpg');
INSERT INTO `nuke_cate` VALUES (29, 'Servicio de Gruas', '/tumundoautomotriz/imagenes/categorias/b-servgrua.jpg');
INSERT INTO `nuke_cate` VALUES (30, 'Casa de Rodamientos', '/tumundoautomotriz/imagenes/categorias/b-rodamiento.jpg');
INSERT INTO `nuke_cate` VALUES (31, 'Radiadores', '/tumundoautomotriz/imagenes/categorias/b-radiodores.jpg');
INSERT INTO `nuke_cate` VALUES (32, 'Retificadoras', '/tumundoautomotriz/imagenes/categorias/b-retifi.jpg');
INSERT INTO `nuke_cate` VALUES (33, 'Importadoras de Repuestos', '/tumundoautomotriz/imagenes/categorias/b-imprespuesto.jpg');
INSERT INTO `nuke_cate` VALUES (34, 'Casa de Pinturas Autos', '/tumundoautomotriz/imagenes/categorias/b-pindeautos.jpg');
INSERT INTO `nuke_cate` VALUES (35, 'Tornerias', '/tumundoautomotriz/imagenes/categorias/b-tornerias.jpg');
INSERT INTO `nuke_cate` VALUES (36, 'Enderezamiento de Compacto', '/tumundoautomotriz/imagenes/categorias/b-decompacto.jpg');
INSERT INTO `nuke_cate` VALUES (37, 'Enderezamiento de Chasis', '/tumundoautomotriz/imagenes/categorias/b-dechacin.jpg');
INSERT INTO `nuke_cate` VALUES (38, 'Autocerrajería', '/tumundoautomotriz/imagenes/categorias/b-cerrajeria.jpg');
INSERT INTO `nuke_cate` VALUES (39, 'Repuestos y Servicios para Camiones', '/tumundoautomotriz/imagenes/categorias/b-repservcamiones.jpg');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_comments`
-- 

CREATE TABLE `nuke_comments` (
  `tid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `date` datetime default NULL,
  `name` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `url` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `host_name` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `subject` varchar(85) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `comment` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `score` tinyint(4) NOT NULL default '0',
  `reason` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_comments`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_config`
-- 

CREATE TABLE `nuke_config` (
  `sitename` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `nukeurl` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `site_logo` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `slogan` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `startdate` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `adminmail` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `anonpost` tinyint(1) NOT NULL default '0',
  `Default_Theme` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `foot1` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `foot2` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `foot3` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `commentlimit` int(9) NOT NULL default '4096',
  `anonymous` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
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
  `backend_title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `backend_language` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `language` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `locale` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `multilingual` tinyint(1) NOT NULL default '0',
  `useflags` tinyint(1) NOT NULL default '0',
  `notify` tinyint(1) NOT NULL default '0',
  `notify_email` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `notify_subject` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `notify_message` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `notify_from` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `moderate` tinyint(1) NOT NULL default '0',
  `admingraphic` tinyint(1) NOT NULL default '1',
  `httpref` tinyint(1) NOT NULL default '1',
  `httprefmax` int(5) NOT NULL default '1000',
  `CensorMode` tinyint(1) NOT NULL default '3',
  `CensorReplace` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `copyright` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `Version_Num` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`sitename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_config`
-- 

INSERT INTO `nuke_config` VALUES ('Tu Mundo Automotriz', 'http://localhost/tumundoautomotriz/', 'logo.gif', 'Todo para tu carro', 'Febrero 2006', 'webmaster@tumundoautomotriz.com', 0, 'XetaTheme', '<a href="http://phpnuke.org" target="blank"><img src="images/powered/powered5.jpg" border="0" Alt="Web site powered by PHP-Nuke" hspace="10"></a><br>', 'Todos los logos y marcas en este sitio son propiedad de su respectivos autores. Los comentarios son propiedad de sus posteadores, todos lo dem?s © 2004 por mi.', 'Puede sindicar nuestras noticias utilizando el fichero <a href="backend.php"><font class="footmsg_l">backend.php</font></a> o <a href="ultramode.txt"><font class="footmsg_l">ultramode.txt</font></a>', 4096, 'Anonimo', 5, 1, 1, 1, 1, 10, 10, 1, 30, 0, 1, 'Sitio PHP-Nuke Powered', 'es-ES', 'spanish', 'es_ES', 0, 0, 0, 'yo@misitio.com', 'NOTICIAS para mi sitio', 'Hey! Tienes nuevos envios en tu sitio.', 'webmaster', 0, 1, 1, 1000, 3, '*****', 'Web site engine code is Copyright &copy; 2003 by <a href="http://phpnuke.org"><font class="footmsg_l">PHP-Nuke</font></a>. All Rights Reserved. PHP-Nuke is Free Software released under the <a href="http://www.gnu.org"><font class="footmsg_l">GNU/GPL license</font></a>.', '7.4');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_confirm`
-- 

CREATE TABLE `nuke_confirm` (
  `confirm_id` char(32) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `session_id` char(32) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `code` char(6) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`session_id`,`confirm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_confirm`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_counter`
-- 

CREATE TABLE `nuke_counter` (
  `type` varchar(80) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `var` varchar(80) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `count` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_counter`
-- 

INSERT INTO `nuke_counter` VALUES ('total', 'hits', 1112);
INSERT INTO `nuke_counter` VALUES ('browser', 'WebTV', 0);
INSERT INTO `nuke_counter` VALUES ('browser', 'Lynx', 0);
INSERT INTO `nuke_counter` VALUES ('browser', 'MSIE', 1052);
INSERT INTO `nuke_counter` VALUES ('browser', 'Opera', 0);
INSERT INTO `nuke_counter` VALUES ('browser', 'Konqueror', 0);
INSERT INTO `nuke_counter` VALUES ('browser', 'Netscape', 60);
INSERT INTO `nuke_counter` VALUES ('browser', 'Bot', 0);
INSERT INTO `nuke_counter` VALUES ('browser', 'Other', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'Windows', 1111);
INSERT INTO `nuke_counter` VALUES ('os', 'Linux', 1);
INSERT INTO `nuke_counter` VALUES ('os', 'Mac', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'FreeBSD', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'SunOS', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'IRIX', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'BeOS', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'OS/2', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'AIX', 0);
INSERT INTO `nuke_counter` VALUES ('os', 'Other', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_downloads_categories`
-- 

CREATE TABLE `nuke_downloads_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `cdescription` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_downloads_categories`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_downloads_downloads`
-- 

CREATE TABLE `nuke_downloads_downloads` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `date` datetime default NULL,
  `name` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `submitter` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `downloadratingsummary` double(6,4) NOT NULL default '0.0000',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `homepage` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_downloads_downloads`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_downloads_editorials`
-- 

CREATE TABLE `nuke_downloads_editorials` (
  `downloadid` int(11) NOT NULL default '0',
  `adminid` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `editorialtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `editorialtext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `editorialtitle` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`downloadid`),
  KEY `downloadid` (`downloadid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_downloads_editorials`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_downloads_modrequest`
-- 

CREATE TABLE `nuke_downloads_modrequest` (
  `requestid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `modifysubmitter` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `brokendownload` int(3) NOT NULL default '0',
  `name` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `homepage` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`requestid`),
  UNIQUE KEY `requestid` (`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_downloads_modrequest`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_downloads_newdownload`
-- 

CREATE TABLE `nuke_downloads_newdownload` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `name` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `submitter` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `version` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `homepage` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_downloads_newdownload`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_downloads_votedata`
-- 

CREATE TABLE `nuke_downloads_votedata` (
  `ratingdbid` int(11) NOT NULL auto_increment,
  `ratinglid` int(11) NOT NULL default '0',
  `ratinguser` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `rating` int(11) NOT NULL default '0',
  `ratinghostname` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ratingcomments` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `ratingtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_downloads_votedata`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_empresa`
-- 

CREATE TABLE `nuke_empresa` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `IDCategoria` int(10) unsigned NOT NULL default '0',
  `Nombre` varchar(45) character set latin1 NOT NULL default '',
  `Descripcion` varchar(255) character set latin1 NOT NULL default '',
  `Web` varchar(45) character set latin1 NOT NULL default '',
  `Direccion` varchar(255) character set latin1 NOT NULL default '',
  `Correo` varchar(60) character set latin1 NOT NULL default '',
  `Foto_local` varchar(255) character set latin1 NOT NULL default '',
  `Persona_Contacto` varchar(80) character set latin1 NOT NULL default '',
  `Puesto` varchar(45) character set latin1 NOT NULL default '',
  `Productos` varchar(255) character set latin1 NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `nuke_empresa`
-- 

INSERT INTO `nuke_empresa` VALUES (1, 1, 'Ecomerce Sistemas C.A.', 'Empresa dedicada a joderme la paciencia', 'www.apcomputronic.com.ve', 'Caracas: Av. Francisco de miranda con cruce Luis Roche, Edificio Humbolt, Piso 2 Oficina 06 Altamira. Guatire: Centro Comercial Daymar, Psio 1, local p1-46', 'apcomputronic@hotmail.com', '/tumundoautomotriz/imagenes/empresas/logodeecomerce.JPG', 'Rafael Ramos', 'Dueño', 'Saint, Ventas, Computadores');
INSERT INTO `nuke_empresa` VALUES (2, 1, 'Ereinca', 'Empresa q va a salir adelante', 'www.ereinca.com', 'Carretera Guatire - La Rosa. Sector el Desvío Minicentro Comercial La Rocca, Local 4,  Guatire, Edo. Miranda', 'ereinca@hotmail.com', '/tumundoautomotriz/imagenes/empresas/Ereinca.jpg', 'Alejandro Barreto', 'Jefe de Sistemas', 'Aires Acondicionados, Maquinas de Coser, Computadoras, Páginas Web, Software');
INSERT INTO `nuke_empresa` VALUES (3, 1, 'OST Corporation', 'Empresa que va a tumbar a la microsoft', 'www.ostcorporation.org', 'No se todavia', 'arbo@ostcorporation.org', '/tumundoautomotriz/imagenes/empresas/OST_Logo.jpg', 'Joel Pacheco y Alejandro Barreto', 'Owner', 'Todo sobre computación');
INSERT INTO `nuke_empresa` VALUES (4, 1, 'Makro', 'Vende de todo', 'www.makro.com.ve', 'en todos lados', 'st09@makro.com.ve', '', 'Pepe', 'El que limpia', 'Lo que tu quieras');
INSERT INTO `nuke_empresa` VALUES (5, 1, 'Prix Racing C.A.', 'Auto Lavado de Carros', '', 'Carretera Guatire - Guarenas un poco mas alla de la bomba PDV', '', '', 'Luis', 'Dueño', 'Auto lavado, cambio de aceites');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_encyclopedia`
-- 

CREATE TABLE `nuke_encyclopedia` (
  `eid` int(10) NOT NULL auto_increment,
  `title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `elanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  PRIMARY KEY  (`eid`),
  KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_encyclopedia`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_encyclopedia_text`
-- 

CREATE TABLE `nuke_encyclopedia_text` (
  `tid` int(10) NOT NULL auto_increment,
  `eid` int(10) NOT NULL default '0',
  `title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `text` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `counter` int(10) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `eid` (`eid`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_encyclopedia_text`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_faqanswer`
-- 

CREATE TABLE `nuke_faqanswer` (
  `id` tinyint(4) NOT NULL auto_increment,
  `id_cat` tinyint(4) NOT NULL default '0',
  `question` varchar(255) character set latin1 collate latin1_spanish_ci default '',
  `answer` text character set latin1 collate latin1_spanish_ci,
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_faqanswer`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_faqcategories`
-- 

CREATE TABLE `nuke_faqcategories` (
  `id_cat` tinyint(3) NOT NULL auto_increment,
  `categories` varchar(255) character set latin1 collate latin1_spanish_ci default NULL,
  `flanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id_cat`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_faqcategories`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_fotos`
-- 

CREATE TABLE `nuke_fotos` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Foto` varchar(255) character set latin1 NOT NULL default '',
  `IDEmpresa` int(10) unsigned NOT NULL default '0',
  `Principal` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `nuke_fotos`
-- 

INSERT INTO `nuke_fotos` VALUES (1, '/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (1).JPG', 5, 1);
INSERT INTO `nuke_fotos` VALUES (2, '/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (2).JPG', 5, 0);
INSERT INTO `nuke_fotos` VALUES (3, '/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (3).JPG', 5, 0);
INSERT INTO `nuke_fotos` VALUES (4, '/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing (4).JPG', 5, 0);
INSERT INTO `nuke_fotos` VALUES (5, '/tumundoautomotriz/imagenes/Fotos Empresas/Prix_Racing/prix_racing.JPG', 5, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_groups`
-- 

CREATE TABLE `nuke_groups` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `points` int(10) NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_groups`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_groups_points`
-- 

CREATE TABLE `nuke_groups_points` (
  `id` int(10) NOT NULL auto_increment,
  `points` int(10) NOT NULL default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Volcar la base de datos para la tabla `nuke_groups_points`
-- 

INSERT INTO `nuke_groups_points` VALUES (1, 0);
INSERT INTO `nuke_groups_points` VALUES (2, 0);
INSERT INTO `nuke_groups_points` VALUES (3, 0);
INSERT INTO `nuke_groups_points` VALUES (4, 0);
INSERT INTO `nuke_groups_points` VALUES (5, 0);
INSERT INTO `nuke_groups_points` VALUES (6, 0);
INSERT INTO `nuke_groups_points` VALUES (7, 0);
INSERT INTO `nuke_groups_points` VALUES (8, 0);
INSERT INTO `nuke_groups_points` VALUES (9, 0);
INSERT INTO `nuke_groups_points` VALUES (10, 0);
INSERT INTO `nuke_groups_points` VALUES (11, 0);
INSERT INTO `nuke_groups_points` VALUES (12, 0);
INSERT INTO `nuke_groups_points` VALUES (13, 0);
INSERT INTO `nuke_groups_points` VALUES (14, 0);
INSERT INTO `nuke_groups_points` VALUES (15, 0);
INSERT INTO `nuke_groups_points` VALUES (16, 0);
INSERT INTO `nuke_groups_points` VALUES (17, 0);
INSERT INTO `nuke_groups_points` VALUES (18, 0);
INSERT INTO `nuke_groups_points` VALUES (19, 0);
INSERT INTO `nuke_groups_points` VALUES (20, 0);
INSERT INTO `nuke_groups_points` VALUES (21, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_headlines`
-- 

CREATE TABLE `nuke_headlines` (
  `hid` int(11) NOT NULL auto_increment,
  `sitename` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `headlinesurl` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`hid`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Volcar la base de datos para la tabla `nuke_headlines`
-- 

INSERT INTO `nuke_headlines` VALUES (1, 'AbsoluteGames', 'http://files.gameaholic.com/agfa.rdf');
INSERT INTO `nuke_headlines` VALUES (2, 'BSDToday', 'http://www.bsdtoday.com/backend/bt.rdf');
INSERT INTO `nuke_headlines` VALUES (3, 'BrunchingShuttlecocks', 'http://www.brunching.com/brunching.rdf');
INSERT INTO `nuke_headlines` VALUES (4, 'DailyDaemonNews', 'http://daily.daemonnews.org/ddn.rdf.php3');
INSERT INTO `nuke_headlines` VALUES (5, 'DigitalTheatre', 'http://www.dtheatre.com/backend.php3?xml=yes');
INSERT INTO `nuke_headlines` VALUES (6, 'DotKDE', 'http://dot.kde.org/rdf');
INSERT INTO `nuke_headlines` VALUES (7, 'FreeDOS', 'http://www.freedos.org/channels/rss.cgi');
INSERT INTO `nuke_headlines` VALUES (8, 'Freshmeat', 'http://freshmeat.net/backend/fm.rdf');
INSERT INTO `nuke_headlines` VALUES (9, 'Gnome Desktop', 'http://www.gnomedesktop.org/backend.php');
INSERT INTO `nuke_headlines` VALUES (10, 'HappyPenguin', 'http://happypenguin.org/html/news.rdf');
INSERT INTO `nuke_headlines` VALUES (11, 'HollywoodBitchslap', 'http://hollywoodbitchslap.com/hbs.rdf');
INSERT INTO `nuke_headlines` VALUES (12, 'Learning Linux', 'http://www.learninglinux.com/backend.php');
INSERT INTO `nuke_headlines` VALUES (13, 'LinuxCentral', 'http://linuxcentral.com/backend/lcnew.rdf');
INSERT INTO `nuke_headlines` VALUES (14, 'LinuxJournal', 'http://www.linuxjournal.com/news.rss');
INSERT INTO `nuke_headlines` VALUES (15, 'LinuxWeelyNews', 'http://lwn.net/headlines/rss');
INSERT INTO `nuke_headlines` VALUES (16, 'Listology', 'http://listology.com/recent.rdf');
INSERT INTO `nuke_headlines` VALUES (17, 'MozillaNewsBot', 'http://www.mozilla.org/newsbot/newsbot.rdf');
INSERT INTO `nuke_headlines` VALUES (18, 'NewsForge', 'http://www.newsforge.com/newsforge.rdf');
INSERT INTO `nuke_headlines` VALUES (19, 'NukeResources', 'http://www.nukeresources.com/backend.php');
INSERT INTO `nuke_headlines` VALUES (20, 'NukeScripts', 'http://www.nukescripts.net/backend.php');
INSERT INTO `nuke_headlines` VALUES (21, 'PDABuzz', 'http://www.pdabuzz.com/netscape.txt');
INSERT INTO `nuke_headlines` VALUES (22, 'PHP-Nuke', 'http://phpnuke.org/backend.php');
INSERT INTO `nuke_headlines` VALUES (23, 'PHP.net', 'http://www.php.net/news.rss');
INSERT INTO `nuke_headlines` VALUES (24, 'PHPBuilder', 'http://phpbuilder.com/rss_feed.php');
INSERT INTO `nuke_headlines` VALUES (25, 'PerlMonks', 'http://www.perlmonks.org/headlines.rdf');
INSERT INTO `nuke_headlines` VALUES (26, 'TheNextLevel', 'http://www.the-nextlevel.com/rdf/tnl.rdf');
INSERT INTO `nuke_headlines` VALUES (27, 'WebReference', 'http://webreference.com/webreference.rdf');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_journal`
-- 

CREATE TABLE `nuke_journal` (
  `jid` int(11) NOT NULL auto_increment,
  `aid` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(80) character set latin1 collate latin1_spanish_ci default NULL,
  `bodytext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `mood` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `pdate` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ptime` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `status` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `mtime` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `mdate` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`jid`),
  KEY `jid` (`jid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_journal`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_journal_comments`
-- 

CREATE TABLE `nuke_journal_comments` (
  `cid` int(11) NOT NULL auto_increment,
  `rid` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `aid` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `comment` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `pdate` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ptime` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `rid` (`rid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_journal_comments`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_journal_stats`
-- 

CREATE TABLE `nuke_journal_stats` (
  `id` int(11) NOT NULL auto_increment,
  `joid` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `nop` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ldp` varchar(24) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ltp` varchar(24) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `micro` varchar(128) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_journal_stats`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_links_categories`
-- 

CREATE TABLE `nuke_links_categories` (
  `cid` int(11) NOT NULL auto_increment,
  `title` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `cdescription` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `parentid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_links_categories`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_links_editorials`
-- 

CREATE TABLE `nuke_links_editorials` (
  `linkid` int(11) NOT NULL default '0',
  `adminid` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `editorialtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `editorialtext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `editorialtitle` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`linkid`),
  KEY `linkid` (`linkid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_links_editorials`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_links_links`
-- 

CREATE TABLE `nuke_links_links` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `date` datetime default NULL,
  `name` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `submitter` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `linkratingsummary` double(6,4) NOT NULL default '0.0000',
  `totalvotes` int(11) NOT NULL default '0',
  `totalcomments` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_links_links`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_links_modrequest`
-- 

CREATE TABLE `nuke_links_modrequest` (
  `requestid` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `modifysubmitter` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `brokenlink` int(3) NOT NULL default '0',
  PRIMARY KEY  (`requestid`),
  UNIQUE KEY `requestid` (`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_links_modrequest`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_links_newlink`
-- 

CREATE TABLE `nuke_links_newlink` (
  `lid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `name` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `submitter` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `lid` (`lid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_links_newlink`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_links_votedata`
-- 

CREATE TABLE `nuke_links_votedata` (
  `ratingdbid` int(11) NOT NULL auto_increment,
  `ratinglid` int(11) NOT NULL default '0',
  `ratinguser` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `rating` int(11) NOT NULL default '0',
  `ratinghostname` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `ratingcomments` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `ratingtimestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ratingdbid`),
  KEY `ratingdbid` (`ratingdbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_links_votedata`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_main`
-- 

CREATE TABLE `nuke_main` (
  `main_module` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_main`
-- 

INSERT INTO `nuke_main` VALUES ('News');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_message`
-- 

CREATE TABLE `nuke_message` (
  `mid` int(11) NOT NULL auto_increment,
  `title` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `content` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `date` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `expire` int(7) NOT NULL default '0',
  `active` int(1) NOT NULL default '1',
  `view` int(1) NOT NULL default '1',
  `mlanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`mid`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `nuke_message`
-- 

INSERT INTO `nuke_message` VALUES (1, 'Bienvenidos a Tu Mundo Automotriz!!!', '<p align="center">\r\n<img border="0" src="file:///C:/AppServ/www/tumundoautomotriz/imagenes/tuning-x- copy.jpg" width="800" height="600"></p>', '993373194', 0, 1, 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_modules`
-- 

CREATE TABLE `nuke_modules` (
  `mid` int(10) NOT NULL auto_increment,
  `title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `custom_title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  `view` int(1) NOT NULL default '0',
  `inmenu` tinyint(1) NOT NULL default '1',
  `mod_group` int(10) default '0',
  PRIMARY KEY  (`mid`),
  KEY `mid` (`mid`),
  KEY `title` (`title`),
  KEY `custom_title` (`custom_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- 
-- Volcar la base de datos para la tabla `nuke_modules`
-- 

INSERT INTO `nuke_modules` VALUES (1, 'AvantGo', 'AvantGo', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (2, 'Content', 'Contenido', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (3, 'Downloads', 'Descargas', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (4, 'Encyclopedia', 'Enciclopedia', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (5, 'FAQ', 'FAQ', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (6, 'Feedback', 'Comentarios', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (7, 'Forums', 'Foros', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (8, 'Journal', 'Diario de Usuarios', 1, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (9, 'Members_List', 'Lista de Miembros', 0, 1, 1, 0);
INSERT INTO `nuke_modules` VALUES (10, 'News', 'Noticias', 1, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (11, 'Private_Messages', 'Mensajes Privados', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (12, 'Recommend_Us', 'Recomi?ndenos', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (13, 'Reviews', 'An?lisis', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (14, 'Search', 'Buscar', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (15, 'Statistics', 'Estad?sticas', 1, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (16, 'Stories_Archive', 'Archivo de Noticias', 1, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (17, 'Submit_News', 'Enviar Noticias', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (18, 'Surveys', 'Encuestas', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (19, 'Top', 'Top 10', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (20, 'Topics', 'Topics', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (21, 'Web_Links', 'Enlaces Web', 0, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (22, 'Your_Account', 'Tu Cuenta', 1, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (23, 'Categorias', 'Categorias', 1, 0, 1, 0);
INSERT INTO `nuke_modules` VALUES (24, 'Cate', 'Cate', 1, 0, 0, 0);
INSERT INTO `nuke_modules` VALUES (25, 'Muestra', 'Muestra', 1, 0, 0, 0);
INSERT INTO `nuke_modules` VALUES (26, 'Guia', 'Guia', 1, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_pages`
-- 

CREATE TABLE `nuke_pages` (
  `pid` int(10) NOT NULL auto_increment,
  `cid` int(10) NOT NULL default '0',
  `title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `subtitle` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `active` int(1) NOT NULL default '0',
  `page_header` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `text` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `page_footer` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `signature` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `counter` int(10) NOT NULL default '0',
  `clanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `pid` (`pid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_pages`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_pages_categories`
-- 

CREATE TABLE `nuke_pages_categories` (
  `cid` int(10) NOT NULL auto_increment,
  `title` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `description` text character set latin1 collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_pages_categories`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_poll_check`
-- 

CREATE TABLE `nuke_poll_check` (
  `ip` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `pollID` int(10) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_poll_check`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_poll_data`
-- 

CREATE TABLE `nuke_poll_data` (
  `pollID` int(11) NOT NULL default '0',
  `optionText` char(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `optionCount` int(11) NOT NULL default '0',
  `voteID` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_poll_data`
-- 

INSERT INTO `nuke_poll_data` VALUES (1, 'Visual Basic 6', 0, 1);
INSERT INTO `nuke_poll_data` VALUES (1, 'Visual Basic .Net', 0, 2);
INSERT INTO `nuke_poll_data` VALUES (1, 'C# 2005', 0, 3);
INSERT INTO `nuke_poll_data` VALUES (1, 'Fox Pro 9 o anteriores', 0, 4);
INSERT INTO `nuke_poll_data` VALUES (1, 'Lenguaje C, C++', 0, 5);
INSERT INTO `nuke_poll_data` VALUES (1, 'No programo', 0, 6);
INSERT INTO `nuke_poll_data` VALUES (1, 'Otro', 0, 7);
INSERT INTO `nuke_poll_data` VALUES (1, '', 0, 8);
INSERT INTO `nuke_poll_data` VALUES (1, '', 0, 9);
INSERT INTO `nuke_poll_data` VALUES (1, '', 0, 10);
INSERT INTO `nuke_poll_data` VALUES (1, '', 0, 11);
INSERT INTO `nuke_poll_data` VALUES (1, '', 0, 12);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_poll_desc`
-- 

CREATE TABLE `nuke_poll_desc` (
  `pollID` int(11) NOT NULL auto_increment,
  `pollTitle` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `timeStamp` int(11) NOT NULL default '0',
  `voters` mediumint(9) NOT NULL default '0',
  `planguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `artid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`pollID`),
  KEY `pollID` (`pollID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `nuke_poll_desc`
-- 

INSERT INTO `nuke_poll_desc` VALUES (1, 'Que lenguaje de programación prefieres?', 961405160, 0, 'spanish', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_pollcomments`
-- 

CREATE TABLE `nuke_pollcomments` (
  `tid` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL default '0',
  `pollID` int(11) NOT NULL default '0',
  `date` datetime default NULL,
  `name` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `url` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `host_name` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `subject` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `comment` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `score` tinyint(4) NOT NULL default '0',
  `reason` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `pollID` (`pollID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_pollcomments`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_public_messages`
-- 

CREATE TABLE `nuke_public_messages` (
  `mid` int(10) NOT NULL auto_increment,
  `content` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `date` varchar(14) character set latin1 collate latin1_spanish_ci default NULL,
  `who` varchar(25) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`mid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_public_messages`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_publicidad`
-- 

CREATE TABLE `nuke_publicidad` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Logo` varchar(255) character set latin1 NOT NULL default '',
  `IDEmpresa` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `nuke_publicidad`
-- 

INSERT INTO `nuke_publicidad` VALUES (1, '/tumundoautomotriz/imagenes/logos/Perro%20Ereinca.jpg', 2);
INSERT INTO `nuke_publicidad` VALUES (2, '/tumundoautomotriz/imagenes/logos/OST_Logo.jpg', 3);
INSERT INTO `nuke_publicidad` VALUES (3, '/tumundoautomotriz/imagenes/logos/Ejemplo.jpg', 0);
INSERT INTO `nuke_publicidad` VALUES (4, '/tumundoautomotriz/imagenes/logos/Ejemplo.jpg', 0);
INSERT INTO `nuke_publicidad` VALUES (5, '/tumundoautomotriz/imagenes/logos/Ejemplo.jpg', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_queue`
-- 

CREATE TABLE `nuke_queue` (
  `qid` smallint(5) unsigned NOT NULL auto_increment,
  `uid` mediumint(9) NOT NULL default '0',
  `uname` varchar(40) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `subject` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `story` text character set latin1 collate latin1_spanish_ci,
  `storyext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `timestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `topic` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `alanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`qid`),
  KEY `qid` (`qid`),
  KEY `uid` (`uid`),
  KEY `uname` (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_queue`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_quotes`
-- 

CREATE TABLE `nuke_quotes` (
  `qid` int(10) unsigned NOT NULL auto_increment,
  `quote` text character set latin1 collate latin1_spanish_ci,
  PRIMARY KEY  (`qid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `nuke_quotes`
-- 

INSERT INTO `nuke_quotes` VALUES (1, 'Nos morituri te salutamus - CBHS');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_referer`
-- 

CREATE TABLE `nuke_referer` (
  `rid` int(11) NOT NULL auto_increment,
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `nuke_referer`
-- 

INSERT INTO `nuke_referer` VALUES (1, 'http://localhost/php/admin.php?op=Configure');
INSERT INTO `nuke_referer` VALUES (2, 'http://localhost/php/admin.php');
INSERT INTO `nuke_referer` VALUES (3, 'http://localhost/php/admin.php?op=messages');
INSERT INTO `nuke_referer` VALUES (4, 'http://localhost/php/admin.php?op=messages');
INSERT INTO `nuke_referer` VALUES (5, 'http://localhost/php/admin.php?op=messages');
INSERT INTO `nuke_referer` VALUES (6, 'http://localhost/php/modules.php?name=Your_Account&op=userinfo&bypass=1&username=ArBo_HaCkEr');
INSERT INTO `nuke_referer` VALUES (7, 'http://localhost/php/admin.php');
INSERT INTO `nuke_referer` VALUES (8, 'http://localhost/tumundoautomotriz/admin.php?op=BlocksAdmin');
INSERT INTO `nuke_referer` VALUES (9, 'http://localhost/tumundoautomotriz/admin.php?op=BlocksEdit&bid=14');
INSERT INTO `nuke_referer` VALUES (10, 'http://localhost/tumundoautomotriz/admin.php?op=Configure');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_related`
-- 

CREATE TABLE `nuke_related` (
  `rid` int(11) NOT NULL auto_increment,
  `tid` int(11) NOT NULL default '0',
  `name` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(200) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `rid` (`rid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_related`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_reviews`
-- 

CREATE TABLE `nuke_reviews` (
  `id` int(10) NOT NULL auto_increment,
  `date` date NOT NULL default '0000-00-00',
  `title` varchar(150) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `text` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `reviewer` varchar(20) character set latin1 collate latin1_spanish_ci default NULL,
  `email` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `score` int(10) NOT NULL default '0',
  `cover` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url_title` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `hits` int(10) NOT NULL default '0',
  `rlanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_reviews`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_reviews_add`
-- 

CREATE TABLE `nuke_reviews_add` (
  `id` int(10) NOT NULL auto_increment,
  `date` date default NULL,
  `title` varchar(150) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `text` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `reviewer` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `email` varchar(60) character set latin1 collate latin1_spanish_ci default NULL,
  `score` int(10) NOT NULL default '0',
  `url` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `url_title` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `rlanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_reviews_add`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_reviews_comments`
-- 

CREATE TABLE `nuke_reviews_comments` (
  `cid` int(10) NOT NULL auto_increment,
  `rid` int(10) NOT NULL default '0',
  `userid` varchar(25) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `date` datetime default NULL,
  `comments` text character set latin1 collate latin1_spanish_ci,
  `score` int(10) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `cid` (`cid`),
  KEY `rid` (`rid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_reviews_comments`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_reviews_main`
-- 

CREATE TABLE `nuke_reviews_main` (
  `title` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `description` text character set latin1 collate latin1_spanish_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_reviews_main`
-- 

INSERT INTO `nuke_reviews_main` VALUES ('Titulo de la Secci?n An?lisis', 'Descripci?n Extendida de la Secci?n An?lisis');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_session`
-- 

CREATE TABLE `nuke_session` (
  `uname` varchar(25) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `host_addr` varchar(48) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `guest` int(1) NOT NULL default '0',
  KEY `time` (`time`),
  KEY `guest` (`guest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_session`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_stats_date`
-- 

CREATE TABLE `nuke_stats_date` (
  `year` smallint(6) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `date` tinyint(4) NOT NULL default '0',
  `hits` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_stats_date`
-- 

INSERT INTO `nuke_stats_date` VALUES (2005, 1, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 1, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 2, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 3, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 4, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 5, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 6, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 7, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 8, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 9, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 12, 43);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 16, 1);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 29, 1);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 10, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 11, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2005, 12, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 1, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 26, 68);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 27, 12);
INSERT INTO `nuke_stats_date` VALUES (2006, 2, 28, 266);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 1, 78);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 2, 8);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 7, 77);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 8, 79);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 9, 211);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 10, 47);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 13, 95);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 14, 56);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 16, 69);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 3, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 4, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 5, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 6, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 7, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 8, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 9, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 10, 31, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 11, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 1, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 2, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 3, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 4, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 5, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 6, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 7, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 8, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 9, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 10, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 11, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 12, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 13, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 14, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 15, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 16, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 17, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 18, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 19, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 20, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 21, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 22, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 23, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 24, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 25, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 26, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 27, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 28, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 29, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 30, 0);
INSERT INTO `nuke_stats_date` VALUES (2006, 12, 31, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_stats_hour`
-- 

CREATE TABLE `nuke_stats_hour` (
  `year` smallint(6) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `date` tinyint(4) NOT NULL default '0',
  `hour` tinyint(4) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_stats_hour`
-- 

INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 14, 34);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 15, 9);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 12, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 15, 1);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 16, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 22, 1);
INSERT INTO `nuke_stats_hour` VALUES (2005, 10, 29, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 15, 6);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 18, 1);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 19, 20);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 20, 10);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 21, 8);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 22, 23);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 26, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 21, 2);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 22, 10);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 27, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 1, 39);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 2, 27);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 12, 6);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 13, 28);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 14, 25);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 16, 4);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 17, 80);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 18, 53);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 20, 2);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 22, 2);
INSERT INTO `nuke_stats_hour` VALUES (2006, 2, 28, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 10, 4);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 12, 1);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 13, 17);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 14, 54);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 16, 2);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 1, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 9, 8);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 2, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 10, 19);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 12, 24);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 13, 9);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 16, 6);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 17, 19);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 7, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 14, 13);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 15, 36);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 17, 30);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 8, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 11, 30);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 12, 77);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 14, 51);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 15, 1);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 16, 3);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 17, 49);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 9, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 9, 5);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 10, 31);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 15, 11);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 10, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 11, 1);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 12, 81);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 13, 3);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 14, 10);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 15, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 16, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 13, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 11, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 12, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 13, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 14, 9);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 15, 4);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 16, 14);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 17, 29);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 14, 23, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 0, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 1, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 2, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 3, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 4, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 5, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 6, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 7, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 8, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 9, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 10, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 11, 11);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 12, 29);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 13, 24);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 14, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 15, 2);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 16, 3);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 17, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 18, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 19, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 20, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 21, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 22, 0);
INSERT INTO `nuke_stats_hour` VALUES (2006, 3, 16, 23, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_stats_month`
-- 

CREATE TABLE `nuke_stats_month` (
  `year` smallint(6) NOT NULL default '0',
  `month` tinyint(4) NOT NULL default '0',
  `hits` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_stats_month`
-- 

INSERT INTO `nuke_stats_month` VALUES (2005, 1, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 2, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 3, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 4, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 5, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 6, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 7, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 8, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 9, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 10, 45);
INSERT INTO `nuke_stats_month` VALUES (2005, 11, 0);
INSERT INTO `nuke_stats_month` VALUES (2005, 12, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 1, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 2, 346);
INSERT INTO `nuke_stats_month` VALUES (2006, 3, 720);
INSERT INTO `nuke_stats_month` VALUES (2006, 4, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 5, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 6, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 7, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 8, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 9, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 10, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 11, 0);
INSERT INTO `nuke_stats_month` VALUES (2006, 12, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_stats_year`
-- 

CREATE TABLE `nuke_stats_year` (
  `year` smallint(6) NOT NULL default '0',
  `hits` bigint(20) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nuke_stats_year`
-- 

INSERT INTO `nuke_stats_year` VALUES (2005, 45);
INSERT INTO `nuke_stats_year` VALUES (2006, 1066);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_stories`
-- 

CREATE TABLE `nuke_stories` (
  `sid` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `aid` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `title` varchar(80) character set latin1 collate latin1_spanish_ci default NULL,
  `time` datetime default NULL,
  `hometext` text character set latin1 collate latin1_spanish_ci,
  `bodytext` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `comments` int(11) default '0',
  `counter` mediumint(8) unsigned default NULL,
  `topic` int(3) NOT NULL default '1',
  `informant` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `notes` text character set latin1 collate latin1_spanish_ci NOT NULL,
  `ihome` int(1) NOT NULL default '0',
  `alanguage` varchar(30) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `acomm` int(1) NOT NULL default '0',
  `haspoll` int(1) NOT NULL default '0',
  `pollID` int(10) NOT NULL default '0',
  `score` int(10) NOT NULL default '0',
  `ratings` int(10) NOT NULL default '0',
  `associated` text character set latin1 collate latin1_spanish_ci NOT NULL,
  PRIMARY KEY  (`sid`),
  KEY `sid` (`sid`),
  KEY `catid` (`catid`),
  KEY `counter` (`counter`),
  KEY `topic` (`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_stories`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_stories_cat`
-- 

CREATE TABLE `nuke_stories_cat` (
  `catid` int(11) NOT NULL auto_increment,
  `title` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `counter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_stories_cat`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_subscriptions`
-- 

CREATE TABLE `nuke_subscriptions` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) default '0',
  `subscription_expire` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  KEY `id` (`id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_subscriptions`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_telefonos`
-- 

CREATE TABLE `nuke_telefonos` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Telefono` varchar(90) character set latin1 NOT NULL default '',
  `Tipo` varchar(50) character set latin1 NOT NULL default '',
  `IDEmpresa` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `nuke_telefonos`
-- 

INSERT INTO `nuke_telefonos` VALUES (1, '0416-8127960', 'Celular', 3);
INSERT INTO `nuke_telefonos` VALUES (2, '0212-3475490', 'Casa', 3);
INSERT INTO `nuke_telefonos` VALUES (3, '0212-3412180', 'Oficina', 1);
INSERT INTO `nuke_telefonos` VALUES (4, '0212-3410207', 'Oficina', 2);
INSERT INTO `nuke_telefonos` VALUES (5, '0212-3410661', 'Fax', 2);
INSERT INTO `nuke_telefonos` VALUES (6, '0414-3195785', 'Celular', 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_topics`
-- 

CREATE TABLE `nuke_topics` (
  `topicid` int(3) NOT NULL auto_increment,
  `topicname` varchar(20) character set latin1 collate latin1_spanish_ci default NULL,
  `topicimage` varchar(20) character set latin1 collate latin1_spanish_ci default NULL,
  `topictext` varchar(40) character set latin1 collate latin1_spanish_ci default NULL,
  `counter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`topicid`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `nuke_topics`
-- 

INSERT INTO `nuke_topics` VALUES (1, 'phpnuke', 'phpnuke.gif', 'PHP-Nuke', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_users`
-- 

CREATE TABLE `nuke_users` (
  `user_id` int(11) NOT NULL auto_increment,
  `name` varchar(60) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `username` varchar(25) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_email` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `femail` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_website` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_avatar` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_regdate` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_icq` varchar(15) character set latin1 collate latin1_spanish_ci default NULL,
  `user_occ` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `user_from` varchar(100) character set latin1 collate latin1_spanish_ci default NULL,
  `user_interests` varchar(150) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_sig` varchar(255) character set latin1 collate latin1_spanish_ci default NULL,
  `user_viewemail` tinyint(2) default NULL,
  `user_theme` int(3) default NULL,
  `user_aim` varchar(18) character set latin1 collate latin1_spanish_ci default NULL,
  `user_yim` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `user_msnm` varchar(25) character set latin1 collate latin1_spanish_ci default NULL,
  `user_password` varchar(40) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `storynum` tinyint(4) NOT NULL default '10',
  `umode` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `uorder` tinyint(1) NOT NULL default '0',
  `thold` tinyint(1) NOT NULL default '0',
  `noscore` tinyint(1) NOT NULL default '0',
  `bio` tinytext character set latin1 collate latin1_spanish_ci NOT NULL,
  `ublockon` tinyint(1) NOT NULL default '0',
  `ublock` tinytext character set latin1 collate latin1_spanish_ci NOT NULL,
  `theme` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
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
  `user_lang` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default 'spanish',
  `user_dateformat` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default 'D M d, Y g:i a',
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
  `user_sig_bbcode_uid` varchar(10) character set latin1 collate latin1_spanish_ci default NULL,
  `user_actkey` varchar(32) character set latin1 collate latin1_spanish_ci default NULL,
  `user_newpasswd` varchar(32) character set latin1 collate latin1_spanish_ci default NULL,
  `points` int(10) default '0',
  `last_ip` varchar(15) character set latin1 collate latin1_spanish_ci NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  KEY `uid` (`user_id`),
  KEY `uname` (`username`),
  KEY `user_session_time` (`user_session_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `nuke_users`
-- 

INSERT INTO `nuke_users` VALUES (1, '', 'Anonymous', '', '', '', 'blank.gif', 'Nov 10, 2000', '', '', '', '', '', 0, 0, '', '', '', '', 10, '', 0, 0, 0, '', 0, '', '', 4096, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 10, NULL, 'spanish', 'D M d, Y g:i a', 0, 0, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 3, NULL, NULL, NULL, 0, '0');
INSERT INTO `nuke_users` VALUES (2, '', 'ArBo_HaCkEr', 'arbo@arbo.com.ve', '', 'http://localhost/php/', 'gallery/blank.gif', 'Oct 12, 2005', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'e6f6778b2c3cd029cdabab154b8d147f', 10, '', 0, 0, 0, '', 0, '', 'XetaTheme', 4096, 0, 0, 0, 0, 0, 2, 1, 0, 1, 0, 0, 0, 10, NULL, 'english', 'D M d, Y g:i a', 0, 0, 0, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 3, NULL, NULL, NULL, 0, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nuke_users_temp`
-- 

CREATE TABLE `nuke_users_temp` (
  `user_id` int(10) NOT NULL auto_increment,
  `username` varchar(25) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_email` varchar(255) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_password` varchar(40) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `user_regdate` varchar(20) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `check_num` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `time` varchar(14) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `nuke_users_temp`
-- 

