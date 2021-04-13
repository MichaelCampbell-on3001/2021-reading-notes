#[React Docs - State and Lifecycle](https://reactjs.org/docs/state-and-lifecycle.html)
Converting a Function to a Class
### You can convert a function component like Clock to a class in five steps:

1.Create an ES6 class, with the same name, that extends React.Component.
2.Add a single empty method to it called render().
3.Move the body of the function into the render() method.
4.Replace props with this.props in the render() body.
5.Delete the remaining empty function declaration.
`class Clock extends React.Component {
  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.props.date.toLocaleTimeString()}.</h2>
      </div>
    );
  }
}
`
Adding Local State to a Class
We will move the date from props to state in three steps:

1.Replace this.props.date with this.state.date in the render() method:
`class Clock extends React.Component {
  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
      </div>
    );
  }
}`
2.Add a class constructor that assigns the initial this.state:
`class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {date: new Date()};
  }

  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
      </div>
    );
  }
}
`
Then pass in the constructor.
`constructor(props) {
    super(props);
    this.state = {date: new Date()};
  }`
3.Remove the date prop from the <Clock /> element:
`ReactDOM.render(
  <Clock />,
  document.getElementById('root')
);
`
The result looks like this:
`class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {date: new Date()};
  }

  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
      </div>
    );
  }
}

ReactDOM.render(
  <Clock />,
  document.getElementById('root')
);
`
### Adding Lifecycle Methods to a Class
Declare special methods on the component class to run some code when a component mounts and unmounts.
`class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {date: new Date()};
  }

  componentDidMount() {
  }

  componentWillUnmount() {
  }

  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
      </div>
    );
  }
}
`
**State and Lifecycle RECAP**
1.When **<Clock />** is passed to **ReactDOM.render()**, React calls the constructor of the Clock component. Since Clock needs to display the *current time*, it initializes **this.state** with an object including the current time.
2.React then calls the Clock component’s **render() method.** This is how React learns what should be displayed on the screen. React then updates the **DOM** to match the Clock’s render output.
3.When the Clock output is inserted in the DOM, React calls the **componentDidMount()** lifecycle method. Inside it, the Clock component asks the browser to set up a timer to call the component’s **tick()** method once a second.
4.Every second the browser calls the tick() method. Inside it, the Clock component schedules a **UI update by calling setState()** with an object containing the current time. Thanks to the **setState()** call, React knows the state has changed, and calls the **render() method** again to learn what should be on the screen. This time, **this.state.date in the render() method** will be different, and so the render output will include the updated time. React updates the DOM accordingly.
5.If the Clock component is ever removed from the DOM, React calls the **componentWillUnmount() lifecycle method** so the timer is stopped.

[React Docs - handling events](https://reactjs.org/docs/handling-events.html)
*Handling events with React elements is very similar to handling events on DOM elements. There are some syntax differences:*
- React events are named using **camelCase**, rather than lowercase.
- With **JSX** you pass a function as the event handler, rather than a string.
A **button** in HTML:

‘<button onclick="activateLasers()">
  Activate Lasers
</button>’
A **button** in REACT:

`<button onClick={activateLasers}>
  Activate Lasers
</button>
`
**To return False in REACT**

`function ActionLink() {
  function handleClick(e) {
    e.preventDefault();
    console.log('The link was clicked.');
  }

  return (
    <a href="#" onClick={handleClick}>
      Click me
    </a>
  );
}`

When using React, you generally don’t need to call **addEventListener** to add listeners to a DOM element after it is created. Instead, just provide a listener when the element is initially rendered.
### Passing Arguments to Event Handlers
Inside a **loop**, it is common to want to pass an extra parameter to an event handler. For example, *if id is the row ID*, either of the following would work:
`<button onClick={(e) => this.deleteRow(id, e)}>Delete Row</button>
<button onClick={this.deleteRow.bind(this, id)}>Delete Row</button>
`


[React Docs- conditional rendering](https://reactjs.org/docs/conditional-rendering.html)
## Conditional Rendering
Conditional rendering in React works the same way conditions work in JavaScript. Use JavaScript operators like *if* or the **conditional operator** to create elements representing the current state, and let React update the UI to match them.
Returning null from a component’s render method does not affect the firing of the component’s lifecycle methods. For instance componentDidUpdate will still be called.

[React Tutorial through ‘Developer Tools’](https://reactjs.org/tutorial/tutorial.html)
[LINK TO GAME](https://codepen.io/gaearon/pen/aWWQOG?editors=0010)
[React Bootstrat Documentation](https://react-bootstrap.github.io/)
[Netlify](https://www.netlify.com/)
