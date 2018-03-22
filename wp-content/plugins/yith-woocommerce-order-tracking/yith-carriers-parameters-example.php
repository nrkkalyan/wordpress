<?php
/*
 * This is an example file.
 * In order to overwrite the standard properties, create a file in the same folder named yith-carriers-parameters.php(
 * the same as the current file, without the -example suffix.
 *
 *  Manage additional parameters for carriers on class.carriers.php.
 * Add your custom parameters using the same key of the array in class.carriers.php in order to overwrite the standard
 * behaviour.
 *
 */
$carriers_parameter = array(
	'DPD'               => array(
		'name'      => 'DPD',
		'track_url' => 'https://tracking.dpd.de/cgi-bin/delistrack?pknr=[TRACK_CODE]&typ=1&lang=en',
	),
);
