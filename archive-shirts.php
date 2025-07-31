<?php
get_header();

// Render tpl/shirts/archive.tpl 
echo site()->render("shirts/archive", [
    "title" => "All Shirts",
    "products" => site()->getDefaultPosts([
        'title',
        'thumbnail',
        'acf.primary_color',
        'acf.price',
        'url'
    ]),
]);

get_footer();
