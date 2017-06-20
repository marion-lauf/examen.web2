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
define('DB_NAME', '2k17_wp_examen');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

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
define('AUTH_KEY',         'V8gF=g58aBnRQ5A(RyM2wwGtFn8[db yVZm!W[]~~6.7d5HXHmJL^DG1?<+{_2-w');
define('SECURE_AUTH_KEY',  '^(2B/RZtGv,}5?f[RT6JhDpTWAM0YxeC0<<s6hRb)1o~D/gH&|d3)SOqFg{gzU))');
define('LOGGED_IN_KEY',    '6HsL%0]W5[g`H007WF.Br;/m=T[WCG7lc.Z,~Ywmh8^$y(^cKu]6j0=;5PkUovra');
define('NONCE_KEY',        'C7R6`9E~#G}2%JK2`iy!{}ZKc&mR(qY/lg(<s4TwGOGVTC, J3b/wKop4wk-:n.I');
define('AUTH_SALT',        'aNd3vu4S65@R*qJ`gx7PIesF8-5KbR1^XEn8*$DR)!v?w2kFhwkwIL`jr_C) ( T');
define('SECURE_AUTH_SALT', '<lZ+T1r=S/H}CdibXG9njEsGGCB-|Q6{P(#k96t*Q@@4+.62qlN$WGQ*oM^}a+!Q');
define('LOGGED_IN_SALT',   'Np~$8-<Ot]gUJ^}e&RbI|/tQ|]G$!$xZql@Tc.1ZGXu*6eQas/VdlwN9/!}LMo6z');
define('NONCE_SALT',       '=].d5%;0kDt4T$~o#SO,808P7<7d-&^Q*?s|$hX0Gst5(X%x7AEx0VOxvg?|{JKj');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_2k17_examen';

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
