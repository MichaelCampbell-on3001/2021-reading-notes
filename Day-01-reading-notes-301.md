# Introduction to React and Components

## [React Tutorial through ‘Passing Data Through Props](https://reactjs.org/tutorial/tutorial.html)
### Tutorial: Intro to React
**What Is React?**
*React is a declarative, efficient, and flexible JavaScript library for building user interfaces. It lets you compose complex UIs from small and isolated pieces of code called “components”.*
Use components to tell React what we want to see on the screen. When our data changes, React will efficiently update and re-render our **components**. 
### A component takes in parameters, called props (short for “properties”), and returns a hierarchy of views to display via the render method.

The **render method** returns a description of what you want to see on the screen. React takes the description and displays the result. In particular, render returns a React element, which is a lightweight description of what to render. Most React developers use a special syntax called **“JSX”** which makes these structures easier to write. The <div /> syntax is transformed at build time to React.createElement('div'). 


## [React Docs - hello world](https://reactjs.org/docs/hello-world.html)
### Hello World
The smallest React example looks like this:
`ReactDOM.render(
  <h1>Hello, world!</h1>,
  document.getElementById('root')
);
`
It displays a heading saying “Hello, world!” on the page.

*React* embraces the fact that rendering logic is inherently coupled with other UI logic: how events are handled, how the state changes over time, and how the data is prepared for display.

React *separates* concerns with loosely coupled units called **“components”** that contain both.

## [React Docs - introducing JSX](https://reactjs.org/docs/introducing-jsx.html)

You can put any valid *JavaScript expression* inside the curly braces in JSX. For example, 2 + 2, user.firstName, or formatName(user) are all valid JavaScript expressions.

After compilation, *JSX expressions* become regular JavaScript function calls and evaluate to JavaScript objects.

This means that you can use JSX inside of **if statements and for loops, assign it to variables, accept it as arguments,** and return it from functions.

**JSX Prevents Injection Attacks**
It is safe to embed user input in JSX:

// This is safe:
`const element = <h1>{title}</h1>;
By default, React DOM escapes any values embedded in JSX before rendering them. Thus it ensures that you can never inject anything that’s not explicitly written in your application. Everything is converted to a string before being rendered. This helps prevent XSS (cross-site-scripting) attacks.`

**JSX Represents Objects**
Babel *compiles* JSX down to React.createElement() calls.

## [React Docs - rendering elements](https://reactjs.org/docs/rendering-elements.html)

**Elements are the smallest building blocks of React apps.**

An *element* describes what you want to see on the screen:

`const element = <h1>Hello, world</h1>;`

**Applications** built with just React usually have a single root **DOM node**. If you are integrating React into an existing app, you may have as many isolated root DOM nodes as you like.

To render a React element into a root DOM node, pass both to *ReactDOM.render():*

`
const element = <h1>Hello, world</h1>;
ReactDOM.render(element, document.getElementById('root'));
`
The only way to update the UI is to create a new element, and pass it to ReactDOM.render().

`function tick() {
  const element = (
    <div>
      <h1>Hello, world!</h1>
      <h2>It is {new Date().toLocaleTimeString()}.</h2>
    </div>
  );
  ReactDOM.render(element, document.getElementById('root'));
}

setInterval(tick, 1000);
`
**React DOM** compares the element and its children to the *previous* one, and only applies the DOM updates necessary to bring the DOM to the desired state.

## [React Docs - Components and props](https://reactjs.org/docs/components-and-props.html)

**Components** let you *split* the UI into **independent, reusable pieces,** with each piece in isolation. This page provides an introduction to the idea of components. You can find a detailed component API reference here.

**Conceptually, components are like JavaScript functions. They accept arbitrary inputs (called “props”) and return React elements describing what should appear on the screen.**

**Composing Components**
Components can refer to other components in their output. This lets us use the same component abstraction for any level of detail. A button, a form, a dialog, a screen: in **React apps, all those are commonly expressed as components.**


