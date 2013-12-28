"Helius" phpBB theme
Version 1.0
Created by Vjacheslav Trushkin (aka CyberAlien)
Demo URL: http://helius.securefirms.com
phpBB version: 2.0.4 (or older)

Right now translations are available for only these languages:
- Bulgarian
- Danish
- Dutch
- English
- Finnish
- French
- German
- Italian
- Norwegian
- Portuguese
- Portuguese (brazil)
- Russian
- Spanish


If you need to contact me here is my contact info:

Web: http://www.trushkin.net
E-Mail, MSN: slava@trushkin.net
ICQ: 16945665
AIM: SlavaTrushkin
YIM: CyberAlien27
phpbb.com forum: CyberAlien

..and don't ask me for images in PSD format because all images are
  created using Fireworks MX, not Photoshop.

------------
Installation:
------------

in includes/page_header.php find this line:

$template->assign_vars(array(

and add after it (if this line is absent):

	'LANG' => $board_config['default_lang'],

that's all.


