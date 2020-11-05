## Read 12

### [EJS Partials](https://medium.com/@henslejoseph/ejs-partials-f6f102cb7433)

**Partials** come in handy when you want to *reuse* the **same HTML across multiple views.** Think of partials as *functions*, they make large websites easier to maintain as you don’t have to go and change a *piece* of text in *every* page it appears in.
 In **EJS**, any *JavaScript or non-HTML syntax* you include in your templates is always surrounded by **<% %>** delimiters.Including a partial in EJS is quite straightforward. You use **<%- include( PARTIAL_FILE ) %>** where the partial file is relative to the template you use it in.

### [Watch EJS tutorial from WalkThroughCode on YouTube, Video 7, Partials](https://www.youtube.com/watch?v=3_xEEH4fTEk&t=0s&index=7&list=PL7sCSgsRZ-slYARh3YJIqPGZqtGVqZRGt)

John discussing the case uses for *partials*. Some examples he gives in the video include using partials in EJS and using partials to create a header and footer.
