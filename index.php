<?php
get_header();

// example handlebars render. feel free to delete this and build out your content
echo site()->render("pages/home", [
    "view_all_url" => get_post_type_archive_link("shirts"),
    "products" => site()->getPosts([
        "post_type" => "shirts",
        "orderby" => "date",
        "order" => "DESC",
        "numberposts" => 3,
    ], [
        "title",
        "url",
        "thumbnail",
        "acf.primary_color",
        "acf.price"
    ]),
]);

// take it away from here!

get_footer();
