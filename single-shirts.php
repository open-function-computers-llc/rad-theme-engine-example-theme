<?php
get_header();

// Render a page showing information about a single t-shirt
echo site()->render("shirts/single", [
    ...site()->getPost(
        get_post(),
        [
            'title',
            'acf.price',
            'acf.image',
            'thumbnail',
            'content',
            'acf.primary_color',
            'taxonomy.color.slug,name,link'
        ]
    ),
    'related_products' => site()->getPosts(
        [
            'post_type' => 'shirts',
            'numberposts' => 3,
            'orderby' => 'rand',
            'exclude' => get_the_ID()
        ],
        [
            'title',
            'acf.price',
            'acf.image',
            'thumbnail',
            'acf.primary_color',
            'url'
        ]
    )
]);

get_footer();
