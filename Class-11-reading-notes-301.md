

## Read: 11 - EJS
Today, I watched this series on [EJS](https://www.youtube.com/watch?v=63IurQvsw9w&list=PL7sCSgsRZ-slYARh3YJIqPGZqtGVqZRGt&index=2).
Here are my findings from reading the [ Google Books API Docs](https://developers.google.com/books/docs/v1/using#WorkingVolumes)
#### Working with volumes
**Performing a search**: You can perform a volumes search by sending an HTTP GET request to the following URI.
```
https://www.googleapis.com/books/v1/volumes?q=search+terms
```
gleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&key=yourAPIKey
```
**Filtering**: You can use the filter parameter to restrict the returned results further by setting it the to one of the following values:
+ partial - Returns results where at least parts of the text are previewable.
+ full - Only returns results where all of the text is viewable.
+ free-ebooks - Only returns results that are free Google eBooks.
+ paid-ebooks - Only returns results that are Google eBooks with a price.
+ ebooks - Only returns results that are Google eBooks, paid or free. Examples of non-eBooks would be publisher content that is available in limited preview and not for sale, or magazines.
**Pagination**: You can paginate the volumes list by specifying two values in the parameters for the request:
+ startIndex - The position in the collection at which to start. The index of the first item is 0.
+ maxResults - The maximum number of results to return. The default is 10, and the maximum allowable value is 40.
**Print Type**: You can use the printType parameter to restrict the returned results to a specific print or publication type by setting it to one of the following values:
+ all - Does not restrict by print type (default).
+ boks - Returns only results that are books.
+ magazines - Returns results that are magazines.
**Projection**: You can use the projection parameter with one of the following values to specify a predefined set of Volume fields to return:
+ full - Returns all Volume fields.
+ lite - Returns only certain fields. See field descriptions marked with double asterisks in the Volume reference to find out which fields are included.
**Sorting**: By default, a volumes search request returns maxResults results, where maxResults is the parameter used in pagination (above), ordered by relevance to search terms.
+ You can change the ordering by setting the orderBy parameter to be one of these values:
+ relevance - Returns results in order of the relevance of search terms (this is the default).
+ newest - Returns results in order of most recently to least recently published.
**Retrieving a specific volume**: You can retrieve information for a specific volume by sending an HTTP GET request to the Volume resource URI.
```
https://www.googleapis.com/books/v1/volumes/volumeId
```
+ Replace the volumeId path parameter with the ID of the volume to retrieve. See the Google + + Books IDs section for more information on volume IDs.
**Request**: Below is an example of a GET request that gets a single volume:
```
GET https://www.googleapis.com/books/v1/volumes/zyTCAlFPjgYC?key=yourAPIKey
```


### EJS Docs
Here are my notes after reading the [EJS DOCS](https://ejs.co/).
**EJS** is a simple templating language that lets you generate HTML markup with plain JavaScript.
Benefits of EJS:
+ Use plain JavaScript
+ Speedy Execution
+ Fast Development TIme
+ Easy Debugging  
+ SImple Syntax
+ Active Development
#### To get started using EJS
1. Install EJS with NPM
```
$ npm install ejs
```
1. Pass EJS a template string and some data. BOOM, you've got some HTML.
```
let ejs = require('ejs');
let people = ['geddy', 'neil', 'alex'];
let html = ejs.render('<%= people.join(", "); %>', {people: people});
```
1.  **CLI**: Feed it a template file and a data file, and specify an output file.
```
ejs ./template_file.ejs -f data_file.json -o ./output.html
```
1. **Download** a browser build from the latest release, and use it in a script tag.
```
<script src="ejs.js"></script>
<script>
  let people = ['geddy', 'neil', 'alex'];
  let html = ejs.render('<%= people.join(", "); %>', {people: people});
</script>
```
#### Documentation
**Example**
```
<% if (user) { %>
  <h2><%= user.name %></h2>
<% } %>
```
**Usage**
```
let template = ejs.compile(str, options);
template(data);
// => Rendered HTML string

ejs.render(str, data, options);
// => Rendered HTML string

ejs.renderFile(filename, data, options, function(err, str){
    // str => Rendered HTML string
});
```
### I also checked out the [EJS Tutorial] (https://www.digitalocean.com/community/tutorials/how-to-use-ejs-to-template-your-node-application) and the [Source Code for the EJS Tutorial](https://github.com/scotch-io/node-ejs).
