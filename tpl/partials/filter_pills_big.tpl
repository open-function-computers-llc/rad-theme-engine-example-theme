<div class="flex w-full justify-evenly gap-4 items-center">
    {{#each terms}}
    <a href="{{url}}" class="rounded-full flex items-center justify-center aspect-square px-4 py-2 flex-1 hover:scale-105 hover:shadow-lg transition-all"
        style="background-color: {{primary_color}}; color: {{#findContrastingColor primary_color}};">
        <h3>{{name}}</h3>
    </a>
    {{/each}}
</div>