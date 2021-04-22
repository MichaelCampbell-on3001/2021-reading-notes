# Day 9 FUNCTIONAL PROGRAMMING[^1]


### [Functional Programming Concepts](https://medium.com/the-renaissance-developer/concepts-of-functional-programming-in-javascript-6bc84220d2aa)
## Concepts of Functional Programming in Javascript
**Pure functions benefits**
The code’s definitely *easier to test*. You can unit test pure functions with these contexts:
Given a parameter A → expect the function to return value B
Given a parameter C → expect the function to return value D
A simple example would be a function to receive a collection of numbers and expect it to increment each element of this collection.
```
{
let list = [1, 2, 3, 4, 5];

const incrementNumbers = (list) => list.map(number => number + 1);
}
```
Immutability
Unchanging over time or unable to be changed.
> **Immutability**: *Unchanging over time or unable to be changed. When **data** is **immutable**, its **state cannot change** after it’s created. If **you want to** change an immutable object, you can’t. Instead, you **create a new object** with the new value.*

### combine all 4  of these functions to "slugify" your string!
- **toLowerCase**: *converts the string to all lower case.*
- **trim**: *removes whitespace from both ends of a string*
- **split and join**: *replaces all instances of match with replacement in a given string*


**Filter** - Given a **collection**, we want to **filter** by an attribute. The filter function expects a **true or false** value to determine if the element should or should not be included in the result collection.
An **imperative** way to do it with Javascript is to:
- create an empty array evenNumbers
- iterate over the numbers array
- push the even numbers to the evenNumbers array
Use the filter higher order function to receive the even function, and return a list of even numbers:
```
{
const even = n => n % 2 == 0;
const listOfNumbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
listOfNumbers.filter(even); // [0, 2, 4, 6, 8, 10]
}
```
**Map** - Thismethod **transforms** a collection by applying a function to all of its elements and building a new collection from the **returned values**.
**Reduce** - The idea of reduce is to **receive** a function and a collection, and **return** a value created by combining the items.

Pop quiz hot shot, you are an URL-shortening website, like TinyURL. You accept a long URL and return a short URL that forwards visitors to the long URL. We have two functions.
```
{
// **Unrefactored code**

const URLstore = [];

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
}

}
```
Below is the refactored code.
```
{
**// Refactored code**

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
}

}
```
[Markdown cheatsheet](https://www.markdownguide.org/cheat-sheet/)
[^1]: These notes were compiled by someone under the influence of the covid-19 vaccination.
