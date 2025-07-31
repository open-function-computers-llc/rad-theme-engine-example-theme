<?php

namespace Helpers;

class Color
{
    public static function findContrastingColor()
    {
        return function ($template, $context, $args, $source) {
            $color = $context->get($args);

            $color = str_replace("#", "", $color);

            $r = hexdec(substr($color, 0, 2));
            $g = hexdec(substr($color, 2, 2));
            $b = hexdec(substr($color, 4, 2));

            $contrast = ($r * 0.299) + ($g * 0.587) + ($b * 0.114);

            return $contrast > 186 ? "black" : "white";
        };
    }
}
