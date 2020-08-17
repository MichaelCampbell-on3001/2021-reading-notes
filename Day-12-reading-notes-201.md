
## Reading notes day 12
### Chart.js Article
+ The great things about Chart.js are that it’s simple to use and really very flexible. Plus, once you’ve mastered the basics here, you’ll discover that there are tons of options listed in the documentation. 
+ Charts are far better for displaying data visually than tables and have the added benefit that no one is ever going to press-gang them into use as a layout tool. They’re easier to look at and convey data quickly, but they’re not always easy to create.
+ A great way to get started with charts is with Chart.js, a JavaScript plugin that uses HTML5’s canvas element to draw the graph onto the page. It’s a well documented plugin that makes using all kinds of bar charts, line charts, pie charts and more, incredibly easy.
+ To see how to use chart.js we’re going to create a set of 3 graphs; one will show the number of buyers a fictional product has over the course of 6 months, this will be a line chart; the second will show which countries the customers come from, this will be the pie chart; finally we’ll use a bar chart to show profit over the period.
### Canvas API
+ The Canvas API provides a means for drawing graphics via JavaScript and the HTML *canvas* element. Among other things, it can be used for animation, game graphics, data visualization, photo manipulation, and real-time video processing.
+ The Canvas API largely focuses on 2D graphics. The WebGL API, which also uses the *canvas* element, draws hardware-accelerated 2D and 3D graphics.
### Drawing paths
Now let's look a t**paths**. A path is a list of points, connected by segments of lines that can be of different shapes, curved or not, of different width and of different color. 
A path, or even a subpath, can be closed. To make shapes using paths, we take some extra steps:

1 First, you create the path.
1 Then you use drawing commands to draw into the path.
1 Once the path has been created, you can stroke or fill the path to render it.
## Colors
**Color** is a string representing a CSS <color>, a gradient object, or a pattern object. We'll look at gradient and pattern objects later.
 By default, the stroke and fill color are set to black (CSS color value #000000).
## Drawing text
The canvas rendering context provides two methods to render text:
**fillText**(text, x, y [, maxWidth])
**Fills** a given text at the given (x,y) position. Optionally with a maximum width to draw.
**strokeText**(text, x, y [, maxWidth])
**Strokes** a given text at the given (x,y) position. Optionally with a maximum width to draw.
