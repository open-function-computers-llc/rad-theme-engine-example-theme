<?php
get_header();

// Render tpl/shirts/archive.tpl 
echo site()->render("shirts/archive", [
    "title" => get_queried_object()->name . " Shirts",
    "products" => site()->getDefaultPosts([
        'title',
        'thumbnail',
        'acf.primary_color',
        'acf.price',
        'url'
    ]),
]);

get_footer();
