<?php
# Import all Composer packages
require __DIR__ . '/vendor/autoload.php';

use ofc\Site;

# Create global accessor for the RAD site instance
function site(): Site
{
  return Site::getInstance();
}

# Initialize the RAD site instance
add_action('after_setup_theme', 'site');