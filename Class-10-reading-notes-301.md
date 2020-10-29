## Read: 10 - The Call Stack and Debugging

### 7 Uses of Markdown used in this document =
1. "##HEADERS"
1. "**bold**"
1. "+" unordered list
1. "1." numbered list
1. "[title](https://www.example.com)" link
1. *Italics*
1. |Tables | 

### {The Call Stack defined on MDN}(https://developer.mozilla.org/en-US/docs/Glossary/Call_stack)
A **call stack** is a *mechanism for an interpreter* (like the JavaScript interpreter in a web browser) to keep track of its place in a script that calls multiple functions — what function is currently being run and what functions are called from within that function, etc.
+ When a script calls a function, the interpreter adds it to the call stack and then starts carrying out the function.
+ Any functions that are called by that function are added to the call stack further up, and run where their calls are reached.
+ When the current function is finished, the interpreter takes it off the stack and resumes execution where it left off in the last code listing.
+ If the stack takes up more space than it had assigned to it, it results in a "stack overflow" error.

**Example**
```javascript
function greeting() {
   // [1] Some codes here
   sayHi();
   // [2] Some codes here
}
function sayHi() {
   return "Hi!";
}

// Invoke the `greeting` function
greeting();

// [3] Some codes here
```
**Summary**
1. Ignore all functions, until it reaches the greeting() function invocation.
1. Add the greeting() function to the call stack list.
```
Call stack list:
- greeting
```

1. Execute all lines of code inside the greeting() function.
1. Get to the sayHi() function invocation.
1. Add the sayHi() function to the call stack list.
```
Call stack list:
- sayHi
- greeting
```

1. Execute all lines of code inside the sayHi() function, until reaches its end.
1. Return execution to the line that invoked sayHi() and continue executing the rest of the greeting() function.
1. Delete the sayHi() function from our call stack list.
```
Call stack list:
- greeting
``

1. When everything inside the greeting() function has been executed, return to its invoking line to continue executing the rest of the JS code.
1. Delete the greeting() function from the call stack list.
```
Call stack list:
EMPTY
``
Basically, we start with an empty Call Stack. Whenever we invoke a function, it is automatically added to the Call Stack. Once the function has executed all of its code, it is automatically removed from the Call Stack. Ultimately, the Stack is empty again.
### {Understanding the JavaScript Call Stack}(https://www.freecodecamp.org/news/understanding-the-javascript-call-stack-861e41ae61d4/)

#### The JavaScript Call Stack - What It Is and Why It's Necessary by Charles Freeborn
+ The browser provides web APIs like the DOM, AJAX, and Timers.
+ At the *most basic level*, a **call stack** is a **data structure** that uses the *Last In, First Out (LIFO) principle* to temporarily store and manage *function invocation (call)*, which means that the last function that gets pushed into the stack is the first to pop out, when the function returns.
+ The **call stack** is primarily used for **function invocation (call)**. Since the call stack is single, function(s) execution, is done, *one at a time*, from top to bottom. It means the call stack is *synchronous*.
+ In **Asynchronous JavaScript**, we have a *callback function, an event loop, and a task queue*. The callback function is acted upon by the call stack during execution after the call back function has been pushed to the stack by the event loop.
+ **Temporarily store**: When a function is *invoked (called)*, the function, its parameters, and variables are **pushed** into the call stack to form a **stack frame**. This stack frame is a memory location in the stack. The memory is cleared when the function returns as it is popped out of the stack.
 ![Temporarily store](https://cdn-media-1.freecodecamp.org/images/QgR2uIk7tW0YNz0Xm8g0jAPeRFI0e4sCejsv)
**What causes a stack overflow?**
+ A **stack overflow** occurs when there is a *recursive function (a function that calls itself)* without an exit point. The *browser (hosting environment)* has a **maximum stack call** that it can accomodate before throwing a *stack error*.
``` javascript
example:

function callMyself(){
  callMyself();
}

callMyself();
```
#### The key takeaways from the call stack are:
1. It is single-threaded. Meaning it can only do one thing at a time.
2. Code execution is synchronous.
3. A function invocation creates a stack frame that occupies a temporary memory.
4. It works as a LIFO — Last In, First Out data structure.
### {JavaScript error messages}(https://codeburst.io/javascript-error-messages-debugging-d23f84f0ae7c)
**Types of error messages**
+ **Reference errors**: This is as simple as when you try to use a variable that is not yet declared you get this type of error.
+ **Syntax errors**: I know it’s in the name of the errors, but like it says itself, this occurs when you have something that cannot be parsed in terms of syntax, like when you try to parse an invalid object using JSON.parse.
+ **Range errors**: Try to manipulate an object with some kind of length and give it an invalid length and this kind of errors will show up.
+ **Type errors**: Like the name indicates, this types of errors show up when the types (number, string and so on) you are trying to use or access are incompatible, like accessing a property in an undefined type of variable.
**Tools to avoid runtime errors**
+ **quokka** to evaluate your code as you type
+ **eslint** to make sure your style guide is consistency and it will grab you an error or two 
Being able to read error messages and practising debugging is one of your biggest weapons has a developer, do it frequently and with enough time you will notice a great decrease in the time you spend on each error that you find along the way.
