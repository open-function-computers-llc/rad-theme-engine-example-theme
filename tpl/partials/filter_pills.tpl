<div class="flex gap-2 mb-6 items-center [&>a]:hover:scale-110 [&>a]:transition-all">
    <a href="{{view_all_url}}" class="bg-neutral-100 rounded-full px-4 py-2">All Colors</a>
    {{#each terms}}
    <a href="{{url}}" class="rounded-full px-4 py-2" style="background-color: {{primary_color}}{{#unless selected}}34{{else}}; color: {{#findContrastingColor primary_color}}{{/unless}};">
        {{name}}
    </a>
    {{/each}}
</div>