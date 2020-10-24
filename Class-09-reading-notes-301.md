## Read: 09 - Refactoring

### [Concepts of Functional Programming in Javascript](https://medium.com/the-renaissance-developer/concepts-of-functional-programming-in-javascript-6bc84220d2aa)

> “Complexity is anything that makes software hard to understand or to modify." — John Outerhout

**What is functional programming?**
*Functional programming* is a programming paradigm — a *style* of building the *structure* and *elements* of computer programs — that treats computation as the evaluation of mathematical functions and *avoids* changing-state and mutable data.

What is a *pure* function?
+ It returns the same result if given the same arguments (it is also referred as deterministic).
+ It does not cause any observable side effects.

**EXAMPLE OF A PURE FUNCTION**
`let PI = 3.14;

const calculateArea = (radius, pi) => radius * radius * pi;

calculateArea(10, PI); // returns 314.0`

+ For the parameters radius = 10 & PI = 3.14, we will always have the same the result: 314.0
+ For the parameters radius = 10 & PI = 42, we will always have the same the result: 4200


**Reading Files**
+ If our function reads external files, it’s not a pure function — the file’s contents can change.

**Random number generation**
+ Any function that relies on a random number generator cannot be pure.
+ It does not cause any observable side effects
**Examples of observable side effects** include modifying a global object or a parameter passed by reference.
**Observation**: *mutability* is discouraged in functional programming.
Below we are modifying the global object. But how would we make it pure? Just return the value increased by 1.
`let counter = 1;
const increaseCounter = (value) => value + 1;
increaseCounter(counter); // 2
console.log(counter); // 1`
**Pure functions benefits** - The code’s definitely easier to test. We don’t need to mock anything. So we can unit test pure functions with different contexts:
+ Given a parameter A → expect the function to return value B
+ Given a parameter C → expect the function to return value D
An example would be a function to receive a collection of numbers and expect it to increment each element of this collection.
`let list = [1, 2, 3, 4, 5];
const incrementNumbers = (list) => list.map(number => number + 1);`
Receive the numbers array, use map incrementing each number, and return a new list of incremented numbers.
`incrementNumbers(list); // [2, 3, 4, 5, 6]`
*For the input [1, 2, 3, 4, 5], the expected output would be [2, 3, 4, 5, 6].*
**Immutability**: Unchanging over time or unable to be changed.
When data is *immutable*, its state cannot change after it’s created. If you want to change an immutable object, you can’t. Instead, you create a new object with the new value. In **Javascript** we commonly use the for loop. This next for statement has some mutable variables.
`var values = [1, 2, 3, 4, 5];
var sumOfValues = 0;
for (var i = 0; i < values.length; i++) {
  sumOfValues += values[i];
}
sumOfValues // 15`

### functions as first-class entities

The idea of **functions as first-class entities** is that functions are also treated as values and used as data.
Functions as first-class entities can:
+ refer to it from constants and variables
+ pass it as a parameter to other functions
+ return it as result from other functions
The idea is to treat functions as values and pass functions like data. This way we can combine different functions to create new functions with new behavior.
Imagine we have a function that sums two values and then doubles the value. Something like this:
`const doubleSum = (a, b) => (a + b) * 2;`
Now a function that subtracts values and the returns the double:
`const doubleSubtraction = (a, b) => (a - b) * 2;`
These functions have similar *logic*, but the difference is the operators functions. If we can treat functions as values and pass these as arguments, we can build a function that receives the operator function and use it inside our function. 
`const sum = (a, b) => a + b;
const subtraction = (a, b) => a - b;

const doubleOperator = (f, a, b) => f(a, b) * 2;
doubleOperator(sum, 3, 1); // 8
doubleOperator(subtraction, 3, 1); // 4`
### Higher-order functions
When we talk about higher-order functions, we mean a function that either:
+ takes one or more functions as arguments, or
+ returns a function as its result
The **doubleOperator function** we implemented above is a *higher-order* function because it takes an operator function as an argument and uses it.
### Filter
A simple example is when we have a collection of integers and we want only the even numbers.
**Imperative approach** 
An *imperative way* to do it with Javascript is to:
+ create an empty array evenNumbers
+ iterate over the numbers array

+ push the even numbers to the evenNumbers array
`var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var evenNumbers = [];
for (var i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 == 0) {
    evenNumbers.push(numbers[i]);
  }
}
console.log(evenNumbers); // (6) [0, 2, 4, 6, 8, 10]`

### Map
The map method transforms a collection by applying a function to all of its elements and building a new collection from the returned values.
Let’s get the same people collection above. We don't want to filter by “over age” now. We just want a list of strings, something like TK is 26 years old. So the final string might be :name is :age years old where :name and :age are attributes from each element in the people collection.
`var people = [
  { name: "TK", age: 26 },
  { name: "Kaio", age: 10 },
  { name: "Kazumi", age: 30 }
];
var peopleSentences = [];
for (var i = 0; i < people.length; i++) {
  var sentence = people[i].name + " is " + people[i].age + " years old";
  peopleSentences.push(sentence);
}
console.log(peopleSentences); // ['TK is 26 years old', 'Kaio is 10 years old', 'Kazumi is 30 years old']`
In a **declarative Javascript** way, it would be:
`const makeSentence = (person) => `${person.name} is ${person.age} years old`;
const peopleSentences = (people) => people.map(makeSentence);
  peopleSentences(people);
// ['TK is 26 years old', 'Kaio is 10 years old', 'Kazumi is 30 years old']`

