<?php

namespace Helpers;

class ColorTaxonomyFilterHelper
{
    public static function callback()
    {
        return function ($template, $context, $args, $source) {

            $terms = site()->getTerm('color', ['slug', 'name', 'url']);

            $terms = array_map(function ($term) {
                $firstPost = site()->getPosts([
                    'post_type' => 'shirts',
                    'taxonomy.color' => $term["slug"],
                    'limit' => 1
                ], [
                    'acf.primary_color'
                ]);

                if (empty($firstPost)) {
                    return null;
                }

                $selected =
                    get_queried_object()
                    && property_exists(get_queried_object(), "slug")
                    && $term["slug"] === get_queried_object()->slug;

                return [
                    "slug" => $term["slug"],
                    "name" => $term["name"],
                    "url" => $term["url"],
                    "primary_color" => $firstPost[0]['primary_color'],
                    "selected" => $selected
                ];
            }, $terms);

            $terms = array_filter($terms);

            return site()->render($args, [
                "terms" => $terms,
                "view_all_url" => get_post_type_archive_link("shirts")
            ]);
        };
    }
}
