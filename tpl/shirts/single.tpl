<div class="flex gap-8 items-stretch justify-evenly mt-12">
    <div class="flex-1">
        <div class="rounded-xl overflow-hidden relative aspect-square" style="background-color: {{primary_color}}34;">
            <img src="{{thumbnail}}" alt="{{title}}" class="size-full object-cover">
        </div>
    </div>
    <div class="flex-1 flex flex-col gap-4 h-full">
        <h1 class="!text-5xl">{{title}}</h1>
        <div class="flex gap-2 items-center mt-2">
            <div class="px-4 py-2 inline-block rounded-full font-medium bg-neutral-100">
                ${{price}}
            </div>

            <a href="{{color.0.link}}" class="px-4 py-2 inline-block rounded-full font-medium"
                style="background-color: {{ primary_color }}34;">{{ color.0.name }}</a>

        </div>
        <div class="mt-2 flex-grow">
            {{{content}}}
        </div>

    </div>
</div>

<div class="mt-12">
    <div class="mb-6">
        <h1>Related Products</h1>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {{#each related_products}}
        {{> partials/shirt_grid_item}}
        {{/each}}
    </div>

</div>