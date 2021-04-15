
# Day 5 Reading Notes
## [React Docs - Thinking in React](https://reactjs.org/docs/thinking-in-react.html)
**React is a to build big, fast Web apps with JavaScript. 
One of the many great parts of React is how it makes you think about apps as you build them. 
### Step 1: Break The UI Into A Component Hierarchy
1. FilterableProductTable: contains the entirety of the example
2. SearchBar: receives all user input
3. ProductTable: displays and filters the data collection based on user input
4. ProductCategoryRow: displays a heading for each category
5. ProductRow: displays a row for each product

### Step 2: Build A Static Version in React
To build a **static version** of your app that renders your data model, you’ll want to build **components** that reuse other components and pass data using props. **Props are a way of passing data from parent to child.** If you’re familiar with the concept of state, **don’t use state at all to build this static version.** State is reserved only for interactivity, that is, data that changes over time. Since this is a static version of the app, you don’t need it.
### Step 3: Identify The Minimal (but complete) Representation Of UI State
**All of the pieces of data in our example application. We have:**
- The original list of products
- The search text the user has entered
- The value of the checkbox
- The filtered list of products
** Ask three questions about each piece of data: **
1. Is it passed in from a parent via props? If so, it probably isn’t **state**.
2. Does it remain unchanged over time? If so, it probably isn’t **state**.
3. Can you compute it based on any other state or props in your component? If so, it isn’t **state**.
### Step 4: Identify Where Your State Should Live
For each piece of state in your application:
- Identify every component that renders something based on that state.
- Find a common owner component (a single component above all the components that need the state in the hierarchy).
- Either the common owner or another component higher up in the hierarchy should own the state.
- If you can’t find a component where it makes sense to own the state, create a new component solely for holding the state and add it somewhere in the hierarchy above the common owner component.
### Step 5: Add Inverse Data Flow
Since **components should** only update their own state, *FilterableProductTable* will pass callbacks to **SearchBar** that will *fire* whenever the state should be updated. We can use the **onChange** event on the inputs to be notified of it. The *callbacks* passed by FilterableProductTable will call **setState()**, and the app will be updated.







