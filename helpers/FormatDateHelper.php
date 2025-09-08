<?php

namespace Helpers;

class FormatDateHelper
{
    public static function callback()
    {
        return function ($template, $context, $args, $source) {
            $dateString = strtotime($context->get($args));

            return date("M d, Y", $dateString);
        };
    }
}
