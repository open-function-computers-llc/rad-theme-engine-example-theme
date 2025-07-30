<?php
get_header();

// example handlebars render. feel free to delete this and build out your content
echo site()->render("pages/home", [
    "shirts_link" => get_post_type_archive_link("shirts"),
]);

// take it away from here!

get_footer();
