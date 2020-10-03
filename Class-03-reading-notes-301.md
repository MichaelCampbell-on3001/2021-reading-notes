#Reading 03
### 7 Uses of Markdown used in this document =
1. "##HEADERS"
1. "**bold**"
1. "+" unordered list
1. "1." numbered list
1. "[title](https://www.example.com)" link
1. *Italics*
1. |Tables | 


## [Templating with Mustache](https://medium.com/@1sherlynn/javascript-templating-language-and-engine-mustache-js-with-node-and-express-f4c2530e73b2)
### Javascript Templating Language and Engine: Mustache.js with Node and Express
**Javascript Templating** The template is HTML markup, with added templating tags that will either insert variables or run programming logic.
**Mustache** is often referred to as *“logic-less”* because there are no if statements, else clauses, or for loops. Instead, there are only tags. 
Some tags are replaced with a value, some nothing, and others a series of values.
It is also considered the **base** for JavaScript templating. Since mustache supports various languages, we don’t need a *separate* templating system on the server side.
|** Example** | 
| ------------- |
| Mustache.render(“Hello, {{name}}”, { name: “Sherlynn” });                                                             // returns: Hello, Sherlynn     | 
In the **above**, we see *two braces* around **{{ name }}**. This is Mustache syntax to show that it is a placeholder. When Mustache compiles this, it will look for the ‘name’ property in the object we pass in, and **replace** {{ name }} with the actual value, e,g, “Sherlynn”.
Mustache is **NOT** a templating engine. Mustache is **a specification for a templating language**. In general, we would write templates according to the Mustache specification, and it can then be *compiled* by a templating engine to be rendered to create an output.
## A Guide to Flexbox 
### Properties for the Parent (flex container)
**Display** defines a flex container; inline or block depending on the given value. It enables a flex context for all its direct children.

---

.container {

  display: flex; /* or inline-flex */
  
}

---

**Flex-direction** the *four* possible values of flex-direction being shown: **top to bottom, bottom to top, right to left, and left to right**
This establishes the main-axis, thus defining the direction flex items are placed in the flex container. Flexbox is (aside from optional wrapping) a single-direction layout concept. Think of flex items as primarily laying out either in horizontal rows or vertical columns.

--- 

.container {


  flex-direction: row | row-reverse | column | column-reverse;
  
} 

---

+ **row (default)**: left to right in ltr; right to left in rtl
+ **row-reverse**: right to left in ltr; left to right in rtl
+ **column**: same as row but top to bottom
+ **column-reverse**: same as row-reverse but bottom to top
**Flex-wrap** two rows of boxes, the first wrapping down onto the second
By **default**, flex items will all try to fit onto one line. You can **change** that and allow the items to wrap as needed with this property.

---

.container {

  flex-wrap: nowrap | wrap | wrap-reverse;
  
}

---

+ **nowrap** (default): all flex items will be on one line
+ **wrap**: flex items will wrap onto multiple lines, from top to bottom. 
+ **wrap-reverse**: flex items will wrap onto multiple lines from bottom to top.
**flex-flow** This is a shorthand for the flex-direction and flex-wrap properties, which together define the flex container’s main and cross axes. The default value is row nowrap.

---

.container {

  flex-flow: column wrap;
  
}

---

**justify-content** flex items within a flex container demonstrating the different spacing options

This defines the alignment along the main axis. It helps distribute extra free space leftover when either all the flex items on a line are inflexible, or are flexible but have reached their maximum size. It also exerts some control over the alignment of items when they overflow the line.

---

.container {

  justify-content: flex-start | flex-end | center | space-between | space-around | space-evenly | start | end | left | right ... + safe | unsafe;
  
}

---

+ **flex-start** (default): items are packed toward the start of the flex-direction.
+**flex-end**: items are packed toward the end of the flex-direction.
+ **start**: items are packed toward the start of the writing-mode direction.
+ **end**: items are packed toward the end of the writing-mode direction.
+ **left**: items are packed toward left edge of the container, unless that doesn’t make sense with the flex-direction, then it behaves like start.
+ **right**: items are packed toward right edge of the container, unless that doesn’t make sense with the flex-direction, then it behaves like start.
+ **center**: items are centered along the line
+ **space-between**: items are evenly distributed in the line; first item is on the start line, last item on the end line
+ **space-around**: items are evenly distributed in the line with equal space around them. Note that visually the spaces aren’t equal, since all the items have equal space on both sides. The first item will have one unit of space against the container edge, but two units of space between the next item because that next item has its own spacing that applies.
+ **space-evenly**: items are distributed so that the spacing between any two items (and the space to the edges) is equal.

