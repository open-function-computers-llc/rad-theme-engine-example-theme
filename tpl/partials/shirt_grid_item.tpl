<a href="{{url}}" class="flex flex-col gap-2 hover:scale-105 transition-transform hover:[&>div]:shadow-lg [&>div]:transition-shadow">
    <div class="rounded-lg overflow-hidden relative aspect-square">
        <div class="absolute inset-0 size-full opacity-20" style="background-color: {{primary_color}};"></div>
        <img src="{{thumbnail}}" alt="" class="size-full object-cover">
    </div>
    <div class="p-4 rounded-lg bg-neutral-100 *:opacity-90"
        style="background-color: {{primary_color}}; color: {{#findContrastingColor primary_color}}">
        <h4>{{title}}</h4>
        <p>
            ${{price}}
        </p>
    </div>
</a>