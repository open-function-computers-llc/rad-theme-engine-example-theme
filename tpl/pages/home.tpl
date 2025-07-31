<div class="flex gap-4 items-stretch">

    <div class="flex-1 bg-yellow-100 rounded-lg p-6 text-neutral-700 relative">

        <div class="w-2/3 flex flex-col items-start h-full gap-2">
            <h1>All The Best Deals!</h1>

            <p class="text-neutral-500 flex-1">
                From designer brands to local artists, we've got you covered.
            </p>

            <a class="bg-yellow-500 hover:bg-yellow-600 text-white button"
                href="{{view_all_url}}">
                View Inventory {{#assetContents arrow-right.svg}}
            </a>
        </div>

        <div class="absolute right-6 bottom-0 h-[105%]">
            <img src="{{#assetURL hero-person.png}}" alt="" class="h-full w-auto">
        </div>


    </div>
    <div class="starburst hover:scale-105 transition-all size-64 bg-red-500 rotate-12 p-4 flex items-center flex-col justify-center text-white rounded-full">
        <h1>
            Hey There!
        </h1>
        <p class="text-sm mt-2">
            Welcome to the shirt store!
        </p>
    </div>

</div>

<div class="flex my-6 gap-4 items-stretch">
    <div class="size-36  bg-blue-500 rounded-lg text-white flex items-center justify-center hover:scale-105 transition-all">
        {{#assetContents shirt.svg}}
    </div>
    <div class="flex-1 flex flex-col justify-center px-6 py-6 bg-blue-100 rounded-lg">
        <h3 class="mb-2">What is this?</h3>
        <p>
            The shirt store is a demonstration wordpress theme that uses custom post types and taxonomies with <a
                class="hover:underline"
                href="https://github.com/open-function-computers-llc/rad-theme-engine">rad-theme-engine</a>.
        </p>
    </div>
</div>

<div class="my-12">
    <div class="flex justify-between items-baseline mb-6">
        <h1>New Arrivals</h1>
        <a class="flex items-center gap-2" href="{{view_all_url}}">
            View All {{#assetContents arrow-right.svg}}
        </a>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {{#each products}}
        {{> partials/shirt_grid_item}}
        {{/each}}
    </div>

</div>

<div class="my-12">
    <div class=" mb-6">
        <h1>Browse by Color</h1>

    </div>

    {{#colorTaxonomyFilters partials/filter_pills_big}}

</div>