**align-items** demonstration of different alignment options, like all boxes stuck to the top of a flex parent, the bottom, stretched out, or along a baseline
This defines the default behavior for how flex items are laid out along the cross axis on the current line. Think of it as the justify-content version for the cross-axis (perpendicular to the main-axis).

---

.container {
  align-items: stretch | flex-start | flex-end | center | baseline | first baseline | last baseline | start | end | self-start | self-end + ... safe | unsafe;
  
}

---

+ **stretch (default)**: stretch to fill the container (still respect min-width/max-width)
+ **flex-start / start / self-start**: items are placed at the start of the cross axis. The difference between these is subtle, and is about respecting the flex-direction rules or the writing-mode rules.
+ **flex-end / end / self-end**: items are placed at the end of the cross axis. The difference again is subtle and is about respecting flex-direction rules vs. writing-mode rules.
+ **center**: items are centered in the cross-axis
+ **baseline**: items are aligned such as their baselines align
The **safe and unsafe** modifier keywords can be used in *conjunction* with all the rest of these keywords (although note browser support), and deal with helping you prevent aligning elements such that the content becomes *inaccessible*.
**align-content** examples of the align-content property where a group of items cluster at the top or bottom, or stretch out to fill the space, or have spacing.
This aligns a flex container’s lines within when there is extra space in the cross-axis, similar to how justify-content aligns individual items within the main-axis. **Note:** this property has no effect when there is only one line of flex items.

---

.container {

  align-content: flex-start | flex-end | center | space-between | space-around | space-evenly | stretch | start | end | baseline | first baseline | last baseline + ... safe | unsafe;
  
}

---

+ **normal** (default): items are packed in their default position as if no value was set.
+ **flex-start / start**: items packed to the start of the container. The (more supported) flex-start honors the flex-direction while start honors the writing-mode direction.
**flex-end / end**: items packed to the end of the container. The (more support) flex-end honors the flex-direction while end honors the writing-mode direction.
**center**: items centered in the container
**space-between**: items evenly distributed; the first line is at the start of the container while the last one is at the end
**space-around**: items evenly distributed with equal space around each line
**space-evenly**: items are evenly distributed with equal space around them
**stretch**: lines stretch to take up the remaining space
### Properties for the Children (flex items)
**order** By default, flex items are laid out in the source order. However, the order property controls the order in which they appear in the flex container.

---

.item {

  order: 5; /* default is 0 */
  
}

---

**flex-grow** two rows of items, the first has all equally-sized items with equal flex-grow numbers, the second with the center item at twice the width because its value is 2 instead of 1.
This defines the ability for a flex item to grow if necessary. It accepts a unitless value that serves as a proportion. It dictates what amount of the available space inside the flex container the item should take up.
If all items have flex-grow set to 1, the remaining space in the container will be distributed equally to all children. If one of the children has a value of 2, the remaining space would take up twice as much space as the others (or it will try to, at least).

---
.item {

  flex-grow: 4; /* default 0 */
  
}

---

**Negative numbers are invalid.**
**flex-shrink** This defines the ability for a flex item to shrink if necessary.

---

.item {

  flex-shrink: 3; /* default 1 */
  
}

---

**Negative numbers are invalid.**
**flex-basis** This defines the default size of an element before the remaining space is distributed. It can be a length (e.g. 20%, 5rem, etc.) or a keyword. The auto keyword means “look at my width or height property” (which was temporarily done by the main-size keyword until deprecated). 

The content keyword means “size it based on the item’s content” – this keyword isn’t well supported yet, so it’s hard to test and harder to know what its brethren max-content, min-content, and fit-content do.

---

.item {

  flex-basis:  | auto; /* default auto */
}

---

**flex** This is the **shorthand for flex-grow, flex-shrink and flex-basis combined**. The second and third parameters (flex-shrink and flex-basis) are optional. The default is 0 1 auto, but if you set it with a single number value, it’s like 1 0.

---

.item {

  flex: none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]
  
}

---

**align-self** One item with a align-self value is positioned along the bottom of a flex parent instead of the top where all the rest of the items are. This allows the default alignment (or the one specified by align-items) to be overridden for individual flex items.

---

.item {

  align-self: auto | flex-start | flex-end | center | baseline | stretch;
  
}

---


** From Flexbox Froggy**
The two properties flex-direction and flex-wrap are used so often together that the shorthand property flex-flow was created to combine them. This shorthand property accepts the value of one of the two properties separated by a space.
** Screenshot of completed tutorial”

![tutorial](https://flexboxfroggy.com/)