**Another Example** 
The input [1, 2, 3, -4, 5]needs the output to be [1, 2, 3, 4, 5]. The absolute value of -4 is 4.
A simple solution would be an in-place update for each collection value.
`var values = [1, 2, 3, -4, 5];
for (var i = 0; i < values.length; i++) {
  values[i] = Math.abs(values[i]);
}
console.log(values); // [1, 2, 3, 4, 5]`

**Reduce**
The idea of reduce is to receive a function and a collection, and return a value created by combining the items.
A common example people talk about is to get the total amount of an order. Imagine you were at a shopping website. You’ve added Product 1, Product 2, Product 3, and Product 4 to your shopping cart (order). Now we want to calculate the total amount of the shopping cart.
Using reduce, we can build a function to handle the amount sum and pass it as an argument to the reduce function.

`let shoppingCart = [
  { productTitle: "Product 1", amount: 10 },
  { productTitle: "Product 2", amount: 30 },
  { productTitle: "Product 3", amount: 20 },
  { productTitle: "Product 4", amount: 60 }
];
const sumAmount = (currentTotalAmount, order) => currentTotalAmount + order.amount;
const getTotalAmount = (shoppingCart) => shoppingCart.reduce(sumAmount, 0);
getTotalAmount(shoppingCart); // 120`
We want the total amount of all books in our shopping cart. Simple as that. 
+ filter by book type
+ transform the shopping cart into a collection of amount using map
+ combine all items by adding them up with reduce
`let shoppingCart = [
  { productTitle: "Functional Programming", type: "books", amount: 10 },
  { productTitle: "Kindle", type: "eletronics", amount: 30 },
  { productTitle: "Shoes", type: "fashion", amount: 20 },
  { productTitle: "Clean Code", type: "books", amount: 60 }
]
const byBooks = (order) => order.type == "books";
const getAmount = (order) => order.amount;
const sumAmount = (acc, amount) => acc + amount;
function getTotalAmount(shoppingCart) {
  return shoppingCart
    .filter(byBooks)
    .map(getAmount)
    .reduce(sumAmount, 0);
}
getTotalAmount(shoppingCart); // 70`

Refactoring JavaScript for Performance and Readability (with Examples!)
### Scenario 1
> We're an URL-shortening website, like TinyURL. We accept a long URL and return a short URL that forwards visitors to the long URL. We have two functions.
// Unrefactored code

`const URLstore = [];
function makeShort(URL) {
  const rndName = Math.random().toString(36).substring(2);
  URLstore.push({[rndName]: URL});
  return rndName;
}
function getLong(shortURL) {
  for (let i = 0; i < URLstore.length; i++) {
    if (URLstore[i].hasOwnProperty(shortURL) !== false) {
      return URLstore[i][shortURL];
    }
  }
}`

`// Refactored code

const URLstore = new Map(); // Change this to a Map

function makeShort(URL) {
  const rndName = Math.random().toString(36).substring(2);
  // Place the short URL into the Map as the key with the long URL as the value
  URLstore.set(rndName, URL);
  return rndName;
}

function getLong(shortURL) {
  // Leave the function early to avoid an unnecessary else statement
  if (URLstore.has(shortURL) === false) {
    throw 'Not in URLstore!';
  }
  return URLstore.get(shortURL); // Get the long URL out of the Map
}`
### Scenario 2
> We're a social media website where user URLs are generated randomly. Instead of random gibberish, we're going to use the friendly-words package that the Glitch team works on. They use this to generate the random names for your recently created projects!
// Unrefactored code

`const friendlyWords = require('friendly-words');

function randomPredicate() {
  const choice = Math.floor(Math.random() * friendlyWords.predicates.length);
  return friendlyWords.predicates[choice];
}

function randomObject() {
  const choice = Math.floor(Math.random() * friendlyWords.objects.length);
  return friendlyWords.objects[choice];
}

async function createUser(email) {
  const user = { email: email };
  user.url = randomPredicate() + randomObject() + randomObject();
  await db.insert(user, 'Users')
  sendWelcomeEmail(user);
}`

`// Refactored code

const friendlyWords = require('friendly-words');

const generateURL = user => {
  const pick = arr => arr[Math.floor(Math.random() * arr.length)];
  user.url = `${pick(friendlyWords.predicates)}-${pick(friendlyWords.objects)}` +
    `-${pick(friendlyWords.objects)}`; // This line would've been too long for linters!
};

async function createUser(email) {
  const user = { email: email };
  // The URL-creation algorithm isn't important to this function so let's abstract it away
  generateURL(user);
  await db.insert(user, 'Users')
  sendWelcomeEmail(user);
}`
