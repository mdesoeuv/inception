<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpressDB' );

/** Database username */
define( 'DB_USER', 'mdesoeuv' );

/** Database password */
define( 'DB_PASSWORD', 'myloginpass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'Tj3?nGPm[s c`8zWBQ_6?/dn3q@7|9:efp@UpE-xZ9*33oB9+9cov^R&g,JovrwK' );
define( 'SECURE_AUTH_KEY',   'mdax]o% 0+Zq`lYit96]>Kn@.wHzGBST7u{E39Kk^WeS(Y5ga0$d<~<ep/<kTjg5' );
define( 'LOGGED_IN_KEY',     '`,K2;enUj)mR[%=Qo2{A%U J? ~GUi{G1<mz=-|icp/%I)hD<8GXt8%1*?{YOg!)' );
define( 'NONCE_KEY',         'm;B7@`>j)-)&?kYTvueaD;q.-km;:OK[%30?MZny~HU^V3=fr`;~OQDN`/chnVXG' );
define( 'AUTH_SALT',         '&-c2I_~7V~&qFsMHFtH)XJcTblgmM&pdu.n9#*{2Iw<V?[3$sfSdUI_G@.)>5g?o' );
define( 'SECURE_AUTH_SALT',  'O`GR^ $bzovLmBw4in.~2*4JsnKxzM<ps^HO-*z+iX4s`eX4E>oUFwZGy:Wjq#E5' );
define( 'LOGGED_IN_SALT',    ';,X}Zv,t+`sq>d8rzrOd=COM ER$[f~`__I+]Mjhcf:b:/PT-Ad~m?z.UiwW:p+&' );
define( 'NONCE_SALT',        '%|5^(A4!q0E.^v89VfOTp%j}kxgpa#Zx:ls|T`c7_!%HD`kCKzLX7GZdY1Dy1:f3' );
define( 'WP_CACHE_KEY_SALT', 'AmET(6DH QRfp>mrCtt#OEhua:-u;f1 U$hI jlnntI*aAJjWxSd *>fjYx?%T6b' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
