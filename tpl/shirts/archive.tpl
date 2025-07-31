{{> partials/page_title }}

{{#colorTaxonomyFilters partials/filter_pills}}

<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
    {{#each products}}
    {{> partials/shirt_grid_item}}
    {{/each}}
</div>