<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'hanghieu.sale');

/** MySQL database username */
define('DB_USER', 'homestead');

/** MySQL database password */
define('DB_PASSWORD', 'secret');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'soo}=0O28;nq_NdO:r|7I:@AQUOI/gIgG6KPLSui: -,S:y{4DvaOLhzxxDf@2*e');
define('SECURE_AUTH_KEY',  'KHHc`dBJ}4oy B1f9]q@@dy#+7NWz<8j%5VVR}%mQ[9X6i$8C!)&5@IZMhRSx]iz');
define('LOGGED_IN_KEY',    'm?X6?%]M>G%VL;JN/IZ]LpT1s9O6bX$]$>VAl+Y$n2C7)6[?qA$,H3k3=n|_n>Y4');
define('NONCE_KEY',        'TVc879=CT?oh:_D%JkRNg)+L&:%*Yqw0q=@<sS],+SOl?uU0_$K~FRH Id{?Hq4G');
define('AUTH_SALT',        ' gYPvT.!cKys2m3J[+P,Cer5JLzF|e~,^ya%8^Fge-eH$vVK_>+}<@}{j7JI4iJz');
define('SECURE_AUTH_SALT', 'pQd3*>{`k>Q_[H}x`f:5?QBA]zqzwk.uyQ,k{J;<HmN(@[u6KAS@}4s<$F?.`NCU');
define('LOGGED_IN_SALT',   'S-`[,e8;`zwpE`<AJetb @qg:heax8d`Y{ju)U9-_PZbA)z-yigp+Q5_zY(v1mfy');
define('NONCE_SALT',       'XpK8?C?N%OoofiY,S;}Yf_1_fOm2jg^Lj!K5zP;p4Z#T+?]MaZEVYw?2KeC;Kxe+');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
