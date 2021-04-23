# Day 10 In memory storage

## [Understanding the JavaScript Call Stack](https://www.freecodecamp.org/news/understanding-the-javascript-call-stack-861e41ae61d4/)
The **JavaScript engine** (which is found in a **hosting environment** like the browser), is a *single-threaded interpreter composed of a heap and a single call stack*. The browser provides web APIs like the DOM, AJAX, and Timers.

### What is the call stack?

At the most basic level, a call stack is **a data structure that uses the Last In, First Out (LIFO) principle** to **temporarily store and manage** *function invocation (call).*

**LIFO:** Last In, First Out, it means that the **last function** that gets **pushed** into the stack is the **first to pop out**, when the function returns.

![Image Credit: CMU](https://cdn-media-1.freecodecamp.org/images/QgR2uIk7tW0YNz0Xm8g0jAPeRFI0e4sCejsv)

### To summarize the call stack

1. It is ##single-threaded##. Meaning it can only do *one thing at a time.*
2. Code execution is **synchronous.**
3. A function **invocation** creates a **stack frame** that occupies a temporary memory.
4. It works as a LIFO — **Last In, First Out data structure.**


## [JavaScript error messages](https://codeburst.io/javascript-error-messages-debugging-d23f84f0ae7c)

### JavaScript error messages && debugging

**Types of error messages**


**Reference errors** 
`console.log(foo) // Uncaught ReferenceError: foo is not defined`

**Syntax errors**
`JSON.parse( {'foo': 'bar'} ) // Uncaught SyntaxError: Unexpected token o in JSON at position 1`

**Range errors**
`var foo= []
foo.length = foo.length -1 // Uncaught RangeError: Invalid array length
`

**Type errors**
`var foo = {}
foo.bar // undefined
foo.bar.baz // Uncaught TypeError: Cannot read property 'baz' of undefined
`



## [You can find a list of a list of errors which are thrown by JavaScript here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors)



