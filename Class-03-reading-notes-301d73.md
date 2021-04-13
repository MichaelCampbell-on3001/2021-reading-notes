# Class 03 Reading Notes
## [React Docs - Lifting State Up](https://reactjs.org/docs/lifting-state-up.html)
-  [] There should be a *single*  **“source of truth”** for any *data that changes* in a React application. Usually, the **state is first added to the component that needs it for rendering**. 
- [] Then, **if other components also need it**, you can lift it up to their closest common ancestor. Instead of trying to sync the state between different components, you should **rely on the top-down data flow**.

- [] **Lifting state** involves writing more *“boilerplate”* code than two-way binding approaches, but as a benefit, it takes less work to find and isolate bugs. Since any state “lives” in some component and that component alone can change it, **the surface area for bugs is greatly reduced**. Additionally, you can implement any custom logic to *reject or transform* user input.

- [] If something can be *derived* from either **props or state**, it probably shouldn’t be in the state. For example, instead of storing both celsiusValue and fahrenheitValue, we store just the last edited temperature and its scale. The value of the other input can always be calculated from them in the render() method. This lets us clear or apply rounding to the other field without losing any precision in the user input.

- []  When you see something wrong in the UI, you can use React Developer Tools to inspect the props and move up the tree until you find the component responsible for updating the state.
---
## [React Docs - lists and keys](https://reactjs.org/docs/lists-and-keys.html)
The below code is how to include the entire listItems array inside a <ul> element, and render it to the DOM:
```
{
ReactDOM.render(
  <ul>{listItems}</ul>,
  document.getElementById('root')
);
}
```
Below is a refactored version of the code above that accepts an array of numbers and outputs a list of elements.: 
`function NumberList(props) {
  const numbers = props.numbers;
  const listItems = numbers.map((number) =>
    <li key={number.toString()}>
      {number}
    </li>
  );
  return (
    <ul>{listItems}</ul>
  );
}

const numbers = [1, 2, 3, 4, 5];
ReactDOM.render(
  <NumberList numbers={numbers} />,
  document.getElementById('root')
);
`
### Keys
**Keys** help React identify which items have *changed, are added, or are removed*. Keys should be given to the **elements** inside the array to give the elements a stable *identity*.
The best way to pick a key is to use a string that uniquely identifies a list item among its siblings. Most often you would use IDs from your data as keys:
### [in-depth explanation about why keys are necessary](https://reactjs.org/docs/reconciliation.html#recursing-on-children)
**Extracting Components with Keys**
**Keys** only make sense in the context of the surrounding **array**.
For example, if you extract a ListItem component, you should keep the key on the `<ListItem />` elements in the array rather than on the `<li>` element in the ListItem itself.
Example: Correct Key Usage
```
{
function ListItem(props) {
  // Correct! There is no need to specify the key here:
  return <li>{props.value}</li>;
}

function NumberList(props) {
  const numbers = props.numbers;
  const listItems = numbers.map((number) =>
    // Correct! Key should be specified inside the array.
    <ListItem key={number.toString()} value={number} />
  );
  return (
    <ul>
      {listItems}
    </ul>
  );
}

const numbers = [1, 2, 3, 4, 5];
ReactDOM.render(
  <NumberList numbers={numbers} />,
  document.getElementById('root')
);
}
```

## [React Tutorial through ‘Declaring a Winner’](https://reactjs.org/tutorial/tutorial.html)
Tutorial: Intro to React:
[Setup for the Tutorial] (https://reactjs.org/tutorial/tutorial.html#setup-for-the-tutorial)
[Overview] (https://reactjs.org/tutorial/tutorial.html#overview)
[Completing the Game] (https://reactjs.org/tutorial/tutorial.html#completing-the-game)
[Adding Time Travel] (https://reactjs.org/tutorial/tutorial.html#adding-time-travel)
## [The Spread Operator] (https://medium.com/coding-at-dawn/how-to-use-the-spread-operator-in-javascript-b9e4a8b06fab)
The **spread syntax** “spreads” the array into **separate** arguments.
The **…** spread operator is useful for many different routine tasks in JavaScript, including the following:
- Copying an array
- Concatenating or combining arrays
- Using Math functions
- Using an array as arguments
- Adding an item to a list
- Adding to state in React
- Combining objects
- Converting NodeList to an array
In each case, the spread syntax expands an **iterable object**, usually an array, though it can be used on any interable, including a string.
