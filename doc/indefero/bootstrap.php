<?php 
require 'indefero/src/IDF/conf/path.php'; 
require 'Pluf.php'; 
Pluf::start('indefero/src/IDF/conf/idf.php'); 
Pluf_Dispatcher::loadControllers(Pluf::f('idf_views')); 
$user = new Pluf_User(); 
$user->first_name = 'agaue'; 
$user->last_name = ''; // Required! 
$user->login = 'agaue'; // must be lowercase! 
$user->email = 'agaue@sina.com'; 
$user->password = 'WmjN166idf'; // the password is salted/hashed 
// in the database, so do not worry <img src="http://marxo.iz.rs/wp-includes/images/smilies/icon_smile.gif" alt=":)" class="wp-smiley"> 
$user->administrator = true; 
$user->active = true; 
$user->create(); 
print "Bootstrap ok\n"; 
?>
