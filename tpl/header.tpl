<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{#wp-title}}</title>

    <link rel="icon" href="{{#assetURL shirt-purple.svg}}">

    {{#wp-header}}
</head>

<body {{#body-classes}}>

    <nav class="w-full bg-gradient-to-b px-4 my-6">
        <div
            class="max-w-3xl mx-auto flex gap-2 justify-between w-full items-stretch">
            <a class="py-5 px-7 flex items-center bg-purple-500 hover:bg-purple-600 transition-all hover:scale-105 rounded-full" href="/">
                <img src="{{#assetURL logo-w.png }}" alt="" class="h-4 w-auto">
            </a>
            <div class="flex gap-4 flex-1 items-center font-medium rounded-lg justify-end py-4 px-6 bg-neutral-100 text-neutral-700" id="nav-menu" role="navigation">
                {{#each menu}}
                    <a href="{{url}}" class="text-sm hover:underline">{{title}}</a>
                {{/each}}
            </div>
        </div>
    </nav>

    <div class="w-full px-4">
        <div class="max-w-3xl mx-auto">