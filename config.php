<?php

return [
    /**
     * excerpt-length
     *
     * how many words should the wordpress excerpt be
     */
    "excerpt-length" => 100,


    /**
     * guest-class
     *
     * if you want wordpress to automatically append a class to the body_class
     * list when users are not authenticated, put that class name here. it
     * defaults to "guest"
     */
    "guest-class" => "guest",


    /**
     * menu-locations
     *
     * register your individual menu locations here
     */
    "menu-locations" => [
        "main-nav" => "Main Navigation",
    ],


    /**
     * custom-post-types
     *
     * here is where you can define your custom post types easily
     */
    "custom-post-types" => [
        [
            "slug" => 'shirts',
            "icon" => 'dashicons-cart',
            "taxonomies" => ['color'],
            "options" => [
                "has_archive" => 'shirts',
                "show_in_nav_menus" => true,
                "supports" => ['title', 'editor', 'thumbnail'],
                "has_archive" => true,
                "rewrite" => [
                    'slug' => 'shirts',
                    'with_front' => true,
                    'pages' => true,
                    'feeds' => true,
                ],
                "labels" => [
                    'name' => _x('Shirts', 'Post Type General Name', 'text_domain'),
                    'singular_name' => _x('Shirt', 'Post Type Singular Name', 'text_domain'),
                ]
            ]
        ],
    ],


    /**
     * handlebars
     *
     * We use handlebars templating extensivly in this theme and code pattern.
     * You can adjust the defaults for many attributes here.
     *
     * Set this to `false` to disable handlebars functionality completely
     */
    "handlebars" => [
        "additional-helpers" => [
            "formatDate" => \Helpers\DateFormatter::monthDayYear(),
            // "findContrastingColor" => \Helpers\Color::findContrastingColor(),
            "colorTaxonomyFilters" => \Helpers\ColorTaxonomy::colorTaxonomyFilters(),
        

        
            "findContrastingColor" => \Helpers\FindContrastingColorHelper::callback(),
        ],
    ],


    /**
     * enable
     *
     * enable individual wordpress features here
     */
    "enable" => [
        "post-thumbnails",
        "menus",
    ],


    /**
     * disable
     *
     * disable individual wordpress features here
     */
    "disable" => [
        "editor",
    ],
];
