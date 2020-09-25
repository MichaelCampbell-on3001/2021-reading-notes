# 301 prework reading:
## Shay Howe’s intro to RWD
### Responsive Web Design
 https://learn.shayhowe.com/advanced-html-css/responsive-web-design/
+ With the growth in mobile Internet usage comes the question of how to build websites suitable for all users. + The industry response to this question has become responsive web design, also known as RWD.
+ Responsive web design is the practice of building a website suitable to work on every device and every screen size, no matter how large or small, mobile or desktop. + Responsive web design is focused around providing an intuitive and gratifying experience for everyone. + Desktop computer and cell phone users alike all benefit from responsive websites.
+ Responsive and adaptive web design are closely related, and often transposed as one in the same. + Responsive generally means to react quickly and positively to any change, while adaptive means to be easily modified for a new purpose or situation, such as change. 
+ Responsive design websites continually and fluidly change based on different factors, such as viewport width, while adaptive websites are built to a group of preset factors. A combination of the two is ideal, providing the perfect formula for functional websites. 
+ Which term is used specifically doesn’t make a huge difference.
+ Mobile, on the other hand, generally means to build a separate website commonly on a new domain solely for mobile users.
> Currently the most popular technique lies within responsive web design, favoring design that dynamically adapts to different browser and device viewports, changing layout and content along the way. >This solution has the benefits of being all three, responsive, adaptive, and mobile.
### Flexible Layouts
+ Responsive web design is broken down into three main components, including flexible layouts, media queries, and flexible media. + The first part, flexible layouts, is the practice of building the layout of a website with a flexible grid, capable of dynamically resizing to any width. + Flexible grids are built using relative length units, most commonly percentages or em units. + These relative lengths are then used to declare common grid property values such as width, margin, or padding.
### Flexible Grid
+ Let’s see how this formula works inside of a two column layout. Below we have a parent division with the class of container wrapping both the section and aside elements. The goal is to have have the section on the left and the aside on the right, with equal margins between the two. + Normally the markup and styles for this layout would look a bit like the following.
+ CSS3 introduced some new relative length units, specifically related to the viewport size of the browser or device. These new units include vw, vh, vmin, and vmax. + Overall support for these new units isn’t great, but it is growing. In time they look to play a large roll in building responsive websites.

### vw
+ Viewports widthvh
+ Viewports heightvmin
+ Minimum of the viewport’s height and widthvmax
+ Maximum of the viewport’s height and width

### Media Queries
+ Media queries were built as an extension to media types commonly found when targeting and including styles. 
+ Media queries provide the ability to specify different styles for individual browser and device circumstances, the width of the viewport or device orientation for example. 
+ Being able to apply uniquely targeted styles opens up a world of opportunity and leverage to responsive web design.
### Logical Operators in Media Queries
+ Logical operators in media queries help build powerful expressions. There are three different logical operators available for use within media queries, including and, not, and only.

### Mobile First
+ One popular technique with using media queries is called mobile first. + The mobile first approach includes using styles targeted at smaller viewports as the default styles for a website, then use media queries to add styles as the viewport grows.
### Flexible Embedded Media
+ Unfortunately the max-width property doesn’t work well for all instances of media, specifically around iframes and embedded media. 
+ When it comes to third party websites, such as YouTube, who use iframes for embedded media this is a huge disappointment. 
+ Fortunately, there is a work around.
