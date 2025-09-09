{{> partials/page_title }}

{{#colorTaxonomyFilters partials/filter_pills}}

<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
    {{#each products}}
    {{> partials/shirt_grid_item}}
    {{/each}}
</div>

<div class="text-center text-neutral-500 py-12">
    <div class="">Page {{#paginationIndex}} of {{#paginationCount}}</div>
    <div class="mt-4">{{#paginationLinks}}</div>
</div>

